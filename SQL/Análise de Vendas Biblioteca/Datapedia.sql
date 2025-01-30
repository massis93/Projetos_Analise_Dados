/* Código SQL responsável por responder as perguntas de negócio*/
--Primeiramente criaremos um banco de dados

CREATE DATABASE Datapedia

--Conferir se esta tudo certo com a tabela
	
SELECT * FROM sales

--Caso a coluna sales seja importada como int, precisaremos dividir a coluna inteira
	
UPDATE Sales
SET Preço = Preço / 100;

--PERGUNTAS DE NEGÓCIO--------------------------------------------------------------------------------

/* PERGUNTA 1 - Me dê informações de compras por ano */

SELECT YEAR(DATA) AS ano,
	   COUNT(ORDER_ID) AS [Livros Vendidos], --é interessante usar colchetes caso queira usar espaços
	   COUNT(DISTINCT(ORDER_ID)) AS [Pedidos Vendidos], 
	   ROUND(SUM(preço), 2) AS [Faturamento], --o round nos gera um número arredondado, e escolhemos 2 casas decimais
	   ROUND(SUM(preço)/COUNT(distinct(Order_id)),2) AS [Ticket Médio] -- Ticket Médio é o Faturamento Total dividido pelo número de pedidos
FROM SALES
GROUP BY YEAR(Data) -- Aqui queremos agrupar apenas pelo ano das datas

/* PERGUNTA 2 - Qual a quantidade e a porcentagem de clientes são homens e mulheres */
	
--Usando o cast para converter em float a contagem, senão automaticamente fica arredondado o número
SELECT  Sexo,
		COUNT(DISTINCT(CLIENTE_ID)) AS Quantidade,
		round(cast(COUNT(DISTINCT(CLIENTE_ID)) AS float)/(SELECT COUNT(DISTINCT(cliente_id)) FROM Sales),2) AS Percentual
FROM Sales
GROUP BY sexo

/*PERGUNTA 3 - Qual a quantidade de clientes são Crianças (Menores de 18 anos), Adultos (entre 18 e 55) , e Idosos?
E como estão distribuidas essas idades?*/

-- Adicionando Coluna Classificacao Idade e classificando a idade conforme o case when abaixo

ALTER TABLE Sales
ADD Classificacao VARCHAR(20);

UPDATE Sales
SET Classificacao = CASE 
					WHEN Idade < 18 THEN 'Criança'
					WHEN Idade <= 55 THEN 'Adulto'
					ELSE 'Idoso'
             	    END;

-- Gerando a tabela pelos 6 segmentos

SELECT  Classificacao,
		COUNT(DISTINCT(CLIENTE_ID)) AS Quantidade,
		ROUND(CAST(COUNT(DISTINCT(CLIENTE_ID))AS float)/(SELECT COUNT(DISTINCT CLIENTE_ID) FROM SALES),2) AS PERCENTUAL,
		MIN(IDADE) AS [IDADE MIN],
		MAX(IDADE) AS [IDADE MAX],
		AVG(IDADE) AS [IDADE MED],
		round(STDEVP(IDADE),2) AS [DEVPAD]
FROM Sales
GROUP BY Classificacao

/* PERGUNTA 4 - Desejo saber como é o perfil de compra de cada segmentação de usuário, 
bem como o faturamento gerado por cada segmento */

SELECT  Sexo,
		Classificacao,
		COUNT(DISTINCT(cliente_id)) AS qtd_clientes,
		COUNT(DISTINCT(order_id)) AS qtd_pedidos,
		COUNT(Título) AS qtd_livros_comprados,
		round(CAST(COUNT(DISTINCT(order_id))AS float) / CAST(COUNT(DISTINCT(cliente_id))AS float),2) AS média_pedidos_cliente,
		round(cast(COUNT(order_id) AS float) / CAST(COUNT(DISTINCT(order_id)) AS float),2) AS média_items_pedido,
		round(sum(preço)/COUNT(DISTINCT(order_id)),2) AS ticket_médio,
		round(sum(preço),2) AS faturamento_tt,
		Avg(Páginas) AS média_pg_livro
FROM Sales
GROUP BY Sexo, Classificacao
ORDER BY qtd_clientes DESC

/* PERGUNTA 5 - Entre os 3 segmentos que mais compram, qual é o perfil de livro que eles gostam? */

-- Criando um tier para os 3 melhores segmentos de clientes de acordo com o case when

ALTER TABLE Sales
ADD Tier VARCHAR(10);

UPDATE Sales
SET Tier = CASE 
					WHEN Sexo = 'Feminino' AND CLASSIFICACAO ='Adulto' THEN'Sim'
					WHEN Sexo = 'Feminino' AND CLASSIFICACAO = 'Idoso' THEN 'Sim'
					WHEN Sexo = 'Masculino' AND CLASSIFICACAO = 'Adulto' then 'Sim'
					ELSE 'Não'
             END;

-- aqui estamos usando o sql server, é um pouco diferente para trabalhar com With

	   WITH TB1 AS (SELECT  CLASSIFICACAO,
	   		        SEXO,
	   			GENERO,
	   			COUNT(TÍTULO) AS QTD,
	   			ROUND(SUM(PREÇO)/COUNT(ORDER_ID),2) AS TICKET_MÉDIO,
	   			AVG(PÁGINAS) AS MÉDIA_PGS
			FROM SALES
			WHERE TIER = 'Sim'
			GROUP BY GENERO, SEXO, CLASSIFICACAO),
	   TB2 AS (SELECT SEXO, 
	   		  CLASSIFICACAO,
	   		  GENERO,
	   		  QTD,
	   		  TICKET_MÉDIO,
	   		  MÉDIA_PGS,
	   		  RANK() OVER (partition by sexo, classificacao ORDER BY QTD DESC) AS RANKING_QTD
		   FROM TB1)
SELECT SEXO, CLASSIFICACAO, GENERO,QTD, TICKET_MÉDIO, MÉDIA_PGS, RANKING_QTD
FROM TB2
WHERE RANKING_QTD <6

/* PERGUTA 6 - QUAL A QUANTIDADE DE PEDIDOS, CLIENTES, ITEMS POR PEDIDO, TICKET-MÉDIO POR DIA?*/

SELECT DATA AS DIA,
	   COUNT(DISTINCT(ORDER_ID)) AS QTD_PEDIDOS,
	   COUNT(DISTINCT(CLIENTE_ID)) AS QTD_CLIENTES,
	   COUNT(TÍTULO) AS QTD_LIVROS_VENDIDOS,
	   SUM(PREÇO) AS FATURAMENTO,
	   SUM(PREÇO)/COUNT(DISTINCT(ORDER_ID)) AS TICKET_MÉDIO
FROM SALES
GROUP BY DATA

/* PERGUNTA 7 - QUAL A MÉDIA DE AVALIAÇÕES POR GENERO LITERARIO E POR LIVRO, BEM COMO A QUANTIDADE DE VENDAS POR LIVRO */


SELECT DISTINCT(GENERO),
	   TÍTULO,
	   AVG(Review_Score) OVER (PARTITION BY TÍTULO)	 AS [Bookscore],
	   AVG(Review_Score) over (partition BY GENERO) AS [GenderScore],
	   COUNT(Título) over (partition BY Título) AS [Qtd Vendas]
FROM Sales
ORDER BY [Qtd Vendas] DESC


/* PERGUNTA 8 - O livro ter prêmio, afeta a quantidade de vendas? */

--Adicionando uma coluna com valores binarios para "Premiado?"

ALTER TABLE Sales
ADD Premiado VARCHAR(10);

UPDATE Sales
SET Premiado =  CASE 
			WHEN Award = 'Sem Prêmio' THEN 0
			ELSE 1
        	END;

-- Verificando se os livros mais vendidos são premiados

SELECT Título,
       Premiado,
       COUNT(Título) AS Vendas
FROM Sales
GROUP BY Título, Premiado
ORDER BY Vendas DESC





