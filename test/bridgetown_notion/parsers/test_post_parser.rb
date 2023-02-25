# frozen_string_literal: true

require_relative "../../helper"

class TestPostParser < Bridgetown::TestCase
  describe BridgetownNotion::Parsers::PostParser do
    describe "#parse" do
      it "returns an instance of BridgetownNotion::Parsers::PostParser" do
        result = BridgetownNotion::Parsers::PostParser.parse({})
        assert_instance_of BridgetownNotion::Parsers::PostParser, result
      end
    end

    describe ".method_missing" do
      it "calls  a parser that matches the called method" do
        BridgetownNotion::Parsers::TitleParser.stub :parse, "Parsed title" do
          title = BridgetownNotion::Parsers::PostParser.parse({}).title
          assert_equal "Parsed title", title
        end
      end
    end
  end
end
