module LOL
  module Api
    class Request
      require 'httparty'
      require 'lol/api/response'

      attr_accessor :url

      def self.call(url)
        new(url).response
      end

      def initialize(url)
        @url = url
      end

      def response
        res = HTTParty.get(url)
        LOL::Api::Response.new(res.code, res.body)
      end
    end
  end
end
