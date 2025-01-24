![image](https://github.com/user-attachments/assets/558b3152-b4fc-42a0-82f1-5ed56413e704)


# 🌳Monitoramento dos Incêndios Florestais do Brasil (1998 - 2017)

## Introdução
- O Dataset deste projeto contém a quantidade de incêndios florestais reportados no Brasil, por estado e por ano, no período de 1998 até 2017. Ele foi retirado do Portal de Dados abertos do Governo Federal, na área do SNIF (Sistema Nacional de Informações Florestais), e contém os dados oficiais do governo sobre os incêndios reportados no Brasil.
- O [dataset](https://github.com/massis93/Projetos_Analise_Dados/blob/main/PowerBI/Monitoramento%20Inc%C3%AAndios%20Brasil/amazon.csv) desde projeto atualmente está indisponível no Portal de Daddos, mas é possível baixar do Kaggle pelo [link](https://www.kaggle.com/datasets/gustavomodelli/forest-fires-in-brazil).

- Você pode acessar o dashboard online do Power BI deste projeto neste [link](https://app.powerbi.com/groups/me/reports/fbebd2a7-2e4e-45f0-83f3-dc9928c5c67d/17555d02dad76584fa5e?experience=power-bi).

## Dataset

| Coluna          | Descrição                                                  
|-|-|
| `Year`    	  | O ano que o incêndio foi registrado                            
| `State`        | O estado brasileiro onde o incêndio ocorreu                                                   
| `Month` | O mês que o incêndio foi registrado                                                    
| `Number`       | Quantidade de Incêndios correspondente àquele mês  



## Dashboard 

- Você pode acessar o dashboard online do Power BI deste projeto neste [link](https://app.powerbi.com/view?r=eyJrIjoiNzE5Njk0MzYtZWE5Yy00NzMzLTkwZjktYzYwNTZiZTAyNDQ0IiwidCI6IjRmZDUyYzZkLTcwMDctNDc1NS04NWZhLTI1Zjg2ZTcxYWVjNyJ9).


![image](https://github.com/user-attachments/assets/3c52a74f-2501-412c-b258-675af0a3e584)






## Objetivo do Dashboard
Os objetivos de fazer um dashboard para este dados são:
- Fornecer KPI's de monitoramento de Incêndio
- Analisar se há alguma sazonalidade nos incêndios;
- Identificar quais são os estados que mais tem incêndios, e sua proporção em relação aos demais
- Verificar se há uma tendencia de crescimento total de Incêndios anualmente
- Quais foram os períodos que mais tiveram incêndios no Brasil



## Análise e Insights


###  A- Há sazonalidade nas queimadas?
- Para verificar a sazonalidade de queimada no Brasil, iremos filtrar apenas os anos de 2013 a 2017, pois os fatores que desencadeiam as queimadas, que podem ser sociais, políticos, de agricultura, são semelhantes, e queremos o perfil mais recente de sazonalidade de queimadas 
- Através do gráfico de linhas temporal, é possível observar a sazonalidade das queimadas

![image](https://github.com/user-attachments/assets/cb8e0163-c33d-44f2-8169-2c82e33108f4)

- Há um crescimento no número de queimadas que começa em agosto e se encerra em dezembro
- Agora vamos observar os estados que são os maiores responsáveis pelo aumento dessas queimadas

### B- Quais são os estados em que mais ocorrem queimadas
- Filtrando apenas os meses em que mais ocorrem queimadas, os três estados que mais ocorrem queimadas são: Pará, Mato-Grosso e Maranhão

![image](https://github.com/user-attachments/assets/be5f117d-5749-437f-b40f-f55f64aaa9b0)

- O período de seca começa em Julho e acaba em Setembro, e como essas regiões possuem uma extensa área vegetativa, pode ser que seja esse período que influencie o aumento de queimadas
- Também, a expensão da agropecuária pode estar envolvida no aumento do número de queimadas para essas regiões
- Portanto seria interessante uma intensa fiscalização nesses períodos de seca, pois será quando ocorrerão a maior parte da quantidade de queimadas

### C- Qual o crescimento ano a ano,do número de queimadas por Estado
- O número de queimadas somando todos os estados, de 2010 a 2013 teve uma queda, e a partir de 2013 começou a ter intensificação no número:

![image](https://github.com/user-attachments/assets/7d68a9b3-40e0-41e9-8cce-0663620677c8)

- O Mato-Grosso, que era o campeão de queimadas até 2013, foi superado pelo estado do Pará, que segue líder até 2017
- Seria interessante fazer uma fiscalização para entender os motivos do Pará começar a ter um crescimento tão alto a partir de 2013, sendo que o Mato-Grosso manteve-se com os mesmos números de queimada

Veja, no gráfico abaixo pode-se observar uma tendência de queda para o estado do Mato-Grosso:

![image](https://github.com/user-attachments/assets/04a67946-f865-4797-93eb-0505b1b0f675)

Já o Pará tem uma tendência de alta a partir de 2013, quando passa o Estado do Mato-Grosso e começa a liderar o ranking dos estados:

![image](https://github.com/user-attachments/assets/633d563c-d649-431e-a74a-29e7b5bc8593)

- Portanto, é possível dizer que o aumento de queimadas do ano de 2014-2017 foram, em boa parte, causados pelo número de queimadas que ocorreram no Pará, principalmente no mês de Setembro

![image](https://github.com/user-attachments/assets/1a0eb215-6402-4611-8fde-66f46bac0165)

Gráfico de Linha do número de queimadas nos anos de 2014 a 2017 do Pará










