# frozen_string_literal: true

require_relative "lib/bridgetown_notion/version"

Gem::Specification.new do |spec|
  spec.name          = "bridgetown_notion"
  spec.version       = BridgetownNotion::VERSION
  spec.author        = "Francois Buys"
  spec.email         = "buys.fran@gmail.com"
  spec.summary       = "Integrates with Notion so we can use notion like a CMS"
  spec.homepage      = "https://github.com/fbuys/bridgetown_notion"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r!^(test|script|spec|features|frontend)/!) }
  spec.test_files    = spec.files.grep(%r!^test/!)
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.7.0"

  spec.add_dependency "bridgetown", ">= 1.0", "< 2.0"
  spec.add_dependency "notion-ruby-client",  ">= 1.0", "< 2.0"
  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", ">= 13.0"
  spec.add_development_dependency "rubocop-bridgetown", "~> 0.3"
end
