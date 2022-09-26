programa 
{
	funcao inicio()
	{
		
	// Exercicio 3
	
	// declaração das variaveis	
	cadeia time1, time2
	inteiro gol1, gol2
	
	// entrada das variaveis
	escreva("Placar \n")
	escreva("\nEntre com o nome do primeiro time: ")
	leia(time1)
	escreva("\nEntre com o numero de gols do primeiro time: ")
	leia(gol1)
	
	escreva("\nEntre com o nome do segundo time: ")
	leia(time2)
	escreva("\nEntre com o numero de gols do segundo time: ")
	leia(gol2)
	
	// identificação do placar
		se (gol1 == gol2)
		{
			escreva("\nO jogo EMPATOU!\nPlacar final: " + time1 + ":" + gol1 + " x " + gol2 + ":" + time2)
		}
		senao se ( gol1 > gol2)
		{
			escreva("\nO " + time1 + " VENCEU\nPlacar final: " + time1 + ":" + gol1 + " x " + gol2 + ":" + time2)
		}
		senao se ( gol2 > gol1)
		{
			escreva("\nO " + time2 + " VENCEU\nPlacar final: " + time2 + ":" + gol2 + " x " + gol1 + ":" + time1)
		}
		senao 
		{
			escreva("Digite valores válidos")
		}
	}
}
