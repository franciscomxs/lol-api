module LOL
  module API
    class Summoner
      class ByName < LOL::API::Endpoint
        attrs :region, :summoner_names

        private

        def endpoint
          "/api/lol/#{normalized_region}/v1.4/summoner/by-name/#{summoner_names}?#{query}"
        end
      end
    end
  end
end
