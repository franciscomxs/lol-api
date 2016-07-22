module LOL
  module Api
    module Endpoints
      class ChampionMastery
        class TopChampions < LOL::Api::Endpoint
          require "lol/api/request"

          attr_accessor :region, :summoner_id, :count

          def self.call(region:, summoner_id:, count: false)
            new(region: region, summoner_id: summoner_id, count: count).data
          end

          def initialize(region:, summoner_id:, count: false)
            @region, @summoner_id, @count = region, summoner_id, count
          end

          def data
            LOL::Api::Request.(endpoint)
          end

          def endpoint
            "/championmastery/location/#{region}/player/#{summoner_id}/topchampions?#{query}"
          end

          def params
            super.tap do |hash|
              hash.merge!(count: count) if count
            end
          end
        end
      end
    end
  end
end
