![newclear gem logo](http://i.imgur.com/9zP1VGD.png)

**newclear gem** - Your one line and walk solution to a ground up rebuild.

## Usage

### Run either of these lovely commands and then take a _LONG_ walk.

`[bundle exec] rake nuke`

`nuke` clears everything.  Which actually just runs `rake clean:all && reset-sim && bundle && pod setup && rake pod:install`


`[bundle exec] rake newclear`

`newclear` gives you a new and clear run of your build.  This runs `nuke` and then `rake`.


## Install

Add this line to your application's Gemfile:

    gem 'newclear'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install newclear

## Dependency
We're using Rickert's lovely `reset-sim` gem in our nuke.   So be sure to have accessibility turned on for your terminal, as suggested on [the gem's github page](https://github.com/OTGApps/reset-sim#usage)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
