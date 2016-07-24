module LOL
  module API
    class Summoner < LOL::API::Endpoint
      attrs :region, :summoner_ids

      private

      def endpoint
        "/api/lol/#{normalized_region}/v1.4/summoner/#{summoner_ids}?#{query}"
      end
    end
  end
end
