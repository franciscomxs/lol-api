module LOL
  module Api
    module Endpoints
      class ChampionMastery
        class Champion < LOL::Api::Endpoint
          attrs :region, :summoner_id, :champion_id

          private

          def endpoint
            "/championmastery/location/#{normalized_region}/player/#{summoner_id}/champion/#{champion_id}?#{query}"
          end
        end
      end
    end
  end
end
