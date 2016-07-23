module LOL
  module Api
    module Endpoints
      module League
        class Master < LOL::Api::Endpoint
          require "lol/api/request"

          attr_accessor :type

          def self.call(region:, type:)
            new(region: region, type: type).data
          end

          def initialize(region:, type:)
            @region, @type = region, type
          end

          private

          def endpoint
            "/api/lol/br/v2.5/league/master?#{query}"
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
end
