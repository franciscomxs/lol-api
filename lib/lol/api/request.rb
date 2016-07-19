module LOL
  module Api
    class Request
      require 'faraday'
      require 'lol/api/response'

      attr_accessor :endpoint, :params

      def self.call(endpoint, params = {})
        new(endpoint, params).response
      end

      def initialize(endpoint, params = {})
        @endpoint, @params = endpoint, params
      end

      def response
        response = conn.get(endpoint, params)
        LOL::Api::Response.new(response.status, response.body)
      end

      private

      def conn
        @conn ||= Faraday.new(url: 'https://br.api.pvp.net')
      end
    end
  end
end
