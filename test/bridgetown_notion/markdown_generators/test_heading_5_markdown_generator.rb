# frozen_string_literal: true

require_relative "../../helper"

class TestHeading5MarkdownGenerator < Bridgetown::TestCase
  describe BridgetownNotion::MarkdownGenerators::Heading5MarkdownGenerator do
    describe "#parse" do
      it "returns heading 5 representation of text" do
        text = "Figure heading"
        result = BridgetownNotion::MarkdownGenerators::Heading5MarkdownGenerator.generate(text)
        assert_equal "##### Figure heading\n", result
      end
    end
  end
end
