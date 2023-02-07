# frozen_string_literal: true

require "bridgetown"
require "bridgetown_notion/builder"
require "notion-ruby-client"

Bridgetown.initializer :bridgetown_notion do |config, notion_key:, notion_db_id:|
  config.bridgetown_notion ||= {}
  config.bridgetown_notion.notion_key ||= notion_key || ENV.fetch("NOTION_KEY")
  config.bridgetown_notion.notion_db_id ||= notion_db_id || ENV.fetch("NOTION_DB_ID")

  config.builder BridgetownNotion::Builder
end
