require 'spec_helper'

describe LOL::Api::Request do
  let(:status) { 200 }
  let(:body) { '{"a":"1"}' }
  let(:conn) { double('conn', get: double('response', status: status, body: body)) }
  let(:endpoint) { '/' }
  let(:params) { {} }

  before do
    allow_any_instance_of(LOL::Api::Request).to receive(:conn).and_return(conn)
  end

  describe '.call' do
    it 'is a alias to #response' do
      expect_any_instance_of(LOL::Api::Request).to receive(:response)
      LOL::Api::Request.(endpoint, params)
    end
  end

  describe '#response' do
    let(:response) { LOL::Api::Request.new(endpoint, params).response }

    it { expect(response).to be_a(LOL::Api::Response) }
    it { expect(response.status).to eq(status) }
    it { expect(response.body).to be_a(ActiveSupport::HashWithIndifferentAccess) }
  end
end
