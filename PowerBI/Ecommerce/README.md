![image](https://github.com/user-attachments/assets/34c03178-fe24-4300-95f8-7df6fcf75b4c)



# 💹Dashboard de vendas de um Ecommerce

## I- Introdução
- A Olist é uma empresa brasileira que oferece soluções para pequenos, médios e grandes lojistas venderem seus produtos de forma mais eficiente em marketplaces, como Mercado Livre, Amazon, Americanas, e outros. A empresa forneceu um dataset público de 100k pedidos contendo informações de vendas, clientes, vendedores, transações, preservando a identidade dos clientes e vendedores. Ele é composto por várias tabelas relacionadas, como:

- Pedidos (orders) – Informações sobre cada pedido, como status, timestamp, etc.
- Itens do pedido (order_items) – Detalhes dos produtos vendidos em cada pedido.
- Pagamentos (order_payments) – Informações sobre os pagamentos de cada pedido.
- Clientes (customers) – Dados dos clientes, como localização.
- Avaliações (order_reviews) – Reviews e notas deixadas pelos clientes.
- Produtos (products) – Informações sobre os produtos vendidos.
- Vendedores (sellers) – Dados dos vendedores do marketplace.
- Localizações (geolocation) – Coordenadas geográficas dos clientes e vendedores.

O [dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) desde projeto pode ser baixado no site Kaggle pelo [link](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce), e você pode acessar o dashboard online do Power BI deste projeto neste [link](https://app.powerbi.com/view?r=eyJrIjoiZGY0YTAzMzctZmVhYi00NDFkLTkzYWYtMTgwZDcxMzE2ZGM3IiwidCI6IjRmZDUyYzZkLTcwMDctNDc1NS04NWZhLTI1Zjg2ZTcxYWVjNyJ9).

## II- DER
Um DER (Diagrama Entidade-Relacionamento) é uma representação visual do modelo de dados de um sistema, ele mostra como as tabelas estão relacionadas/conectadas entre si.

![image](https://github.com/user-attachments/assets/4bbce40f-b0fe-42d0-8042-ec01f4fd0b04)



## III- Dashboard
- Você pode acessar o dashboard online do Power BI deste projeto neste [link](https://app.powerbi.com/view?r=eyJrIjoiZGY0YTAzMzctZmVhYi00NDFkLTkzYWYtMTgwZDcxMzE2ZGM3IiwidCI6IjRmZDUyYzZkLTcwMDctNDc1NS04NWZhLTI1Zjg2ZTcxYWVjNyJ9).

![image](https://github.com/user-attachments/assets/6f23cb4d-740b-4398-945f-4ac472a6bf4e)






## IV- Objetivo do Dashboard
Os objetivos de fazer um dashboard para este dados são:
- Fornecer os KPI's dos dados para a área de negócios
- Fornecer insights para aumentar o score de avaliação por pedido
- Fornecer insights para a área de marketing realizar campanhas eficazes
- Fornecer insights para a área de vendas avaliar o comportamento das vendas
- Fornecer insights para a área de logística



## V- ETL

- Primeiramente foi necessário criar uma tabela de Calendário para conseguir filtrar por data as tabelas fato e dimensão da maneira correta
- Depois fiz um tratamento do tipo dos dados em todas as colunas de todas as tabelas
- Depois fiz a tradução de todas as linhas e colunas que estavam em inglês, para português
- Fiz remoção de valores duplicados na tabela vendedor, cliente, avaliação e produto, pois tabelas dimensão não podem conter valores duplicados, pois vão se relacionar com as tabela fato com um exclusivo valor (conceito tabela fato-dimensão)
- Carreguei os dados do Power Query para o Power BI


### VI- Análise

Agora vou fazer uma breve análise com o dashboard, para provar que ele foi efetivo nos seus objetivos. Toda a análise será feita para o ano de 2017, pois o dataset contém dados faltantes para alguns meses dos anos de 2018 e 2016.

#### A- KPI's

Os KPI's mais importantes dos dados fornecidos são Ticket Médio, Faturamento Total, Média das avaliações, Tempo de Entrega, portanto, foi criado um Cartão exclusivo com medidas DAX para esses campos.

![image](https://github.com/user-attachments/assets/daf3272f-0deb-4abe-b884-97d5d54f5d63)

#### B - Insights

Com o gráfico de avaliação e tempo de entrega médio podemos observar que quanto maior o tempo de entrega menor é a avaliação, e isso para todo o País. Ambos se correlacionam negativamente, veja:

![image](https://github.com/user-attachments/assets/3c54b4ab-507f-477e-913b-7ab50484676e)


Além disso, veja o Rio de Janeiro, que apresenta uma taxa alta no tempo de entrega dos pedidos:

![image](https://github.com/user-attachments/assets/6fa2eb76-4dda-4fc5-ada9-06d6da80c7cc)

Enquanto São Paulo apresenta uma avaliação maior, e apresenta uma taxa no tempo de entrega menor:

![image](https://github.com/user-attachments/assets/adfb44db-b3e7-4747-8c30-836a5313a314)

Por isso, podemos concluir que tempo de entrega afeta a avaliação dos pedidos. Podemos conversar com a equipe de Logística e propor algumas soluções para o Rio de Janeiro, por exemplo.

---

Veja que o tempo de entrega médio para os meses do final do ano no RJ aumenta:

![image](https://github.com/user-attachments/assets/4b317f6f-58e6-4cfe-a685-c7241805819b)

Isso pode acontecer devido ao aumento no número de pedidos, que faz com que a frota de logística não dê conta de entregar no prazo.

![image](https://github.com/user-attachments/assets/abc6d120-c982-485e-8992-540cf18d54f1)


Confirmando a afirmação anterior, o gráfico acima nos mostra que o período de fim de ano é o que mais vende. Portanto, seria interessante a equipe de logística fazer um investimento na frota de caminhões neste período.


---

As vendas no estado de São Paulo também tem uma alta no final do ano, provavelmente pela Black Friday e Natal (Presentear alguém), e depois cai no começo do ano, subindo a cada mês que passa. Veja que o ticket-médio em Julho e Agosto é muito baixo. O que acontece nesse período? Seria interessante avaliar com a equipe de marketing como estão as campanhas para estes meses, e se não tiver nenhuma, fazer um incentivo para aumentar o ticket médio dos pedidos, como por exemplo, comprar algum produto e ganhar desconto na compra de outro.

![image](https://github.com/user-attachments/assets/c846965f-1e7e-4c1b-962f-d46bc5ae6e22)

---

A categoria Cama Mesa e Banho se Manteve na posição 1 do ranking em todos os meses, sendo a mais vendida, com exceção de Fevereiro e Março, que foi móveis e decoração.

![image](https://github.com/user-attachments/assets/ab3d74f2-fc13-4c2b-b3a1-352376c21783)

Isso aconteceu pois a categoria Móveis e decoração se mantém estável no número de pedidos no ano todo, enquanto as outras categorias tendem a crescer o número de pedidos a cada mês.

![image](https://github.com/user-attachments/assets/865e9974-db06-4ba7-be7f-2884bfe3adbf)

Veja o gráfico acima da estabilidade de vendas de Móveis e Decoração para o começo do ano.

Enquanto isso, veja a categoria Cama, Mesa e Banho:

![image](https://github.com/user-attachments/assets/52172f6e-2c21-45a8-9e33-6116868c63c7)


Portanto, é normal haver essa sazonalidade nas categorias dos produtos.

---

Agora vou verificar o ticket médio dos produtos de todas as categorias.

![image](https://github.com/user-attachments/assets/0a3f886d-6b96-4b61-8e2a-d386b232f1e3)


Julho foi o período de menor ticket médio. Seria interessante a equipe de marketing gerar alguma campanha de leve mais para esse período, fazendo com que os clientes aumentem o ticket médio nesse período.

---
Agora vou verificar como é a sazonalidade do Brasil em todas as categorias para os Total de vendas pelo grão de dia do mês. Para isso, vou retirar o mês de novembro, que tem a black friday, e pode interferir na nossa análise:

![image](https://github.com/user-attachments/assets/db03223a-4251-4882-a136-2d44c011851b)

Veja que dia 29, 30 e 31 são dias de queda de vendas. Pode ser pois sejam dias em que as pessoas estão com poder aquisitivo menor. Uma maneira de estimular as vendas seria oferecendo um parcelamento no cartão para pagamento no outro mês. Por exemplo, a Shopee oferece um método de pagamento por crédito da própria shopee, e voce tem determinado dia para começar a pagar. Seria interessante a olist oferecer similar método.




