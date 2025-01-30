![image](https://github.com/user-attachments/assets/4f2c68b3-72b2-4bf8-836f-3ead24bbd590)


# 🦸‍♂️Análise Exploratória das vendas de uma Biblioteca

## I - Introdução
- Este [conjunto de dados](https://github.com/massis93/Projetos_Analise_Dados/blob/main/SQL/An%C3%A1lise%20de%20Vendas%20Biblioteca/sales.csv) contém informações sobre as vendas realizadas em uma biblioteca fictícia nos anos de 2022, 2023 e 2024. A minha empresa fictícia de consultores de dados foi contratada para fornecer insights para aumentar faturamento da biblioteca, que não sabia quais decisões tomar com base em seus dados de vendas.
- A análise será feita no SQL SERVER da Microsoft e no Power BI
- Será fornecido um Dashboard no Power BI, que pode ser acessado virtualmente nesse [link](https://app.powerbi.com/view?r=eyJrIjoiZmE5ZGE0YmMtNGRlMC00NjFmLWI4NzItOThkZmMzODc4ZmVmIiwidCI6IjRmZDUyYzZkLTcwMDctNDc1NS04NWZhLTI1Zjg2ZTcxYWVjNyJ9) para que a empresa possa monitorar todos os KPIs e fazer uma análise das vendas
- Irei fornecer à empresa um passo a passo de como analisar os dados com o Dashboard, como fazer perguntas de negócio e retirar insights do Dashboard (acesse essa análise ----aqui----) 


## II - Dataset

| Coluna          | Descrição                                                  
|-|-|                            
| `Order_id`        | Id do pedido                                          
| `Data` | Data da compra            
| `Título`       | Título do Livro
| `Genero`    	  | Gênero Literário do Livro
| `Páginas`    	  | Quantidade de Páginas do livro
| `Preço`    	  | Preço do Livro
| `Review_Score`    	  | Avaliação do cliente sobre o livro
| `Author`    	  | Autor do livro
| `Award`    	  | Prêmio que o livro ganhou
| `Cliente_ID`    	  | Id do cliente
| `Sexo`    	  | Sexo do Cliente
| `Idade`    	  | Idade do cliente



## III - Perguntas e Análises

### A-Como estão as vendas nos últimos 3 anos?

Para analisar "Como" estão as vendas, precisamos de uma análise por ano do ticket médio, quantidade de pedidos vendidos e quantidade de livros vendidos. 

![image](https://github.com/user-attachments/assets/8ba6b72d-e6cb-442f-be57-2089a35eff1b)

- A loja teve redução no Faturamento. E isso se deve à quantidade de pedidos que estão sendo vendidos estar diminuindo. 
- O ticket médio se manteve constante. Isso é ruim pois a empresa não soube fazer nenhuma campanha de marketing nesses 3 anos que pudesse incentivar a compra de mais livros por pedido. 

### B- Qual é a quantidade e porcentagem de homens e mulheres clientes da nossa loja?

É interessante saber este dado, pois queremos segmentar os clientes da biblioteca, pois ela precisará fazer campanhas de marketing especifícica para cada usuário.

![image](https://github.com/user-attachments/assets/c257ec87-7045-4b1f-9b0d-5ab37bdfb3b5)

- O número de mulheres é praticamente o dobro do que os homens
- Para aumentar o faturamento, podemos sugerir à biblioteca que ela compre mais livros voltados para as mulheres, pois o público é em sua maior parte feminino. Dessa forma o ticket médio da empresa poderá aumentar.







  



  








