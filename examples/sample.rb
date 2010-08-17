require 'cobregratis'
require 'pp'

Cobregratis::Base.site = 'https://app.cobregratis.com.br'
Cobregratis::Base.user = 'login'
Cobregratis::Base.password = 'xxx'
Cobregratis::Base.connection.cache_store = :memory_store

@billets = Cobregratis::Billet.find(:all)

pp @billets