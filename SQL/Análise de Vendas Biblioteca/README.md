![image](https://github.com/user-attachments/assets/4f2c68b3-72b2-4bf8-836f-3ead24bbd590)


# 🦸‍♂️Análise Exploratória das vendas de uma Biblioteca

## I - Introdução
- Este [conjunto de dados](https://github.com/massis93/Projetos_Analise_Dados/blob/main/SQL/An%C3%A1lise%20de%20Vendas%20Biblioteca/sales.csv) contém informações sobre as vendas online realizadas em uma biblioteca fictícia nos anos de 2022, 2023 e 2024. A minha empresa fictícia de consultores de dados foi contratada para analisar os dados e fornecer insights para aumentar faturamento da biblioteca, que não sabia quais decisões tomar com base em seus dados de vendas.
- A análise será feita no SQL SERVER da Microsoft e no Power BI, e o código usado em SQL pode ser acessado [aqui](https://github.com/massis93/Projetos_Analise_Dados/blob/main/SQL/An%C3%A1lise%20de%20Vendas%20Biblioteca/Datapedia.sql)
- Será fornecido um Dashboard no Power BI, que pode ser acessado virtualmente nesse [link](https://app.powerbi.com/view?r=eyJrIjoiZmE5ZGE0YmMtNGRlMC00NjFmLWI4NzItOThkZmMzODc4ZmVmIiwidCI6IjRmZDUyYzZkLTcwMDctNDc1NS04NWZhLTI1Zjg2ZTcxYWVjNyJ9) para que a empresa possa monitorar todos os KPIs e fazer uma análise das vendas
- Irei fornecer à empresa um passo a passo de como analisar os dados com o Dashboard, como fazer perguntas de negócio e retirar insights do Dashboard (acesse o passo a passo [aqui](https://github.com/massis93/Projetos_Analise_Dados/tree/main/PowerBI/Biblioteca) )


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

- o código usado em SQL pode ser acessado [aqui](https://github.com/massis93/Projetos_Analise_Dados/blob/main/SQL/An%C3%A1lise%20de%20Vendas%20Biblioteca/Datapedia.sql)

### A-Como estão as vendas nos últimos 3 anos?

Para analisar "Como" estão as vendas, precisamos de uma análise por ano do ticket médio, quantidade de pedidos vendidos e quantidade de livros vendidos. 

![image](https://github.com/user-attachments/assets/8ba6b72d-e6cb-442f-be57-2089a35eff1b)

- A loja teve redução no Faturamento. E isso se deve à quantidade de livros que estão sendo vendidos estar diminuindo. 
- O ticket médio se manteve constante. Isso é ruim pois a empresa não soube fazer nenhuma campanha de marketing nesses 3 anos que pudesse incentivar a compra de mais livros por pedido.
- Para sugerirmos como deve ser essa campanha de marketing, precisaremos analisar o perfil dos clientes da biblioteca

### B- Qual é a quantidade e porcentagem de homens e mulheres clientes da nossa loja?

É interessante saber este dado, pois queremos segmentar os clientes da biblioteca, pois ela precisará fazer campanhas de marketing especifícicas para cada perfil de cliente.

![image](https://github.com/user-attachments/assets/c257ec87-7045-4b1f-9b0d-5ab37bdfb3b5)

- O número de mulheres é praticamente o dobro do que os homens
- Para aumentar o faturamento, podemos sugerir à biblioteca que ela compre mais livros voltados para o público feminino no geral. Dessa forma o ticket médio da empresa poderá aumentar.
- Geralmente as mulheres tendem a comprar mais impulsivamente, portanto, se o front-end da página da biblioteca tivesse informações como "estoque esgotando", ou "promoção por tempo limitado", talvez ajudaria a aumentar o ticket médio desssas clientes.

### C- Qual o perfil de idade dos nossos clientes?

Mais um dado interessante em saber, pois nosso site precisa estar adequado ao perfil de idade dos clientes, para poderem se identificar com a marca da biblioteca.

-Para isso, vamos segmentar essas idades em 3 classes. Crianças, Adultos e Idosos. Crianças terão até 18 anos, Adultos até 55 e o resto será idoso. Dessa forma podermos analisar separadamente o perfil de idade do nosso público, trazendo particularidades que só conseguiriamos através de uma segmentação com essa.

![image](https://github.com/user-attachments/assets/5ab8a117-d07a-45e9-8a20-13040f7bf840)

- Aqui, descobrimos que os Adultos são maioria, com uma idáde média de 37 anos e dispersão de 10,7 anos. Isso nos mostra que 68% dos dados estao dispersos entre 27 e 47 anos. É um público que atinge desde jovens mais adultos, até adultos mais velhos. Dessa forma, o site , a comunicação, os livros da empresa precisam estar voltados para este público, independente do sexo. Uma proposta seria trazer livros de eduação financeira, livros de pais e mães, e até trazer livros infantis, pois esses pais e mães comprarão para seus filhos.


### D- Quais os perfis de clientes que temos em nossa loja?

- Sabemos que a maior parte dos clientes são adultos, e a maior parte dos clientes são mulheres. Porém não podemos afirmar que a maior parte dos clientes são adulto e mulheres pois a divisão da quantidade de mulheres pode estar concentrada em crianças, enquanto a de homens estar concentrada em adultos por exemplo.
- Para isso precisamos segmentar os clientes entre esses 6 perfis: Masculino Criança, Masculino Adulto, Masculino Idoso e Feminino Criança, Feminino Adulto e Feminino Idoso, e fazer a contagem deles.
- Vamos trazer junto a contagem outros dados relevantes para verificar o perfil de compra desses tipos de clientes

![image](https://github.com/user-attachments/assets/989e625f-c154-43fb-838b-7def6c9bfdc2)

- Veja que a quantidade de clientes Adulto e Feminino são a maioria, seguida por Adulto Masculino e Feminino Idoso. Esses três perfis campeões serão o objeto desta análise
- Os três perfis possuem KPIs semelhantes, só se diferem pela quantidade de pedidos feitos mas possuem o mesmo ticket médio e quantidade de produtos por pedido.
- Para verificar o motivo pelo qual as Adultas fazem mais pedido que os outros dois segmentos, podemos solicitar ao CEO a taxa de visitas de cada segmento, e a taxa de conversão
- Se Taxa de conversão estiver baixa, significa que nosso público Masculino Adulto, e Feminino Idoso, talvez não estejam gostando do perfil de livros que tem na loja. Mas caso a taxa de visitantes esteja menor do que a das Adultas, significa que precisamos investir mais em marketing para trazer clientes deses dois públicos, e ter um faturamento semelhante!


### E- Qual é o tipo de livro que esses 3 perfis estão comprando?

- Antes de fazer nossa consulta, precisamos colocar um tier nesses 3 perfis de compra
- Logo após, iremos consultar, desses 3 perfis, quais os 5 gêneros literários que eles preferem, o ticket médio que eles gastam em cada gênero, a média de páginas dos livros que eles compram.

![image](https://github.com/user-attachments/assets/29bbfba3-eedd-43f7-9e28-7bf0cc0db7bc)


- Nessa nossa análise eles tiveram perfis semelhantes, portanto seria interessante a Biblioteca trazer mais livros dessas 5 categorias, com essa média de páginas, pois são as categorias de livros que os top 3 perfis de clientes mais compram!


### E- Como estão indo as vendas ao longo dos ano?

- Agora iremos voltar nossa análise observando os dados por data
- Precisamos saber a quantidade de Vendas, Ticket Médio, Quantidade de Clientes e Quantidade de Pedidos e de livros vendidos por data, dessa forma, podemos observar se há sazonalidade nas vendas, se o ticket médio aumenta nos finais de semana, ou se a quantidade de clientes aumenta no 5° e 20° dia útil, ou, em datas festivas, será que terá algum aumento nas vendas?

![image](https://github.com/user-attachments/assets/8ab03d0e-4c46-426b-b1d1-ee0aa4df804d)

- Para interpretar a tabela, vamos exportar o arquivo e analisar no excel, e você pode acessar esta análise neste ---- link ------ (estará disponível no meu portifólio em breve).

### F- Qual a média de Avaliação por Livro e Quantidade de pedidos por livro?

- Agora o CEO da empresa quer fazer uma análise dos livros vendidos para ver os livros campeões e sua avaliação.
- Vamos ir além, iremos também fazer uma comparação do score de avaliação do livro em relação ao seu gênero literário para saber se este livro esta performando bem em comparação com os demais.

![image](https://github.com/user-attachments/assets/311c5301-a41f-4714-9358-b7257fe399b4)

- Vamos analisar os 5 livros mais vendidos. Perceba que o score de avaliação deles está muito baixo, mas toda a sua categoria também está.
- Mas como poderia os livros mais vendidos terem uma avaliação tão baixa? Pode ser que a avaliação esteja oculta, e os clientes comprem apenas pela capa do livro. Daí seria interessante a Biblioteca trazer mais livros com capas mais chamativas


### G- Um livro ter prêmio, afeta na quantidade de vendas?

- Aqui provavalmente o CEO da empresa quer renovar o estoque e tem se deparado com os livros mais premiados (que são mais caros), e quer saber se eles influenciam as vendas. Para isso iremos criar uma coluna no sql para saber se um livro é premiado ou não, e depois iremos novamente fazer uma tabela com os livros mais vendidos, só que dessa vez, vai ter uma coluna indicando se o livro tem ou não algum prêmio.

![image](https://github.com/user-attachments/assets/e8c54734-aa41-45bc-a2dc-897dfb44af7c)

- Não podemos afirmar com exatidão, mas dentre os 5 livros mais vendidos, 4 possuem algum prêmio. Portanto, há uma forte suspeita de que as vendas podem estar relacionadas com o livro ter ou não ter prêmio.

  
## Conclusão

Nossa análise trouxe insights interessantes, mas estas são as indicações de dados que iremos sugerir à empresa, para que possamos fornecer insights ainda mais precisos:

- Taxa de Conversão, pois aqui conseguiremos medir se o anúncio esta performando bem
- Quantidade de Fotos, Caracteres do Título e Descrição, pois conseguiremos fazer uma relação entre a taxa de conversão e essas variáveis
- Número de Visitantes por dia e por hora, para conseguirmos verificar se há fluxo de clientes e como é o fluxo ao longo dos dias e meses
- Tempo que o cliente fica na página do site, para conseguirmos analisar se os idosos por exemplo, tem dificuldade para comprar, ou se os adultos e jovems não acham interessante o layout da página
- Se há produtos no carrinho do cliente, para sabermos se o carrinho foi abandonado, e podermos enviar um email para relembrar o cliente da compra, e aumentar a taxa de conversão

  








