require 'spec_helper'

describe LOL::API::Summoner::Runes do
  let(:region) { :br }
  let(:summoner_ids) { '4691228' }

  describe '.call' do
    before do
      allow_any_instance_of(LOL::API::Summoner::Runes).to receive(:data).and_return({})
    end

    it 'is a alias for #data' do
      expect_any_instance_of(LOL::API::Summoner::Runes).to receive(:data)
      LOL::API::Summoner::Runes.(region: region, summoner_ids: summoner_ids)
    end
  end

  describe '#data' do
    let(:response) { LOL::API::Summoner::Runes.new(region: region, summoner_ids: summoner_ids).data }
    it { expect(response.status).to eq(200) }
    it { expect(response.body).to be_a(Hash) }
  end
end
