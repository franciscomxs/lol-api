module LOL
  module Api
    module Endpoints
      class Summoner
        class Name < LOL::Api::Endpoint
          attrs :region, :summoner_ids

          private

          def endpoint
            "/api/lol/#{normalized_region}/v1.4/summoner/#{summoner_ids}/name?#{query}"
          end
        end
      end
    end
  end
end
