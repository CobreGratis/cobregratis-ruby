if Rails.env != 'test' then
  Cobregratis::Base.site = 'https://app.cobregratis.com.br'
  # For backward compatability
  if Cobregratis::Base.respond_to? :user
    Cobregratis::Base.user = 'my_token'
    Cobregratis::Base.password = 'X'
  else
    Cobregratis::Base.site = 'https://my_token:X@app.cobregratis.com.br'
  end
end