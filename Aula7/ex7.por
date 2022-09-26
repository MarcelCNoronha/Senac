programa 
{
	funcao inicio()
	{
		
	inteiro numero, resultado
	
	escreva("Escreva um número \n")
	leia(numero)
	
	resultado = numero % 2

		
		se (resultado == 0)
		{
		escreva("O número e par e ele somado a 5 e igual a \n" + (numero + 5))
		}
		
		senao
		{
		escreva("o número e impar e ele somado a 8 e igual a  \n" + (numero + 8))
		}
	
		
		
	}
}
