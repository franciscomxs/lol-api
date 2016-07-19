require 'spec_helper'

describe LOL::Api::CurrentGame do
  let(:region) { 'BR1' }
  let(:summoner_id) { '4691228' }

  describe '.call' do
    before do
      allow_any_instance_of(LOL::Api::CurrentGame).to receive(:data).and_return({})
    end

    it 'is a alias for #data' do
      expect_any_instance_of(LOL::Api::CurrentGame).to receive(:data)
      LOL::Api::CurrentGame.(region: region, summoner_id: summoner_id)
    end
  end

  describe '#data' do
    let(:response) { LOL::Api::CurrentGame.new(region: region, summoner_id: summoner_id).data }
    it { expect(response.status).to eq(200) }
    it { expect(response.body).to be_a(Hash) }
  end
end
