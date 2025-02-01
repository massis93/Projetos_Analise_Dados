![image](https://github.com/user-attachments/assets/8f344950-144c-4d3c-b225-69681e551256)

# 🏦Análise de Marketing de um Banco Europeu Fictício

## I - Introdução
- Este [conjunto de dados](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Excel/Bank%20Marketing/bank.csv) refere-se à uma campanha de marketing que contactou os seus clientes os convidando a fazer um tipo de investimento. Os dados se referem às características de cada cliente como dinheiro guardado no banco, estado civil, idade, se fez ou não o investimento, entre outros.
- Toda a análise será pelo Excel, com o auxílio de fórmulas e da tabela dinâmica
- O arquivo XLSX que contém as tabelas e fórmulas pode ser acessado [aqui](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Excel/Bank%20Marketing/an%C3%A1lise_banco.xlsx)



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

- Primeiramente iremos analisar o perfil de idade e de profissão desses clientes
- Depois, faremos uma análise do perfil financeiro dos clientes (média do saldo bancário) em relação a algumas variáveis categóricas
- Faremos também uma análise sobre quem aderiu ou não ao investimento, utilizando algumas variáveis categóricas
- Após isso, faremos uma análise da forma de contato e o tempo de duração de cada chamada, para ver se isso também pode ter influenciado na adesão ao investimento
- Finalizeremos fornecendo alguns planos de ação
- Tenho certeza de que você irá gostar deste trabalho! 😅

## IV - Análise

### 1. Perfil de Idade dos clientes

- Precisamos verificar como estão distribuidas as idades dos clientes. Para distribuição é interessante usar 3 tipos de gráficos: Histograma, Boxplot e Violino. No nosso projeto usaremos o Boxplot.

![image](https://github.com/user-attachments/assets/d4c4ca65-4ee2-4709-9e57-adaf22d2f917)

Este Boxplot nos traz algumas informações:
- Simetria na distribuição (Mediana e Média parecidas)
- 50% das idades têm entre 33 e 49 anos (Público Adulto-Jovem)
- Há a presença de clientes bem velhos (Outliers)
- O cliente mais novo possui 19 anos

Isso significa que se o banco fosse usar algum tipo de marketing, deveria direcionar suas campanhas a um público Adulto mais jovem, que já sabe de tecnologia, e que provavelmente já conhece outros bancos digitais (onde o retorno por investimento é maior).

Agora iremos classificar essas idades, para tornar nossa análise mais direcionada. Pessoas de 18 a 35 anos serão "Adulto Jovem", de 35 a 55 serão "Adultos", de 55 a 70 serão "Idosos Jovem", e acima de 70 serão "Idosos".

- Abaixo é a nossa distribuição por Idade:

![image](https://github.com/user-attachments/assets/3042b7e5-d521-48fe-9016-0d6b21f92fb4)

Confirmando o Boxplot, temos um perfil de cliente em sua maioria Adultos, e Adultos-Jovens.

### 2. Perfil de Idade dos clientes

Agora iremos analisar a distribuição de cientes por profissão, clusterizada por idade. Dessa forma podemos verificar em qual profissão cada Classe de Idade está concentrada.

![image](https://github.com/user-attachments/assets/a8863c22-eb82-4075-b281-abd041307b88)


- Note que a classe adulta é maioria em quase todas as profissões com excessão dos Retired (Aposentados), que são em sua grande maioria Idosos e Estudante, que são Jovens Adultos

### 2. Perfil Financeiro dos Clientes

- Faremos agora uma análise do saldo bancário em relação a algumas variáveis para verificar se há alguma possível relação entre eles
- Não é possível afirmar que quem tem um saldo bancário maior terá mais chances de fazer depósito, porém, podemos presumir que um saldo bancário maior irá influenciar na quantidade do investimento

![image](https://github.com/user-attachments/assets/03d24abf-3dcd-48e5-a767-5ba48fd62516)

- Veja que quem tem casa possue um saldo médio menor. Talvez pelo fato de ter gasto suas finanças com a casa, ou estar pagando alguma prestação ainda dela.

![image](https://github.com/user-attachments/assets/5c5e98ea-8be2-4c53-bb79-12e0a8d5bb87)

- Interessante que da educação primária para a secundária houve um descréscimo na média do saldo, talvez pois quem largou a educação antes esteja trabalhando desde mais cedo do que quem ainda continuou nos estudos
- Quem tem educação superior apresenta um saldo maior do que os outros
- O Unknown também apresentou saldo maior

![image](https://github.com/user-attachments/assets/eb402982-4eae-464a-a807-d31a51cbdb9a)

- O saldo bancário cresce na medida que a pessoa envelhece. Isso acontece pois quanto mais anos de vida, mais dinheiro a pessoa conseguiu guardar.

![image](https://github.com/user-attachments/assets/bbfbd00e-2837-42ba-80e5-2327efdbc1d7)

- O saldo bancário para divorciado é menor, provavelmente pois a pessoa teve uma divisão de bens e esta tendo que recomprar uma casa, um carro, pagar aluguel
-  Solteiros e Casados tem o mesmo saldo em média

Agora faremos uma análise multivariada entre Ter casa e as Classes de idade, e os valores médios de saldo bancário de cada um. Para isso iremos usar um mapa de calor.

![image](https://github.com/user-attachments/assets/07ab3781-49f9-4b65-8ad6-e976e2878fc1)

- Com excessão dos idosos, ter casa influencia em ter uma média de saldo bancário menor em todos os públicos
- Os idosos que tem casa tem um saldo maior do que os que não tem. Provavelmente os idosos que não conseguiram juntar dinheiro para a casa não tiveram uma profissão formal, e por isso não se aposentaram e nem conseguiram comprar a casa. Já os formais, conseguiram a casa e ainda conseguiram se aposentar, aumentando o saldo bancário em média.
- Novamente, quanto mais velho, maior a média do saldo bancário entre os que tem e os que não tem casa

Sabendo a variável "Ter casa", "Ser jovem", "ser divorciado" por probabilidade faz com que a pessoa tenha um saldo bancário menor, sabemos quais podem ser os motivos que levariam esses mesmos grupos a não optarem pelo investimento. 

Uma análise de dispersão para verificarmos se há alguma relação entre ser mais velho e possuir maior saldo bancário

![image](https://github.com/user-attachments/assets/6d78d055-0f56-49f8-a257-ad550f6b421a)


### 3. Análise dos clientes que aderiram ao investimento

Agora iremos analisar a taxa de adesão em relação as mesmas variáveis da seção anterior:

![image](https://github.com/user-attachments/assets/11191dfc-629f-4643-a42c-437d1d6b481b)

- O que tem casa possuem menor saldo do que os que não tem. E a porcentagem que investiu dos clientes que tem casa é menor do que a dos que não tem.

![image](https://github.com/user-attachments/assets/cc74a420-d1ba-44d7-89fa-d4ec6f19efda)

- Os que investem em outra forma tiveram menos sucesso na adesão do que os que não investem. Talvez pela taxa de investimento pago pelo banco não ser atrativa!

![image](https://github.com/user-attachments/assets/08c41dc4-ee34-4698-a491-45dc8ea12087)

- Aqui uma informação interessante. A taxa de adesão entre quem deve e não deve é igual. Isso pode não ser um fator influenciador a levar uma pessoa a aderir ou não!

![image](https://github.com/user-attachments/assets/85f8334d-2e0f-4b43-bacc-0b7038aba156)

- Lembra-se dessas perfis? Os divorciados são os que tem a menor média de saldo, mas são os que mais investem. Talvez seja por que passaram apuros na hora da divisão de bens e agora querem se previnir
- Os casados investiram menos do que os solteiros, e ambos em média possuem as mesmas médias de saldo, como vimos na seção anterior. Talvez porquê são mais jovens, e tem uma educação financeira diferente dos casados.

![image](https://github.com/user-attachments/assets/4a800b56-7eb2-4aac-8db6-7e6161cff845)

- Aqui nós vemos que os idosos, em porcentagem, foram os que mais investiram. Isso talvez se deve ao fato de terem mais dinheiro guardado, ou por terem a vida já estável, preferem investir num banco que já são clientes.



### 4. Analise da abordagem do contato

- Aqui iremos analisar os métodos utilizados pelo marketing, para chamar os clientes a aderirem ao investimento.

![image](https://github.com/user-attachments/assets/4d64d6b0-fa1c-4b65-8751-5cef59b1f77d)


- Veja que o Unknown não esta presente no público idoso. Talvez unknown seja algo relacionado a tecnologia
- Celular foi o meio de contato mais presente em todas as categorias de idade

![image](https://github.com/user-attachments/assets/4017d384-c4d7-4063-a9a8-64d8434b51e4)

Aqui nós observamos dois pontos interessantes
- contactar por telefone ou celular parece não ter influencia na adesão
- esse método que pode ser algo relacionado a tecnologia, como whatsapp ou email, não é tão eficaz quanto o celular e telefone

![image](https://github.com/user-attachments/assets/46ff8ff6-c405-4a29-ac92-cdfcebd6162d)

Aqui vemos que as pessoas que aderiram ao investimento tiveram em média uma duração de ligação de celular ou telefone maior

### 5. Qual a probabilidade de alguem ter casa fazer o investimento

- Verificaremos através da probabilidade condicional estatisticamente qual a probabilidade que, dado que uma pessoa tem casa, fazer investimento

![image](https://github.com/user-attachments/assets/e72179df-91f2-46ae-a4e0-b348862f81b8)


## V- Conclusão

