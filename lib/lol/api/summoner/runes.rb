module LOL
  module API
    class Summoner
      class Runes < LOL::API::Endpoint
        attrs :region, :summoner_ids

        private

        def endpoint
          "/api/lol/#{normalized_region}/v1.4/summoner/#{summoner_ids}/runes?#{query}"
        end
      end
    end
  end
end
