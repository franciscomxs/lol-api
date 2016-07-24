module LOL
  module API
    module League
      class Challenger < LOL::API::Endpoint
        attrs :region, :type

        private

        def endpoint
          "/api/lol/#{normalized_region}/v2.5/league/challenger?#{query}"
        end

        def params
          super.tap do |hash|
            hash.merge!(type: type)
          end
        end
      end
    end
  end
end
