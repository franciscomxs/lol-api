module LOL
  module API
    class FeaturedGames < LOL::API::Endpoint
      attrs :region

      private

      def endpoint
        "/observer-mode/rest/featured?#{query}"
      end
    end
  end
end
