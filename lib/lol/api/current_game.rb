module LOL
  module API
    class CurrentGame < LOL::API::Endpoint
      attrs :region, :summoner_id

      private

      def endpoint
        "/observer-mode/rest/consumer/getSpectatorGameInfo/#{normalized_region}/#{summoner_id}?#{query}"
      end
    end
  end
end
