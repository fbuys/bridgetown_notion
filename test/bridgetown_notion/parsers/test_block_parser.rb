# frozen_string_literal: true

require_relative "../../helper"

class TestBlockParser < Bridgetown::TestCase
  describe BridgetownNotion::Parsers::BlockParser do
    describe "#parse" do
      it "returns an array with the block type and content" do
        block = {
          "heading_1" => {
            "rich_text" => [{ "text" => { "content" => "Block heading 1" } }],
          },
        }
        result = BridgetownNotion::Parsers::BlockParser.parse(block)
        assert_equal ["heading_1", "Block heading 1"], result
      end

      it "return an empty array by default" do
        result = BridgetownNotion::Parsers::BlockParser.parse({})
        assert_equal [], result
      end
    end
  end
end
