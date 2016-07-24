require 'spec_helper'

describe LOL::Api::ChampionMastery::Score do
  let(:region) { :br }
  let(:summoner_id) { '4691228' }

  describe '.call' do
    before do
      allow_any_instance_of(LOL::Api::ChampionMastery::Score).to receive(:data).with(region: region, summoner_id: summoner_id).and_return({})
    end

    it 'is a alias for #data' do
      expect_any_instance_of(LOL::Api::ChampionMastery::Score).to receive(:data)
      LOL::Api::ChampionMastery::Score.(region: region, summoner_id: summoner_id)
    end
  end

  describe '#data' do
    let(:response) { LOL::Api::ChampionMastery::Score.new(region: region, summoner_id: summoner_id).data }
    it { expect(response.status).to eq(200) }
    it { expect(response.body).to be_a(Hash) }
  end
end
