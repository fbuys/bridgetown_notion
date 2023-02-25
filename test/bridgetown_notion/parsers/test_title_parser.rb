# frozen_string_literal: true

require_relative "../../helper"

class TestTitleParser < Bridgetown::TestCase
  describe BridgetownNotion::Parsers::TitleParser do
    describe "#parse" do
      it "returns parsed title from post" do
        post = {
          "properties" => {
            "title" => {
              "title" => [{ "text" => { "content"=>"TitleParser title" } }],
            },
          },
        }
        result = BridgetownNotion::Parsers::TitleParser.parse(post)
        assert_equal "TitleParser title", result
      end
    end
  end
end
