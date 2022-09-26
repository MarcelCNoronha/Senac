programa 
{
	funcao inicio()
	{
		
	// Exercicio 1
	
	// declaração das variaveis	
	inteiro A, B, C
	
	// entrada das variaveis
	escreva("Calcule a divisão entre 2 valores \n")
	escreva("Entre com o primeiro valor ")
	leia(A)
	escreva("Entre com o segundo valor ")
	leia(B)
	
	// condição do dividendo ser maior que o divisor
	se (A >=B )
	{
	// calculo da divisão
	C = A / B
	
	// exportação do resultado da divisão
	escreva("A divisão do primeiro valor com o segundo e igual a: " + C)
	}
	
	// condição do divisor ser maior que o dividendo
	senao 
	{
	escreva("Entre com o primeiro valor maior ou igual ao segundo valor")
	}

	}
}