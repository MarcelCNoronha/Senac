programa 
{
	funcao inicio()
	{
	inteiro num, maior, menor 

	para(inteiro i = 0; i <= 15; i++)
	{
		escreva ("Entre com um valor: \n")
		leia(num)
		
		se (i==0)
		{
			maior = num
			menor = num
		}
		senao
		{
			se (num > maior)
			{
				maior = num
			}
			senao se (num < menor)
			{
				menor = num 
			}
		} 
	}
	
	escreva("Maior = " + maior + " e Menor = " + menor)
	}
}