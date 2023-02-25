# frozen_string_literal: true

module BridgetownNotion
  class NotionPostsFactory
    # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
    def self.create_posts(config)
      notion_key = config.notion_key
      notion_db_id = config.notion_db_id

      Notion.configure do |notion|
        notion.token = notion_key
      end

      notion_client = Notion::Client.new

      result = []

      notion_client.database_query(database_id: notion_db_id) do |posts_page|
        posts_page.results.each do |post|
          notion_client.block_children(block_id: post.id) do |blocks_page|
            post.blocks = [*post.blocks, *blocks_page.results]
          end

          tmp_parsed_post = BridgetownNotion::Parsers::PostParser.tmp_parse(post)
          parsed_post = BridgetownNotion::Parsers::PostParser.parse(post)
          

          next if tmp_parsed_post.published_at.nil? || parsed_post.title.nil?

          result.push({
            categories: parsed_post.categories,
            content: tmp_parsed_post.content,
            is_published: tmp_parsed_post.is_published,
            slug: tmp_parsed_post.slug,
            tags: tmp_parsed_post.tags,
            title: parsed_post.title,
          })
        end
      end

      result
    end
    # rubocop:enable Metrics/AbcSize, Metrics/MethodLength
  end
end
