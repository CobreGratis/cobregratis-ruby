require File.dirname(__FILE__) + '/../cachable'

module Cobregratis
  class Base < ActiveResource::Base
    self.site = "https://app.cobregratis.com.br"
    include ::Cachable
  end
end