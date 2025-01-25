![image](https://github.com/user-attachments/assets/bff9898f-341f-4cb7-8e7d-a69633230329)



# ⛽Preço dos Combustíveis no Brasil (2004 a 2025)

## I- Introdução
- O conjunto de dados deste projeto, fornecido pela Agencia Nacional de Petróleo, contém o preço do Etanol e Gasolina, coletados em diferentes cidades no Brasil, pelo período de 2004 até 2025. Nele contém também o endereço onde o preço foi registrado, a bandeira do posto e a data de registro.
- O dataset desde projeto é maior que o permitido para carregar aqui no GitHub, mas é possível baixar do Kaggle pelo [link](https://www.kaggle.com/datasets/paulogladson/anp-combustveis).
- Você pode acessar o dashboard online do Power BI deste projeto neste [link](https://app.powerbi.com/view?r=eyJrIjoiMTFmNGZmNjgtY2VjYS00NTE2LWI5ZjMtMGI2MDJkZmM4OWY3IiwidCI6IjRmZDUyYzZkLTcwMDctNDc1NS04NWZhLTI1Zjg2ZTcxYWVjNyJ9).

## II- O Dataset
- Após removermos algumas colunas, o Dataset que iremos trabalhar contém apenas as seguintes features, e será chamado no projeto de ANP:

| Coluna          | Descrição                                                  
|-|-|
| `Região`    	  | Região Brasileira onde foi registrado o valor                           
| `Cidade`        | Cidade onde foi registrado o valor                                                    
| `Estado` | Estado onde foi registrado o valor                                                  
| `Bairro`       | Bairro em que foi registrado o valor  
| `CEP`       | CEP em que foi registrado o valor  
| `Revenda`       | Nome do posto que foi registrado o valor  
| `Produto`       | Produto ao qual o valor é atribuido  
| `Data da Coleta`       | Data de quando foi registrado o valor  
| `Valor do Litro`       | Valor registrado do Litro do combustível  
| `Bandeira`       | Bandeira do posto que foi registrado o Valor 



## III- O Dashboard
- Você pode acessar o dashboard online do Power BI deste projeto neste [link](https://app.powerbi.com/view?r=eyJrIjoiMTFmNGZmNjgtY2VjYS00NTE2LWI5ZjMtMGI2MDJkZmM4OWY3IiwidCI6IjRmZDUyYzZkLTcwMDctNDc1NS04NWZhLTI1Zjg2ZTcxYWVjNyJ9).

![image](https://github.com/user-attachments/assets/580199fb-2a56-4769-913d-6c22891b799c)


## IV- Objetivo do Dashboard
Os objetivos de fazer um Dashboard como este são:
- Fornecer as KPI's de monitoramento de preço de combustível no Brasil
- Analisar como se comporta o crescimento do combustível em diferentes regiões do Brasil
- Verificar qual época do ano o combustível tem queda e qual época sofre maior aumento
- Verificar quais anos o preço teve maior taxa de crescimento
- Verificar qual a região, estado e cidade tem o maior preço de combustível e entender o porquê


## V- ETL

- Criei uma tabela de calendário, pois as `Data da Coleta` tinham lacunas e algumas medidas DAX não funcionavam;
- Fiz uma Coluna Condicional para tratar as abreviações do `Estado`, e coloca-las por extenso;
- Criei outra tabela com os estados e as regiões correspondentes, pois alguns estados estavam com regiões erradas;
- Fiz um Merge com a Tabela dos Estados criada e a tabela ANP;
- Fiz uma "substituição de valores" de ponto para vírgula para tratar os dados de `Valor do Litro`;
- Fiz a ligação da tabela de calendário com a ANP no DER;

obs: Para criar a tabela de calendário usei a linguagem M, no Power Query (List.dates).

## VI- Análises e Plano de Ação


### 1. Análise do Preço de Etanol por Região

- Iremos analisar os últimos 5 anos pois a tecnologia de plantio e coleta de cana é praticamente a mesma, dessa forma, o período de safra é praticamente igual.

![image](https://github.com/user-attachments/assets/cb5b5ecb-4361-422b-a2ff-320348712931)

Produção de Cana de Açucar no Brasil

#### SUDESTE
- Colheita: Abril a Novembro

![image](https://github.com/user-attachments/assets/cab06d99-102f-4fc6-9098-a9b53a437df9)

- O gráfico nos mostra que a partir de Maio, houve uma queda na média de preço dos combustíveis, em agosto começou a subir e atingiu seu preço maior em dezembro
- Provavelmente essa queda foi gerada pelo período de maior colheita da safra, e o aumento em dezembro pode ser gerado pelo aumento de viagens que as pessoas fazem, tornando o etanol escasso.

#### SUL
- Colheita: Maio a Novembro
- O sul, diferente do sudeste, não apresenta uma expressiva produção de etanol

![image](https://github.com/user-attachments/assets/1f65b787-0f00-42b8-927f-dae43262af7a)

- Novamente, o preço do combustível caiu no período de colheita da safra, e subiu em dezembro. O motivo da queda e alta podem ser os mesmos do sudeste

#### CENTRO-OESTE
- Colheita: Maio a Outubro
- Essa região apresenta expressividade na produção de Cana-de-Açucar

![image](https://github.com/user-attachments/assets/c64243bb-febd-4fea-87b3-63a283f4c8ba)

- Observando o gráfico, parece haver forte relação entre a produção de cana de açucar e queda no preço de combustível
- Há um declínio de dezembro para janeiro no preço do combustível, mas isso pode estar relacionado à forte demanda que dezembro estava tendo, e em janeiro e fevereiro, após o período de viagens, o preço se normaliza, com uma procura menor

#### NORDESTE
- Colheita: Setembro a Março
- Aqui a colheita não apresenta também expressividade como o Sudeste

![image](https://github.com/user-attachments/assets/4ebe61da-885d-493d-aac1-be2d51b21a0b)

- Após atingir seu pico em setembro, o preço começa cair até março, e depois volta a subir
- Não é possível afirmar que essa queda aconteça pelo período de safra da cana de açucar, devido a baixa quantidade que a região tem em termos de produção, porém não podemos descartar a possibilidade de haver uma relação entre essas duar variáveis

#### NORTE
- Colheita: Julho a Novembro
- Aqui não há qualquer relação entre o preço de combustível e o período de safra
- Pela região não apresentar também nenhuma expressividade em termos de produção de cana, ja era provável que os valores do preço de combustível não iriam ser influenciados

![image](https://github.com/user-attachments/assets/eba495c1-6e73-448b-be82-ba18878f1240)

- Porém, é interessante observar que o pico do preço de combustível se dá no mesmo período da região Nordeste. Talvez a região nordeste deva ser a responsável por fornecer combustível para o Norte, mas não podemos afirmar.
- O preço médio da região Norte, Nordeste e Sul são os maiores. Isso se deve às regiões não possuirem expressividade na produção de cana, e provavelmente quando apresenta algum período de alta demanda, tenha que trazer combustível de outras regiões, encarecendo o preço do produto.

![image](https://github.com/user-attachments/assets/869d8681-f29e-4b66-bc27-aa7bdd2a3330)

- Já a região Centro-Oeste apresenta o menor valor por litro de Etanol, talvez isso se deve a baixa demanda, por ser uma região com menor população do que o sudeste, mas que apresenta uma expressividade alta na produção de cana!

![image](https://github.com/user-attachments/assets/bcb233e3-2a8d-4f76-b107-9484efb0146d)






### 3. Analisar o preço de Gasolina por Regiao, fornecendo o mapa de refinaria
### Analisar o preço do Etanol e da Gasolina ao longo dos anos

Este é o gráfico do valor médio da gasolina no Brasil

![image](https://github.com/user-attachments/assets/32aab4ab-3e75-4901-a735-fb6fa6604607)

Já este é o grafico do valor médio do etanol no Brasil

![image](https://github.com/user-attachments/assets/69877c70-91fc-41e2-915a-b5b227198db9)

Pode-se observar que a curva de crescimento do Etanol é mais acentuada de 2020 a 2021, por mais que ambas tenham tido um grande aumento. Porém, através do KPI de taxa de crescimento do valor do combustível do ano atual em relação ao anterior, a taxa de crescimento do Etanol é superior ao da gasolina. É pouca coisa, porém, é provável que as pessoas tenham preferido abastecer com Etanol ao invés de Gasolina, devido ao aumento de preço da Gasolina em valores brutos, ser maior do que o do Etanol.


![image](https://github.com/user-attachments/assets/26336a21-5f4d-4fe4-8f55-710daab98148)

Figura 1 - Crescimento do Etanol de 2020 para 2021

![image](https://github.com/user-attachments/assets/e9769e87-486e-4738-a170-b061a0f67e9a)

Figura 2 - Crescimento da Gasolina de 2020 para 2021










