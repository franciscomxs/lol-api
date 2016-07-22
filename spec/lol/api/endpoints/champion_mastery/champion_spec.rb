require 'spec_helper'

describe LOL::Api::Endpoints::ChampionMastery::Champion do
  let(:region) { 'BR1' }
  let(:summoner_id) { '4691228' }
  let(:champion_id) { '1' }

  describe '.call' do
    before do
      allow_any_instance_of(LOL::Api::Endpoints::Champion).to receive(:data).with(region: region, summoner_id: summoner_id, champion_id: champion_id).and_return({})
    end

    it 'is a alias for #data' do
      expect_any_instance_of(LOL::Api::Endpoints::ChampionMastery::Champion).to receive(:data)
      LOL::Api::Endpoints::ChampionMastery::Champion.(region: region, summoner_id: summoner_id, champion_id: champion_id)
    end
  end

  describe '#data' do
    let(:response) { LOL::Api::Endpoints::ChampionMastery::Champion.new(region: region, summoner_id: summoner_id, champion_id: champion_id).data }
    it { expect(response.status).to eq(200) }
    it { expect(response.body).to be_a(Hash) }
  end
end