# ActiveModel::AttributeReader

Allow attr_reader attributes on ActiveModel::Model constructor.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'active_model-attribute_reader'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_model-attribute_reader

## Usage

```ruby
class Model
  include ActiveModel::Model
  include ActiveModel::AttributeReader

  attr_reader :a
  attr_accessor :b
end

model = Model.new(a: 123, b: 'value')
model.a # => 123
model.b # => 'value'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/active_model-attribute_reader.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
