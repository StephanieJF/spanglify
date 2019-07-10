# Spanglify

Spanglify converts a string in English to a string in _Spanglish_. Spanglish is the broad term used for the hybrid language created by combining English and Spanish. Although there are several variations of Spanglish, this gem will use what is known as code-switching (using both English and Spanish words or phrases in the same sentence).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spanglify'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spanglify

## Usage
```ruby
require "spanglify"

Spanglify::Spanglify.process("I like to dance, but I am very shy.")
    #=> "Me gusta to dance, pero I am muy shy."
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/StephanieJF/spanglify.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
