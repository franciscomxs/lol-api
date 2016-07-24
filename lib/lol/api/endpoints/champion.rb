module LOL
  module Api
    module Endpoints
      class Champion < LOL::Api::Endpoint
        attrs :region, :champion_id, :free_to_play

        private

        def endpoint
          "/api/lol/#{normalized_region}/v1.2/champion/#{champion_id}?#{query}"
        end

        def params
          # The API only accepts 'true' as value
          super.tap do |hash|
            hash.merge!(freeToPlay: 'true') if free_to_play
          end
        end
      end
    end
  end
end
