![image](https://github.com/user-attachments/assets/55c5fce6-f3f8-4473-bd70-f45e5b4dcdc8)



# ☎️Análise de clientes que deram Churn em uma empresa de Telecom

## I - Problema de negócio:

- O CEO de uma empresa de telecomunicações me contratou para analisar os [dados](https://www.kaggle.com/datasets/blastchar/telco-customer-churn) coletados dos clientes de sua empresa. O conjunto de dados possui informações sobre o cliente como: Gênero, se possui parceiro, método de pagamento, valor do pagamento mensal , quais serviços da empresa ele possui, e se deu Churn ou não. Ele deseja que eu analise e extraia informações para tomadas de decisões com base nos dados, pois quer diminuir a quantidade de churn dos clientes.
- O notebook em Jupyter contendo o código em python, pode ser acessado nesse [link](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Python/Churn/Churn.ipynb)

       
## II - Dataset
'customerID', 'gender', 'SeniorCitizen', 'Partner', 'Dependents',
       'tenure', 'PhoneService', 'MultipleLines', 'InternetService',
       'OnlineSecurity', 'OnlineBackup', 'DeviceProtection', 'TechSupport',
       'StreamingTV', 'StreamingMovies', 'Contract', 'PaperlessBilling',
       'PaymentMethod', 'MonthlyCharges', 'TotalCharges', 'Churn'],
    
| Coluna          | Descrição                                                  
|-|-|                            
| `customerID`        | Cliente ID                                      
| `gender` | Gênero do Cliente             
| `SeniorCitizen`       | Se o cliente é idoso
| `Partner`    	  | Se o cliente tem  parceiro
| `Dependents`    	  | Se o cliente tem dependentes
| `tenure`    	  | Quantidade de meses que o cliente permaneceu com a empresa
| `Phone Service`    	  | Se o cliente possui serviço de telefonia
| `MultipleLines`    	  | Se o cliente possui múltiplas linhas telefonicas
| `InternetService`    	  | Tipo de internet contratada
| `OnlineSecurity`    	  | Se o cliente adquiriu serviço de segurança
| `OnlineBackup`    	  | Se o cliente adquiriu serviço de backup online
| `DeviceProtection`    	  | Se o cliente adquiriu serviço proteção
| `TechSupport`    	  | Se o cliente adquiriu serviço de suporte técnico
| `StreamingTV`    	  | Se o cliente adquiriu serviço de streaming TV
| `StreamingMovies`    	  | Se o cliente adquiriu serviço de filme Streaming
| `Contract`    	  | Tempo de contrato
| `PaperlessBilling`    	  | Se o cliente utilizar fatura sem papel
| `PaymentMethod`    	  | Método de pagamento escolhido
| `MonthlyCharges`    	  | Valor cobrado mensalmente
| `TotalCharges`    	  | Total já pago pelo cliente
| `Churn`    	  | Se o cliente cancelou o serviço




## III - Análise
Para nossa análise iremos considerar que todas as vendas foram feitas em uma única concessionária, por isso desconsideraremos a coluna seller. O dataset possui muitos sellers com vendas = 1, isso atrapalharia demais nossas análises.

### 1 - Importando as bibliotecas

As bibliotecas que trabalharemos serão pandas, matplotlib, seaborn e numpy. Defini também o tema dos gráficos para ggplot, e setei o figsize para 8 por 6, para gráficos estéticamente melhores!

### 2 - Explorando o Dataset

- Primeiramente vou explorar o dataset. É muito importante conhece-lo antes de fazer as nossas análises, dessa forma, já iremos preparados para extrair insights da melhor forma!
- No nosso caso, tive que usar uma função lambda para conseguir transformar a coluna "saledate" em data.
- Eliminei as linhas de sellingprice e saledate nulas
- Como dataset possui carros de 1982 até 2015, vou verificar a quantidade de venda por ano de carro

![image](https://github.com/user-attachments/assets/edd69c90-3059-497a-a17a-4907e23808e3)

- As vendas concentram-se em carros de 2010 a 2015. Agora irei verificar quando ocorreram a data das vendas
- Elas ocorreram de 2014 a 2015, ou seja, a preferência por carros é da linha 0 ou seminovos!


### 3 - A nota de Condition é afetada por quais parâmetros?
Sei que a nota de Condition varia de 1 a 49, mas quais parâmetro influenciam nessa nota?

![image](https://github.com/user-attachments/assets/a933ca2d-e389-4c83-862d-9516f28d7a2c)

Veja que há notas de carros variando de 0 a 50 tanto em carros 0, quanto em carros que rodaram 200 mil km. Portanto a Condição do carro parece não ter relação com o odômetro do carro.

Vou verificar se o preço dos carros pode influenciar nessa nota de condição. Antes vou fazer um boxplot dos preços da tabela fipe desses carro, para verificar quantas categorias, e quais as condições das categorias para os preços dos carros que vou criar.

![image](https://github.com/user-attachments/assets/17d76a38-683b-4aee-b013-21f6d48a0668)

- A maioria dos carros se concentram abaixo de 35mil mais ou menos.
- Vou criar as categorias dos carros para fazer um heatmap

![image](https://github.com/user-attachments/assets/dedfd906-df0a-4197-bc6f-48169d474456)

Veja que quanto menor é a categoria do carro, menor é a média da nota da condição do carro, e quanto mais novo é o carro, maior a nota.
Portanto, podemos dizer que há uma relação entre essas variáveis, que possivelmente estejam causando o aumento e a diminuição dessas notas.


### 4 - A concessionária vende mais carros de qual condição?
Seria interessante veficiar se há correlação entre a condição do carro e seu respectivo número de vendas, dessa forma, a loja poderia priorizar ter estoque de mais carros naquela determinada condição.

![image](https://github.com/user-attachments/assets/46af487b-a9d7-446e-9102-658bb584c268)

- Quanto maior a Condition do carro, maior é o número de vendas.
- Talvez o público daquela loja goste de carros com condition maior, que pode ter a ver com o preço do carro e o ano do carro. Carros mais recentes e com valor maior tem maior média de Condition, como já vimos. Por isso, o público daquela loja pode ser que tenha um poder aquisitivo maior.
- Ou também há a possibilidade do estoque de carros ser majoritariamente de condition maior, o que levaria a ter mais vendas dessa categoria.

### 5 - Quais os tipos de Body mais vendidos?

Agora vou verificar o Body mais vendido dos carros. É interessante saber, pois são tipos de carros diferentes. Temos SEDAN, SUV, Hatch. Qual é o Body que tem mais saída?

![image](https://github.com/user-attachments/assets/df2bfa60-67a9-47e7-8f41-cc9ad61334ae)

- Veja que o modelo de body mais vendido é o Sedan, que geralmente é um carro mais esportivo.
- Novamente, pode ser que a maioria do estoque seja Sedan, por isso teve mais vendas. Para isso teria que observar a proporção do estoque da loja.
- Modelo Sedan e SUV são carros que ocupam bastante espaço na loja, o que pode ser um problema no quesito alocaçao de espaço.

Vou verificar também os preços desses modelos de carros, pois pode ser que o modelo SUV e SEDAN tenham valores menores, e por isso estão vendendo mais.

![image](https://github.com/user-attachments/assets/f460ad74-ea10-42de-9fa2-f562c4bd7ab1)

- A média do preço dos carros SUV e SEDAN, na média, tem o mesmo valor do que os outros modelos de Body, portanto, podemos afirmar que o preço do carro não foi um fator que influenciou as vendas.

### 6 - Quais as cores que mais saem

Uma análise sobre a cor do carro, é muito interessante. Com ela conseguimos verificar quais cores saem mais pode modelo de carro, e dessa forma, a loja pode priorizar ter em seu estoque aquelas determinadas cores, podendo inclusive cobrar mais para as cores que saem mais.

![image](https://github.com/user-attachments/assets/dbfaf79e-f810-43d1-a726-0dba068fb5af)

- As cores Black, Gray, Silver e white são as que tem mais saída em todos os modelos de body, mas principalmente a Black e white são as que mais saem.
- A empresa poderia aumentar o valor desses produtos pois tem alta demanda no mercado
- Veja que o g sedan tem muita demanda por Black e Gray principalmente, já o Body crew cab tem muita demanda pela cor white.
- Será que esses são os modelos que mais saem pois são cores que sao mais atrativas, ou são as cores que mais tem no estoque? Para saber disso, precisariamos dos dados do estoque.


### 7 - Qual tipo de transmissão é mais vendida

Temos dois tipos de carros, os de sistema de transmissão automático, e o manual.

![image](https://github.com/user-attachments/assets/7b5dd2fe-5935-4b7e-83f0-3874d3954c22)

- Os carros automáticos saem muito mais dos que os de transmissão manual

Porém, sabemos que as vendas dos modelos mais recentes é muito maior dos que os antigos. E os modelos mais recentes não vêm com câmbio manual em sua maioria. Vamos analisar esses dados mais um pouco:

![image](https://github.com/user-attachments/assets/3ba9d480-d0ce-4182-9583-8b6031904ee0)

- Veja que as vendas de carros manuais são minoria até entre carros que são mais antigos.
- Temos dois motivos: ou a maior parte dos carros antigos que tem na loja são de sistema de transmissão automático, ou esse público tem preferido carros automáticos. 

### 8 - As vendas tiveram alguma sazonalidade?

Vamos dividir as vendas por ano de 2014 e 2015.

![image](https://github.com/user-attachments/assets/1233d803-0fda-4481-8768-21dbffe833ab)

- Parece que há muitos dados de vendas faltando para o ano de 2014, por isso, vou analisar o ano de 2015.

![image](https://github.com/user-attachments/assets/ef841d40-a85d-4e89-aa87-b354ad6ac888)

- Para o ano de 2015 os dados estão mais completos. Será que essas ondulações indicam alguma sazonalidade? Vou analisar por dia esses dados.

![image](https://github.com/user-attachments/assets/f3346c74-5e7b-4dd9-bf73-52451c718930)

Ficou muito melhor de se observar!

- Traçando um gráfico de linhas com as vendas médias por cada dia, vemos que há 4 picos de vendas. É um pico de vendas quase que semanal. Seria interessante, as concessionárias fazerem algum tipo de promoção nesses vales do gráfico, pois sabem que as vendas irão em média cair nesses dias.


### 9 - Qual faixa de preço de carro é mais vendido?

Fizemos uma divisão de categorias para os carros anteriormente. Vamos verificar qual valor de carro que vendeu mais.

![image](https://github.com/user-attachments/assets/ece1dfff-369a-41da-81bb-bc8b4931c51b)

- A categoria B foi a mais vendida
- Talvez o poder aquisitivo desse público esteja nessa faixa de valores

### 10 - Qual marca de carro é a mais vendida?

Para finalizar nossa análise, vamos verificar as 10 marcas de carro mais vendidas.

![image](https://github.com/user-attachments/assets/a78b5651-67b3-4dc2-aef6-bbfaffa33fe7)

- A ford é a marca de carro mais vendida
- Seria interessante trabalhar com mais carros da ford, e verificar se há aumento no faturamento da empresa.

Porém, sabemos que carros da ford são mais em conta do que uma ferrari. Será que a quantidade de vendas de uma ferrari superaria a quantidade de vendas de uma ford?

![image](https://github.com/user-attachments/assets/4e908c05-7d5e-4b96-8518-6ebb88d9c932)

O faturamento da ford ainda é o campeão.
Isso nos mostra que carros populares, por mais que sejam mais baratos, impulsionam o faturamento da loja por mais que tenham que vender muito mais para obter o mesmo lucro de um mais caro.

- E se a loja também oferecesse serviços de mecânica automotiva para esses carros? Vemos que o giro de carros populares é bem grande, isso aumentaria bastante o faturamento da loja.


## IV - Conclusões
- A Ford é o modelo de carro que mais vende e mais contribui para o faturamento da empresa
- Carros de 10k a 20k são os que mais venderam
- As vendas tem uma sazonalidade praticamente semanal semanal com picos no dia 3, 10, 18 e 27
- Carros automáticos venderam muito mais do que carros manuais
- As cores de carros que mais venderam foram Preto, Branco, Cinza, e Prata. Com foco no Crew cab, que vendeu muito branco, e no g sedan que vendeu bastante preto e cinza.
- O modelo de body mais vendido foi o Sedan e SUV
- Quanto maior a condition do carro, maior foram as vendas
- Carros mais recentes e com valor maior, tem em média maiores notas de condition
- 75% dos carros vendidos tem valor de até 18,3k
- Carros mais antigos tiveram menos vendas do que carros mais novos

