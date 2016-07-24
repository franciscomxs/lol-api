# Lol::Api

[![Gem Version](https://badge.fury.io/rb/lol-api.svg)](https://badge.fury.io/rb/lol-api)
[![Build Status](https://travis-ci.org/franciscomxs/lol-api.svg?branch=master)](https://travis-ci.org/franciscomxs/lol-api)
[![Coverage Status](https://coveralls.io/repos/github/franciscomxs/lol-api/badge.svg?branch=master)](https://coveralls.io/github/franciscomxs/lol-api?branch=master)

[![Code Climate](https://codeclimate.com/github/franciscomxs/lol-api/badges/gpa.svg)](https://codeclimate.com/github/franciscomxs/lol-api)
[![Issue Count](https://codeclimate.com/github/franciscomxs/lol-api/badges/issue_count.svg)](https://codeclimate.com/github/franciscomxs/lol-api)

This lib is ruby interface to the League of Legends API.
More info about the API is available here: https://developer.riotgames.com/api/methods

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lol-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lol-api

## Usage

Before start using this gem you need to configure your API_KEY:

```ruby
require 'lol/api'

LOL::Api.configure do |config|
  config.api_key = 'YOUR_API_KEY'
end
```

You can get your `API_KEY` here: https://developer.riotgames.com/

#### Champion

```ruby
LOL::Api::Champion.(region: region)
```

```ruby
LOL::Api::Champion.(region: region, champion_id: champion_id)
```

```ruby
LOL::Api::Champion.(region: region, free_to_play: true)
```

#### Champion Mastery

```ruby
LOL::Api::ChampionMastery::Champion.(region: region, summoner_id: summoner_id, champion_id: champion_id)
```

```ruby
LOL::Api::ChampionMastery::Champions.(region: region, summoner_id: summoner_id)
```

```ruby
LOL::Api::ChampionMastery::Score.(region: region, summoner_id: summoner_id)
```

```ruby
LOL::Api::ChampionMastery::TopChampions.(region: region, summoner_id: summoner_id)
```

#### Current Game

```ruby
LOL::Api::CurrentGame.(region: region, summoner_id: summoner_id)
```

#### Featured Games

```ruby
LOL::Api::FeaturedGames.(region: region)
```

#### Game

```ruby
LOL::Api::CurrentGame.(region: region, summoner_id: summoner_id)
```

#### League

```ruby
LOL::Api::League::BySummoner.(region: region, summoner_id: summoner_id)
```

```ruby
LOL::Api::League::BySummoner::Entry.(region: region, summoner_id: summoner_id)
```

```ruby
LOL::Api::League::Challenger.(region: region, type: type)
```

```ruby
LOL::Api::League::Master.(region: region, type: type)
```

#### Summoner

```ruby
LOL::Api::Summoner.(region: region, summoner_id: summoner_id)
```

```ruby
LOL::Api::Summoner::ByName.(region: region, summoner_name: summoner_name)
```

```ruby
LOL::Api::Summoner::Masteries.(region: region, summoner_ids: summoner_ids)
```

```ruby
LOL::Api::Summoner::Runes.(region: region, summoner_ids: summoner_ids)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Testing

We need to set the API_KEY to run the specs. To do so, just run:

    $ API_KEY=YOUR_API_KEY rspec

After this, take a look on test coverage (report will be available on coverage/index.html). We intent to keep a 100% test coverage.


# Todo:

- Implement the following methods/endpoints:

```ruby
LOL::Api::League::ByTeam
LOL::Api::League::ByTeam::Entry
```

- Add validations to all params

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/franciscomxs/lol-api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
