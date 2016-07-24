module LOL
  module API
    class Response
      require 'active_support/core_ext/object/blank'
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
        prepare(ActiveSupport::JSON.decode(body))
      end

      def prepare(json)
        if json.is_a?(Hash)
          json.deep_transform_keys(&:underscore).
          with_indifferent_access
        elsif json.is_a?(Array)
          json.map { |j| prepare(j) }
        else
          prepare({'data' => json})
        end
      end
    end
  end
end
