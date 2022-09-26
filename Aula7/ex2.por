programa 
{
	funcao inicio()
	{
		inteiro nota
		
		escreva ("Digite a nota do aluno \n")
		leia (nota)
		
		se (nota >=9 e nota<=10){
			escreva ("O aluno foi muito bem \n")	
		}
		senao se (nota>=7 e nota<9){
			escreva ("O aluno foi bem \n")
		}
		senao se (nota>=6 e nota<7){
			escreva("O aluno foi razoavel \n")
		}
		senao se (nota<6 e nota>=0){
		escreva("O aluno teve um desempenho ruim \n")
		}
		senao{
			escreva("Nota inválida")
		}
		
	}
}
