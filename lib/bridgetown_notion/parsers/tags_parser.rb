# frozen_string_literal: true

module BridgetownNotion
  module Parsers
    class TagsParser
      def self.parse(post)
        tags = (post.dig("properties", "tags", "multi_select") || [])
        tags.map { |t| t["name"] }.join(" ")
      end
    end
  end
end
