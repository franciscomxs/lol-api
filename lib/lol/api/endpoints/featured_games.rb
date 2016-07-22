module LOL
  module Api
    module Endpoints
      class FeaturedGames < LOL::Api::Endpoint
        require "lol/api/request"

        attr_accessor :region

        def self.call(region:)
          new(region: region).data
        end

        def initialize(region:)
          @region = region
        end

        def data
          LOL::Api::Request.(endpoint)
        end

        private

        def endpoint
          "/observer-mode/rest/featured?#{query}"
        end
      end
    end
  end
end
