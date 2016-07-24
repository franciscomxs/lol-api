require 'spec_helper'

describe LOL::API::Request do
  let(:code) { 200 }
  let(:body) { '{"a":"1"}' }
  let(:res) { double('response', code: code, body: body) }
  let(:url) { 'https://example.com' }

  before do
    allow(HTTParty).to receive(:get).and_return(res)
  end

  describe '.call' do
    it 'is a alias to #response' do
      expect_any_instance_of(LOL::API::Request).to receive(:response)
      LOL::API::Request.(url)
    end
  end

  describe '#response' do
    let(:response) { LOL::API::Request.new(url).response }

    it { expect(response).to be_a(LOL::API::Response) }
    it { expect(response.status).to eq(code) }
    it { expect(response.body).to be_a(ActiveSupport::HashWithIndifferentAccess) }
  end
end
