# frozen_string_literal: true

module BridgetownNotion
  module MarkdownGenerators
    class BulletedListItemMarkdownGenerator
      def self.generate(text)
        "- #{text}\n"
      end
    end
  end
end
