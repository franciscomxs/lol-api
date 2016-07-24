require 'spec_helper'

describe LOL::Api::FeaturedGames do
  let(:region) { :br }

  describe '.call' do
    before do
      allow_any_instance_of(LOL::Api::FeaturedGames).to receive(:data).and_return({})
    end

    it 'is a alias for #data' do
      expect_any_instance_of(LOL::Api::FeaturedGames).to receive(:data)
      LOL::Api::FeaturedGames.(region: region)
    end
  end

  describe '#data' do
    let(:response) { LOL::Api::FeaturedGames.new(region: region).data }
    it { expect(response.status).to eq(200) }
    it { expect(response.body).to be_a(Hash) }
  end
end
