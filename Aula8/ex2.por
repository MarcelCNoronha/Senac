programa 
{
	funcao inicio()
	{
		
// 		Faça um programa que verifique e mostre os números entre 1.000 e 2.000
// (inclusive) que, quando divididos por 11, produzam o resto igual a 2.

	escreva("Identificação de números divididos por 11 com resto dois \n")
    
	para(inteiro numero = 1000; numero <= 2000; numero++)
	{
		se(numero%11 == 2)
		{
		escreva(numero + "\n")
		}
	}
	}
}