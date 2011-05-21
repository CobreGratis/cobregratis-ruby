require File.dirname(__FILE__) + '/../spec_helper'

describe Cobregratis::Service do
  before(:each) do
    @service = Cobregratis::Service.new
  end
  
  it "should be instance of Cobregratis::Base" do
    @service.kind_of?(Cobregratis::Base).should be_true
  end
  
end
