# newclear

*Newclear Gem* - Your one line and walk solution to a ground up rebuild.

## Installation

Add this line to your application's Gemfile:

    gem 'newclear'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install newclear

## Usage

`[bundle exec] rake newclear`

Which actually just runs `bundle exec rake clean:all && reset-sim && bundle && bundle exec pod setup && bundle exec rake pod:install && bundle exec rake`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
