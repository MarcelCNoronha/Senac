programa 
{
	funcao inicio()
	{
		
	// Exercicio 2
	
	// declaração das variaveis	
	inteiro A, B, C
	
	// entrada das variaveis
	escreva("Identificador de menor valor \n")
	escreva("Entre com o primeiro valor ")
	leia(A)
	escreva("Entre com o segundo valor ")
	leia(B)
	escreva("Entre com o terceiro valor ")
	leia(C)
	
	// identificação do menor valor
		se (A == B e A==C)
		{
			escreva("Os três valores são iguais: " + A)
		}
		senao se ( A == B e B < C)
		{
			escreva("O primeiro e segundo valores são iguais e menores que o terceiro. \nO menor valor e igual a: " + A)
		}
		senao se ( A == B e B > C)
		{
			escreva("O primeiro e segundo valores são iguais e maiores que o terceiro. \nO menor valor e igual a: " + C)
		}
		senao se ( A == C e A < B)
		{
			escreva("O primeiro e terceiro valores são iguais e menores que o segundo. \nO menor valor e igual a: " + A)
		}
		senao se ( A == C e A > B)
		{
			escreva("O primeiro e terceiro valores são iguais e maiores que o segundo. \nO menor valor e igual a: " + B)
		}
		senao se (B == C e C < A)
		{
			escreva("O segundo e terceiro valores são iguais e menores que o primeiro. \nO menor valor e igual a: " + C)
		}
		senao se (B == C e C > A)
		{
			escreva("O segundo e terceiro valores são iguais e maiores que o primeiro. \nO menor valor e igual a: " + A)
		}
		senao se (A > B e B > C)
		{
			escreva("O menor valor e o terceiro. Ele e igual a: "  + C)
		}
		senao se (A > B e C > B)
		{
			escreva("O menor valor e o segundo. Ele e igual a: " + B)
		}
		senao se (B > A e C > A)
		{
			escreva("O menor valor e o primeiro. Ele e igual a: " + A)
		}
		senao 
		{
			escreva("Digite valores válidos")
		}
		
	
	}
}
