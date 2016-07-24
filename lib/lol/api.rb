require "lol/api/version"
require "lol/api/configuration"

require "lol/api/endpoint"
require "lol/api/request"
require "lol/api/response"

require "lol/api/current_game"
require "lol/api/summoner"
require "lol/api/summoner/by_name"
require "lol/api/summoner/name"
require "lol/api/summoner/runes"
require "lol/api/summoner/masteries"
require "lol/api/champion"
require "lol/api/champion_mastery/champion"
require "lol/api/champion_mastery/champions"
require "lol/api/champion_mastery/score"
require "lol/api/champion_mastery/top_champions"
require "lol/api/featured_games"
require "lol/api/game"
require "lol/api/league/by_summoner"
require "lol/api/league/by_summoner/entry"
require "lol/api/league/challenger"
require "lol/api/league/master"

module LOL
  module Api
    class << self
      attr_accessor :configuration
      def configure
        self.configuration ||= Configuration.new
        yield(configuration)
      end
    end
  end
end
