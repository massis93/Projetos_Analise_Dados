![image](https://github.com/user-attachments/assets/e77352ad-332c-4edf-9b3f-e4d703d40529)



# 🚗Análise das Vendas de uma loja de Carros

## I - Problema de negócio:

- O dono de uma loja de carros, me contratou para verificar os [dados](https://www.kaggle.com/datasets/syedanwarafridi/vehicle-sales-data) coletados sobre as vendas de sua loja nos anos de 2014 e 2015. O conjunto de dados possui informações como marca do carro, data da venda, preço da venda, cor do carro, entre outros. Ele deseja que eu analise e extraia informações para tomadas de decisões com base nos dados.
- O notebook em Jupyter contendo o código em python, pode ser acessado nesse [link](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Python/Car%20Sales/carSales.ipynb)

       
## II - Dataset

| Coluna          | Descrição                                                  
|-|-|                            
| `year`        | ano de fabricação do carro                                       
| `make` | marca do carro             
| `model`       | modelo do veículo
| `trim`    	  | características adicionais do veículo
| `body`    	  | tipo do veículo (Sedan, SUV)
| `transmissão`    	  | sistema de transmissão
| `vin`    	  | Id do veículo
| `state`    	  | estado em que o veículo foi registrado
| `condition`    	  | nota da condição do veículo
| `odometer`    	  | km rodados
| `color`    	  | cor do veículo
| `interior`    	  | cor do interior do veículo
| `seller`    	  | vendedor
| `mmr`    	  | tabela fipe do veículo
| `sellingprice`    	  | preço de venda
| `saledate`    	  | data da venda




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

-Veja que as vendas de carros manuais são minoria até entre carros que são mais antigos.
-Temos dois motivos: ou a maior parte dos carros antigos que tem na loja são de sistema de transmissão automático, ou esse público tem preferido carros automáticos. 

### 8 - As vendas tiveram alguma sazonalidade?
### 9 - Qual faixa de preço de carro é mais vendido?
### 10 - Qual marca de carro é a mais vendida?


## IV - Conclusões


