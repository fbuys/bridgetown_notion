# frozen_string_literal: true

module BridgetownNotion
  module Parsers
    class TitleParser
      def self.parse(post)
        post.dig("properties", "title", "title", 0, "text", "content")
      end
    end
  end
end
