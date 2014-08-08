require 'spec_helper'

describe Cobregratis::Service do
  before(:each) do
    @webhook = Cobregratis::WebHook.new
  end

  it "should be instance of Cobregratis::Base" do
    expect(@webhook.kind_of?(Cobregratis::Base)).to be_true
  end

end
