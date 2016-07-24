module LOL
  module API
    module League
      class BySummoner < LOL::API::Endpoint
        attrs :region, :summoner_id

        private

        def endpoint
          "/api/lol/br/v2.5/league/by-summoner/#{summoner_id}?#{query}"
        end
      end
    end
  end
end
