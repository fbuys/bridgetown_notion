# frozen_string_literal: true

module BridgetownNotion
  class Builder < Bridgetown::Builder
    def build
      liquid_tag "sample_plugin" do
        "This plugin works!"
      end
    end
  end
end

BridgetownNotion::Builder.register
