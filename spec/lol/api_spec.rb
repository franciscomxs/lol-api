require 'spec_helper'

describe LOL::API do
  it 'has a version number' do
    expect(LOL::API::VERSION).to eq('0.1.0')
  end

  describe '.configure' do
    before  do
      LOL::API.configure { |c| c.api_key = 1 }
    end

    it 'has configurable api_key' do
      expect(LOL::API.configuration.api_key).to eq(1)
    end
  end
end
