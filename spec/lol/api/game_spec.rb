require 'spec_helper'

describe LOL::API::Game do
  let(:region) { :br }
  let(:summoner_id) { '4691228' }

  describe '.call' do
    before do
      allow_any_instance_of(LOL::API::Game).to receive(:data).and_return({})
    end

    it 'is a alias for #data' do
      expect_any_instance_of(LOL::API::Game).to receive(:data)
      LOL::API::Game.(region: region, summoner_id: summoner_id)
    end
  end

  describe '#data' do
    let(:response) { LOL::API::Game.new(region: region, summoner_id: summoner_id).data }
    it { expect(response.status).to eq(200) }
    it { expect(response.body).to be_a(Hash) }
  end
end
