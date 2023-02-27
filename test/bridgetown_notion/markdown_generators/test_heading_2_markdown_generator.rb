# frozen_string_literal: true

require_relative "../../helper"

class TestHeading2MarkdownGenerator < Bridgetown::TestCase
  describe BridgetownNotion::MarkdownGenerators::Heading2MarkdownGenerator do
    describe "#parse" do
      it "returns heading 2 representation of text" do
        text = "Another heading"
        result = BridgetownNotion::MarkdownGenerators::Heading2MarkdownGenerator.generate(text)
        assert_equal "## Another heading\n", result
      end
    end
  end
end
