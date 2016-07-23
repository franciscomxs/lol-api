module LOL
  module Api
    module Endpoints
      class FeaturedGames < LOL::Api::Endpoint
        require "lol/api/request"

        def self.call(region:)
          new(region: region).data
        end

        def initialize(region:)
          @region = region
        end

        private

        def endpoint
          "/observer-mode/rest/featured?#{query}"
        end
      end
    end
  end
end
