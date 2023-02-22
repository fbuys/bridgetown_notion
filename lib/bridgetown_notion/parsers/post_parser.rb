# frozen_string_literal: true

module BridgetownNotion
  module Parsers
    Post = Struct.new(:categories, :content, :is_published, :slug, :tags, :title, :published_at)

    class PostParser
      def self.tmp_parse(post)
        title = post.dig("properties", "title", "title", 0, "text", "content")
        categories = (post.dig("properties", "categories", "multi_select") || [])
          .map { |c| c["name"] }.join(" ")
        tags = (post.dig("properties", "tags", "multi_select") || [])
          .map { |t| t["name"] }.join(" ")
        is_published = post.dig("properties", "published", "checkbox") || false
        published_at = post.dig("properties", "published_at", "date", "start")
        slug = "#{published_at}-#{title}".downcase.strip.tr(" ", "-").gsub(%r/[^\w-]/, "")
        content = ""

        post.blocks.each do |block|
          content += extract_content(block)
        end

        Post.new(categories, content, is_published, slug, tags, title, published_at)
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
