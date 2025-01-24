![image](https://github.com/user-attachments/assets/cff0c95e-0c60-4eeb-bdf1-8ef124a82011)

# 🦸‍♂️Análise Exploratória dos personagens Avengers

## I - Introdução
- Este [conjunto de dados](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Excel/Avengers/Avengers.xlsx) contém informações de todos os personagens dos Avengers da Marvel. Cada coluna contém features do personagem, como data de entrada, gênero, quantidade de mortes, classificação do personagem, número de aparições, entre outros.
- Toda a análise feita com o dataset será pelo Excel, com o auxílio de fórmulas e do uso da tabela dinâmica.



## II - Dataset

| Coluna          | Descrição                                                  
|-|-|                            
| `Name/Alias`        | Nome ou Apelido do Personagem                                           
| `Appearances` | Quantidade de Aparições do Personagem              
| `Current?`       | Personagem ainda é Ativo? 
| `Gender`    	  | Gênero do Personagem
| `Year`    	  | Ano de Entrada no Avengers
| `Class`    	  | Classe do Personagem
| `Death1`    	  | Se o personagem já morreu
| `Return`    	  | Se o personagem retornou após morrer




## III - Perguntas e Análises

### A-Como se comporta a distribuição dos personagens por gênero
Para verificar a distribuição dos personagens por gênero, pode-se usar duas formas: tabela dinâmica e fórmulas no excel.


##### A1- Fórmulas do Excel
- Para contar a quantidade total de personagens, utiliza-se a função CONT.VALORES. Porém, precisamos garantir que esta coluna tenha apenas valores únicos. Para isso, no excel utiliza-se a função ÚNICO.
  
- Depois, precisamos contar a quantidade total de personagens de cada gênero, utilizando a função CONT.SE

##### A2- Tabela Dinâmica 
- A tabela Dinâmica é a principal ferramenta do excel a ser utilizada em uma análise de dados. Com ela podemos agrupar valores Univariavel e Multivariavelmente, podendo fazer um mapa de calor.
- Colocando na parte de Colunas a Coluna `Gender` e nos valores a quantidade, conseguimos rapidamente reproduzir os mesmos resultados que a fórmula de Excel faz.

##### A3- Gráfico de Pizza da Distribuição por Genero

![image](https://github.com/user-attachments/assets/bade755b-c6b8-4285-aec2-d86bc07bba99)

### B-Analisando o número de Aparições por Personagem
- O boxplot nos fornece medidas interessantes como média, mediana, os quartis e os outliers. Para resumir o número de aparições iremos utilizar o grafico boxplot.

![image](https://github.com/user-attachments/assets/fb4737b9-5242-4341-8639-0e89ee15baaa)

- Veja que a 75% dos números de quantidade de aparições chegam até 500 (Quartis 1,2 e 3 chegam até 500)
- A média de aparições fica em 132 vezes e a mediana em 414. Essa discrepâncias entre as duas medidas é devido a presença de outliers. A média facilmente é alterada por outliers, e nesse caso, não seria um dado interessante para resumir os dados. Em contrapartida, a mediana seria um dado de maior acurácia para representar estes dados

### C-Analisando o número de Aparições por Gênero

![image](https://github.com/user-attachments/assets/04872195-8735-4b30-b13c-7c8b81c640bc)

- Comparando os dois IQR, o boxplot dos homens indica maior dispersão e em valores mais altos
- Comparando os bigodes, o boxplot dos homens também indica uma maior dispersão, e atingindo valores mais altos
- A mediana dos homens é maior do que a das mulheres
- O boxplot dos homens apresenta muito mais outliers do que odas mulheres

Ou seja, comparando as aparições dos dois gêneros, veremos que os personagens homens aparecem mais vezes do que as mulheres

### D-Criação de Personagem por Data
![image](https://github.com/user-attachments/assets/cafb8923-f1a9-46e5-8153-8331878fb57f)

- A partir do ano 2005 começou a intensificar a criação de personagens, chegando no auge de criação em 2013. Provavelmente quando começou a explodir a moda da cultura geek no mundo todo
- Para construir a coluna de ano, e a quantidade de personagens criados por ano, é necessário o auxílio da funçãp CONT.SE, para contar a quantidade de `Year` igual aos anos que vão de 1900 a 2015.

### E-Criação de Personagem por Ano e por Gênero
- Para criar a visualização, iremos precisar usar a função CONT.SES, para filtrar a quantidade de criação de personagem por ano e por gênero
  
![image](https://github.com/user-attachments/assets/9f7a58c0-710d-4526-86b7-4a2ea561b182)

-A visualização por ano, da criação de personagem por gênero esta muito difícil de ser analisada, por isso vamos resumir por década a criação
- Para isso iremos criar uma coluna de anos de 1900 a 2015 de dez em dez ano
- Faremos uma SOMASES para somar a quantidade de criações dos anos que sejam maiores que a década atual, e menores que a década seguinte
- O resultado é a tabela e o gráfico a seguir:

![image](https://github.com/user-attachments/assets/f485728a-39db-4ba3-b4a5-c26648b0c30f)

![image](https://github.com/user-attachments/assets/80d92312-6ad8-42a4-82f5-f875e60ff3a8)

- A criação de personagens homens sempre foi maior que a de mulheres, com excessão da década de 1990, que se aproximaram
- Após 1990 houve uma explosão na criação de personagens, que em sua grande maioria eram homens

### F- Distribuição de Personagens por Classe e Gênero
![image](https://github.com/user-attachments/assets/63f239a6-3403-4220-ba45-751c24634411)


- A maioria dos personagens estão na classe Full
- Há muito poucos personagems na classe Probationary

Observando a distribuição de gênero por classe:

![image](https://github.com/user-attachments/assets/166d4ecd-7c98-43f2-84be-e49f9da0ea91)

- Há mais mulheres do que homens somente na classe Academy
- A maior parte das mulheres estão na classe Full

### G- Quantidade de Mortes por Gênero

![image](https://github.com/user-attachments/assets/4db32c38-1206-4002-83dd-addfc737089e)
- Das mortes ocorridas, a maior parte delas foi entre homens
- Talvez a explicação desse dado seja o fato dos homens aparerem mais vezes

### H- Percentual de Mortes por Quartil de Aparições
- Agora vamos verificar como se comportam as mortes pelos quartis de aparições
- Para isso, iremos criar uma nova coluna com o quartil correspondente ao número de aparições sem separar por gênero
- No excel iremos usar uma função SE Aninhada, para verificar a qual quartil de aparição o personagem corresponde

![image](https://github.com/user-attachments/assets/55322826-93d9-43bc-9935-e04556a17adf)

- A maioria das mortes representa os quartis 3 e 4 de aparições, isso quer dizer que pode haver uma relação entre aparecer mais e morrer ou quanto menos aparecer, menor a chance de ter alguma morte.

### Análise Multivariada do Número de Aparições Médio, em Relação a Gênero e Ocorrência de mortes
- Agora iremos verificar a relação entre o gênero e ocorrência de mortes com os números médios de aparições
- Para isso iremos usar um mapa de calor

![image](https://github.com/user-attachments/assets/f7cc0903-3a73-4dba-891d-ac937c27f8f5)

- Podemos concluir que os personagens que morreram, independente do gênero, são os que apareceram mais vezes
- Os personagens homens aparecem, em média, mais do que as mulheres, independente se morreram ou não, porém, quando morrem, e média de aparição comparada com as mulheres é bem maior






  



  








