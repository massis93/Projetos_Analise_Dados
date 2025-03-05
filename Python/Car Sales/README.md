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


### 4 - A concessionária vende mais carros de qual classe?


### 5 - Quais os tipos de Body mais vendidos?
### 6 - Quais as cores que mais saem
### 7 - Qual tipo de transmissão é mais vendida
### 8 - As vendas tiveram alguma sazonalidade?
### 9 - Qual faixa de preço de carro é mais vendido?
### 10 - Qual marca de carro é a mais vendida?


## IV - Conclusões


