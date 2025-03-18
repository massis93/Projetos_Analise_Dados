![image](https://github.com/user-attachments/assets/93e3bca7-ee57-4e28-811b-ea55b4551510)

# 🚲Análise das vendas de uma rede de lojas de Bicicletas

## I - Problema de Negócio
- O CEO de uma rede de lojas de bicicletas quer aumentar o faturamento de sua empresa e otimizar o estoque através de uma análise de dados. Para isso, fui contratado para prestar serviços à empresa e gerar insights estratégicos para tomadas de decisões, através de análise de dados. O CEO me fez 10 perguntas.
- A análise será feita no SQL SERVER da Microsoft e o código usado em SQL pode ser acessado [aqui]()
- O [conjunto de dados](https://www.kaggle.com/datasets/dillonmyrick/bike-store-sample-database) foi baixado do site Kaggle e o DER do database está desenhado na parte 2.



## II - DER (Diagrama entidade relacionamento)

![image](https://github.com/user-attachments/assets/df4ba659-d747-41ed-8fd0-72dc482fae74)





## III - Perguntas e Análises

- O código usado em SQL pode ser acessado [aqui]()
- Antes de iniciar a análise, irei fazer a divisão do list_price da tabela order_items e da products por 100, pois o valor do preço está errado.



### 1 - Qual o valor total do estoque por marca?

O CEO deseja saber como está dividido o valor de estoque por marca de produto de suas lojas.

![image](https://github.com/user-attachments/assets/a9327705-f850-453f-b10c-d75ccb1b2ea1)

- As marcas Trek e Electra, juntas, somam 91% do valor de estoque das lojas.

### 2 - Qual o faturamento por Marca

Para saber se o valor do estoque está de acordo com a demanda, o CEO deseja saber como esta o faturamento por marca.

![image](https://github.com/user-attachments/assets/733b01f1-541b-4c55-b166-80389ba35f10)

As marcas Trek e Electra são as preferidas pelos clientes, principalmente a Trek.
- É interessante observar que o faturamento da Surly é de 10%, e da Sun é de 5%, porém o valor do estoque dessas marcas correspondem a 5% e 3%. Seria interessante dobraro valor de estoque dessas duas marcas para ficar de acordo com a demanda do mercado.



### 3 - Quantos modelos de produtos cada marca possui?

O CEO da empresa percebeu que há marcas que estão vendendo muito pouco, e quer investigar um dos motivos, para isso, ele deseja saber como esta a variedade de produtos por marca.

![image](https://github.com/user-attachments/assets/5ab42288-434b-49ed-beb8-ff5a0e06dcfe)

Veja que a Ritchey possui apenas 1 tipo de produto, enquanto a Trek possui 135. Marcas que possuem menor variedade estão faturando menos. 






### 4 - Qual é o valor de estoque por Loja?


![image](https://github.com/user-attachments/assets/d8edeec0-bcc5-47a3-a09b-7fc9a51476fe)

Ambas as lojas possuem praticamente o mesmo valor total de estoque, que é em torno de R$ 6,2 mi.



### 5 - Qual é o Faturamento por loja

![image](https://github.com/user-attachments/assets/9fbf7534-fdb9-461c-b28f-a03522a5a4aa)

O faturamento da Loja Baldwin Bikes corresponde à 68% de todo o faturamento, porém, há o mesmo valor estoque do que as outras lojas. Seria interessante retirar das outras e aumentar o estoque desta loja para não correr o risco de faltar algum produto.


### 6 - Qual o produto que mais vende de cada marca?

O CEO deseja investir em mais estoque, para isso, ele deseja saber qual produto que esta mais vendendo por marca.

![image](https://github.com/user-attachments/assets/8ca7c28b-ad76-40c9-b858-e24333c7b9be)




### 8 - Quais os 10 clientes que mais compraram?

O CEO deseja ofertar um cupom de desconto para os 10 clientes que mais compraram na loja.

![image](https://github.com/user-attachments/assets/112ec5a9-7371-403f-9960-5eeae75adbe8)



### 9 - Qual o produto de cada categoria que mais vende?

Nas lojas existem 7 categorias de produtos. O CEO quer identificar qual o produto de cada categoria mais vende, pois quer colocar nas mídias digitais da empresa, produtos atraentes por categoria de bicicletas.

![image](https://github.com/user-attachments/assets/45c8605f-2212-42a9-9935-b36e003555fa)


### 10 - Qual foi o  faturamento de cada categoria por valor monetario e percentual?

O CEO da empresa deseja investir em mais produtos da categoria que mais vende para as lojas. Dessa forma ele deseja saber qual categoria é a que mais tem sido procurada nas lojas.

![image](https://github.com/user-attachments/assets/46eaaccc-7e42-461e-a22e-04c61a87553e)


### 11 - Quais os 3 produto que mais venderam por loja?
O CEO da empresa deseja colocar na vitrine das lojas alguns produtos, para atrair os pedestres que passam na calçada da loja.

![image](https://github.com/user-attachments/assets/40f1bdfe-b01b-4168-91e9-8c920297ed11)




### 12 - Qual as 5 cidades que mais gastaram?

O CEO da empresa deseja fazer uma campanha de marketing no Instagram nas 5 cidades que mais compraram. Dessa forma, ele pode explorar todo o potencial do perfil de cliente daquelas cidades.

![image](https://github.com/user-attachments/assets/02cd10cc-b540-4d84-b50c-78867f975179)

