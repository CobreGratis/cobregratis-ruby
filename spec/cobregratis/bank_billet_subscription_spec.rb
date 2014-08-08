require 'spec_helper'

describe Cobregratis::BankBilletSubscription do
  before(:each) do
    @subscription = Cobregratis::BankBilletSubscription.new
  end

  it "should be instance of Cobregratis::Base" do
    expect(@subscription.kind_of?(Cobregratis::Base)).to be_true
  end

end
