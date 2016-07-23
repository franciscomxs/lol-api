module LOL
  module Api
    class Endpoint
      attr_accessor :region

      def data
        LOL::Api::Request.(endpoint)
      end

      def params
        { api_key: LOL::Api.configuration.api_key }
      end

      def query
        URI.encode_www_form(params)
      end
    end
  end
end
