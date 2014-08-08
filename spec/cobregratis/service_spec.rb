require 'spec_helper'

describe Cobregratis::Service do
  before(:each) do
    @service = Cobregratis::Service.new
  end

  it "should be instance of Cobregratis::Base" do
    expect(@service.kind_of?(Cobregratis::Base)).to be_true
  end

end
