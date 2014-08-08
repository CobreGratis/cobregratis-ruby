require 'spec_helper'

describe Cobregratis::Customer do
  before(:each) do
    @customer = Cobregratis::Customer.new
  end

  it "should be instance of Cobregratis::Base" do
    expect(@customer.kind_of?(Cobregratis::Base)).to be_true
  end

end
