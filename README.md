# Ruby Gem para a API do Cobre Grátis

Essa biblioteca é um conjunto de classes para acessar as informações do [Cobre Grátis](http://cobregratis.com.br) através da [API](https://github.com/BielSystems/cobregratis-api).

Todas as classes são herdadas do ActiveResouce::Base. Veja a documentação do [ActiveResouce](http://api.rubyonrails.org/classes/ActiveResource/Base.html) para mais informações.

## Instalando

    gem install cobregratis

### Configurando seu token

```ruby
require 'rubygems'
require 'cobregratis'

Cobregratis::Base.site = 'https://app.cobregratis.com.br'
Cobregratis::Base.user = 'seu_token'
Cobregratis::Base.password = 'X'
```

e se você estiver usando [cache](http://api.rubyonrails.org/classes/ActiveSupport/Cache):

```ruby
Cobregratis::Base.connection.cache_store= <your normal ActiveSupport::Caching options>
```

Se você está usando essa gem numa aplicação Rails, é recomendado colocar esse código no arquivo `config/initializers/cobregratis.rb`. Veja um exemplo em [examples/config_initializers_cobregratis.rb](https://github.com/rafaelp/cobregratis/blob/master/examples/config_initializers_cobregratis.rb).

## Uso

```ruby
# criar um boleto
@bank_billet = Cobregratis::BankBillet.create({
  :amount => 230.50,
  :expire_at => '2015-07-22',
  :name => 'Rafael Lima',
})

# listar todos os boletos
@bank_billets = Cobregratis::BankBillet.find(:all)
@billets.each do |bank_billet|
  puts "Nosso Número: #{@bank_billet.our_number}\n";
  puts "Vencimento: #{@bank_billet.expire_at}\n";
  puts "Valor: #{@bank_billet.amount}\n";
  puts "Sacado: #{@bank_billet.name}\n";
  puts "URL: #{@bank_billet.external_link}\n";
  puts "=================================\n";
end
```

Veja um exemplo no arquivo [example.rb](https://github.com/rafaelp/cobregratis/blob/master/examples/example.rb)

## Licença

Esse código é livre para ser usado dentro dos termos da licença [MIT license](http://www.opensource.org/licenses/mit-license.php).

## Bugs, Issues, Agradecimentos, etc

Comentários são bem-vindos. Envie seu feedback através do [issue tracker do GitHub](http://github.com/rafaelp/cobregratis/issues)

## Colaboradores

Agradecimento especial para o [Tapajós](http://github.com/tapajos).

## Autor

[**Rafael Lima**](http://github.com/rafaelp) trabalhando na [BielSystems](http://bielsystems.com.br)

Blog: [http://rafael.adm.br](http://rafael.adm.br)

Twitter: [http://twitter.com/rafaelp](http://twitter.com/rafaelp)

### Gostou?

[Me recomende Working With Rails](http://workingwithrails.com/recommendation/new/person/14248-rafael-lima)