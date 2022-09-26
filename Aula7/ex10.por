programa 
{
	funcao inicio()
	{
		real altura, peso, imc
	
		
		escreva("Calcule seu IMC! \nDigite a sua altura (metros): ")
		leia(altura)
		
		escreva("Digite o seu peso (kg): ")
		leia(peso)
		
		imc = peso / ((altura)*(altura))
		
		
		se (imc <18.5)
		{
			escreva("Seu imc e de: " + imc + "Você se encontra abaixo do peso")
		}
		
		
		se (imc >= 18.5 e imc < 25)
		{
			escreva("Seu imc e de: " + imc + "Você se encontra com peso normal")	
		}
		
		se (imc >= 25 e imc < 30)
		{
			escreva("Seu imc e de: " + imc + "Você se encontra acima do peso")
		}
		
		se (imc >= 30)
		{
			escreva("Seu imc e de: " + imc + "Você se encontra obeso")
		}
		
		senao
		{
			escreva("Entre com as variaveis corretamente, seu calculo falhou")
		}
		
	}
}