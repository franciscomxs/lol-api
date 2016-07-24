module LOL
  module Api
    class Summoner
      class Masteries < LOL::Api::Endpoint
        attrs :region, :summoner_ids

        private

        def endpoint
          "/api/lol/#{normalized_region}/v1.4/summoner/#{summoner_ids}/masteries/?#{query}"
        end
      end
    end
  end
end
