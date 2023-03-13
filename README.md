# Bridgetown Notions CMS Plugin

A Bridgetown plugin to pull content directly out of a Notion database. Each page in the 
Notion database is added to your posts collection in Bridgetown.


## Installation

1. Run this command to add this plugin to your site's Gemfile:

```shell
$ bundle add bridgetown_notion
```

2. Add the following to your site's `config/initializers.rb`:

```ruby
Bridgetown.configure do |config|
  init :bridgetown_notion do
    notion_key '<your-notion-connection-key>'
    notion_db_id '<your-notion-db-id>'
  end
end
```

You should consider using environment variables to store the `notion_key` and `notion_db_id`.
It is generally a bad practice to store credentials in version control.

## Usage

### Notion Setup

[bridgetown_notion](https://github.com/fbuys/bridgetown_notion) assumes that you have a Notion
database table with the following fileds:

| Field | Type |
|-|-|
| title (required | Title |
| published_at (required) | Date |
| published | Checkbox  |
| categories | Multi-selet | 
| tags | Multi-selet | 
| author | Select |

Note the case of the fields as this is important.

You would also need to create a Notion connection that provides read access to the specific
database. You can find the [instructions for adding a connection over here](https://www.notion.so/help/add-and-manage-connections-with-the-api).

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
