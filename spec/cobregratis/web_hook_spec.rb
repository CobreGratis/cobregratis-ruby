require File.dirname(__FILE__) + '/../spec_helper'

describe Cobregratis::Service do
  before(:each) do
    @webhook = Cobregratis::WebHook.new
  end
  
  it "should be instance of Cobregratis::Base" do
    @webhook.kind_of?(Cobregratis::Base).should be_true
  end
  
end
