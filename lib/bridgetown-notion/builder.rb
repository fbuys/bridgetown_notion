# frozen_string_literal: true

module BridgetownNotion
  class Builder < Bridgetown::Builder
    def build
      Notion.configure do |config|
        config.token = NOTION_KEY
      end

      client = Notion::Client.new

      client.database_query(database_id: NOTION_DB_ID) do |posts_page|
        posts_page.results.each do |post|
          title = post["properties"]["Title"]["title"][0]["text"]["content"]
          categories = (post.dig("properties", "categories", "multi_select") || []).map { |c| c["name"] }.join(" ")
          tags = (post.dig("properties", "tags", "multi_select") || []).map { |t| t["name"] }.join(" ")
          is_published = post["properties"]["published"]["checkbox"]

          add_resource :posts, "2020-05-17-#{title}.md" do
            author "rlstevenson"
            categories categories
            content "It's pretty _nifty_ that you can add **new blog posts** this way. <%= resource.data %>"
            layout :post
            published is_published
            tags tags
            title title
          end
          client.block_children(block_id: post.id) do |blocks_page|
            blocks_page.results.each do |block|
              # pp block
            end
          end
          Bridgetown.logger.info "################################"
        end
      end

      # Bridgetown.logger.info client
    end
  end
end

BridgetownNotion::Builder.register
