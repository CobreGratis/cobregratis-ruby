require 'spec_helper'

describe Cobregratis::Base do

  before(:each) do
    @base = Cobregratis::Base.new
  end

  it "should be instance of ActiveResource::Base" do
    expect(@base.kind_of?(ActiveResource::Base)).to be_true
  end

end
