programa 
{
	funcao inicio()
	{
		
	// Exercicio 4
	
	// declaração das variaveis	
	inteiro opcao
	
	// entrada das variaveis
	escreva("Escolha a opção: \n")
	escreva("1 - Soma de 2 números \n")
	escreva("2 - Diferença entre 2 números (Maior pelo menor) \n")
	escreva("3 - Produto entre 2 números \n")
	escreva("4 - Divisão entre 2 números (O denominador não pode ser zero) \n")
	escreva("Digite a opção: ")
	leia(opcao)
	
	se (opcao == 1)
	{
		// declaração das variaveis	
		real n1, n2, soma
		// entrada das variaveis
		escreva("Soma de dois números: \n")
		escreva("Escreva o primeiro número: ")
		leia (n1)
		escreva("Escreva o segundo número: ")
		leia (n2)
		soma = n1 + n2
		escreva("A soma entre os números e igual a: " + soma)
	}
	senao se (opcao == 2)
	{
		// declaração das variaveis	
		real a1, a2, diferenca
		// entrada das variaveis
		escreva("Diferença entre 2 números: \n")
		escreva("Escreva o primeiro número: ")
		leia (a1)
		escreva("Escreva o segundo número: ")
		leia (a2)
		
		se (a1==a2)
		{
			escreva("Valores iguais a diferença e zero (0)")
		}
		senao se (a1 > a2)
		{
			diferenca = a1 - a2
			escreva("O primeiro número e maior e a diferença é igual: " + diferenca)
		}
		senao se (a1 < a2)
		{
			diferenca = a2 - a1
			escreva("O segundo número e maior e a diferença é igual: "  + diferenca)
		}
		senao
		{
				escreva("Valor inválido")
		}
	}
	senao se (opcao == 3)
	{
		// declaração das variaveis	
		real p1, p2, produto
		// entrada das variaveis
		escreva("Produto entre 2 números: \n")
		escreva("Escreva o primeiro número: ")
		leia (p1)
		escreva("Escreva o segundo número: ")
		leia (p2)
		produto = p1 * p2
		
		escreva("O produto : " + p1 + " x " + p2 + " = " + produto)
		
	}
	
	senao se (opcao == 4)
	{
		// declaração das variaveis
		real d1, d2, divisao
		// entrada das variaveis
		escreva("Divisão entre 2 números: \n")
		escreva("Escreva o primeiro número: ")
		leia (d1)
		escreva("Escreva o segundo número: ")
		leia (d2)
		
		se ( d2 == 0.0 )
		{
		escreva("O denominador não pode ser zero")
		}
		
		senao 
		{
		divisao = d1 / d2
		escreva("A divisão : " + d1 + " / " + d2 + " = " + divisao)
		}
	}

	senao
	{
		escreva("Opção inválida")
	}
	
	}
}
