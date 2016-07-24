module LOL
  module Api
    module Endpoints
      class Summoner
        class Runes < LOL::Api::Endpoint
          attrs :region, :summoner_ids

          private

          def endpoint
            "/api/lol/#{normalized_region}/v1.4/summoner/#{summoner_ids}/runes?#{query}"
          end
        end
      end
    end
  end
end
