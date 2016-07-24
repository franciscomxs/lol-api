module LOL
  module API
    class Game < LOL::API::Endpoint
      attrs :region, :summoner_id

      private

      def endpoint
        "/api/lol/#{normalized_region}/v1.3/game/by-summoner/#{summoner_id}/recent?#{query}"
      end
    end
  end
end
