programa 
{
	funcao inicio()
	{
	inteiro A, B, C
	
	escreva("Escreva um valor inteiro \n")
	leia(A)
	
	escreva("Escreva mais um valor inteiro \n")
	leia(B)
	
		escreva("Escreva um terceiro valor inteiro \n")
	leia(C)
		
		se ( A == B e A != C )
		{
		escreva("O primeiro e segundo valores são iguais")
		}
		senao se ( A == C e A != B)
		{
		escreva("O primeiro e terceiro valores são iguais")
		}
		senao se (B == C e A != C)
		{
		escreva("O segundo e terceiro valores são iguais")
		}
		senao se (A == B e A==C)
		{
		escreva("Os três valores são iguais")
		}
		
		senao se (A>B e B>C)
		{
		escreva("Os números em ordem decrescente são: "+ A +"> " + B + "> " + C)
		}
		senao se (A>B e C>B)
		{
		escreva("Os números em ordem decrescente são: "+ A +"> " + C + "> " + B)
		}
		senao se (B>A e A>C)
		{
		escreva("Os números em ordem decrescente são: "+ B +"> " + A + "> " + C)
		}
		senao se (B>A e C>A)
		{
		escreva("Os números em ordem decrescente são: "+ B +"> " + C + "> " + A)
		}
		senao se (C>A e A>B)
		{
		escreva("Os números em ordem decrescente são: "+ C +"> " + A + "> " + B)
		}
		senao se (C>A e B>A)
		{
		escreva("Os números em ordem decrescente são: "+ C +"> " + B + "> " + A)
		}
	}
}