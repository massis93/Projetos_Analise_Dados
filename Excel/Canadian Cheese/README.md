![image](https://github.com/user-attachments/assets/f22305de-d047-4116-bb3b-79021315114c)

# 🧀Análise de Tipos de Queijos Canadenses

## I - Introdução
- Este [conjunto de dados](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Excel/Canadian%20Cheese/cheese_data.csv) refere-se às features de tipos de queijos Canadenses. Cada entrada possui detalhes da província que foi feito o queijo, o tipo e a origem do leite que foi utilizado, a forma de processamento que esse leite sofreu, nome dos queijos, se a presenta casca, sabores, tipo de fabricação do queijo entre outros.
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

### 1 - Análise de Missing

- Para fazer uma boa análise em grandes quantidades de dados, é interessante verificar se estão faltando dados e fazer uma análise dos padrões que geraram esses dados faltantes, para poder reportar às demais equipes.
- Começarei verificando a quantidade de dados faltantes por colunas:

![image](https://github.com/user-attachments/assets/c51c6c9e-cfbb-46ee-ade4-1d2ce3508867)

As duas colunas com mais dados missing (dados faltantes) são `CharacteristicsEn` e `RindTypeEn`. Portante farei uma análise comparando a distribuição desses dados missing com a distribuição original do nosso dataset.

![image](https://github.com/user-attachments/assets/8e7cadb3-674f-4d75-ad98-0ca54f78f449)

A distribuição dos missing `CharacteristicsEn` e `RindTypeEn` é parecida com o dataset original de distribuição por província. Logo, podemos concluir que nenhuma província específica está gerando problemas nesses dados, mas sim, esta acontecendo de forma generalizada e bem distribuída.

![image](https://github.com/user-attachments/assets/9d428015-8b8d-4b68-b7f7-90c0934b5b00)

Novamente, a distribuição dos dados missing `CharacteristicsEn` e `RindTypeEn` é parecida com o dataset original de distribuição por Tipo de Fabricação. Podemos concluir que nenhum tipo de fabricação dos queijos está com viés na falta de envio desses dados (os queijos produzidos de forma artesanal poderiam estar vindo sem essas informações).

### 2 - Análise Exploratória

Agora irei fazer uma rápida análise exploratória para observar de que modo os dados estão distribuidos, e poder tirar conclusões mais acertivas nas análises diagnósticas:

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



### 3 - Organic

Agora irei fazer uma análise referente ao grão Organic:

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




### 4 - FatLevel
### 5 - Tipo de Processamento
### 6 - Província
### 7 - Mapa de Calor



## IV- Conclusão
- As mulheres têm mais chances de serem admtidas do que os homens
- Tirar uma nota maior no GMAT e GPA influenciam positivamente a entrar no programa
- Hispânicos e Negros tem menor chance do que entrar do que as outras raças
- Algumas profissões como Energy, Media, Retail e Health Care, tem menos chances de entrar
- Outras profissões como Investment Management, Financial Services tem mais chances de entrar


