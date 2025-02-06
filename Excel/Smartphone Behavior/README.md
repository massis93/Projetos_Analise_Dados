![image](https://github.com/user-attachments/assets/47da0e1e-6f24-4b51-be97-e9020529d737)


# 🏦Análise Comportamental de Usuários de Celular

## I - Introdução
- Este [conjunto de dados](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Excel/Smartphone%20Behavior/user_behavior_dataset.csv) refere-se aos dados de uso de smartphone de 700 usuários, como tempo médio de tela, consumo de dados, bem como as características desses usuários, como gênero, idade.
- Toda a análise será pelo Excel, com o auxílio de fórmulas e da tabela dinâmica.
- O arquivo XLSX que contém as tabelas e fórmulas pode ser acessado [aqui](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Excel/Smartphone%20Behavior/User%20Behavior.xlsx)


## II - Dataset

| Coluna          | Descrição                                                  
|-|-|                            
| `User ID`        | Id do Usuário                                        
| `Device Model` | Modelo de Celular           
| `Operating System`       | Sistema Operacional do Celular
| `App Usage Time (min/day)`    	  | Tempo de Uso de Apps em Minutos/dia
| `Screen On Time (hours/day)`    	  | Temp de tela ligada em Horas/dia
| `Battery Drain (mAh/day)`    	  | Consumo de bateria em mAh/dia
| `Number of Apps Installed`    	  | Quantidade de Apps do celular
| `Data Usage (MB/day)`    	  | Consumo de Dados em Mb/dia
| `Age`    	  | Idade do Usuário
| `Gender`    	  | Gênero do Usuário
| `User Behavior Class`    	  | Classe do Comportamento do Usuário



## IV - Análise e Insights

### 1 - Perfil dos usuários

Primeiro analisarei a distribuição de usuários por Gênero com um simples gráfico de pizza:

![image](https://github.com/user-attachments/assets/f634cd01-751c-464f-a440-acd6b7fcf59a)

- Temos mais homens do que mulheres nesse dataset

Agora irei analisar a quantidade de usuários por modelo e por sistema operacional, com um gráfico de colunas clusterizado:

![image](https://github.com/user-attachments/assets/5e99ed6f-de5d-4d8a-9519-664012cdf2d7)

- Temos uma quantidade maior de usuários de Android;
- Temos quantidades parecidas de usuários nos 4 modelos de smartphone Android;
- Só temos 1 modelo de IOS neste conjunto de dados;

Farei um gráfico de boxplot para analisar de que forma as idades estão distribuidas:

![image](https://github.com/user-attachments/assets/b0e58c79-0a82-4e48-82fd-6fff6fe175b1)

- 50% dos usuários estão entre 28 e 49 anos
- As idades variam de 18 a 59 anos de idade
- Temos um perfil de distribuição simétrico, pois a média é igual a mediana

### 2 - Análise por Sistema Operacional

![image](https://github.com/user-attachments/assets/5e8a7014-f345-476e-9dbe-c36df7d4fc31)


- A quantidade de usuários com IOS e Android esta bem distribuida em todas as faixas de idade, sendo o IOS a minoria em todas elas
- Na faixa dos 40-49 anos temos uma proporção menor de IOS comparado com as demais faixas

![image](https://github.com/user-attachments/assets/a4055741-8766-4a6b-8465-a6f5a0d2626b)

- A porcentagem de mulheres que usam IOS é ligeiramente maior do que os homens, porém, ambos os gêneros preferem majoritariamente o sistema Android.

![image](https://github.com/user-attachments/assets/4dca4292-7e9a-4774-b319-eaec86572041)

- A média de Tela ligada, de Tempo de Uso de Apps e de Apps instalados é maior nos Usuários de IOS, e pode ser que haja alguma correlação entre essas 3 variáveis. Iremos analisar isso posteriormente

### 3 - Análise por Gênero

![image](https://github.com/user-attachments/assets/251a763b-a31f-44cf-840d-6118f6ca356d)

- Ambos os Gêneros possuem a semelhantes médias de apps instalados, dados utilizados, tempo de uso de apps e tempo de tela ligada
- Nota-se que ambos os gêneros possuem tempo de uso de app menor que o uso das telas. Isso pode acontecer devido ao possível fenômeno que está acontecendo com as pessoas referente à ansiedade relacionada às telas. As pessoas ligam o celular para visualizar a tela e não mexem em nada, apenas por ansiedade.

### 3 - Análise por Idade

![image](https://github.com/user-attachments/assets/ba3c3df4-4342-4eea-a666-b8b3d86cfca2)


- Aqui acontece esse fenômeno de ansiedade por telas em todas as faixas de idade
- Há as semelhantes médias de uso de tela, e uso médio de apps em todas as idades, com excessão da faixa dos 10-19 anos, que apresenta leve redução nesses dois tempos, comparado às outras faixas de idade.

![image](https://github.com/user-attachments/assets/85fc71da-0123-491a-8b90-ac8e03198861)

- Ambas as faixas de idade possuem semelhante média de quantidade de Apps instalados e consumo de Dados

Agora irei verificar se há alguma possível correlação entre idade e tempo de uso de apps com um gráfico de dispersão:

![image](https://github.com/user-attachments/assets/b60a1cf3-b5c4-46bd-b654-b7c773bb28ad)

- O gráfico demonstra que por mais que aumente a idade, os valores de tempo de uso de apps permanecem variando semelhantemente,portanto não há correlação entre as variáveis.

### 4 - Análise do consumo de Bateria

Irei verificar se existe alguma correlação entre o consumo de bateria e o uso de Aplicativos nos dois Sistemas Operacionais:

![image](https://github.com/user-attachments/assets/a1d59d65-1881-460e-b71f-332ce9aa0b14)

- Em ambos os sistemas operacionais nota-se que quanto maior o uso de aplicativos maior será o consumo de bateria

Agora irei criar uma coluna no dataset dividindo o consumo de Bateria pelo seu respectivo tempo de tela ligado, para medir o consumo de bateria médio por hora dos dados.

Irei verificar se existe alguma relação entre o tempo de uso de tela e o consumo de bateria médio por hora.

![image](https://github.com/user-attachments/assets/63a1bdc8-e1bd-44a8-8431-630c451f3c1e)

- Nota-se que há uma linha decrescente de tendência, indicando que quanto maior o tempo de uso, menor é o consumo médio por hora do dispositivo
- Pode ser um indicativo de que as baterias de ambos os SO consigam-se acostumar com a drenagem de bateria com o passar do tempo de utilização

### 5 - Análise Multivariada

Agora farei uma análise Multivariada da média de uso de aplicativos relacionada à quantidade de aplicativos no celular e à Idade, para verificar se há alguma relação na média de uso de App quando varia a idade e a quantidade de Apps instalados.

- Para isso farei um mapa de calor por sistema operacional:

![image](https://github.com/user-attachments/assets/52229a30-7a19-4158-b28e-7a7b3e066bef)

![image](https://github.com/user-attachments/assets/cd509a1c-8538-4afd-9ffa-e9b3cf02efa5)

- Em ambos os sistemas operacionais, quanto maior a quantidade de apps, maior a quantidade de uso de apps, para todas as idades;
- Isto significa que, para incentivar o uso do celular, será necessário incentivar a instalação de mais aplicativos, em qualquer idade;
- Para a mesma quantidade de apps, não houve diferença no tempo de uso médio de aplicativos quando a idade muda;



## V- Conclusão
- Quanto maior o uso do celular, maior o consumo de bateria
- Quanto mais aplicativos instalados, maior o uso do tempo de celular
- O uso do celular não apresenta diferença, entre os gêneros e as idades
- Quanto mais é utilizado o celular, menor é o consumo de bateria por hora ao longo das horas


