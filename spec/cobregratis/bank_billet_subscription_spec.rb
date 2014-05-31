require File.dirname(__FILE__) + '/../spec_helper'

describe Cobregratis::BankBilletSubscription do
  before(:each) do
    @subscription = Cobregratis::BankBilletSubscription.new
  end
  
  it "should be instance of Cobregratis::Base" do
    @subscription.kind_of?(Cobregratis::Base).should be_true
  end
  
end
