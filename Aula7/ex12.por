programa 
{
	funcao inicio()
	{
	real valor, valor_final
	cadeia condicao
	inteiro parcelas
	
	escreva("Escreva o valor de etiqueta do produto: \n")
	leia(valor)
	escreva("Escreva a condição de pagamento (cartão de crédito, dinheiro ou cheque) \n")
	leia(condicao)
	
	
	se (condicao == "cartão de crédito" ou condicao == "cartao de credito" ou condicao == "cartao de crédito" ou condicao == "cartão de credito")
	{
		escreva("Digite o numero de parcelas: \n")
		leia(parcelas)
		
		se (parcelas == 1)
		{
			valor_final = valor * 0.85
			escreva("O preço a ser pago é: " + valor)
		}
		
		senao se (parcelas == 2)
		{
			escreva("O preço a ser pago é: " + valor)
		}
		
		senao se (parcelas > 2)
		{
			valor_final = valor * 1.1
			escreva("O preço a ser pago é: " + valor_final)
		}
		
		senao
		{
			escreva("Numero de parcelas inválido")
		}
	}
		
	senao se (condicao == "dinheiro" ou condicao == "cheque")
	{
		valor_final = valor * 0.9
		escreva("O preço a ser pago é: " + valor_final)	
	}
	
		senao 
	{
	
		escreva("Valor inválido")	
	}
		
		
	}
}
