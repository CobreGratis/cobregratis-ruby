require File.dirname(__FILE__) + '/../spec_helper'

describe Cobregratis::Base do
  
  before(:each) do
    @base = Cobregratis::Base.new
  end
  
  it "should be instance of ActiveResource::Base" do
    @base.kind_of?(ActiveResource::Base).should be_true
  end
  
end
