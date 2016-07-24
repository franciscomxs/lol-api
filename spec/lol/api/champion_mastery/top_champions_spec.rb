require 'spec_helper'

describe LOL::Api::ChampionMastery::TopChampions do
  let(:region) { :br }
  let(:summoner_id) { '4691228' }
  let(:count) { 5 }

  describe '.call' do
    before do
      allow_any_instance_of(LOL::Api::ChampionMastery::TopChampions).to receive(:data).with(region: region, summoner_id: summoner_id, count: count).and_return({})
    end

    it 'is a alias for #data' do
      expect_any_instance_of(LOL::Api::ChampionMastery::TopChampions).to receive(:data)
      LOL::Api::ChampionMastery::TopChampions.(region: region, summoner_id: summoner_id, count: count)
    end
  end

  describe '#data' do
    let(:response) { LOL::Api::ChampionMastery::TopChampions.new(region: region, summoner_id: summoner_id, count: count).data }
    it { expect(response.status).to eq(200) }
    it { expect(response.body).to be_a(Array) }
    it { expect(response.body.count).to eq(count) }
    it { expect(response.body.first).to be_a(Hash) }
  end
end
