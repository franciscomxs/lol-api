require 'spec_helper'

describe LOL::API::Response do
  subject { LOL::API::Response.new(200, '{ "foo":"bar"}') }

  [:status, :body].each do |attr|
    it { is_expected.to respond_to(attr) }
    it { is_expected.to respond_to("#{attr}=") }
  end
end
