-- Criação do banco

CREATE DATABASE exercicio_1;


-- criação das colunas
- CREATE TABLE sales (
id int NOT NULL UNIQUE AUTO_INCREMENT,
id_nf int,
id_item int,
cod_prod int,
valor_unit float,
quantidade int,
desconto int,
PRIMARY KEY (id)
);

-- inserção de dados na tabela

INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (1,1,1,25.00,10,5);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (1,2,2,13.50,3,null);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (1,3,3,15.00,2,null);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (1,4,4,10.00,1,null);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (1,5,5,30.00,1,null);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (2,1,3,15.00,4,null);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (2,2,4,10.00,5,null);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (2,3,5,30.00,7,null);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (3,1,1,25.00,5,null);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (3,2,4,10.00,4,null);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (3,3,5,30.00,5,null);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (3,4,2,13.50,7,null);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (4,1,5,30.00,10,15);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (4,2,4,10.00,12,5);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (4,3,1,25.00,13,5);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (4,4,2,13.50,15,5);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (5,1,3,15.00,3,null);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (5,2,5,30.00,6,null);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (6,1,1,25.00,22,15);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (6,2,3,15.00,25,20);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (7,1,1,25.00,10,3);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (7,2,2,13.50,10,4);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (7,3,3,15.00,10,4);
INSERT INTO `sales`(`id_nf`, `id_item`, `cod_prod`, `valor_unit`, `quantidade`, `desconto`) VALUES (7,4,5,30.00,10,1);



-- a) Pesquise os itens que foram vendidos sem desconto. As colunas presentes no
-- resultado da consulta são: ID_NF, ID_ITEM, COD_PROD E VALOR_UNIT.
SELECT id_nf, id_item, cod_prod, valor_unit
FROM sales
WHERE desconto is null;

-- b) Pesquise os itens que foram vendidos com desconto. As colunas presentes no
-- resultado da consulta são: ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT E O VALOR
-- VENDIDO. OBS: O valor vendido é igual ao VALOR_UNIT -
-- (VALOR_UNIT*(DESCONTO/100)).
SELECT id_nf, id_item, cod_prod, valor_unit, (valor_unit-(valor_unit*(desconto/100))) AS valor_vendido
FROM sales
WHERE desconto is NOT null;

-- c) Altere o valor do desconto (para zero) de todos os registros onde este campo é nulo
UPDATE sales
SET desconto=0
WHERE desconto is null

-- d) Pesquise os itens que foram vendidos. As colunas presentes no resultado da consulta
-- são: ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, VALOR_TOTAL, DESCONTO,
-- VALOR_VENDIDO. OBS: O VALOR_TOTAL é obtido pela fórmula: QUANTIDADE *
-- VALOR_UNIT. O VALOR_VENDIDO é igual a VALOR_UNIT -
-- (VALOR_UNIT*(DESCONTO/100)).
SELECT id_nf, id_item, cod_prod, valor_unit, (quantidade*valor_unit) AS valor_total, desconto, (valor_unit-(valor_unit*(desconto/100))) AS valor_vendido
FROM sales

-- e) Pesquise o valor total das NF e ordene o resultado do maior valor para o menor. As
-- colunas presentes no resultado da consulta são: ID_NF, VALOR_TOTAL. OBS: O
-- VALOR_TOTAL é obtido pela fórmula: ∑ QUANTIDADE * VALOR_UNIT. Agrupe o
-- resultado da consulta por ID_NF.
SELECT  id_nf, SUM(quantidade*valor_unit) AS soma_valor_total
FROM sales 
GROUP BY id_nf
ORDER BY id_nf ASC;

-- f) Pesquise o valor vendido das NF e ordene o resultado do maior valor para o menor. As
-- colunas presentes no resultado da consulta são: ID_NF, VALOR_VENDIDO. OBS: O
-- VALOR_TOTAL é obtido pela fórmula: ∑ QUANTIDADE * VALOR_UNIT. O
-- VALOR_VENDIDO é igual a ∑ VALOR_UNIT - (VALOR_UNIT*(DESCONTO/100)). Agrupe
-- o resultado da consulta por ID_NF.
SELECT  id_nf, SUM(quantidade*valor_unit) AS soma_valor_total, SUM(valor_unit-(valor_unit*(desconto/100))) AS soma_valor_vendido
FROM sales 
GROUP BY id_nf
ORDER BY soma_valor_total DESC;

-- g) Consulte o produto que mais vendeu no geral. As colunas presentes no resultado da
-- consulta são: COD_PROD, QUANTIDADE. Agrupe o resultado da consulta por
-- COD_PROD.
SELECT cod_prod, SUM(quantidade) as quantidade_total
FROM sales 
GROUP BY cod_prod
ORDER BY quantidade_total DESC
LIMIT 1;

-- h) Consulte as NF que foram vendidas mais de 10 unidades de pelo menos um produto.
-- As colunas presentes no resultado da consulta são: ID_NF, COD_PROD, QUANTIDADE.
-- Agrupe o resultado da consulta por ID_NF, COD_PROD.
SELECT id_nf, cod_prod, quantidade
FROM sales
WHERE quantidade>=10
GROUP BY id_nf, cod_prod;

-- i) Pesquise o valor total das NF, onde esse valor seja maior que 500, e ordene o 
-- resultado do maior valor para o menor. As colunas presentes no resultado da consulta 
-- são: ID_NF, VALOR_TOT. OBS: O VALOR_TOTAL é obtido pela fórmula: ∑ QUANTIDADE 
-- * VALOR_UNIT. Agrupe o resultado da consulta por ID_NF.
SELECT 
it1.id_nf, 
SUM(it1.valor_unit*it1.quantidade) AS valor_total
FROM sales it1
WHERE
	(SELECT  
 		SUM(it2.valor_unit*it2.quantidade)
	 FROM sales it2
	 WHERE it1.id_nf = it2.id_nf
	 GROUP BY it2.id_nf
	 ) >=500.00
GROUP BY it1.id_nf
ORDER BY valor_total DESC;

-- j) Qual o valor médio dos descontos dados por produto. As colunas presentes no 
-- resultado da consulta são: COD_PROD, MEDIA. Agrupe o resultado da consulta por 
-- COD_PROD.
SELECT cod_prod, AVG(desconto) AS media
FROM sales
GROUP BY cod_prod;

-- k) Qual o menor, maior e o valor médio dos descontos dados por produto. As colunas 
-- presentes no resultado da consulta são: COD_PROD, MENOR, MAIOR, MEDIA. Agrupe 
-- o resultado da consulta por COD_PROD.
SELECT cod_prod, MIN(desconto) AS menor, MAX(desconto) AS maior, AVG(desconto) AS media
FROM sales
GROUP BY cod_prod;


-- l) Quais as NF que possuem mais de 3 itens vendidos. As colunas presentes no resultado 
-- da consulta são: ID_NF, QTD_ITENS. OBS:: NÃO ESTÁ RELACIONADO A QUANTIDADE 
-- VENDIDA DO ITEM E SIM A QUANTIDADE DE ITENS POR NOTA FISCAL. Agrupe o 
-- resultado da consulta por ID_NF.
SELECT
	it1.id_nf, 
    COUNT(it1.id_item) AS qtd_itens
FROM
	sales it1
WHERE
	(
    SELECT
        COUNT(it2.id_item)
    FROM
        sales it2
    WHERE
        it2.id_nf =  it1.id_nf
    GROUP BY 
        it2.id_nf
    ) > 3
GROUP BY it1.id_nf