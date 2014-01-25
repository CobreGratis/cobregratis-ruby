require 'lib/cobregratis'
require 'pp'

Cobregratis::Base.site = 'https://app.cobregratis.com.br'
Cobregratis::Base.user = 'ddxm00pJnGhrYJhyypUgpwqkbvKMASEznqRM2MANv6nqz08APfWxdurtUJoz'
Cobregratis::Base.password = 'X'

@bank_billet = Cobregratis::BankBillet.create({
  :amount => 230.50,
  :expire_at => '2015-07-22',
  :name => 'Rafael Lima',
})

sleep(1)
@billets = Cobregratis::BankBillet.find(:all)

@billets.each do |bank_billet|
  puts "Nosso Número: #{@bank_billet.our_number}\n";
  puts "Vencimento: #{@bank_billet.expire_at}\n";
  puts "Valor: #{@bank_billet.amount}\n";
  puts "Sacado: #{@bank_billet.name}\n";
  puts "URL: #{@bank_billet.external_link}\n";
  puts "=================================\n";
end