module LOL
  module Api
    module Endpoints
      class FeaturedGames < LOL::Api::Endpoint
        attrs :region

        private

        def endpoint
          "/observer-mode/rest/featured?#{query}"
        end
      end
    end
  end
end
