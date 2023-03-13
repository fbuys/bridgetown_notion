# frozen_string_literal: true

module BridgetownNotion
  module MarkdownGenerators
    class Heading4MarkdownGenerator
      def self.generate(text)
        "#### #{text}\n"
      end
    end
  end
end
