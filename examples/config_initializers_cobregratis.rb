if Rails.env != 'test' then
  Cobregratis::Base.site = 'https://example.com.i'
  # For backward compatability
  if Cobregratis::Base.respond_to? :user
    Cobregratis::Base.user = 'my_fancy_username'
    Cobregratis::Base.password = 'my_fancy_password'
  else 
    Cobregratis::Base.site = 'https://my_fancy_username:my_fancy_password@example.com.i'
  end
  # The cache store can be anything that ActiveSupport can handle
  Cobregratis::Base.connection.cache_store = ActiveSupport::Cache.lookup_store :mem_cache_store
  Cobregratis::Base.connection.store_options = { :expires_in => 60.seconds }
end