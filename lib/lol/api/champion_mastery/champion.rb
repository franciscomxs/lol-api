module LOL
  module API
    class ChampionMastery
      class Champion < LOL::API::Endpoint
        attrs :region, :summoner_id, :champion_id

        private

        def endpoint
          "/championmastery/location/#{normalized_region}/player/#{summoner_id}/champion/#{champion_id}?#{query}"
        end
      end
    end
  end
end
