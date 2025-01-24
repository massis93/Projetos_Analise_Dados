![image](https://github.com/user-attachments/assets/cff0c95e-0c60-4eeb-bdf1-8ef124a82011)

# 🦸‍♂️Avengers

## Introdução
- Este [conjunto de dados](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Excel/Avengers/Avengers.xlsx) contém informações de todos os personagens dos Avengers da Marvel. Cada coluna contém features do personagem, como data de entrada, gênero, quantidade de mortes, classificação do personagem, número de aparições, entre outros.



## Dataset

| Coluna          | Descrição                                                  
|-|-|                            
| `Name/Alias`        | Nome ou Apelido do Personagem                                           
| `Appearances` | Quantidade de Aparições do Personagem              
| `Current?`       | Personagem ainda é Ativo? 
| `Gender`    	  | Gênero do Personagem
| `Year`    	  | Ano de Entrada no Avengers
| `Class`    	  | Classe do Personagem
| `Death1`    	  | Se o personagem já morreu
| `Return`    	  | Se o personagem retornou após morrer




## Dashboard 

- Você pode acessar o dashboard online do Power BI deste projeto neste [link](https://app.powerbi.com/view?r=eyJrIjoiNzE5Njk0MzYtZWE5Yy00NzMzLTkwZjktYzYwNTZiZTAyNDQ0IiwidCI6IjRmZDUyYzZkLTcwMDctNDc1NS04NWZhLTI1Zjg2ZTcxYWVjNyJ9).


![image](https://github.com/user-attachments/assets/3c52a74f-2501-412c-b258-675af0a3e584)






## Objetivo do Dashboard
Os objetivos de fazer um dashboard para este dados são:
- Fornecer KPI's de monitoramento de Incêndio
- Analisar se há alguma sazonalidade nos incêndios;
- Identificar quais são os estados que mais tem incêndios, e sua proporção em relação aos demais
- Verificar se há uma tendencia de crescimento total de Incêndios anualmente
- Quais foram os períodos que mais tiveram incêndios no Brasil



## Insights


###  a. Mês de Agosto superou Mês de Setembro para o estado com maior número de queimadas

Filtrando os incêndios para o estado Mato-Grosso, na segmentação de dados, os meses de Agosto e Setembro são os que mais tem quantidade de incêndio.

![image](https://github.com/user-attachments/assets/a42454b3-7a2b-4152-8ad6-6414a2355cf3)


Porém, através do filtro "ANO", podemos verificar que o mês de Agosto, até o ano de 2003, era o campeão de incêndios, e somente depois de 2003 começou a ser setembro. Portanto, é necessário verificar o que houve nesse período que fez com que os focos de incêndios diminuissem em Agosto e aumentassem em Setembro.

### b. A partir de 2014 o Pará superou Mato-Grosso


Por mais que o estado do Mato-Grosso seja o Estado que mais teve queimadas, ele apresenta uma tendência de queda.

![image](https://github.com/user-attachments/assets/335be7bd-f595-4c82-8538-e7aacdbb56c3)

A partir de 2014 o Estado que vem apresentando maior número de incêndios é o Pará, que apresenta uma tendência de crescimento alta.

![image](https://github.com/user-attachments/assets/fc8a4581-91a8-4afd-bfca-1e6478a07587)


### c. 2004 foi o ano que teve o maior número de queimadas

O mapa de calor ajuda a identificar todos os números de queimadas por ano e por estado com facilidade. Caso entrem novos dados, é possível fazer uma comparação com os dados existentes simplemente observando a cor de fundo.

![image](https://github.com/user-attachments/assets/00591664-90ca-40c3-a356-31a30635934c)

## Plano de Ação



