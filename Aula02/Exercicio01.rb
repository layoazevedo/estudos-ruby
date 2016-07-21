class Exercicio01
	def initialize()
		@valores = Array.new
	end

	def leia()
		puts 'Digite o numero'
        numero = gets.strip!
        @valores << numero
	end

	def exibe()
        @valores.each do |valor|
            puts "Os valores sao #{valor}"
        end
	end
end
