require 'spec_helper'

describe LOL::Api::Endpoints::Summoner::Name do
  let(:region) { 'BR1' }
  let(:summoner_ids) { '4691228' }

  describe '.call' do
    before do
      allow_any_instance_of(LOL::Api::Endpoints::Summoner::Name).to receive(:data).and_return({})
    end

    it 'is a alias for #data' do
      expect_any_instance_of(LOL::Api::Endpoints::Summoner::Name).to receive(:data)
      LOL::Api::Endpoints::Summoner::Name.(region: region, summoner_ids: summoner_ids)
    end
  end

  describe '#data' do
    let(:response) { LOL::Api::Endpoints::Summoner::Name.new(region: region, summoner_ids: summoner_ids).data }
    it { expect(response.status).to eq(200) }
    it { expect(response.body).to be_a(Hash) }
  end
end