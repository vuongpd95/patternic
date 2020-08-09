# Patternic

Patternic helps you enforce design patterns in your codebase. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'patternic'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install patternic

## Usage

### Raise an error if child class didn't implement a method required by its parent class

```
class Animal
  include Patternic::InheritableHelpers

  def speak
    raise_if_not_implemented
  end
end

class Dog < Animal; end

Dog.new.speak

=> Patternic::MethodNotImplementedError (Dog#speak is not implemented!)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/vuongpd95/patternic. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Patternic project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/vuongpd95/patternic/blob/master/CODE_OF_CONDUCT.md).
