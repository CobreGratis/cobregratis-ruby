require 'spec_helper'

describe Cobregratis::BankBilletAccount do
  before(:each) do
    @account = Cobregratis::BankBilletAccount.new
  end

  it "should be instance of Cobregratis::Base" do
    expect(@account.kind_of?(Cobregratis::Base)).to be_true
  end

end
