# frozen_string_literal: true

require_relative "../../helper"

class TestPublishedAtParser < Bridgetown::TestCase
  describe BridgetownNotion::Parsers::PublishedAtParser do
    describe "#parse" do
      it "returns true if published is checked" do
        post = {
          "properties" => {
            "published_at" => {
              "date" => { "start" => "2023-01-01" },
            },
          },
        }
        result = BridgetownNotion::Parsers::PublishedAtParser.parse(post)
        assert_equal "2023-01-01", result
      end

      it "returns nil by default" do
        result = BridgetownNotion::Parsers::PublishedAtParser.parse({})
        assert_nil result
      end
    end
  end
end
