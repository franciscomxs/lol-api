module LOL
  module Api
    class Response
      require 'active_support/json/decoding'
      require 'active_support/core_ext/hash/keys'
      require 'active_support/core_ext/string/inflections'
      require 'active_support/core_ext/hash/indifferent_access'

      attr_accessor :status, :body

      def initialize(status, body)
        @status, @body = status, json(body)
      end

      private

      def json(body)
        ActiveSupport::JSON.decode(body).
          deep_transform_keys(&:underscore).
          with_indifferent_access
      end
    end
  end
end
