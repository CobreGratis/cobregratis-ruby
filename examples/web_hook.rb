$: << File.expand_path('../../lib', __FILE__)
require 'cobregratis'
require 'pp'

Cobregratis::Base.site = 'https://app.cobregratis.com.br'
Cobregratis::Base.user = 'minha_chave'
Cobregratis::Base.password = 'X'
 

# Criando uma Notificação
notification = Cobregratis::WebHook.create({
  :event => 'paid',
  :url => 'http://meusite.com.br/cobregratis',
  :code => 'codesecret'
})

pp notification

# Lista de notificações
notifications = Cobregratis::WebHook.find(:all)

notifications.each do |notification|
  puts "ID: #{notification.id}\n";
  puts "URL: #{notification.url}\n";
  puts "Código Secreto: #{notification.code}\n";
  puts "Evento: #{notification.formatted_event}\n";
  puts "Situação: #{notification.formatted_status}\n";
  puts "=================================\n";
end