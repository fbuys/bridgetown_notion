# frozen_string_literal: true

require_relative "../../helper"

class TestSlugParser < Bridgetown::TestCase
  describe BridgetownNotion::Parsers::SlugParser do
    describe "#parse" do
      it "returns true if published is checked" do
        post = {
          "properties" => {
            "title"        => {
              "title" => [{
                "text" => { "content" => "Title text" },
              }],
            },
            "published_at" => {
              "date" => { "start" => "2023-01-01" },
            },
          },
        }
        result = BridgetownNotion::Parsers::SlugParser.parse(post)
        assert_equal "2023-01-01-title-text", result
      end
    end
  end
end
