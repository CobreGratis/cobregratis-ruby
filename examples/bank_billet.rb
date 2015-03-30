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
  :parcels => 100, # Número de parcelas
  :generate_on_creation => true,
  :send_email_on_creation => true,
  :bank_billet_account_id => 6460,
  # :save_customer => true, # salvar cliente
  :service_id => '52430',
  # :meta => "{\"environment\":\"production\",\"user_id\":580,\"bank_billet_id\":2310,\"user_name\":\"Rog\xC3\xA9rio Salinas Ferreira\"}"
  # :customer_id => 27395,
  :customer_ids => [27395,27396],
  email: { # para onde o boleto será enviado
         name: 'Cliente',
         address: 'cliente@example.com.br'
       }
})
pp bank_billet

# Lista de boletos
bank_billets = Cobregratis::BankBillet.find(:all)

bank_billets.each do |bank_billet|
  puts "Nosso Número: #{bank_billet.our_number}\n";
  puts "Vencimento: #{bank_billet.expire_at}\n";
  puts "Valor: #{bank_billet.amount}\n";
  puts "Sacado: #{bank_billet.name}\n";
  puts "URL: #{bank_billet.external_link}\n";
  puts "=================================\n";
end
