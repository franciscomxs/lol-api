$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'lol/api'
require 'pry'

RSpec.configure do |config|
  config.around(:each) do |example|
    VCR.use_cassette(example.metadata[:full_description]) do
      example.run
    end
  end
end

Dir[File.dirname(__FILE__) + '/support/**/*.rb'].each {|file| require file }

LOL::API.configure do |config|
  config.api_key = ENV['API_KEY']
end
