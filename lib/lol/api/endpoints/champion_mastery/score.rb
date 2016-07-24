module LOL
  module Api
    module Endpoints
      class ChampionMastery
        class Score < LOL::Api::Endpoint
          attrs :region, :summoner_id

          private

          def endpoint
            "/championmastery/location/#{normalized_region}/player/#{summoner_id}/score?#{query}"
          end
        end
      end
    end
  end
end
