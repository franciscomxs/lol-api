module LOL
  module API
    class ChampionMastery
      class Champions < LOL::API::Endpoint
        attrs :region, :summoner_id

        private

        def endpoint
          "/championmastery/location/#{normalized_region}/player/#{summoner_id}/champions?#{query}"
        end
      end
    end
  end
end
