# frozen_string_literal: true

module BridgetownNotion
  module Parsers
    class SlugParser
      def self.parse(post)
        published_at = BridgetownNotion::Parsers::PublishedAtParser.parse(post)
        title = BridgetownNotion::Parsers::TitleParser.parse(post)
        "#{published_at}-#{title}".downcase.strip.tr(" ", "-").gsub(%r/[^\w-]/, "")
      end
    end
  end
end
