module LOL
  module API
    class Summoner
      class Masteries < LOL::API::Endpoint
        attrs :region, :summoner_ids

        private

        def endpoint
          "/api/lol/#{normalized_region}/v1.4/summoner/#{summoner_ids}/masteries/?#{query}"
        end
      end
    end
  end
end
