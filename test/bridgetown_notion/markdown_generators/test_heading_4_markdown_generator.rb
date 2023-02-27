# frozen_string_literal: true

require_relative "../../helper"

class TestHeading4MarkdownGenerator < Bridgetown::TestCase
  describe BridgetownNotion::MarkdownGenerators::Heading4MarkdownGenerator do
    describe "#parse" do
      it "returns heading 4 representation of text" do
        text = "Section heading"
        result = BridgetownNotion::MarkdownGenerators::Heading4MarkdownGenerator.generate(text)
        assert_equal "#### Section heading\n", result
      end
    end
  end
end
