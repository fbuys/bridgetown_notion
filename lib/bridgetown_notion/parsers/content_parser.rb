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

      # rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
      private_class_method def self.get_content(block)
        block_type, content = BridgetownNotion::Parsers::BlockParser.parse(block)
        Object.const_get(
          "BridgetownNotion::MarkdownGenerators::#{block_type.camelize}MarkdownGenerator"
        ).generate(content)
      rescue StandardError

        result = block.dig("heading_3", "rich_text", 0, "text", "content")
        return "### #{result}\n" if result

        result = block.dig("heading_4", "rich_text", 0, "text", "content")
        return "#### #{result}\n" if result

        result = block.dig("heading_5", "rich_text", 0, "text", "content")
        return "##### #{result}\n" if result

        result = block.dig("heading_6", "rich_text", 0, "text", "content")
        return "###### #{result}\n" if result

        result = block.dig("paragraph", "rich_text", 0, "text", "content")
        return "#{result}\n" if result

        result = block.dig("bulleted_list_item", "rich_text", 0, "text", "content")
        return "- #{result}\n" if result

        "\n"
      end
      # rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
    end
  end
end
