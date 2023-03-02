# frozen_string_literal: true

require_relative "../../helper"

class TestParagraphMarkdownGenerator < Bridgetown::TestCase
  describe BridgetownNotion::MarkdownGenerators::ParagraphMarkdownGenerator do
    describe "#parse" do
      it "returns paragraph representation of text" do
        text = "Some paragraph"
        result = BridgetownNotion::MarkdownGenerators::ParagraphMarkdownGenerator.generate(text)
        assert_equal "Some paragraph\n", result
      end
    end
  end
end
