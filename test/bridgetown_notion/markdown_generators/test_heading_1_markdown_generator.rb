# frozen_string_literal: true

require_relative "../../helper"

class TestHeading1MarkdownGenerator < Bridgetown::TestCase
  describe BridgetownNotion::MarkdownGenerators::Heading1MarkdownGenerator do
    describe "#parse" do
      it "returns heading 1 representation of text" do
        text = "Some heading"
        result = BridgetownNotion::MarkdownGenerators::Heading1MarkdownGenerator.generate(text)
        assert_equal "# Some heading\n", result
      end
    end
  end
end
