if Rails.env != 'test' then
  Cobregratis::Base.site = 'https://app.cobregratis.com.br'
  # For backward compatability
  if Cobregratis::Base.respond_to? :user
    Cobregratis::Base.user = 'my_token'
    Cobregratis::Base.password = 'X'
  else 
    Cobregratis::Base.site = 'https://my_token:X@app.cobregratis.com.br'
  end
  # The cache store can be anything that ActiveSupport can handle
  Cobregratis::Base.connection.cache_store = ActiveSupport::Cache.lookup_store :mem_cache_store
  Cobregratis::Base.connection.store_options = { :expires_in => 60.seconds }
end