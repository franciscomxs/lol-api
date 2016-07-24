require 'spec_helper'

describe LOL::Api::Champion do
  let(:region) { :br }
  let(:champion_id) { '1' }
  let(:free_to_play) { 'true' }

  describe '.call' do
    before do
      allow_any_instance_of(LOL::Api::Champion).to receive(:data).with(region: region, champion_id: champion_id, free_to_play: free_to_play).and_return({})
    end

    it 'is a alias for #data' do
      expect_any_instance_of(LOL::Api::Champion).to receive(:data)
      LOL::Api::Champion.(region: region, champion_id: champion_id, free_to_play: free_to_play)
    end
  end

  describe '#data' do
    let(:response) { LOL::Api::Champion.new(region: region, champion_id: champion_id, free_to_play: free_to_play).data }
    it { expect(response.status).to eq(200) }
    it { expect(response.body).to be_a(Hash) }
  end
end
