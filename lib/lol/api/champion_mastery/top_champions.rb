module LOL
  module Api
    class ChampionMastery
      class TopChampions < LOL::Api::Endpoint
        attrs :region, :summoner_id, :count

        private

        def endpoint
          "/championmastery/location/#{normalized_region}/player/#{summoner_id}/topchampions?#{query}"
        end

        def params
          super.tap do |hash|
            hash.merge!(count: count) if count
          end
        end
      end
    end
  end
end
