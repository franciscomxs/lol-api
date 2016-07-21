module LOL
  module Api
    class Endpoint
      def params
        { api_key: LOL::Api.configuration.api_key }
      end

      def query
        URI.encode_www_form(params)
      end
    end
  end
end
