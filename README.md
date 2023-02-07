# Bridgetown Notions CMS Plugin

A Bridgetown plugin to pull content directly out of a Notion database. Each page in the 
Notion database is added to your posts collection in Bridgetown.

This plugin pulls following fields:

| Field | Type |
|-|-|
| title (required | Title |
| published_at (required) | Date |
| published | Checkbox  |
| categories | Multi-selet | 
| tags | Multi-selet | 
| author | Select |

## Installation

1. Run this command to add this plugin to your site's Gemfile:

```shell
$ bundle add bridgetown_notion
```

2. Add teh following to your site's `config/initializers.rb`:

```ruby
Bridgetown.configure do |config|
  init :bridgetown_notion do
    notion_key ENV.fetch('NOTION_KEY') || 'notion-integration-key'
    notion_db_id ENV.fetch('NOTION_DB_ID') || 'notion-database-id'
  end
end
```


## Usage

The plugin will…

…

## Testing

* Run `bundle exec rake test` to run the test suite
* Or run `script/cibuild` to validate with Rubocop and Minitest together.

## Contributing

1. Fork it (https://github.com/username/my-awesome-plugin/fork)
2. Clone the fork using `git clone` to your local development machine.
3. Create your feature branch (`git checkout -b my-new-feature`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request
