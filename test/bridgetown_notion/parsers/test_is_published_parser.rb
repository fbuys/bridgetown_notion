# frozen_string_literal: true

require_relative "../../helper"

class TestIsPublishedParser < Bridgetown::TestCase
  describe BridgetownNotion::Parsers::IsPublishedParser do
    describe "#parse" do
      it "returns true if published is checked" do
        post = {
          "properties" => {
            "published" => {
              "checkbox" => true,
            },
          },
        }
        result = BridgetownNotion::Parsers::IsPublishedParser.parse(post)
        assert result == true
      end

      it "returns false by default" do
        result = BridgetownNotion::Parsers::IsPublishedParser.parse({})
        assert result == false
      end
    end
  end
end
