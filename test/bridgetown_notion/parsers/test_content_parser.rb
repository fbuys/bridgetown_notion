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
          }],
        }
        result = BridgetownNotion::Parsers::ContentParser.parse(post)
        assert_equal "# Heading 1\n", result
      end

      it "returns an empty string by default" do
        result = BridgetownNotion::Parsers::ContentParser.parse({})
        assert_equal "", result
      end
    end
  end
end
