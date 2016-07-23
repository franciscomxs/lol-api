module LOL
  module Api
    module Endpoints
      module League
        class Challenger < LOL::Api::Endpoint
          require "lol/api/request"

          attr_accessor :region, :type

          def self.call(region:, type:)
            new(region: region, type: type).data
          end

          def initialize(region:, type:)
            @region, @type = region, type
          end

          def data
            LOL::Api::Request.(endpoint)
          end

          private

          def endpoint
            "/api/lol/br/v2.5/league/challenger?#{query}"
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
