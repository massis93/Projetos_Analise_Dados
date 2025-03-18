![image](https://github.com/user-attachments/assets/93e3bca7-ee57-4e28-811b-ea55b4551510)

# 🚲Análise das vendas de uma rede de lojas de Bicicletas

## I - Problema de Negócio
- O CEO de uma rede de lojas de bicicletas quer aumentar o faturamento de sua empresa e otimizar o estoque através de uma análise de dados. Para isso, fui contratado para prestar serviços à empresa e gerar insights estratégicos para tomadas de decisões, através de análise de dados. O CEO me fez 10 perguntas.
- A análise será feita no SQL SERVER da Microsoft e o código usado em SQL pode ser acessado [aqui]()
- O [conjunto de dados](https://www.kaggle.com/datasets/dillonmyrick/bike-store-sample-database) foi baixado do site Kaggle e o DER do database está desenhado na parte 2.



## II - DER (Diagrama entidade relacionamento)

![image](https://github.com/user-attachments/assets/df4ba659-d747-41ed-8fd0-72dc482fae74)





## III - Perguntas e Análises

- o código usado em SQL pode ser acessado [aqui]()
- Antes de iniciar a análise, irei fazer a divisão do list_price da tabela order_items e da products por 100, pois o valor do preço está errado.

### 1 - Quantos modelos de produtos cada marca possui?

![image](https://github.com/user-attachments/assets/107efd0a-5232-44a1-a561-3dbbdd0645c2)

- A Marca TREK é a que possui maior variedade de produtos em seu estoque.
- Veja que há algumas marcas que possuem pouquíssimas variedades de produtos, seria interessante trabalhar com uma distribuição maior na variedade de produtos por marca, para intensificar o faturamento.



### 2 - Qual o valor total do estoque por marca?

![image](https://github.com/user-attachments/assets/146fe6a0-f133-492d-b253-61b7c2b1d640)


### 3 - Quantos PRODUTOS tem no estoque por marca?

![image](https://github.com/user-attachments/assets/445421f3-6532-4f0a-994c-db1cdc7b6bdb)

### 4- Qual o faturamento por Marca
![image](https://github.com/user-attachments/assets/0d7d8ad1-dca1-49fe-aa7c-537c7fc6dfe5)



### 4 - Qual é o valor de estoque por Loja?

![image](https://github.com/user-attachments/assets/ab58dddc-43a3-4b4a-80b1-aa65ce752e7a)


### 5 - Qual o produto que mais vende de cada marca?

![image](https://github.com/user-attachments/assets/8ca7c28b-ad76-40c9-b858-e24333c7b9be)


### 6 - Quais os 10 clientes que mais compraram?

![image](https://github.com/user-attachments/assets/112ec5a9-7371-403f-9960-5eeae75adbe8)


### 7 - Qual o produto de cada categoria que mais vende?

![image](https://github.com/user-attachments/assets/45c8605f-2212-42a9-9935-b36e003555fa)


### 8 - Qual foi o  faturamento de cada categoria por valor monetario e percentual?

![image](https://github.com/user-attachments/assets/46eaaccc-7e42-461e-a22e-04c61a87553e)


### 9 - Quais os 3 produto que mais vendem por loja?

![image](https://github.com/user-attachments/assets/40f1bdfe-b01b-4168-91e9-8c920297ed11)


### 10 - Qual as 5 cidades que mais gastaram?

![image](https://github.com/user-attachments/assets/02cd10cc-b540-4d84-b50c-78867f975179)


  
## Conclusão

