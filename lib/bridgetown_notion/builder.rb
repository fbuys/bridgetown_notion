# frozen_string_literal: true

require "bridgetown_notion/notion_posts_factory"

module BridgetownNotion
  class Builder < Bridgetown::Builder
    def build
      BridgetownNotion::NotionPostsFactory.create_posts(config.bridgetown_notion).each do |post|
        add_resource :posts, "#{post[:slug]}.md" do
          categories post[:categories]
          content post[:content]
          layout :post
          published post[:is_published]
          tags post[:tags]
          title post[:title]
        end
      end
    end
  end
end

BridgetownNotion::Builder.register
