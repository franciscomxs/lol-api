require 'spec_helper'

describe LOL::Api::Endpoints::League::Challenger do
  let(:region) { 'BR1' }
  let(:type) { 'RANKED_SOLO_5x5' }

  describe '.call' do
    before do
      allow_any_instance_of(LOL::Api::Endpoints::League::Challenger).to receive(:data).and_return({})
    end

    it 'is a alias for #data' do
      expect_any_instance_of(LOL::Api::Endpoints::League::Challenger).to receive(:data)
      LOL::Api::Endpoints::League::Challenger.(region: region, type: type)
    end
  end

  describe '#data' do
    let(:response) { LOL::Api::Endpoints::League::Challenger.new(region: region, type: type).data }
    it { expect(response.status).to eq(200) }
    it { expect(response.body).to be_a(Hash) }
  end
end
