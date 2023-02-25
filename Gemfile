# frozen_string_literal: true

source "https://rubygems.org"
gemspec

gem "bridgetown", ENV["BRIDGETOWN_VERSION"] if ENV["BRIDGETOWN_VERSION"]

group :test do
  gem "debug", ">= 1.0.0"
  gem "minitest"
  gem "minitest-reporters"
  gem "shoulda"
  gem "timecop"
  gem "webmock"
end
