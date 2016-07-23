module LOL
  module Api
    module Endpoints
      class ChampionMastery
        class Score < LOL::Api::Endpoint
          attr_accessor :summoner_id

          def self.call(region:, summoner_id:)
            new(region: region, summoner_id: summoner_id).data
          end

          def initialize(region:, summoner_id:)
            @region, @summoner_id = region, summoner_id
          end

          def endpoint
            "/championmastery/location/#{normalized_region}/player/#{summoner_id}/score?#{query}"
          end
        end
      end
    end
  end
end
