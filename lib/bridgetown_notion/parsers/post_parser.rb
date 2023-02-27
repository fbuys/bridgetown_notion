# frozen_string_literal: true

require "active_support/core_ext/string/inflections"

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
        parser = method_name.to_s.camelize
        Object.const_get("BridgetownNotion::Parsers::#{parser}Parser").parse(@post)
      end

      def respond_to_missing?(method_name)
        Dir["./**/*.rb"].each do |f|
          return true if f.include?(method_name)
        end
      end
    end
  end
end
