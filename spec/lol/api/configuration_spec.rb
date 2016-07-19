require 'spec_helper'

describe LOL::Api::Configuration do
  [:api_key].each do |attr|
    it { is_expected.to respond_to(attr) }
    it { is_expected.to respond_to("#{attr}=") }
  end
end
