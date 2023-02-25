# frozen_string_literal: true

module BridgetownNotion
  module Parsers
    class CategoriesParser
      def self.parse(post)
        categories = (post.dig("properties", "categories", "multi_select") || [])
        categories.map { |c| c["name"] }.join(" ")
      end
    end
  end
end
