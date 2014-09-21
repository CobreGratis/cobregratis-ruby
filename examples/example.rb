$: << File.expand_path('../../lib', __FILE__)
require 'cobregratis'
require 'pp'

Cobregratis::Base.site = 'https://app.cobregratis.com.br'
Cobregratis::Base.user = 'minha_chave'
Cobregratis::Base.password = 'X'
 

# Criando um boleto
bank_billet = Cobregratis::BankBillet.create({
  :name => 'Cliente',
  :cnpj_cpf => '34458851179',
  :amount => 13.50,
  :expire_at => '2015-08-30',
  :parcels => 1, # Número de parcelas
  :generate_on_creation => true,
  :bank_billet_account_id => 11098,
  # :save_customer => true, # salvar cliente
  :service_id => '52430',
  # :customer_id => 27395,
  # :customer_ids => [27395,27396]
  # email: { # para onde o boleto será enviado
         # name: 'Cliente',
         # address: 'cliente@example.com.br'
       # }
})
pp bank_billet

# Lista de boletos
# bank_billets = Cobregratis::BankBillet.find(:all)
# 
# bank_billets.each do |bank_billet|
#   puts "Nosso Número: #{bank_billet.our_number}\n";
#   puts "Vencimento: #{bank_billet.expire_at}\n";
#   puts "Valor: #{bank_billet.amount}\n";
#   puts "Sacado: #{bank_billet.name}\n";
#   puts "URL: #{bank_billet.external_link}\n";
#   puts "=================================\n";
# end

# Criando uma Notificação
# notification = Cobregratis::WebHook.create({
#   :event => 'paid', 
#   :url => 'http://meusite.com.br/cobregratis',
#   :code => 'codesecret'
# })
# 
# pp notification

# Lista de notificações
# notifications = Cobregratis::WebHook.find(:all)
# 
# notifications.each do |notification|   
#   puts "ID: #{notification.id}\n";
#   puts "URL: #{notification.url}\n";
#   puts "Código Secreto: #{notification.code}\n";
#   puts "Evento: #{notification.formatted_event}\n";
#   puts "Situação: #{notification.formatted_status}\n";
#   puts "=================================\n";
# end