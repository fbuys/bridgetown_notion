# frozen_string_literal: true

require_relative "../../helper"

class TestHeading6MarkdownGenerator < Bridgetown::TestCase
  describe BridgetownNotion::MarkdownGenerators::Heading6MarkdownGenerator do
    describe "#parse" do
      it "returns heading 6 representation of text" do
        text = "Small heading"
        result = BridgetownNotion::MarkdownGenerators::Heading6MarkdownGenerator.generate(text)
        assert_equal "###### Small heading\n", result
      end
    end
  end
end
