class Conta
	def initialize(saldo_inicial)
		@saldo = saldo_inicial
	end

	def depositar(valor)
		@saldo = @saldo + valor
		puts @saldo
	end
end
