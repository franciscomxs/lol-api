require "lol/api/version"
require "lol/api/configuration"
require "lol/api/current_game"

module LOL
  module Api
    class << self
      attr_accessor :configuration
      def configure
        self.configuration ||= Configuration.new
        yield(configuration)
      end
    end
  end
end
