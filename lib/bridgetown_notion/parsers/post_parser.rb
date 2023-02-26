# frozen_string_literal: true

module BridgetownNotion
  module Parsers
    Post = Struct.new(:categories, :content, :is_published, :slug, :tags, :title, :published_at)

    class PostParser
      def initialize(post)
        @post = post
      end

      def self.parse(post)
        new(post)
      end

      def method_missing(method_name)
        property = snake_case_to_camel_case(method_name)
        Object.const_get("BridgetownNotion::Parsers::#{property}Parser").parse(@post)
      end

      def respond_to_missing?(method_name)
        Dir["./**/*.rb"].each do |f|
          return true if f.include?(method_name)
        end
      end

      private

      def snake_case_to_camel_case(string)
        string.to_s.downcase.gsub(%r{[^\w]}, "").split("_").collect(&:capitalize).join
      end
    end
  end
end
