module LOL
  module Api
    module Endpoints
      class ChampionMastery
        class Champions < LOL::Api::Endpoint
          attr_accessor :summoner_id

          def self.call(region:, summoner_id:)
            new(region: region, summoner_id: summoner_id).data
          end

          def initialize(region:, summoner_id:)
            @region, @summoner_id = region, summoner_id
          end

          def endpoint
            "/championmastery/location/#{normalized_region}/player/#{summoner_id}/champions?#{query}"
          end
        end
      end
    end
  end
end
