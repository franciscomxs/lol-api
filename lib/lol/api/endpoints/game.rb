module LOL
  module Api
    module Endpoints
      class Game < LOL::Api::Endpoint
        require "lol/api/request"

        attr_accessor :summoner_id

        def self.call(region:, summoner_id:)
          new(region: region, summoner_id: summoner_id).data
        end

        def initialize(region:, summoner_id:)
          @region, @summoner_id = region, summoner_id
        end

        private

        def endpoint
          "/api/lol/#{normalized_region}/v1.3/game/by-summoner/#{summoner_id}/recent?#{query}"
        end
      end
    end
  end
end
