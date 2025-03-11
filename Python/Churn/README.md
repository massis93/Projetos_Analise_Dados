![image](https://github.com/user-attachments/assets/55c5fce6-f3f8-4473-bd70-f45e5b4dcdc8)



# ☎️Análise de clientes que deram Churn em uma empresa de Telecom

## I - Problema de negócio:

- O CEO de uma empresa de telecomunicações me contratou para analisar os [dados](https://www.kaggle.com/datasets/blastchar/telco-customer-churn) coletados dos clientes de sua empresa. O conjunto de dados possui informações sobre o cliente como: Gênero, se possui parceiro, método de pagamento, valor do pagamento mensal , quais serviços da empresa ele possui, e se deu Churn ou não. Ele deseja que eu analise e extraia informações para tomadas de decisões com base nos dados, pois quer diminuir a quantidade de churn dos clientes.
- O notebook em Jupyter contendo o código em python, pode ser acessado nesse [link](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Python/Churn/Churn.ipynb)

       
## II - Dataset

    
| Coluna          | Descrição                                                  
|-|-|                            
| `customerID`        | Cliente ID                                      
| `gender` | Gênero do Cliente             
| `SeniorCitizen`       | Se o cliente é idoso
| `Partner`    	  | Se o cliente tem  parceiro
| `Dependents`    	  | Se o cliente tem dependentes
| `tenure`    	  | Quantidade de meses que o cliente permaneceu com a empresa
| `Phone Service`    	  | Se o cliente possui serviço de telefonia
| `MultipleLines`    	  | Se o cliente possui múltiplas linhas telefonicas
| `InternetService`    	  | Tipo de internet contratada
| `OnlineSecurity`    	  | Se o cliente adquiriu serviço de segurança
| `OnlineBackup`    	  | Se o cliente adquiriu serviço de backup online
| `DeviceProtection`    	  | Se o cliente adquiriu serviço proteção
| `TechSupport`    	  | Se o cliente adquiriu serviço de suporte técnico
| `StreamingTV`    	  | Se o cliente adquiriu serviço de streaming TV
| `StreamingMovies`    	  | Se o cliente adquiriu serviço de filme Streaming
| `Contract`    	  | Tempo de contrato
| `PaperlessBilling`    	  | Se o cliente utilizar fatura sem papel
| `PaymentMethod`    	  | Método de pagamento escolhido
| `MonthlyCharges`    	  | Valor cobrado mensalmente
| `TotalCharges`    	  | Total já pago pelo cliente
| `Churn`    	  | Se o cliente cancelou o serviço




## III - Análise

### 1 - Importando as bibliotecas

As bibliotecas que trabalharemos serão pandas, matplotlib, seaborn e numpy. Defini também o tema dos gráficos para ggplot, e setei o figsize para 8 por 6, para gráficos esteticamente melhores!

### 2 - ETL

Após verificar algumas informações do dataset, vou substituir os valores de 'Yes' e 'No' para 1 e 0, para facilitar nossa análise.

![image](https://github.com/user-attachments/assets/acfff8d4-9d7d-4c82-a774-e7e9908922f4)

- Gerou um erro dizendo que há valores nas colunas que não são 'Yes' ou 'No', mas 'No internet service'.
- Vou substituir esses valores para 'No', pois como eles não tem o serviço, podem ser categorizados como 'No'.

### 3 - Análise dos clientes

Gerei uma tabela simples, usando a função desbribe para quem deu churn, e quem não deu churn. Dessa forma podemos verificar o perfil dos clientes em um gráfico.

![image](https://github.com/user-attachments/assets/51716344-049b-4924-99df-c609f03437d7)

Agora nós temos o perfil de quem deu churn e ainda é cliente:

- Quem deu churn tem uma média mensal maior de gastos
- Quem deu churn tem maior probabilidade de ter fatura digital , será que ter fatura digital influencia em dar churn por ser mais fácil de cancelar?
- Veja, é somente maior a probabilidade de ter o seviço de streaming em quem deu churn. Os outros serviços é menor a probabilidade de quem deu churn ter. Podemos ter duas conclusões: a primeira é, se quem deu churn tivesses os demais serviços como por exemplo o Tech Support, não iria cancelar a assinatura. E a segunda é, como proporcionalmente quem deu churn tem maior chance de ter Streaming por assinatura, pode ser que haja uma correlação entre ter Streaming TV e Churn
- Os dois perfis tem a mesma probabilidade de ter PhoneService
- Quem não deu churn é mais provavel que seja Senior, não tenha dependentes e não tenha parceiro


## IV - Conclusões


