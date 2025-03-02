![image](https://github.com/user-attachments/assets/cbe5fe1f-d6a5-4c54-b0eb-0bfb6e601cb7)


# 🧑‍🎓Análise Diagnóstica da Depressão em Estudantes

## I - Problema de negócio:

- O CEO de uma empresa de saúde, me contratou para verificar [dados](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Python/Depression/Student%20Depression%20Dataset.csv) coletados sobre alunos de diferentes escolas. Cada entrada nesse dataset contém informações se o aluno tem ou não depressão, e algumas features como: pressão escolar, genero, idade, histórico de mental illness, horas de estudo. O CEO da empresa deseja saber quais são os fatores que podem estar influenciando que alunos tenham depressão.
- O notebook em Jupyter contendo o código em python, pode ser acessado nesse [link](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Python/Depression/Depression_Analysis.ipynb)


## II - Dataset

| Coluna          | Descrição                                                  
|-|-|                            
| `id`        | id do Estudante                                         
| `Gender` | Gênero do Estudante             
| `Age`       | Idade do Estudante
| `City`    	  | Cidade da Escola do Estudante
| `Academic Pressure`    	  | Nível de Pressão Escolar
| `Sleep Duration`    	  | Quantidade de Sono
| `Dietary Habits`    	  | Hábitos Alimentares
| `Have you ever had suicidal thoughts ?`    	  | Teve pensamento suicidas?
| `Work/Study Hours`    	  | Horas de Estudo
| `Family History of Mental Illness`    	  | Tem Histórico Familiar de Doença Mental?
| `Depression`    	  | Tem Depressão?


## III - Análise

### 1 - Verificando se há algum valor missing
- Valores faltantes podem distorcer estatísticas descritivas como médias, medianas e desvio padrão, ocasionando análises errôneas.
- Nosso dataset não possui nenhum valor missing

### 2 - Gender
Agora farei uma análise exploratória por gênero, no nosso dataset, para verificar a quantidade de homens e mulheres.

![image](https://github.com/user-attachments/assets/7b90d5f7-23c2-4c7f-b453-57253a73b97f)

- Temos mais homens do que mulheres no nosso dataset
- Verificarei se a depressão ocorre mais em algum gênero desses estudantes

![image](https://github.com/user-attachments/assets/3928f05f-fb2a-42c3-8d59-7cb92d07bfdf)

- Em ambos os gêneros a probabilidade de se ter depressão é a mesma
- Não podemos dizer que o gênero influencia na depressão

### 3 - Cidade

Será que os alunos dessas cidades tem probabilidades de ter depressão de forma semelhante? É isso que vou verificar.

![image](https://github.com/user-attachments/assets/fcfddf4c-a6e0-4679-acbf-e978acdeceb6)

- Há cidades que apresentam uma probabilidade maior de se ter depressão

Pode ser que esses alunos tenham uma qualidade de sono pior, ou o nível de pressão academica seja mais alto. Seria interessante um melhor aprofundamento para reconhecer as causas. Porém com nossas outras análises podemos ter uma idéia do que faz com que um aluno tenha probabilidade maior de ter depressão.

### 4 - Idade

Primeiro verificarei a idade do estudantes do nosso dataset.

![image](https://github.com/user-attachments/assets/3ba59f53-b805-4d88-a367-aa960652b0f6)

- Os estudantes apresentam idade mais baixa, 75% tem entre 18 e 30 anos (Distancia entre o quartil 0 e quartil 3) o que seria normal para estudantes.

Agora verificarei se há divergência na idade dos estudantes com e sem depressão

![image](https://github.com/user-attachments/assets/a912d9ab-3680-4236-aa90-95550d284540)

- Veja que a idade dos estudantes com depressão é menor do que os sem depressão.
- Não podemos afirmar que a idade menor causa índices maiores de depressão, mas há correlação entre as duas variáveis.
- A probabilidade de se ter depressão em estudantes mais jovems é maior
- Uma das causas desse fenômeno pode ser a exposição maior a telas em faixas de idade menor, ou pode ser que estudantes mais novos tendem a sofrer mais emocionalmente devido à pressão a nível academico. Para buscar essa causa e consequência será necessário um maior aprofundamento da análise para cada faixa de idade.

### 5 - Dietary Habits

É cientificamente comprovado que hábitos alimentares melhores tendem a melhorar níveis de depressão. Irei verificar nesse dataset a quantidade de alunos saudáveis e com depressão para cada faixa de hábito alimentar.

![image](https://github.com/user-attachments/assets/7e11019f-c5b1-41e4-a243-cf67218383b1)

- É possível notar que a quantidade de estudantes com hábitos alimentares saudáveis é minoria, comparados aos outro hábitos alimentares
- À medida que o hábito alimentar melhora, a porcentagem de estudantes com depressão diminui, ou seja, a probabilidade de se ter depressão diminui. Não poderiamos afirmar só com esses dados que há alguma causalidade, apenas uma correlação negativa.

### 6 - Hereditariedade

A literatura no ramo da psiquiatria atribui algumas doenças psíquicas à hereditariedade. Por isso, irei verificar a probabilidade de um estudante ter depressão com base no seu histórico familiar.

![image](https://github.com/user-attachments/assets/77c635f6-0e46-4f2b-adcf-1821cee982f4)

- Novamente, só com esses dados não poderiamos afirmar que há alguma causalidade. Por exemplo, se os estudantes com histórico familiar estivessem comendo de forma não saudável, haveria uma falsa correlação.
- Veja que a probabilidade de um estudante ter depressão, quando ele tem um histórico familiar com doenças psiquiatricas, é maior. Portanto há correlação entre histórico e depressão.
- Porém, seria mais justo uma análise mais profunda para saber o real impacto da hereditariedade nos níveis de depressão.

### 7 - Sono

Agora verificarei a probabilidade de se ter depressão por níveis de qualidade de sono desses estudantes.

![image](https://github.com/user-attachments/assets/5eb0259f-fdf2-40ed-852f-e3c106c5673d)

- Quando temos um sono de mais de 8 horas, a probabilidade de se ter depressão é maior do que com menos de 5 horas.
- Porém, 5-6-horas de sono parece ter uma certa influência positiva na probabilidade de ter depressão, comparado com 7-8 horas de sono, mas não sabemos quais as outras variáveis podem estar influenciando nessa comparação. Entretanto, a comparação de mais de 8 horas de sono, e menos do que 5 horas é bem nítida na probabilidade de se ter depressão. Portanto, pode-se dizer que a hora de sono está correlacionado a ter depressão.

### 8 - Suicidal Thoughts

![image](https://github.com/user-attachments/assets/3eb05cee-6d12-4dbb-8233-ee2c88f00586)

- Pensamento suicidas ocorrem também em indivíduos sem depressão
- A probabilidade de se ter pensamentos suicidas em pacientes com depressão é bem maior do que com pacientes sem depressão. Isso significa, nesses dados, que ter depressão esta correlacionado a ter maior probabilidade de ter pensamento suicida.

### 9 - Análise Bivariada

Agora irei analisar a correlação da probabilidade de se ter depressão entre os níveis de Pressão Acadêmica e Horas de Estudo:

![image](https://github.com/user-attachments/assets/5c843f94-89e2-42d7-9fae-026d0ad7d1a2)

- Quanto mais horas de estudo um aluno tem, maior a probabilidade de ser ter depressão, e quando maior a pressão academica, maior a probabilidade de se ter depressão também.
- Isso mostra uma correlação entre probabilidade de se ter depressão e Academic Pressure, e Study Hours
- Não podemos afirmar que há causalidade, para isso, um estudo mais aprofundado deverá ser feito

## IV - Conclusões
- Alunos que têm histórico de Mental Illness tem maior probabilidade de ter depressão. Por isso, seria interessante olhar com cautela todos os alunos com histórico positivos.
- Não há relação entre gênero e ter depressão
- Pensamento suicidas acontecem com mais frequencia em Indivídos com Depressão
- Alunos que dormem menos que 5 horas, tem maior probabilidade de ter depressão do que alunos que dormem mais que 8 horas.
- Habitos alimentares saudáveis diminuem a probabilidade de se ter depressão, comparado com não saudáveis.
- Alunos com depressão tem idade menor do que alunos sem depressão.

