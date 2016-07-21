puts 'Qual o seu nome?'
name = gets.capitalize.strip!

puts 'Qual o ano de nascimento?'
anoNascimento = gets.strip!

resultado = 2016 - anoNascimento.to_i

puts "Meu nome eh #{name} e minha idade eh #{resultado}"
