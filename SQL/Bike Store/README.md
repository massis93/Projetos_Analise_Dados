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

![image](https://github.com/user-attachments/assets/5ab42288-434b-49ed-beb8-ff5a0e06dcfe)


- A Marca TREK é a que possui maior variedade de produtos em seu estoque, provavelmente pois há uma melhor parceiria entre a loja e a marca. Porém, há marcas que tem pouquíssima variedade de produtos, e isso é ruim caso haja clientes interessados em produtos da Strider por exemplo. Isso diminuiria o ticket médio por cliente.
- Seria interessante aumentar a variedade de produtos para essas marcas com pouca variedade


### 2 - Qual o valor total do estoque por marca?

![image](https://github.com/user-attachments/assets/a9327705-f850-453f-b10c-d75ccb1b2ea1)

- As marcas Trek e Electra, juntas, somam 91% do valor de estoque das lojas. Há pouquíssimo estoque da Pure Cycles por exemplo. 


### 3 - Quantos PRODUTOS tem no estoque por marca?

![image](https://github.com/user-attachments/assets/ac477b8b-9860-4d55-9ab0-d636964686d0)

- Novamente as marcas Trek e Electra tem muito mais produtos do que as outras marcas. Veja que a marca Pure Cycles tem o dobro d produtos que a Ritchey porém seu valor total de estoque é vbem inferior. Isso acontece pois o valor dos produtos da Ritchey são bem mais altos.


### 4- Qual o faturamento por Marca

![image](https://github.com/user-attachments/assets/733b01f1-541b-4c55-b166-80389ba35f10)

- O faturamento da Marca Trek e Electra e Surly correspondem a 90% do total
- A Surly e a Syn Bicycles possuem um faturamento em porcentagem maior do que o seu total de valor no estoque. Seria interessante aumentar a quantidade de produtos dessas marcas pois a demanda esta sendo maior do que a oferta.



### 5 - Qual é o valor de estoque por Loja?

![image](https://github.com/user-attachments/assets/d8edeec0-bcc5-47a3-a09b-7fc9a51476fe)

Resposta: Ambas as lojas possuem praticamente o mesmo valor total de estoque, que é em torno de R$ 6,2 mi.



### 6 - Qual é o Faturamento por loja

![image](https://github.com/user-attachments/assets/9fbf7534-fdb9-461c-b28f-a03522a5a4aa)

O faturamento da Loja Baldwin Bikes corresponde à 68% de todo o faturamento, porém, há o mesmo valor estoque do que as outras lojas. Seria interessante retirar das outras e aumentar o estoque desta loja para não correr o risco de faltar algum produto.


### 7 - Qual o produto que mais vende de cada marca?

O CEO deseja fazer uma campanha de marketing nas suas lojas e nas mídias digitais. Para isso ele precisa saber qual o produto que mais vende por marca.

![image](https://github.com/user-attachments/assets/8ca7c28b-ad76-40c9-b858-e24333c7b9be)




### 8 - Quais os 10 clientes que mais compraram?

O CEO deseja ofertar um cupom de desconto para os 10 clientes que mais compraram na loja.

![image](https://github.com/user-attachments/assets/112ec5a9-7371-403f-9960-5eeae75adbe8)



### 9 - Qual o produto de cada categoria que mais vende?

Nas lojas existem 7 categorias de produtos. O CEO quer identificar qual o produto de cada categoria mais vende, pois quer colocar nas mídias digitais da empresa, produtos atraentes por categoria de bicicletas.

![image](https://github.com/user-attachments/assets/45c8605f-2212-42a9-9935-b36e003555fa)


### 10 - Qual foi o  faturamento de cada categoria por valor monetario e percentual?

O CEO da empresa deseja investir em mais produtos para as lojas. Dessa forma ele deseja saber qual categoria é a que mais tem sido procurada nas lojas.

![image](https://github.com/user-attachments/assets/46eaaccc-7e42-461e-a22e-04c61a87553e)


### 11 - Quais os 3 produto que mais venderam por loja?
O CEO da empresa deseja colocar na vitrine das lojas alguns produtos, para atrair os pedestres que passam na calçada da loja.

![image](https://github.com/user-attachments/assets/40f1bdfe-b01b-4168-91e9-8c920297ed11)




### 12 - Qual as 5 cidades que mais gastaram?

O CEO da empresa deseja fazer uma campanha de marketing no Instagram nas 5 cidades que mais compraram. Dessa forma, ele pode explorar todo o potencial do perfil de cliente daquelas cidades.

![image](https://github.com/user-attachments/assets/02cd10cc-b540-4d84-b50c-78867f975179)

