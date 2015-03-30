$: << File.expand_path('../../lib', __FILE__)
require 'cobregratis'
require 'pp'

Cobregratis::Base.site = 'https://app.cobregratis.com.br'
Cobregratis::Base.user = 'minha_chave'
Cobregratis::Base.password = 'X'

# Enviando um CNAB
cnab = Cobregratis::Cnab.create({
  content: File.open("#{File.dirname(__FILE__)}/cnab.txt").read,
  filename: 'cnat.txt'
})

pp cnab

Lista de cnabs
cnabs = Cobregratis::Cnab.find(:all)

cnabs.each do |cnab|
  puts "ID: #{cnab.id}\n";
  puts "Processado em: #{cnab.processed_at}\n";
  puts "Criado em: #{cnab.created_at}\n";
  puts "Conta de cobrança: #{cnab.bank_billet_account_id}\n";
  puts "Boleto ID's: #{cnab.bank_billet_ids}\n";
  puts "=================================\n";
end