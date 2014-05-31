$: << File.expand_path('../../lib', __FILE__)
require 'cobregratis'
require 'pp'

# Cobregratis::Base.site = 'http://staging.cobregratis.com.br'
Cobregratis::Base.user = 'uiF3x9JuMFMBMasanVPo'
Cobregratis::Base.password = 'X'
 

# Criando um boleto
# bank_billet = Cobregratis::BankBillet.create({
#   :name => 'Cliente',
#   :cnpj_cpf => '34458851179',
#   :amount => 13.50,
#   :expire_at => '2015-07-30',
#   :parcels => 1, # Número de parcelas
#   :generate_on_creation => true,
#   :save_customer => true, # salvar cliente
#   :service_id => '46270',
#   email: { # para onde o boleto será enviado
#          name: 'Cliente',
#          address: 'cliente@example.com.br'
#        }
# })
# pp bank_billet

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

# Criando um WebHook
# web_hook = Cobregratis::WebHook.create({
#   :event => 'paid', 
#   :url => 'http://meusite.com.br/cobregratis',
#   :code => 'codesecret'
# })
# 
# pp web_hook

# Lista de WebHooks
# web_hooks = Cobregratis::WebHook.find(:all)
# 
# web_hooks.each do |web_hook|   
#   puts "ID: #{web_hook.id}\n";
#   puts "URL: #{web_hook.url}\n";
#   puts "Código Secreto: #{web_hook.code}\n";
#   puts "Evento: #{web_hook.formatted_event}\n";
#   puts "Status: #{web_hook.formatted_status}\n";
#   puts "=================================\n";
# end