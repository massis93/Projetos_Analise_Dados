![image](https://github.com/user-attachments/assets/4f2c68b3-72b2-4bf8-836f-3ead24bbd590)


# 🦸‍♂️Análise Exploratória das vendas de uma Biblioteca

## I - Introdução
- Este [conjunto de dados](https://github.com/massis93/Projetos_Analise_Dados/blob/main/SQL/An%C3%A1lise%20de%20Vendas%20Biblioteca/sales.csv) contém informações sobre as vendas realizadas em uma biblioteca nos anos de 2022, 2023 e 2024. A minha empresa fictícia de consultores de dados foi contratada para fornecer insights para aumentar faturamento da biblioteca, que não sabia quais decisões tomar com base em seus dados de vendas.
- A análise será feita no SQL SERVER da Microsoft
- Será fornecido um Dashboard no Power BI, que pode ser acessado virtualmente nesse [link](https://app.powerbi.com/view?r=eyJrIjoiZmE5ZGE0YmMtNGRlMC00NjFmLWI4NzItOThkZmMzODc4ZmVmIiwidCI6IjRmZDUyYzZkLTcwMDctNDc1NS04NWZhLTI1Zjg2ZTcxYWVjNyJ9) para que a empresa possa monitorar todos os KPIs e fazer uma análise das vendas
- Irei fornecer à empresa um passo a passo de como analisar os dados, fazer perguntas de negócio e retirar insights do dashboard (acesse essa análise ----aqui----) 


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

### A-Como se comporta a distribuição dos personagens por gênero
Para verificar a distribuição dos personagens por gênero, podemos usar duas formas: tabela dinâmica e fórmulas no excel.


##### A1- Fórmulas do Excel
- Para contar a quantidade total de personagens, utiliza-se a função CONT.VALORES. Porém, precisamos garantir que esta coluna tenha apenas valores únicos. Para isso, utilizaremos antes a função ÚNICO.
  
- Depois, precisamos contar a quantidade total de personagens de cada gênero, utilizando a função CONT.SE

##### A2- Tabela Dinâmica 
- A tabela Dinâmica é a principal ferramenta do excel a ser utilizada em uma análise de dados. Com ela podemos analisar valores Univariavel e Multivariavelmente, podendo fazer um mapa de calor.
- Na tabela dinâminca, na parte de Colunas, colocaremos a Coluna `Gender` e nos valores a quantidade de `Name/Alias`. Dessa forma, conseguimos rapidamente reproduzir os mesmos resultados que a fórmula de Excel faz.
- Com o gráfico de Pizza gerado a partir destas tabelas, conseguimos verificar que há mais homens do que mulheres.

![image](https://github.com/user-attachments/assets/bade755b-c6b8-4285-aec2-d86bc07bba99)

### B-Analisando o número de Aparições por Personagem
- Para analisar a coluna `Appearances` iremos utilizar o gráfico BoxPlot.
- O boxplot nos fornece medidas interessantes como média, mediana, os quartis e os outliers.

![image](https://github.com/user-attachments/assets/558225ec-fa36-4641-99d6-c37e932a7705)


- Veja que a 75% dos números de quantidade de aparições chegam até 500 (Quartis 1,2 e 3 chegam até 500)
- Há bastantes outliers nesses números
- A média de aparições fica em 132 unidades e a mediana em 414. Essa discrepâncias entre as duas medidas nos indica que a distribuição não é homogênea, provavelmente pela quantidade de outliers.
-  A média facilmente é alterada por outliers, portanto, nesse caso, não seria uma medida interessante para resumir os dados.

### C-Analisando o número de Aparições por Gênero

![image](https://github.com/user-attachments/assets/16489322-b58d-4e5e-a8f4-7c58f76656b3)


- Comparando os dois IQR (Intervalo InterQuartil), o boxplot dos homens indica que há maior dispersão nos dados, e em valores mais altos
- Comparando os bigodes, o boxplot dos homens também indica uma maior dispersão na distribuição dos dados, e atingindo valores mais altos
- A mediana dos homens é maior do que a das mulheres
- O boxplot dos homens apresenta muito mais outliers do que o das mulheres

Portanto, comparando as aparições dos dois gêneros, veremos que os personagens homens aparecem mais vezes do que as mulheres

### D-Criação de Personagem por Data
![image](https://github.com/user-attachments/assets/cafb8923-f1a9-46e5-8153-8331878fb57f)

- Para construir a coluna de ano e a quantidade de personagens criados por ano, é necessário o auxílio da função CONT.SE, para contar a quantidade de `Year` igual aos anos que vão de 1900 a 2015.
- A partir do ano 2005 começou a intensificar a criação de personagens, chegando no auge de criação em 2013. Isso provavelmente ocorreu devido á uma explosão da cultura geek, levando a Marvel a criar novos personagens para serem lançados novos filmes.


### E-Criação de Personagem por Ano e por Gênero
- Para criar o gráfico de linhas temporal, iremos precisar usar a função CONT.SES para filtrar a quantidade de criação de personagem por ano e por gênero
  
![image](https://github.com/user-attachments/assets/9f7a58c0-710d-4526-86b7-4a2ea561b182)

- A visualização por ANO, da criação de personagem por gênero esta muito difícil de ser analisada, por isso vamos resumir por DÉCADA a criação
- Para isso iremos criar uma coluna de data das décadas dos anos 1900 a 2015 
- Usaremos a função SOMASES para somar a quantidade de personagens criados naquele conjunto de dez anos, que são mulheres e que são homens

![image](https://github.com/user-attachments/assets/f485728a-39db-4ba3-b4a5-c26648b0c30f)

- O gráfico de linhas temporal é feito logo em seguida:

![image](https://github.com/user-attachments/assets/80d92312-6ad8-42a4-82f5-f875e60ff3a8)

- A criação de personagens homens sempre foi maior que a de mulheres, com excessão da década de 1900 e 1990
- Após 1990 houve uma explosão na criação de personagens, que em sua grande maioria eram homens

### F- Distribuição de Personagens por Classe e Gênero
- Agora iremos analisar a quantidade de personagens homens e mulheres por `Class`
![image](https://github.com/user-attachments/assets/63f239a6-3403-4220-ba45-751c24634411)


- A grande maioria dos personagens estão na classe Full
- Há muito poucos personagems na classe Probationary

Observando a distribuição de gênero por classe temos o seguinte gráfico de colunas:

![image](https://github.com/user-attachments/assets/166d4ecd-7c98-43f2-84be-e49f9da0ea91)

- A maior parte dos homens e mulheres estão na classe Full
- Há mais mulheres do que homens somente na classe Academy
- Na classe Probationary só há homens


### G- Quantidade de Mortes por Gênero
- Para analisar a quantidade de mortes por Gênero, o gráfico de Pizza será mais interessante

![image](https://github.com/user-attachments/assets/4db32c38-1206-4002-83dd-addfc737089e)
- Das mortes ocorridas, a maior parte delas foi entre homens
- Talvez a explicação desse dado seja o fato dos homens aparerem mais vezes, como analisamos anteriormente

### H- Percentual de Mortes por Quartil de Aparições
- Agora vamos verificar como se comportam as mortes pelos quartis de aparições
- Para isso, iremos criar uma nova coluna com o quartil correspondente do número de aparições (sem separar por gênero)
- No excel iremos usar uma função SE Aninhada, para verificar a qual quartil de aparição cada personagem corresponde

![image](https://github.com/user-attachments/assets/55322826-93d9-43bc-9935-e04556a17adf)

- A maioria das mortes representa os quartis 3 e 4 de aparições, isso quer dizer que pode haver uma relação entre aparecer mais e morrer ou quanto menos aparecer, menor a chance de ter alguma morte.

### I- Análise Multivariada do Número de Aparições Médio, em Relação a Gênero e Ocorrência de mortes
- Agora iremos verificar a relação entre o gênero e ocorrência de mortes, usando a média de aparições
- Para isso iremos usar um mapa de calor

![image](https://github.com/user-attachments/assets/f7cc0903-3a73-4dba-891d-ac937c27f8f5)

- Podemos concluir que os personagens que morreram, independente do gênero, são os que apareceram mais vezes
- Os personagens homens aparecem, em média, mais do que as mulheres, independente se morreram ou não, porém, quando morrem, a média de aparição comparada com a das mulheres é bem maior






  



  








