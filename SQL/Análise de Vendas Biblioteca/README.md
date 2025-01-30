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

### C- Qual o perfil de compra dos nossos clientes?

Mais um dado interessante em saber, pois nosso site precisa estar adequando para um perfil adulto, ou mais jovem, ou até de idosos para poderem se identificar com nossa marca. Ou até trazermos livros diferentes para esse público, independente do Sexo. Por exemplo, se for um perfil de jovens de 20 anos, poderiamos trazer livros de uma cultura geek.

-Para isso, vamos segmentar essas idades em 3 classes. Crianças, Adultos e Idosos. Crianças terão até 18 anos, Adultos até 55 e o resto será idoso. Dessa forma podermos analisar separadamente o perfil de idade do nosso público, trazendo particularidades que só conseguiriamos através de uma segmentação com essa.

![image](https://github.com/user-attachments/assets/5ab8a117-d07a-45e9-8a20-13040f7bf840)

- Aqui, descobrimos que os Adultos são maioria, com uma idáde média de 37 anos e dispersão de 10,7 anos. Isso nos mostra que os dados estao dispersos entre 27 e 47 anos em sua maioria. É um público que atinge desde jovens mais adultos, até adultos mais velhos. Dessa forma, o site , a comunicação, os livros da empresa precisam estar voltados para este público, independente do sexo. Uma proposta seria trazer livros de eduação financeira, livros de pais e mães, e até trazer livros infantis, pois esses pais e mães comprarão para seus filhos.


### D- Divida nossos clientes entre esses 6 perfis possíveis e os analise individualmente

- Sabemos que a maior parte dos clientes são adultos, e a maior parte dos clientes são mulheres. Porém não podemos afirmar que a maior parte dos clientes são adulto e mulheres pois a divisão da quantidade de mulheres pode estar concentrada em crianças, enquanto a de homens estar concentrada em adultos por exemplo.
- Para isso precisamos segmentar os clientes entre esses 6 perfis: Masculino Criança, Masculino Adulto, Masculino Idoso e Feminino Criança, Feminino Adulto e Feminino Idoso.
- O Ceo quer que nós os analisemos individualmente. Para isso vamos trazer KPIs importantes

![image](https://github.com/user-attachments/assets/989e625f-c154-43fb-838b-7def6c9bfdc2)

- Veja que a quantidade de clientes Adulto e Feminino são a maioria, seguida por Adulto Masculino e Feminino Idoso. Esses três perfis campeões serão o objeto desta análise
- Os três perfis possuem KPIs semelhantes, só se diferem pela quantidade de pedidos feitos mas possuem o mesmo ticket médio e quantidade de produtos por pedido. Isso nos revela que o faturamento Feminino Adulto só foi maior pois eles fizeram mais pedidos, e não porque o ticket médio foi maior. Podemos então solicitar ao CEO da empresa a taxa de conversão dos segmentos e a quantidade de visitantes por segmento. Se Taxa de Conversão estiver maior, significa que nosso público Masculino Adulto, e Feminino Idoso, talvez não estejam gostando do perfil de livros que tem na loja. Mas caso a taxa de visitantes esteja maior, significa que precisamos investir mais em marketing para trazer clientes dos outros públicos, e ter um faturamento semelhante!


### E- Qual é o tipo de livro que esses 3 perfis estão comprando?

- Antes de fazer nossa consulta, precisamos colocar um tier nesses 3 perfis de compra
- Logo após, iremos consultar, desses 3 perfis, quais os 5 gêneros literários que eles preferem, o ticket médio que eles gastam em cada gênero, a média de páginas dos livros que eles compram.

![image](https://github.com/user-attachments/assets/29bbfba3-eedd-43f7-9e28-7bf0cc0db7bc)


- Nessa nossa análise eles tiveram informações semelhantes, mas por exemplo, caso tivessem um ranking de categoria favorita diferente, iriamos trazer mais livros de acordo com cada perfil.


### E- Como estão indo as vendas ao longo dos ano?

- Agora iremos voltar nossa análise observando os dados por data
- Precisamos saber a quantidade de Vendas, Ticket Médio, Quantidade de Clientes e Quantidade de Pedidos e de livros vendidos por data, dessa forma, podemos observar se há sazonalidade nas vendas, se o ticket médio aumenta nos finais de semana, ou se a quantidade de clientes aumenta no 5° e 20° dia útil, ou, em datas festivas, será que terá algum aumento nas vendas?

![image](https://github.com/user-attachments/assets/8ab03d0e-4c46-426b-b1d1-ee0aa4df804d)

- Para interpretar a tabela, vamos exportar o arquivo e analisar no excel, e você pode acessar esta análise neste ---- link ------ (estará disponível no meu portifólio em breve).

### F- Qual a média de Avaliação por Livro e Quantidade de pedidos por livro?

- Agora o CEO da empresa quer fazer uma análise dos livros vendidos para ver os livros campeões, sua avaliação.
- Vamos ir além, iremos também fazer uma comparação do score de avaliação do livro em relação ao seu gênero literário para saber se este livro esta performando bem

![image](https://github.com/user-attachments/assets/311c5301-a41f-4714-9358-b7257fe399b4)

- Vamos olhar para os 5 livros mais vendidos. Perceba que o score de avaliação deles está muito baixo, mas toda a sua categoria também está. Isso significa que não é o livro em si que é ruim, mas pode ser que os clientes não estejam sabendo avaliar. Caso o score estivesse muito abaixo da média da categoria, poderiamos presumir que são livros ruins, por mais que sejam campeões de vendas, e que os clientes não estão conseguindo olhar as avaliações na hora da compra. São muitas análises que poderemos fazer.


### F- Um livro ter prêmio, afeta na quantidade de vendas?

- Aqui provavalmente o CEO da empresa quer renovar o estoque e tem se deparado com os livros mais premiados, e quer saber se eles influenciam as vendas. Para isso iremos criar uma coluna no sql para saber se um livro é premiado ou não, e depois iremos novamente fazer uma tabela com os livros mais vendidos, só que dessa vez, vai ter uma coluna indicando se o livro tem ou não algum prêmio.

![image](https://github.com/user-attachments/assets/e8c54734-aa41-45bc-a2dc-897dfb44af7c)

E sim! Os 5 livros mais vendidos possuem premiação. Podemos concluir sim que isso afeta na quantidade de vendas.

  



  








