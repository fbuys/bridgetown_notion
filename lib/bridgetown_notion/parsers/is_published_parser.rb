# frozen_string_literal: true

module BridgetownNotion
  module Parsers
    class IsPublishedParser
      def self.parse(post)
        post.dig("properties", "published", "checkbox") || false
      end
    end
  end
end
