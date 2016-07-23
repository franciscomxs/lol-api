module LOL
  module Api
    module Endpoints
      module League
        class BySummoner
          class Entry < LOL::Api::Endpoint
            require "lol/api/request"

            attr_accessor :region, :summoner_id

            def self.call(region:, summoner_id:)
              new(region: region, summoner_id: summoner_id).data
            end

            def initialize(region:, summoner_id:)
              @region, @summoner_id = region, summoner_id
            end

            def data
              LOL::Api::Request.(endpoint)
            end

            private

            def endpoint
              "/api/lol/br/v2.5/league/by-summoner/#{summoner_id}/entry?#{query}"
            end
          end
      end
      end
    end
  end
end
