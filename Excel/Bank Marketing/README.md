![image](https://github.com/user-attachments/assets/8f344950-144c-4d3c-b225-69681e551256)

# 🏦Análise de Marketing de um Banco Europeu Fictício

## I - Introdução
- Este [conjunto de dados](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Excel/Bank%20Marketing/bank.csv) refere-se à uma campanha de marketing que contactou os seus clientes os convidando a fazerem um tipo de investimento. Os dados se referem às características de cada cliente como dinheiro guardado no banco, estado civil, idade, se fez ou não o investimento, entre outros.
- Toda a análise feita com o dataset será pelo Excel, com o auxílio de fórmulas e do uso da tabela dinâmicas
- O arquivo que contém as tabelas e fórmulas pode ser acessado [aqui](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Excel/Bank%20Marketing/an%C3%A1lise_banco.xlsx)



## II - Dataset

| Coluna          | Descrição                                                  
|-|-|                            
| `Age`        | Idade do cliente                                          
| `Job` | Profissão              
| `Marital`       | Estado Civil 
| `Education`    	  | Categoria de Formação
| `default`    	  | Inadimplente?
| `balance`    	  | Gênero do Personagem
| `housing`    	  | Saldo bancário
| `loan`    	  | Tem algum investimento?
| `contact`    	  | Forma que foi contactado
| `y`    	  | Fez o investimento?


## III - Escopo do Projeto

- Primeiramente iremos analisar o perfil de idade e de profissão dessas clientes, para ter uma pequena noçao de como eles são
- Após isso faremos uma análise do perfil financeiro dos clientes (média do saldo bancário) em relação a algumas variáveis categóricas, para podermos ver a variação desse perfil e traçarmos algum tipo de conexão entre elas
- Faremos também uma análise sobre quem aderiu ou não ao investimento em relação às variáveis categóricas utilizadas no perfil financeiro, para podermos ampliar nosso entendimento dos motivos que levaram um cliente a não fazer um investimento
- Após isso, faremos uma análise da forma de contato e o tempo de duração de cada chamada, para ver se isso também pode ter influenciado
- Finalizeremos fornecendo alguns planos-de-ação no fim da análise
- Tenho certeza de que você irá gostar deste trabalho! 😅

## IV - Análise

### 1. Perfil de Idade dos clientes

- Precisamos verificar como estão distribuidas as idades dos clientes. Para isso, é interessante usar 3 tipos de gráficos: Histograma, Boxplot e Violino. No nosso projeto usaremos o Boxplot.

![image](https://github.com/user-attachments/assets/d4c4ca65-4ee2-4709-9e57-adaf22d2f917)

Este Boxplot nos da muitas informações:
- Simetria na distribuição (Mediana e Média parecidas)
- 50% das idades têm entre 33 e 49 anos (Público Adulto-Jovem)
- Há a presença de clientes bem velhos (Outliers)
- O cliente mais novo possui 19 anos

Isso significa que se o banco fosse usar alguma linguagem, paleta de cores, marketing, deveria direcionar suas campanhas a um público Adulto mais jovem, que já sabe de tecnologia, que provavelmente já conhece outros bancos digitais, onde o retorno por investimento é maior.

Agora iremos classificar essas idades, para tornar nossa análise mais direcionada. Pessoas de 18 a 35 anos serão considaradas Adulto-Jovem, de 35 a 55 serão Adultos, de 55 a 70 serão Idosos Jovem, e acima de 70 serão Idosos.

- Abaixo é a nossa contagem por perfil:

![image](https://github.com/user-attachments/assets/3042b7e5-d521-48fe-9016-0d6b21f92fb4)

Confirmando o Boxplot, temos um perfil de cliente em sua maioria Adultos, e Adultos-Jovens.

### 2. Perfil de Idade dos clientes

Agora iremos analisar a distribuição de cientes por profissão, clusterizada por idade. Dessa forma podemos verificar em qual profissão cada Classe de Idade está concentrada.

![image](https://github.com/user-attachments/assets/a8863c22-eb82-4075-b281-abd041307b88)


- Note que a classe adulta é maioria em quase todas as profissões com excessão dos Retired (Aposentados), que são em sua grande maioria Idosos e Estudante, que são Jovens Adultos

### 2. Perfil Financeiro dos Clientes


