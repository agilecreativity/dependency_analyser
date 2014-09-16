## Dependency Analyser

Solution to the [codekata - transitive_dependencies][] problem as ruby gem

### Installation

Add this line to your application's Gemfile:

    gem 'dependency_analyser'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dependency_analyser

### Usage

Use as library try

```ruby
require 'dependency_analyser'
include DependencyAnalyser
# then call the appropriate functions
```

List of available Rake target

```shell
rake build    # Build dependency_analyser-0.1.0.gem into the pkg directory
rake install  # Build and install dependency_analyser-0.1.0.gem into system gems
rake test     # Run tests
```

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[Thor]: https://github.com/erikhuda/thor
[Minitest]: https://github.com/seattlerb/minitest
[RSpec]: https://github.com/rspec
[Guard]: https://github.com/guard/guard
[Yard]: https://github.com/lsegal/yard
[Pry]: https://github.com/pry/pry
[Rubocop]: https://github.com/bbatsov/rubocop
[Grit]: https://github.com/mojombo/grit
[codekata - transitive_dependencies]: http://codekata.com/kata/kata18-transitive-dependencies/
