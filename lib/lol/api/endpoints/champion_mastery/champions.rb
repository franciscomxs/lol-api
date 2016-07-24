module LOL
  module Api
    module Endpoints
      class ChampionMastery
        class Champions < LOL::Api::Endpoint
          attrs :region, :summoner_id

          private

          def endpoint
            "/championmastery/location/#{normalized_region}/player/#{summoner_id}/champions?#{query}"
          end
        end
      end
    end
  end
end
