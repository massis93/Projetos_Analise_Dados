![image](https://github.com/user-attachments/assets/f22305de-d047-4116-bb3b-79021315114c)

# 🧀Análise de Tipos de Queijos Canadenses

## I - Problema de negócio

- O CEO de uma empresa me forneceu um [conjunto de dados](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Excel/Canadian%20Cheese/cheese_data.csv) de todos os queijos que seu concorrente produz. Ele é novo no mercado e deseja entender alguns pontos pois quer começar a produzir queijos em larga escala. Ao longo da análise, vou colocando as perguntas que esse CEO me fez e respondendo com os gráficos e os insights gerados por mim.
- Cada entrada do [conjunto de dados](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Excel/Canadian%20Cheese/cheese_data.csv) possui detalhes da província que foi feito o queijo, o tipo e a origem do leite que foi utilizado, a forma de processamento que esse leite sofreu, nome dos queijos, se a presenta casca, sabores, tipo de fabricação do queijo entre outros.
- Toda a análise Exploratória e Diagnóstica será pelo Excel, com o auxílio de fórmulas e da tabela dinâmica
- O arquivo XLSX que contém as tabelas e fórmulas pode ser acessado [aqui](-----------)

## II - Dataset

| Coluna          | Descrição                                                  
|-|-|                            
| `CheeseId`        | Id do Queijo                                         
| `ManufacturerProvCode` | Província Canadense de origem do queijo           
| `ManufacturingTypeEn`       | Tipo de Fabricação
| `MoisturePercent`    	  | Percentual de Umidade
| `FlavourEn`    	  | Sabor
| `CharacteristicsEn`    	  | Características do Queijo
| `Organic`    	  | Se o queijo é orgânico
| `CategoryTypeEn`    	  | Categoria do Queijo
| `MilkTypeEn`    	  | Animal de Origem
| `MilkTreatmentTypeEn`    	  | Tratamento do Leite
| `RindTypeEn`    	  | Tipo de Casca
| `CheeseName`    	  | Nome do queijo
| `FatLevel`    	  | Nível de Gordura


## III - Análise

- O arquivo XLSX que contém a análise na íntegra pode ser acessado [aqui](---------)

### 1 - PERGUNTA 1 : "Primeiramente, por que estão faltando alguns dados?"

- Para fazer uma boa análise em grandes quantidades de dados, é interessante verificar se estão faltando dados e fazer uma análise dos padrões que geraram esses dados faltantes
- Começarei verificando a quantidade de dados faltantes por colunas:

![image](https://github.com/user-attachments/assets/c51c6c9e-cfbb-46ee-ade4-1d2ce3508867)

As duas colunas com mais dados missing (dados faltantes) são `CharacteristicsEn` e `RindTypeEn`. Portante farei uma análise comparando a distribuição desses dados missing com a distribuição original do nosso dataset.

![image](https://github.com/user-attachments/assets/8e7cadb3-674f-4d75-ad98-0ca54f78f449)

A distribuição dos missing `CharacteristicsEn` e `RindTypeEn` é parecida com o dataset original de distribuição por província. Logo, podemos concluir que nenhuma província específica está gerando problemas nesses dados, mas sim, esta acontecendo de forma generalizada e bem distribuída.

![image](https://github.com/user-attachments/assets/9d428015-8b8d-4b68-b7f7-90c0934b5b00)

Novamente, a distribuição dos dados missing `CharacteristicsEn` e `RindTypeEn` é parecida com o dataset original de distribuição por Tipo de Fabricação. Podemos concluir que nenhum tipo de fabricação dos queijos está com viés na falta de envio desses dados (os queijos produzidos de forma artesanal poderiam estar vindo sem essas informações mas não estão).


### 2 - PERGUNTA 2: "Faça uma rápida análise e me mostre como é o queijo que eles produzem"

Agora irei fazer uma rápida análise exploratória para observar de que modo os dados estão distribuidos. Isso me ajudará também a obter respostas mais acertivas de futuras análises diagnósticas:

![image](https://github.com/user-attachments/assets/a642db30-a642-4ea8-a39d-2ea1e90d43ba)

A maior parte do leite ou é de vaca (cow), ovelha (ewe) ou cabra (goat). Podemos fazer uma análise de paretto e focar somente nessas três origens de leite para nossas futuras análises.

![image](https://github.com/user-attachments/assets/d93a7c1d-fdc0-4195-8fb0-126bd2d7b4da)

Novamente, a maior quantidade de queijos é de da província QC, BC e ON, talvez por serem as maiores produtores de leite do país. Fiz uma análise de paretto e podemos considerar apenas essas três províncias para nossas futuras análises.

![image](https://github.com/user-attachments/assets/6608aa73-16d2-41b0-ac87-812a1dac34b4)

A maior parte dos queijos, usam o leite pasteurizado, talvez por ser o tipo de leite mais disponível no mercado de leite, pois elimina todo tipo de microorganismo do leite. 
Não iremos fazer uma análise de paretto aqui pois desejo investigar o que acontece com os queijos, quando o leite sofre cada tipo de tratamento.

![image](https://github.com/user-attachments/assets/609539f5-a2d4-4a75-96b4-cfc6e65dd058)

Temos uma predominância de queijos Industriais, pois a fabricação de queijo industrial é bem mais forte no país, comparado aos outros tipo de fabricação:

![image](https://github.com/user-attachments/assets/1c447534-c6c6-4bb6-b89d-0dd75d820024)

E a maior parte dos queijos são Firm, Soft e Semi-Soft, talvez pela preferência de consumo dos canadenses:

![image](https://github.com/user-attachments/assets/ceca76ed-a89e-4f07-83e4-8e889ed8b44c)



### 3 - PERGUNTA 3: "O que precisa ter no queijo para ser considerado Organic?"

Agora irei fazer uma análise referente à feature Organic:

![image](https://github.com/user-attachments/assets/0a807f81-3616-4a0b-972b-787b5b73a0e0)

- A maior parte de queijos disponíveis são Não Organic

Agora preciso entender o que faz um leite ser considerado Organic. Para isso, irei verificar se há queijos organic nos três tipo de fabricação:

![image](https://github.com/user-attachments/assets/aacc9b77-dcea-444b-8f2e-e7ea61ad2fdc)

Portanto, um queijo ser organic não está relacionado ao tipo de fabricação, pois há queijos organic nos 3 modos.

Talvez o leite organic esteja relacionado com o tipo do leite:

![image](https://github.com/user-attachments/assets/101a2a32-4636-4ce5-9960-aa7e1ec4a6b0)

Não esta relacionado, pois há os 3 tipos de leite presentes em queijos orgânicos.

- O queijo ser considerado orgânico pode estar relacionado à presença de conservantes. Portanto, no Canadá pode haver industria de queijos que não adicionam conservantes neles.

Agora irei verificar se há preferência na escolha da origem do leite para ele ser orgânico:

![image](https://github.com/user-attachments/assets/ef1aa40a-8356-4f37-8ea7-39432ef97f29)

- O gráfico indica que mais de 10% de todo o leite de origem de vaca é usado para queijos orgânicos, enquanto de cabra e ovelha são menos que  7% e 2% respectivamente. Portanto, podemos considerar que é possível que o leite de vaca seja preferido na produção de queijos orgânicos, talvez pelo sabor mais suave.

### 4 - PERGUNTA 4: "Queremos queijos High Fat, como fazer pra produzir queijos assim?"

Agora farei uma análise pela feature `FatLevel` de cada queijo

![image](https://github.com/user-attachments/assets/ebc814d6-9798-40c2-a563-7e9f4f6277b6)

A maior parte dos queijos são de baixa gordura. Isso pode indicar a preferência do consumo dos canadenses ou indicar que da forma que acontece a fabricação dos quejos, eles tentem a ser menos gordurosos. 

Verificarei se há alguma relação entre o nível de gordura do queijo, e de qual animal que veio o leite para a produção do queijo.

![image](https://github.com/user-attachments/assets/1e985296-8e79-41e7-9d9e-c9582ce65dbb)

- Leites de vaca e ovelha tendem a produzir queijos mais gordurosos
- Leites de cabra tendem a produzir queijos menos gordurosos
- Talvez o leite de vaca e ovelha tenha mais gordura do que o de cabra

Agora iremos verificar a distribuição de umidade dos queijos, por fatlevel:

![image](https://github.com/user-attachments/assets/fc4b3361-cb76-438b-bc2e-18e8ca066dae)

- Queijos mais gordurosos tendem a ter menor umidade, enquanto queijos menos gordurosos maior
- Talvez o nível de umidade esteja relacionado inversamente proporcional ao nível de gordura do queijo

Vou verificar a umidade de cada categoria de queijo:

![image](https://github.com/user-attachments/assets/7d5df14e-52c0-462f-be35-00f3ae7149a3)


E agora a porcentagem de queijos de maior gordura que cada um produz:

![image](https://github.com/user-attachments/assets/5c38a09d-3dad-43cf-83cf-16d11bfc559f)

Podemos concluir que, quanto maior a umidade do queijo, menor a quantidade de gordura que ele terá, provavelmente pois o "espaço" do queijo que seria gordura, é "ocupado" por soro, Portanto, podemos concluir ainda que, quanto maior a dureza de um queijo, menos umidade e mais gordura ele terá. Veja que o Firm e Hard cheese são os queijos com mais gordura, enquanto soft e fresh são os queijos com menos gordura e mais umidade

---
Com já vimos antes, a maior parte dos queijos são fabricos industrialmente. Agora quero verificar se o processo de fabricação tem alguma relação com a quantidade de gordura do queijo.

![image](https://github.com/user-attachments/assets/d6f1e342-8355-49d0-94d5-e33a70b230a7)

Veja que queijos Artesanais tendem a produzir queijos com mais quantidade de gordura. 

Já vimos que a origem do leite faz com que o queijo seja mais ou menos gorduros. Portanto posso levantar uma suspeita que os queijos artesanais estão sendo produzidos com leites mais gordurosos em média? Vou verificar isso:

![image](https://github.com/user-attachments/assets/99ce3325-4bdc-4beb-a064-aae1ccf7c77c)

O gráfico acima nos afirma o contrário. O processo de fabricação industrial de um queijo, usa em sua maioria leite de vaca, que é mais gorduroso. Portanto os queijos artesanais tendem a ser mais gordurosos não pelo leite que utilizam. Será que os queijos artesanais estão usando usando leite com um tratamento específico, e isso pode estar ocasionando esse método de fabricação a produzir queijos com mais gorduras?

Prieiro vou fazer um mapa de calor relacionando o tipo do tratamento que um leite recebe, com a quantidade de umidade dele, e verificar se há alguma relação entra essas variáveis. 

![image](https://github.com/user-attachments/assets/2bc222be-957d-4e5c-a542-779deff712bd)

- Novamente, queijos de leite de vaca tendem a ser menos úmidos, e portanto, mais gordurosos
- Leite cru tende a produzir queijos mais gordurosos do que leite pasteurizado

Agora verificaremos qual é a composição do tratamento do leite utilizado em cada processo de fabricação:

![image](https://github.com/user-attachments/assets/eab9fee6-02b3-4121-896e-729c4055272a)

- Queijos artesanais usam mais leite cru do que os industriais, portanto, é uma das causas que fazem com que queijos desse tipo tendem a ser mais gordurosos
- Pode ser que em algum grau, um queijo feito por processo artesanal seja mais gorduroso do que um industrial, para isso vou comparar os queijos que utilizaram raw milk nos dois processos:

![image](https://github.com/user-attachments/assets/25f3a1ff-d9f2-40d5-b010-89d20fad649b)

- A conlusão é que o método de fabricação não interferiu na quantidade de umidade do leite, consequentemente no nível de gordura. Portanto queijos industriais tendem a ter queijos com menor quantidade de gordura pois utilizam em sua maioria leite pasteurizado.

Porém, queijos Farmstead utilizam mais leite cru do que os artesanais, e ainda sim apresentam menor taxa de queijos gordurosos. Portanto podemos concluir que o processo de ser artesão faz com que queijos tendam a ser mais gordurosos do que um o processo de farmstead.

### 5 - PERGUNTA 5: "Qual tratamento de leite posso usar em cada processo de fabricação?"

Agora verificarei a utilização de cada tipo de tratamento de leite nos processos de fabricação do queijo:

![image](https://github.com/user-attachments/assets/36197bc6-03be-4095-b0c3-104780dbb11f)

- O uso de Raw Milk acontece somente em queijos Artesanais e de Fazenda
- Não há utilização de Raw Milk na indústria, provavelmente por normas sanitárias
- Até queijos artesanais utilizam leite pasteurizado, provavelmente pela facilidade de se econtrar leite pasteurizado em comparação com leite cru
- Não há leite Thermised em queijos artesanais, talvez pois esse tipo de leite (semi pasteurizado) requer uso de tecnologia que não se encontra em lugares onde são feitos os queijos artesanais, e talvez também não seja possível encontrar esse tipo de leite no mercado


### 6 - PERGUNTA 6: "Qual província é a que produz mais diversidade de queijos?"

Farei uma análise por `ManufacturerProvCode` para tentar tirar alguns insights dos dados.

Como falei anteriormente, justificando pela analise de pareto, irei analisar somente os 3 maiores estados produtores de queijo.

![image](https://github.com/user-attachments/assets/8a07f3fa-3439-4901-9b4b-fc50c18623e4)

- Veja que a província QC produz a maior parte de todos os queijos de cada origem do leite. Portanto, QC deve ser um polo de produção de leite com uma grande infraestrutura de produção de queijos no país.

### 7 - PERGUNTA 7: "Ter casca influencia no sabor?"

Queijos possuem diversos `FlavourEn`. Após a produção de um queijo, ele pode ficar submerso em um vinho, por exemplo, e formar uma casca escura, dando origem a um novo tipo de queijo. Será que ter casca influencia na quantidade de sabores que podem ser criados a partir de um queijo?

![image](https://github.com/user-attachments/assets/5bcda949-c87f-49fa-aac7-e2c3d1a0e077)

- Queijos sem casca (No Rind) possuem uma proporção menor de diversificação de seus sabores do que os queijos com casca (Washed e Bloomy). Portanto podemos afirmar que queijos com casca tendem a ter mais diversidade de sabores.

Por último, irei análisar se há alguma relação entre a categoria do queijo e a formação de casca, para verificar se a quantidade de gordura influencia na formação de casca:

![image](https://github.com/user-attachments/assets/5ddfbd73-e9e7-4561-bc1e-27a38631a04b)

- Queijos Firm, Fresh e Hard tendem a não ter casca, portanto não tem a ver a formação da casca com umidade ou quantidade de gordura, pois queijos firm e hard possuem alta gordura e queijos fresh possuem baixa gordura.



## IV- Conclusão
- O nível de Umidade é inversamente proporcional a quantidade de gordura de um queijo
- Leite de Vaca e Cabra produzem queijos mais gordurosos do que Cabra
- A província QC é o maior produtor de queijos do Canadá
- Pasteurizar um queijo contribui para tornar um queijo menos gorduroso
- Queijos artesanais são fabricados também por leites pasteurizados
- Queijos orgânicos podem ser industriais e com leite pasteurizado
- Não há nenhum processo de fabricação ou província específica que está contribuindo com os dados missing
- Há uma certa preferência na escolha do leite de vaca para fabricação do queijo orgânico, talvez pelo gosto
- A indústria não utiliza leite cru, e os artesãos não utilizam leite semi pasteurizado
- A gordura do queijo não esta relacionada à formação de casca no queijo

