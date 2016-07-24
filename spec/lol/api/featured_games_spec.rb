require 'spec_helper'

describe LOL::API::FeaturedGames do
  let(:region) { :br }

  describe '.call' do
    before do
      allow_any_instance_of(LOL::API::FeaturedGames).to receive(:data).and_return({})
    end

    it 'is a alias for #data' do
      expect_any_instance_of(LOL::API::FeaturedGames).to receive(:data)
      LOL::API::FeaturedGames.(region: region)
    end
  end

  describe '#data' do
    let(:response) { LOL::API::FeaturedGames.new(region: region).data }
    it { expect(response.status).to eq(200) }
    it { expect(response.body).to be_a(Hash) }
  end
end
