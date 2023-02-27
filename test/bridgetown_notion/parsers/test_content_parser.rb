# frozen_string_literal: true

require_relative "../../helper"

class TestContentParser < Bridgetown::TestCase
  describe BridgetownNotion::Parsers::ContentParser do
    describe "#parse" do
      it "returns markdown representation of blocks" do
        post = {
          "blocks" => [{
            "heading_1" => {
              "rich_text" => [{ "text" => { "content" => "Heading 1" } }],
            },
          }, {
            "heading_2" => {
              "rich_text" => [{ "text" => { "content" => "Heading 2" } }],
            },
          }, {
            "heading_3" => {
              "rich_text" => [{ "text" => { "content" => "Heading 3" } }],
            },
          }, {
            "heading_4" => {
              "rich_text" => [{ "text" => { "content" => "Heading 4" } }],
            },
          }, {
            "heading_5" => {
              "rich_text" => [{ "text" => { "content" => "Heading 5" } }],
            },
          },],
        }
        expected_markdown = <<~MARKDOWN
          # Heading 1
          ## Heading 2
          ### Heading 3
          #### Heading 4
          ##### Heading 5
        MARKDOWN

        result = BridgetownNotion::Parsers::ContentParser.parse(post)

        assert_equal expected_markdown, result
      end

      it "returns an empty string by default" do
        result = BridgetownNotion::Parsers::ContentParser.parse({})
        assert_equal "", result
      end
    end
  end
end
