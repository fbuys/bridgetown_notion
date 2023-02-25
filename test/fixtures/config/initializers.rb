# frozen_string_literal: true

Bridgetown.configure do
  url "" # the base hostname & protocol for your site, e.g. https://example.com

  init :bridgetown_notion do
    notion_key "test-notion-key"
    notion_db_id "test-notion-db-id"
  end
end
