require 'spec_helper'

describe Cobregratis::BankBillet do
  before(:each) do
    @billet = Cobregratis::BankBillet.new
  end

  it "should be instance of Cobregratis::Base" do
    expect(@billet.kind_of?(Cobregratis::Base)).to be_true
  end

end
