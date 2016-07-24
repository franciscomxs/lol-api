module LOL
  module Api
    class CurrentGame < LOL::Api::Endpoint
      attrs :region, :summoner_id

      private

      def endpoint
        "/observer-mode/rest/consumer/getSpectatorGameInfo/#{normalized_region}/#{summoner_id}?#{query}"
      end
    end
  end
end
