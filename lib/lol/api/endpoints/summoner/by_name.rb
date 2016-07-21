module LOL
  module Api
    module Endpoints
      class Summoner
        class ByName < LOL::Api::Endpoint
          require "lol/api/request"

          attr_accessor :region, :summoner_names

          def self.call(region:, summoner_names:)
            new(region: region, summoner_names: summoner_names).data
          end

          def initialize(region:, summoner_names:)
            @region, @summoner_names = region, summoner_names
          end

          def data
            LOL::Api::Request.(endpoint)
          end

          def endpoint
            "/api/lol/br/v1.4/summoner/by-name/#{summoner_names}?#{query}"
          end
        end
      end
    end
  end
end
