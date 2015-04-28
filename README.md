![newclear gem logo](http://i.imgur.com/9zP1VGD.png)

**newclear gem** - Your one line and relax solution to a ground up rebuild of your iOS or Android RubyMotion app.

## Why?
Sometimes a build gets _FUBAR_.   When you run `rake newclear` it builds your project from the ground up without you having to interact at each step in the rebuild process.  _Just type and chillax._

## Usage
**newclear** comes with 3 helpful rake tasks.

#### nuke
`[bundle exec] rake nuke`

`nuke` clears everything from previous builds and fetches fresh resources in the correct order.  This is excellent for tests.

#### newclear
`[bundle exec] rake newclear`

`newclear` gives you a new and clear run of your build.  This runs `nuke` and then `rake` (`rake device` for android if you have no emulator running).  This is great for kicking off the rebuild to clear any cruft that might be crashing your app.

#### newclear:debug
`[bundle exec] rake newclear:debug`

`newclear:debug` gives you the detected parameters of your setup.  If you have _any_ complication with newclear, be sure to use this to makes sure newclear is detecing your system setup correctly.

#### How does it work?
If you want to trace the logic, here's what the command does:
![newclear logic tree](./_art/newclear_flow_chart.png)

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
5. Update the flow-chart if applicable [Flow-Chart](https://docs.google.com/drawings/d/1U7gq40TGMi5t8DkBAEfOB57SnjkfiKTRCUdfRtTAaWo/edit?usp=sharing)
6. Hula hoop and down a beer in under a minute.
7. Create new Pull Request
