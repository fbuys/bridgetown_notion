# frozen_string_literal: true

module BridgetownNotion
  module MarkdownGenerators
    class Heading6MarkdownGenerator
      def self.generate(text)
        "###### #{text}\n"
      end
    end
  end
end

