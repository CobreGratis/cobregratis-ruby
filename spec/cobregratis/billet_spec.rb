require File.dirname(__FILE__) + '/../spec_helper'

describe Cobregratis::Billet do
  before(:each) do
    @billet = Cobregratis::Billet.new
  end
  
  it "should be instance of Cobregratis::Base" do
    @billet.kind_of?(Cobregratis::Base).should be_true
  end
  
end
