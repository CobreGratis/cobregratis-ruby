module Cobregratis
  class Base < ActiveResource::Base
    self.site = 'https://app.cobregratis.com.br'
    self.include_root_in_json = true
  end
end