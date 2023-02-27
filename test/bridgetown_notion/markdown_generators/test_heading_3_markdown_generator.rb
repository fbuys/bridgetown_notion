# frozen_string_literal: true

require_relative "../../helper"

class TestHeading3MarkdownGenerator < Bridgetown::TestCase
  describe BridgetownNotion::MarkdownGenerators::Heading3MarkdownGenerator do
    describe "#parse" do
      it "returns heading 3 representation of text" do
        text = "Section heading"
        result = BridgetownNotion::MarkdownGenerators::Heading3MarkdownGenerator.generate(text)
        assert_equal "### Section heading\n", result
      end
    end
  end
end
