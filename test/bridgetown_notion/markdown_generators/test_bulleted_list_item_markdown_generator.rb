# frozen_string_literal: true

require_relative "../../helper"

class TestBulletedListItemMarkdownGenerator < Bridgetown::TestCase
  describe BridgetownNotion::MarkdownGenerators::BulletedListItemMarkdownGenerator do
    describe "#parse" do
      it "returns paragraph representation of text" do
        text = "A bullet list item"
        result = BridgetownNotion::MarkdownGenerators::BulletedListItemMarkdownGenerator
          .generate(text)
        assert_equal "- A bullet list item\n", result
      end
    end
  end
end
