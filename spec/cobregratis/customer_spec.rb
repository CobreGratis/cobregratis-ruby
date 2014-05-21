require File.dirname(__FILE__) + '/../spec_helper'

describe Cobregratis::Customer do
  before(:each) do
    @customer = Cobregratis::Customer.new
  end
  
  it "should be instance of Cobregratis::Base" do
    @customer.kind_of?(Cobregratis::Base).should be_true
  end
  
end
