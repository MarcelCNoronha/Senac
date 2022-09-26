programa 
{
	funcao inicio()
	{
		real altura, pIdeal
		cadeia sexo
		
		escreva("Calcule seu peso ideal! \nDigite a sua altura (metros): ")
		leia(altura)
		
		escreva("Qual e o seu sexo (masculino ou feminino): ")
		leia(sexo)
		
		
		se (sexo == "masculino")
		{
			pIdeal = (72.7 * altura) - 58
		}
		senao se (sexo == "feminino")
		{
			pIdeal = (62.1 * altura) - 44.7
		}
		
		senao
		{
			escreva("Sexo inválido \n")
		}
		
		escreva("Seu peso ideal e: " + pIdeal)
	}
}
