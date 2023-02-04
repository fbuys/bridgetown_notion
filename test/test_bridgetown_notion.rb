# frozen_string_literal: true

require_relative "./helper"

class TestBridgetownNotion < Bridgetown::TestCase
  def setup
    @site = Bridgetown::Site.new(Bridgetown.configuration(
                                   "root_dir"    => root_dir,
                                   "source"      => source_dir,
                                   "destination" => dest_dir,
                                   "quiet"       => true
                                 ))
  end
end
