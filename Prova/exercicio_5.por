programa 
{
	funcao inicio()
	{
		
	// Exercicio 5
	
	// declaração das variaveis	
	real valor, comissao
	cadeia nome
	
	
	// entrada das variaveis
	escreva("Cálculo de comissão de venda \n")
	escreva("\nEntre com o nome do vendedor: ")
	leia (nome)
	escreva("\nEntre com o valor da venda: ")
	leia(valor)
	
	se (valor >= 100000)
	{
		comissao = 700 + (0.16 * valor)
		escreva("O " + nome + " vendeu: R$ " + valor + "\nSua comissão será de: R$ "+ comissao)
	}
	senao se (valor >= 80000 e valor < 100000)
	{
		comissao = 650 + (0.14 * valor)
		escreva("O " + nome + " vendeu: R$ " + valor + "\nSua comissão será de: R$ "+ comissao)	
	}
	senao se (valor >= 60000 e valor < 80000)
	{
		comissao = 600 + (0.14 * valor)
		escreva("O " + nome + " vendeu: R$ " + valor + "\nSua comissão será de: R$ "+ comissao)
	}
	senao se (valor >= 40000 e valor < 60000)
	{
		comissao = 550 + (0.14 * valor)
		escreva("O " + nome + " vendeu: R$ " + valor + "\nSua comissão será de: R$ "+ comissao)
	}
	senao se (valor >= 20000 e valor < 40000)
	{
		comissao = 500 + (0.14 * valor)
		escreva("O " + nome + " vendeu: R$ " + valor + "\nSua comissão será de: R$ "+ comissao)	
	}
	senao se (valor < 20000 e valor > 0)
	{
		comissao = 400 + (0.14 * valor)
		escreva("O " + nome + " vendeu: R$ " + valor + "\nSua comissão será de: R$ "+ comissao)
	}
	senao
	{
		escreva("Valor inválido")
	}
	
	}
}
