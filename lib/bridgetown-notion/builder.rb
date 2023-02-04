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
          title = post['properties']['Title']['title'][0]['text']['content']
          add_resource :posts, "2020-05-17-#{title}.md" do
            layout :post
            title title
            author "rlstevenson"
            content "It's pretty _nifty_ that you can add **new blog posts** this way."
          end
          client.block_children(block_id: post.id) do |blocks_page|
            blocks_page.results.each do |block|  
              pp block
            end
          end
          puts '################################'
        end
      end

      puts client
    end
  end
end

BridgetownNotion::Builder.register
