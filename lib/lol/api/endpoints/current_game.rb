module LOL
  module Api
    module Endpoints
      class CurrentGame < LOL::Api::Endpoint
        attr_accessor :summoner_id

        def self.call(region:, summoner_id:)
          new(region: region, summoner_id: summoner_id).data
        end

        def initialize(region:, summoner_id:)
          @region, @summoner_id = region, summoner_id
        end

        private

        def endpoint
          "/observer-mode/rest/consumer/getSpectatorGameInfo/#{normalized_region}/#{summoner_id}?#{query}"
        end
      end
    end
  end
end
