module LOL
  module Api
    module Endpoints
      class CurrentGame
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
          "/observer-mode/rest/consumer/getSpectatorGameInfo/#{region}/#{summoner_id}?api_key=#{LOL::Api.configuration.api_key}"
        end
      end
    end
  end
end
