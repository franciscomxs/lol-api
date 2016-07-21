module LOL
  module Api
    module Endpoints
      class Champion
        require "lol/api/request"

        attr_accessor :region, :champion_id, :free_to_play

        def self.call(region:, champion_id: '', free_to_play: '')
          new(region: region, champion_id: champion_id, free_to_play: free_to_play).data
        end

        def initialize(region:, champion_id:, free_to_play:)
          @region, @champion_id, @free_to_play = region, champion_id, free_to_play
        end

        def data
          LOL::Api::Request.(endpoint)
        end

        private

        def endpoint
          "/api/lol/#{region}/v1.2/champion/#{champion_id}?api_key=#{LOL::Api.configuration.api_key}#{free_to_play?}"
        end

        def free_to_play?
          # The API only recognize true as argument.
          free_to_play == 'true' ? "&freeToPlay=true" : ""
        end
      end
    end
  end
end
