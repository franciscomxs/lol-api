module LOL
  module Api
    module Endpoints
      class ChampionMastery
        class Champions < LOL::Api::Endpoint
          require "lol/api/request"

          attr_accessor :region, :summoner_id

          def self.call(region:, summoner_id:)
            new(region: region, summoner_id: summoner_id).data
          end

          def initialize(region:, summoner_id:)
            @region, @summoner_id = region, summoner_id
          end

          def data
            LOL::Api::Request.(endpoint)
          end

          def endpoint
            "/championmastery/location/#{region}/player/#{summoner_id}/champions?#{query}"
          end
        end
      end
    end
  end
end
