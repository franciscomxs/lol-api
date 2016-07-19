require 'spec_helper'

describe LOL::Api do
  it 'has a version number' do
    expect(LOL::Api::VERSION).to eq('0.1.0')
  end

  describe '.configure' do
    before  do
      LOL::Api.configure { |c| c.api_key = 1 }
    end

    it 'has configurable api_key' do
      expect(LOL::Api.configuration.api_key).to eq(1)
    end
  end
end
