module LOL
  module Api
    module Endpoints
      class Summoner
        class Masteries < LOL::Api::Endpoint
          require "lol/api/request"

          attr_accessor :region, :summoner_ids

          def self.call(region:, summoner_ids:)
            new(region: region, summoner_ids: summoner_ids).data
          end

          def initialize(region:, summoner_ids:)
            @region, @summoner_ids = region, summoner_ids
          end

          def data
            LOL::Api::Request.(endpoint)
          end

          def endpoint
            "/api/lol/br/v1.4/summoner/#{summoner_ids}/masteries/?#{query}"
          end
        end
      end
    end
  end
end
