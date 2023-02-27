# frozen_string_literal: true

require "active_support/core_ext/string/inflections"

module BridgetownNotion
  module Parsers
    class ContentParser
      def self.parse(post)
        content = ""
        blocks = post.fetch("blocks", [])
        blocks.each do |block|
          content += get_content(block)
        end
        content
      end

      private_class_method def self.get_content(block)
        block_type, content = BridgetownNotion::Parsers::BlockParser.parse(block)
        Object.const_get(
          "BridgetownNotion::MarkdownGenerators::#{block_type.camelize}MarkdownGenerator"
        ).generate(content)
      rescue StandardError
        result = block.dig("paragraph", "rich_text", 0, "text", "content")
        return "#{result}\n" if result

        result = block.dig("bulleted_list_item", "rich_text", 0, "text", "content")
        return "- #{result}\n" if result

        "\n"
      end
    end
  end
end
