![image](https://github.com/user-attachments/assets/bff9898f-341f-4cb7-8e7d-a69633230329)



# ⛽Preço dos Combustíveis no Brasil (2004 a 2025)

## I- Introdução
- O conjunto de dados deste projeto, fornecido pela Agencia Nacional de Petróleo, contém o preço do Etanol e Gasolina, coletados em diferentes cidades no Brasil, pelo período de 2004 até 2025. Nele contém também o endereço onde o preço foi registrado, a bandeira do posto e a data de registro.
- O dataset desde projeto é maior que o permitido para carregar aqui no GitHub, mas é possível baixar do Kaggle pelo [link](https://www.kaggle.com/datasets/paulogladson/anp-combustveis).
- Você pode acessar o dashboard online do Power BI deste projeto neste [link](https://app.powerbi.com/view?r=eyJrIjoiMTFmNGZmNjgtY2VjYS00NTE2LWI5ZjMtMGI2MDJkZmM4OWY3IiwidCI6IjRmZDUyYzZkLTcwMDctNDc1NS04NWZhLTI1Zjg2ZTcxYWVjNyJ9).

## II- O Dataset
- Após removermos algumas colunas, o Dataset que iremos trabalhar contém apenas as seguintes features:

| Coluna          | Descrição                                                  
|-|-|
| `Região`    	  | Região Brasileira onde foi registrado o valor                           
| `Cidade`        | Cidade onde foi registrado o valor                                                    
| `Estado` | Estado onde foi registrado o valor                                                  
| `Bairro`       | Bairro em que foi registrado o valor  
| `CEP`       | CEP em que foi registrado o valor  
| `Revenda`       | Nome do posto que foi registrado o valor  
| `Produto`       | Produto ao qual o valor é atribuido  
| `Data da Coleta`       | Data de quando foi registrado o valor  
| `Valor do Litro`       | Valor registrado do Litro do combustível  
| `Bandeira`       | Bandeira do posto que foi registrado o Valor 



## III- O Dashboard
- Você pode acessar o dashboard online do Power BI deste projeto neste [link](https://app.powerbi.com/view?r=eyJrIjoiMTFmNGZmNjgtY2VjYS00NTE2LWI5ZjMtMGI2MDJkZmM4OWY3IiwidCI6IjRmZDUyYzZkLTcwMDctNDc1NS04NWZhLTI1Zjg2ZTcxYWVjNyJ9).

![image](https://github.com/user-attachments/assets/580199fb-2a56-4769-913d-6c22891b799c)


## IV- Objetivo do Dashboard
Os objetivos de fazer um Dashboard como este são:
- Fornecer as KPI's de monitoramento de preço de combustível no Brasil
- Analisar como se comporta o crescimento do combustível em diferentes regiões do Brasil
- Verificar qual época do ano o combustível tem queda e qual época sofre maior aumento
- Verificar quais anos o preço teve maior taxa de crescimento
- Verificar qual a região, estado e cidade tem o maior preço de combustível e entender o porquê


## V- ETL

- Criei uma tabela de calendário, pois as datas tinham lacunas e algumas medidas não funcionavam
- Fiz uma Coluna Condicional para tratar as abreviações dos estados, e coloca-las por extenso
- Criei outra tabela com os estados e as regiões correspondentes, pois alguns estados estavam com regiões erradas.
- Fiz um Merge com a Tabela dos Estados e a tabela ANP
- Fiz uma "substituição de valores" de ponto para vírgula para tratar os dados de preço
- Removi as colunas de "Endereço Completo" e "Valor de Compra"
- Fiz a ligação da tabela de calendário com a ANP no DER.

obs: Para criar a tabela de calendário use a linguagem M, no Power Query (List.dates).

## VI- Análises e Plano de Ação


### 1. Preço do Combustível no Nordeste varia conforme a safra de Açucar

Cada região tem sua safra da cana de açucar. No nordeste, por exemplo, a colheita dura de Setembro a Março, com pico de safra de Dezembro a Janeiro. Fiz um filtro para os últimos 5 anos no preço de combustível Etanol para a Região Nordeste, e observei que o preço do Etanol, no período de Setembro a Março, atingiu o menor preço médio. E em Janeiro, atingiu o seu menor preço. Portanto, é possível obter uma correlação entre o preço médio de combustível no nordeste e o período de Safra.

![image](https://github.com/user-attachments/assets/4efe2449-8529-4ce7-831b-636d9993b8ad)


### 2. Preço de Combustível no Sudeste é correlacionado também ao período de Safra

Para o Sudeste, o período de safra é de Abril até novembro, e justamente neste período, nos últimos 5 anos, o preço do combustível sofreu redução de valor.

![image](https://github.com/user-attachments/assets/e3938c73-f640-4463-9522-412144ed35c7)

### 3. Etanol, durante em 2021 teve uma taxa de crescimento maior que a gasolina

Este é o gráfico do valor médio da gasolina no Brasil

![image](https://github.com/user-attachments/assets/32aab4ab-3e75-4901-a735-fb6fa6604607)

Já este é o grafico do valor médio do etanol no Brasil

![image](https://github.com/user-attachments/assets/69877c70-91fc-41e2-915a-b5b227198db9)

Pode-se observar que a curva de crescimento do Etanol é mais acentuada de 2020 a 2021, por mais que ambas tenham tido um grande aumento. Porém, através do KPI de taxa de crescimento do valor do combustível do ano atual em relação ao anterior, a taxa de crescimento do Etanol é superior ao da gasolina. É pouca coisa, porém, é provável que as pessoas tenham preferido abastecer com Etanol ao invés de Gasolina, devido ao aumento de preço da Gasolina em valores brutos, ser maior do que o do Etanol.


![image](https://github.com/user-attachments/assets/26336a21-5f4d-4fe4-8f55-710daab98148)

Figura 1 - Crescimento do Etanol de 2020 para 2021

![image](https://github.com/user-attachments/assets/e9769e87-486e-4738-a170-b061a0f67e9a)

Figura 2 - Crescimento da Gasolina de 2020 para 2021


### 4. Região Norte, Nordeste e Sul são a que tem o maior valor médio de preço de Etanol

O motivo do valor médio do Etanol no Norte, Nordeste e Sul ser maior do que o das outras regiões poderia ser devido ao tranporte, visto que a produção de Açucar nestas três regiões é menor do que a das outras regiões.

![image](https://github.com/user-attachments/assets/999f136c-a312-4888-9e3c-e6731e532604)

Figura - Gráfico de Colunas do Valor Médio do Etanol por Região




![image](https://github.com/user-attachments/assets/cb5b5ecb-4361-422b-a2ff-320348712931)

Figura - Produção de Açucar pelo Brasil










