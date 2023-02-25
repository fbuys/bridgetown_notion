# frozen_string_literal: true

require_relative "../../helper"

class TestCategoriesParser < Bridgetown::TestCase
  describe BridgetownNotion::Parsers::CategoriesParser do
    describe "#parse" do
      it "returns parsed title from post" do
        post = {
          "properties" => {
            "categories" => {
              "multi_select" => [{ "name" => "cat-1" }, { "name" => "cat-2" }],
            },
          },
        }
        result = BridgetownNotion::Parsers::CategoriesParser.parse(post)
        assert_equal "cat-1 cat-2", result
      end

      it "returns a blank string by default" do
        result = BridgetownNotion::Parsers::CategoriesParser.parse({})
        assert_equal "", result
      end
    end
  end
end
