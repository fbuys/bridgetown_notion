# frozen_string_literal: true

module BridgetownNotion
  class Builder < Bridgetown::Builder
    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Metrics/MethodLength
    def build
      notion_key = config.bridgetown_notion.notion_key
      notion_db_id = config.bridgetown_notion.notion_db_id

      Notion.configure do |notion|
        notion.token = notion_key
      end

      client = Notion::Client.new

      client.database_query(database_id: notion_db_id) do |posts_page|
        posts_page.results.each do |post|
          title = post.dig("properties", "title", "title", 0, "text", "content")
          categories = (post.dig("properties", "categories", "multi_select") || [])
            .map { |c| c["name"] }.join(" ")
          tags = (post.dig("properties", "tags", "multi_select") || [])
            .map { |t| t["name"] }.join(" ")
          is_published = post["properties"]["published"]["checkbox"]
          published_at = post.dig("properties", "published_at", "date", "start")
          content = ""

          next if published_at.nil? || title.nil?

          client.block_children(block_id: post.id) do |blocks_page|
            blocks_page.results.each do |block|
              content += extract_content(block)
            end
          end

          add_resource :posts, "#{published_at}-#{title}.md" do
            categories categories
            content content
            layout :post
            published is_published
            tags tags
            title title
          end
        end
      end
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Metrics/MethodLength

    private

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
    def extract_content(block)
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

BridgetownNotion::Builder.register
