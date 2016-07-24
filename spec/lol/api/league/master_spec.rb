require 'spec_helper'

describe LOL::API::League::Master do
  let(:region) { :br }
  let(:type) { 'RANKED_SOLO_5x5' }

  describe '.call' do
    before do
      allow_any_instance_of(LOL::API::League::Master).to receive(:data).and_return({})
    end

    it 'is a alias for #data' do
      expect_any_instance_of(LOL::API::League::Master).to receive(:data)
      LOL::API::League::Master.(region: region, type: type)
    end
  end

  describe '#data' do
    let(:response) { LOL::API::League::Master.new(region: region, type: type).data }
    it { expect(response.status).to eq(200) }
    it { expect(response.body).to be_a(Hash) }
  end
end
