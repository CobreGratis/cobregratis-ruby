require File.dirname(__FILE__) + '/../spec_helper'

describe Cobregratis::BankBilletAccount do
  before(:each) do
    @account = Cobregratis::BankBilletAccount.new
  end
  
  it "should be instance of Cobregratis::Base" do
    @account.kind_of?(Cobregratis::Base).should be_true
  end
  
end
