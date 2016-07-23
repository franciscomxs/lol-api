module LOL
  module Api
    module Endpoints
      class ChampionMastery
        class Champion < LOL::Api::Endpoint
          attr_accessor :summoner_id, :champion_id

          def self.call(region:, summoner_id:, champion_id:)
            new(region: region, summoner_id: summoner_id, champion_id: champion_id).data
          end

          def initialize(region:, summoner_id:, champion_id:)
            @region, @summoner_id, @champion_id = region, summoner_id, champion_id
          end

          def endpoint
            "/championmastery/location/#{normalized_region}/player/#{summoner_id}/champion/#{champion_id}?#{query}"
          end
        end
      end
    end
  end
end
