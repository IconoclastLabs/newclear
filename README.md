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

### Run either of these lovely commands and then take a LONG walk.

`[bundle exec] rake nuke`

`nuke` clears everything.  Which actually just runs `rake clean:all && reset-sim && bundle && pod setup && rake pod:install`


`[bundle exec] rake newclear`

`newclear` gives you a new and clear run of your build.  This runs `nuke` and then `rake`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
