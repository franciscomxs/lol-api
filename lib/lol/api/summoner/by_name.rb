module LOL
  module Api
    class Summoner
      class ByName < LOL::Api::Endpoint
        attrs :region, :summoner_names

        private

        def endpoint
          "/api/lol/#{normalized_region}/v1.4/summoner/by-name/#{summoner_names}?#{query}"
        end
      end
    end
  end
end
