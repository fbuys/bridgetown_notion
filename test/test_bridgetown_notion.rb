# frozen_string_literal: true

require_relative "./helper"

class TestBridgetownNotion < Bridgetown::TestCase
  def setup
    Timecop.freeze(Time.local(2023, 1, 1, 12, 0, 0))
    Bridgetown.reset_configuration!
    @config = Bridgetown.configuration(
      "root_dir"    => root_dir,
      "source"      => source_dir,
      "destination" => dest_dir,
      "quiet"       => true
    )
    @config.run_initializers! context: :static
    @site = Bridgetown::Site.new(@config)
  end

  def teardown
    Timecop.return
  end

  describe "bridgeown_notion plugin" do
    it "adds resources to the posts collection" do
      results = [{
        title: "Test title",
        published_at: "2023-01-01",
        published: true,
        content: "Test content",
      }]

      BridgetownNotion::NotionPostsFactory.stub :create_posts, results do
        @site.process
        @post = @site.collections.posts.resources[0].data
        assert_equal @post.keys.sort, %w[categories date layout locale published slug tags title]
        assert_equal @post.values, [[], :post, nil, [], "Test title", :en, ".md", Time.now]
      end
    end
  end
end
