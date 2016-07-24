require 'spec_helper'

describe LOL::Api::Summoner::ByName do
  let(:region) { :br }
  let(:summoner_names) { 'Pirokaun' }

  describe '.call' do
    before do
      allow_any_instance_of(LOL::Api::Summoner::ByName).to receive(:data).and_return({})
    end

    it 'is a alias for #data' do
      expect_any_instance_of(LOL::Api::Summoner::ByName).to receive(:data)
      LOL::Api::Summoner::ByName.(region: region, summoner_names: summoner_names)
    end
  end

  describe '#data' do
    let(:response) { LOL::Api::Summoner::ByName.new(region: region, summoner_names: summoner_names).data }
    it { expect(response.status).to eq(200) }
    it { expect(response.body).to be_a(Hash) }
  end
end
