![image](https://github.com/user-attachments/assets/bff9898f-341f-4cb7-8e7d-a69633230329)



# ⛽Preço dos Combustíveis no Brasil (2004 a 2025)

## O Dataset
- O Dataset deste projeto contém a quantidade de incêndios florestais reportados no Brasil, por estado e por ano, no período de 1998 até 2017. Ele foi retirado do Portal de Dados abertos do Governo Federal, na área do SNIF (Sistema Nacional de Informações Florestais), e contém os dados oficiais do governo sobre os incêndios reportados no Brasil.
- Este Dataset fornecido pela Agencia Nacional de Petróleo contém o preço do Etanol e Gasolina, coletados em diferentes cidades no Brasil, pelo período de 2004 até 2025. Nele contém também o endereço onde o preço foi coletado.
- O dataset desde projeto é maior que o permitido para carregar aqui no GitHub, mas é possível baixar do Kaggle pelo [link](https://www.kaggle.com/datasets/paulogladson/anp-combustveis).

- Você pode acessar o dashboard online do Power BI deste projeto neste [link](https://app.powerbi.com/view?r=eyJrIjoiMTFmNGZmNjgtY2VjYS00NTE2LWI5ZjMtMGI2MDJkZmM4OWY3IiwidCI6IjRmZDUyYzZkLTcwMDctNDc1NS04NWZhLTI1Zjg2ZTcxYWVjNyJ9).




![image](https://github.com/user-attachments/assets/580199fb-2a56-4769-913d-6c22891b799c)






## Objetivo do Dashboard
Os objetivos de fazer um Dashboard como este são:
- Fornecer as KPI's de monitoramento de preço de combustível no Brasil
- Analisar como se comporta o crescimento do combustível em diferentes regiões do Brasil
- Verificar qual época do ano o combustível tem queda e qual época sofre maior aumento
- Verificar quais anos o preço teve maior taxa de crescimento
- Verificar qual a região, estado e cidade tem o maior preço de combustível e entender o porquê


## ETL

- Criei uma tabela de calendário, pois as datas tinham lacunas e algumas medidas não funcionavam
- Fiz uma Coluna Condicional para tratar as abreviações dos estados, e coloca-las por extenso
- Criei outra tabela com os estados e as regiões correspondentes, pois alguns estados estavam com regiões erradas.
- Fiz um Merge com a Tabela dos Estados e a tabela ANP
- Fiz uma "substituição de valores" de ponto para vírgula para tratar os dados de preço
- Removi as colunas de "Endereço Completo" e "Valor de Compra"
- Fiz a ligação da tabela de calendário com a ANP no DER.

obs: Para criar a tabela de calendário use a linguagem M, no Power Query (List.dates).

## Insights


### 1. Preço do Combustível no Nordeste varia conforme a safra de Açucar

Cada região tem sua safra da cana de açucar. No nordeste, por exemplo, a colheita dura de Setembro a Março, com pico de safra de Dezembro a Janeiro. Fiz um filtro para os últimos 5 anos no preço de combustível Etanol para a Região Nordeste, e observei que o preço do Etanol, no período de Setembro a Março, atingiu o menor preço médio. E em Janeiro, atingiu o seu menor preço. Portanto, é possível obter uma correlação entre o preço médio de combustível no nordeste e o período de Safra.

![image](https://github.com/user-attachments/assets/4efe2449-8529-4ce7-831b-636d9993b8ad)



Filtrando os incêndios para o estado Mato-Grosso, na segmentação de dados, os meses de Agosto e Setembro são os que mais tem quantidade de incêndio.

![image](https://github.com/user-attachments/assets/a42454b3-7a2b-4152-8ad6-6414a2355cf3)


Porém, através do filtro "ANO", podemos verificar que o mês de Agosto, até o ano de 2003, era o campeão de incêndios, e somente depois de 2003 começou a ser setembro. Portanto, é necessário verificar o que houve nesse período que fez com que os focos de incêndios diminuissem em Agosto e aumentassem em Setembro.

### 2. 


Por mais que o estado do Mato-Grosso seja o Estado que mais teve queimadas, ele apresenta uma tendência de queda.

![image](https://github.com/user-attachments/assets/335be7bd-f595-4c82-8538-e7aacdbb56c3)

A partir de 2014 o Estado que vem apresentando maior número de incêndios é o Pará, que apresenta uma tendência de crescimento alta.

![image](https://github.com/user-attachments/assets/fc8a4581-91a8-4afd-bfca-1e6478a07587)


### 3. 

O mapa de calor ajuda a identificar todos os números de queimadas por ano e por estado com facilidade. Caso entrem novos dados, é possível fazer uma comparação com os dados existentes simplemente observando a cor de fundo.

![image](https://github.com/user-attachments/assets/00591664-90ca-40c3-a356-31a30635934c)






