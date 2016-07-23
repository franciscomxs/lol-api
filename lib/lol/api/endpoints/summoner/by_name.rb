module LOL
  module Api
    module Endpoints
      class Summoner
        class ByName < LOL::Api::Endpoint
          attr_accessor :summoner_names

          def self.call(region:, summoner_names:)
            new(region: region, summoner_names: summoner_names).data
          end

          def initialize(region:, summoner_names:)
            @region, @summoner_names = region, summoner_names
          end

          def endpoint
            "/api/lol/#{normalized_region}/v1.4/summoner/by-name/#{summoner_names}?#{query}"
          end
        end
      end
    end
  end
end
