require "lol/api/version"
require "lol/api/configuration"
require "lol/api/endpoint"
require "lol/api/endpoints/current_game"
require "lol/api/endpoints/summoner"
require "lol/api/endpoints/summoner/by_name"
require "lol/api/endpoints/summoner/name"
require "lol/api/endpoints/summoner/runes"
require "lol/api/endpoints/summoner/masteries"
require "lol/api/endpoints/champion"
require "lol/api/endpoints/champion_mastery/champion"
require "lol/api/endpoints/champion_mastery/champions"
require "lol/api/endpoints/champion_mastery/score"
require "lol/api/endpoints/champion_mastery/top_champions"
require "lol/api/endpoints/featured_games"

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
