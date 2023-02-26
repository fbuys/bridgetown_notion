# frozen_string_literal: true

module BridgetownNotion
  module Parsers
    class PublishedAtParser
      def self.parse(post)
        post.dig("properties", "published_at", "date", "start")
      end
    end
  end
end
