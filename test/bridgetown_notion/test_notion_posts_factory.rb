# frozen_string_literal: true

require_relative "../helper"

#   {"object"=>"list",
#  "results"=>
#   [{"object"=>"page",
#     "id"=>"5a1394b4-de65-46a0-8245-c5a63bc6ef50",
#     "created_time"=>"2023-01-15T20:46:00.000Z",
#     "last_edited_time"=>"2023-02-07T10:26:00.000Z",
#     "created_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "last_edited_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "cover"=>nil,
#     "icon"=>nil,
#     "parent"=>
#      {"type"=>"database_id",
#       "database_id"=>"89c33add-c8eb-4c5b-a65a-3b70165b099b"},
#     "archived"=>false,
#     "properties"=>
#      {"published"=>{"id"=>"Gseq", "type"=>"checkbox", "checkbox"=>true},
#       "categories"=>
#        {"id"=>"JS%5D%7C",
#         "type"=>"multi_select",
#         "multi_select"=>
#          [{"id"=>"4d5da748-000d-4870-865c-a805f3f48179",
#            "name"=>"c1",
#            "color"=>"pink"},
#           {"id"=>"259e2d7d-b3a2-4e99-806b-8547e106f66b",
#            "name"=>"c2",
#            "color"=>"red"}]},
#       "published_at"=>
#        {"id"=>"Nk%3FS",
#         "type"=>"date",
#         "date"=>{"start"=>"2023-02-15", "end"=>nil, "time_zone"=>nil}},
#       "tags"=>
#        {"id"=>"O%3EeG",
#         "type"=>"multi_select",
#         "multi_select"=>
#          [{"id"=>"111bfc91-3758-4e62-a380-dd779562378d",
#            "name"=>"t1",
#            "color"=>"brown"},
#           {"id"=>"f7f5e734-3a6e-450d-9345-cafffe68e3e9",
#            "name"=>"t2",
#            "color"=>"gray"}]},
#       "author"=>
#        {"id"=>"pt%5CZ",
#         "type"=>"select",
#         "select"=>
#          {"id"=>"3850b415-cf2f-4cc0-9d1d-26ffb5ebdac8",
#           "name"=>"fbuys",
#           "color"=>"orange"}},
#       "title"=>
#        {"id"=>"title",
#         "type"=>"title",
#         "title"=>
#          [{"type"=>"text",
#            "text"=>{"content"=>"test-1", "link"=>nil},
#            "annotations"=>
#             {"bold"=>false,
#              "italic"=>false,
#              "strikethrough"=>false,
#              "underline"=>false,
#              "code"=>false,
#              "color"=>"default"},
#            "plain_text"=>"test-1",
#            "href"=>nil}]}},
#     "url"=>"https://www.notion.so/test-1-5a1394b4de6546a08245c5a63bc6ef50"},
#    {"object"=>"page",
#     "id"=>"cf6a56a8-1799-4ed4-9548-14e52acc0d4b",
#     "created_time"=>"2023-01-15T20:46:00.000Z",
#     "last_edited_time"=>"2023-02-07T09:55:00.000Z",
#     "created_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "last_edited_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "cover"=>nil,
#     "icon"=>nil,
#     "parent"=>
#      {"type"=>"database_id",
#       "database_id"=>"89c33add-c8eb-4c5b-a65a-3b70165b099b"},
#     "archived"=>false,
#     "properties"=>
#      {"published"=>{"id"=>"Gseq", "type"=>"checkbox", "checkbox"=>true},
#       "categories"=>
#        {"id"=>"JS%5D%7C", "type"=>"multi_select", "multi_select"=>[]},
#       "published_at"=>{"id"=>"Nk%3FS", "type"=>"date", "date"=>nil},
#       "tags"=>{"id"=>"O%3EeG", "type"=>"multi_select", "multi_select"=>[]},
#       "author"=>{"id"=>"pt%5CZ", "type"=>"select", "select"=>nil},
#       "title"=>
#        {"id"=>"title",
#         "type"=>"title",
#         "title"=>
#          [{"type"=>"text",
#            "text"=>{"content"=>"test-2", "link"=>nil},
#            "annotations"=>
#             {"bold"=>false,
#              "italic"=>false,
#              "strikethrough"=>false,
#              "underline"=>false,
#              "code"=>false,
#              "color"=>"default"},
#            "plain_text"=>"test-2",
#            "href"=>nil}]}},
#     "url"=>"https://www.notion.so/test-2-cf6a56a817994ed4954814e52acc0d4b"}],
#  "next_cursor"=>nil,
#  "has_more"=>false,
#  "type"=>"page",
#  "page"=>{}}
# {"object"=>"list",
#  "results"=>
#   [{"object"=>"block",
#     "id"=>"c43c9c53-775d-4bfc-b0cf-8903133ce642",
#     "parent"=>
#      {"type"=>"page_id", "page_id"=>"5a1394b4-de65-46a0-8245-c5a63bc6ef50"},
#     "created_time"=>"2023-01-15T22:04:00.000Z",
#     "last_edited_time"=>"2023-02-04T18:57:00.000Z",
#     "created_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "last_edited_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "has_children"=>false,
#     "archived"=>false,
#     "type"=>"heading_1",
#     "heading_1"=>
#      {"rich_text"=>
#        [{"type"=>"text",
#          "text"=>{"content"=>"Updated This is test-1", "link"=>nil},
#          "annotations"=>
#           {"bold"=>false,
#            "italic"=>false,
#            "strikethrough"=>false,
#            "underline"=>false,
#            "code"=>false,
#            "color"=>"default"},
#          "plain_text"=>"Updated This is test-1",
#          "href"=>nil}],
#       "is_toggleable"=>false,
#       "color"=>"default"}},
#    {"object"=>"block",
#     "id"=>"39d95246-2a91-472e-983b-c168598329fc",
#     "parent"=>
#      {"type"=>"page_id", "page_id"=>"5a1394b4-de65-46a0-8245-c5a63bc6ef50"},
#     "created_time"=>"2023-02-04T18:21:00.000Z",
#     "last_edited_time"=>"2023-02-04T18:57:00.000Z",
#     "created_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "last_edited_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "has_children"=>false,
#     "archived"=>false,
#     "type"=>"paragraph",
#     "paragraph"=>
#      {"rich_text"=>
#        [{"type"=>"text",
#          "text"=>{"content"=>"With paragraph 1 (updated)", "link"=>nil},
#          "annotations"=>
#           {"bold"=>false,
#            "italic"=>false,
#            "strikethrough"=>false,
#            "underline"=>false,
#            "code"=>false,
#            "color"=>"default"},
#          "plain_text"=>"With paragraph 1 (updated)",
#          "href"=>nil}],
#       "color"=>"default"}},
#    {"object"=>"block",
#     "id"=>"3121216d-bdb8-40fd-bf83-4729781a026e",
#     "parent"=>
#      {"type"=>"page_id", "page_id"=>"5a1394b4-de65-46a0-8245-c5a63bc6ef50"},
#     "created_time"=>"2023-02-04T18:22:00.000Z",
#     "last_edited_time"=>"2023-02-04T18:57:00.000Z",
#     "created_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "last_edited_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "has_children"=>false,
#     "archived"=>false,
#     "type"=>"heading_2",
#     "heading_2"=>
#      {"rich_text"=>
#        [{"type"=>"text",
#          "text"=>{"content"=>"Heading 2 (updated)", "link"=>nil},
#          "annotations"=>
#           {"bold"=>false,
#            "italic"=>false,
#            "strikethrough"=>false,
#            "underline"=>false,
#            "code"=>false,
#            "color"=>"default"},
#          "plain_text"=>"Heading 2 (updated)",
#          "href"=>nil}],
#       "is_toggleable"=>false,
#       "color"=>"default"}},
#    {"object"=>"block",
#     "id"=>"eaaf1ec7-dea7-4531-985d-2c95d2576f78",
#     "parent"=>
#      {"type"=>"page_id", "page_id"=>"5a1394b4-de65-46a0-8245-c5a63bc6ef50"},
#     "created_time"=>"2023-02-04T18:21:00.000Z",
#     "last_edited_time"=>"2023-02-04T18:57:00.000Z",
#     "created_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "last_edited_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "has_children"=>false,
#     "archived"=>false,
#     "type"=>"paragraph",
#     "paragraph"=>
#      {"rich_text"=>
#        [{"type"=>"text",
#          "text"=>{"content"=>"And paragraph 2 (updated)", "link"=>nil},
#          "annotations"=>
#           {"bold"=>false,
#            "italic"=>false,
#            "strikethrough"=>false,
#            "underline"=>false,
#            "code"=>false,
#            "color"=>"default"},
#          "plain_text"=>"And paragraph 2 (updated)",
#          "href"=>nil}],
#       "color"=>"default"}},
#    {"object"=>"block",
#     "id"=>"f5604835-6ed6-402c-a923-7653222a25a5",
#     "parent"=>
#      {"type"=>"page_id", "page_id"=>"5a1394b4-de65-46a0-8245-c5a63bc6ef50"},
#     "created_time"=>"2023-02-04T18:22:00.000Z",
#     "last_edited_time"=>"2023-02-04T18:57:00.000Z",
#     "created_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "last_edited_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "has_children"=>false,
#     "archived"=>false,
#     "type"=>"heading_3",
#     "heading_3"=>
#      {"rich_text"=>
#        [{"type"=>"text",
#          "text"=>{"content"=>"Heading 3 (updated)", "link"=>nil},
#          "annotations"=>
#           {"bold"=>false,
#            "italic"=>false,
#            "strikethrough"=>false,
#            "underline"=>false,
#            "code"=>false,
#            "color"=>"default"},
#          "plain_text"=>"Heading 3 (updated)",
#          "href"=>nil}],
#       "is_toggleable"=>false,
#       "color"=>"default"}},
#    {"object"=>"block",
#     "id"=>"56168418-c74f-4515-bfd5-bb2142dad8d2",
#     "parent"=>
#      {"type"=>"page_id", "page_id"=>"5a1394b4-de65-46a0-8245-c5a63bc6ef50"},
#     "created_time"=>"2023-02-04T18:22:00.000Z",
#     "last_edited_time"=>"2023-02-04T18:57:00.000Z",
#     "created_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "last_edited_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "has_children"=>false,
#     "archived"=>false,
#     "type"=>"bulleted_list_item",
#     "bulleted_list_item"=>
#      {"rich_text"=>
#        [{"type"=>"text",
#          "text"=>{"content"=>"Bullet 1 (updated)", "link"=>nil},
#          "annotations"=>
#           {"bold"=>false,
#            "italic"=>false,
#            "strikethrough"=>false,
#            "underline"=>false,
#            "code"=>false,
#            "color"=>"default"},
#          "plain_text"=>"Bullet 1 (updated)",
#          "href"=>nil}],
#       "color"=>"default"}},
#    {"object"=>"block",
#     "id"=>"67ba77f4-31b6-4052-a79e-a470fce5df0b",
#     "parent"=>
#      {"type"=>"page_id", "page_id"=>"5a1394b4-de65-46a0-8245-c5a63bc6ef50"},
#     "created_time"=>"2023-02-04T18:22:00.000Z",
#     "last_edited_time"=>"2023-02-04T18:57:00.000Z",
#     "created_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "last_edited_by"=>
#      {"object"=>"user", "id"=>"ac6f3773-65d4-4352-99b4-e8ee7e686dd8"},
#     "has_children"=>false,
#     "archived"=>false,
#     "type"=>"bulleted_list_item",
#     "bulleted_list_item"=>
#      {"rich_text"=>
#        [{"type"=>"text",
#          "text"=>{"content"=>"Bullet 2 (updated)", "link"=>nil},
#          "annotations"=>
#           {"bold"=>false,
#            "italic"=>false,
#            "strikethrough"=>false,
#            "underline"=>false,
#            "code"=>false,
#            "color"=>"default"},
#          "plain_text"=>"Bullet 2 (updated)",
#          "href"=>nil}],
#       "color"=>"default"}}],
#  "next_cursor"=>nil,
#  "has_more"=>false,
#  "type"=>"block",
#  "block"=>{}}

class TestNotionPostsFactory < Bridgetown::TestCase
  Config = Struct.new(:notion_key, :notion_db_id)

  # rubocop:disable Metrics/BlockLength:
  describe "notion posts factory" do
    # rubocop:disable  Metrics/MethodLength:
    def setup
      @config = Config.new("notion-key", "notion-db-id")
      @post_results = [{
        "id"         => "post-uuid",
        "properties" => {
          "title"        => {
            "title" => [{ "text" => { "content"=>"test-1" } }],
          },
          "published_at" => {
            "date" => { "start" => "2023-02-15" },
          },
          "published"    => {
            "checkbox" => true,
          },
          "categories"   => {
            "multi_select" => [{
              "id"   => "category-1-uuid",
              "name" => "c1",
            }, {
              "id"   => "category-2-uuid",
              "name" => "c2",
            }],
          },
          "tags"   => {
            "multi_select" => [{
              "id"   => "tag-1-uuid",
              "name" => "t1",
            }, {
              "id"   => "tag-2-uuid",
              "name" => "t2",
            }],
          },
        },
      }]
      stub_request(:post, "https://api.notion.com/v1/databases/notion-db-id/query")
        .to_return(status: 200, body: { results: @post_results }.to_json, headers: {})

      @blocks_results = [{
        "object"    => "block",
        "id"        => "block-uuid",
        "heading_1" => {
          "rich_text" => [{
            "text" => { "content" => "Heading 1", "link" => nil },
          }],
        },
      }]

      stub_request(:get, "https://api.notion.com/v1/blocks/post-uuid/children?page_size=100")
        .to_return(status: 200, body: { results: @blocks_results }.to_json, headers: {})
      WebMock.reset_executed_requests!
    end
    # rubocop:enable  Metrics/MethodLength:

    it "makes requests to the notion api" do
      BridgetownNotion::NotionPostsFactory.create_posts(@config)
      assert_requested :post, "https://api.notion.com/v1/databases/notion-db-id/query"
    end

    it "creates posts from the notion api response" do
      result = BridgetownNotion::NotionPostsFactory.create_posts(@config)

      expected = [{
        categories: "c1 c2",
        content: "# Heading 1\n",
        is_published: true,
        slug: "2023-02-15-test-1",
        tags: "t1 t2",
        title: "test-1",
      }]
      assert_equal result, expected
    end
  end
  # rubocop:enable Metrics/BlockLength:
end
