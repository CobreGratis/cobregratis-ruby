require File.dirname(__FILE__) + '/../spec_helper'

describe Cobregratis::BankBillet do
  before(:each) do
    @billet = Cobregratis::BankBillet.new
  end
  
  it "should be instance of Cobregratis::Base" do
    @billet.kind_of?(Cobregratis::Base).should be_true
  end
  
end
