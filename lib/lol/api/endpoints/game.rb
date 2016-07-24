module LOL
  module Api
    module Endpoints
      class Game < LOL::Api::Endpoint
        attrs :region, :summoner_id

        private

        def endpoint
          "/api/lol/#{normalized_region}/v1.3/game/by-summoner/#{summoner_id}/recent?#{query}"
        end
      end
    end
  end
end
