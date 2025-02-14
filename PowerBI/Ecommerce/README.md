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

Agora vou fazer uma breve análise com o dashboard, para provar que ele foi efetivo nos seus objetivos.

#### A- KPI's

Os KPI's mais importantes dos dados fornecdiso são Ticket Médio, Faturamento Total, Média das avaliações, Tempo de Entrega, portanto, foi criado um Cartão exclusivo com medidas DAX para esses campos.

![image](https://github.com/user-attachments/assets/daf3272f-0deb-4abe-b884-97d5d54f5d63)

#### B - Avaliação

#### C - Marketing


#### D - Vendas


#### E - Logística





