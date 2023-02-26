# frozen_string_literal: true

module BridgetownNotion
  module Parsers
    class ContentParser
      def self.parse(post)
        content = ""
        blocks = post.fetch("blocks", [])
        blocks.each do |block|
          content += extract_content(block)
        end
        content
      end

      # rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
      private_class_method def self.extract_content(block)
        result = block.dig("heading_1", "rich_text", 0, "text", "content")
        return "# #{result}\n" if result

        result = block.dig("heading_2", "rich_text", 0, "text", "content")
        return "## #{result}\n" if result

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
