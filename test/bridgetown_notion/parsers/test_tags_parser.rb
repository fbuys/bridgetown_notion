# frozen_string_literal: true

require_relative "../../helper"

class TestTagsParser < Bridgetown::TestCase
  describe BridgetownNotion::Parsers::TagsParser do
    describe "#parse" do
      it "return a string with a list of tags" do
        post = {
          "properties" => {
            "tags" => {
              "multi_select" => [{ "name" => "tag-1" }, { "name" => "tag-2" }],
            },
          },
        }
        result = BridgetownNotion::Parsers::TagsParser.parse(post)
        assert_equal "tag-1 tag-2", result
      end

      it "returns a blank string by default" do
        result = BridgetownNotion::Parsers::TagsParser.parse({})
        assert_equal "", result
      end
    end
  end
end
