module LOL
  module Api
    module Endpoints
      class Summoner
        class Name < LOL::Api::Endpoint
          attr_accessor :summoner_ids

          def self.call(region:, summoner_ids:)
            new(region: region, summoner_ids: summoner_ids).data
          end

          def initialize(region:, summoner_ids:)
            @region, @summoner_ids = region, summoner_ids
          end

          def endpoint
            "/api/lol/#{normalized_region}/v1.4/summoner/#{summoner_ids}/name?#{query}"
          end
        end
      end
    end
  end
end
