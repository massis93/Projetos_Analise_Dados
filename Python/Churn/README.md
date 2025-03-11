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

Após verificar algumas informações do dataset, percebi que algumas colunas possuem valor 'Yes' e 'No' para os serviços que os clientes assinam da empresa de telecomunicação. Então, irei substituir essas valores categóricos de object para um valor binário numérico (1 e 0).

![image](https://github.com/user-attachments/assets/acfff8d4-9d7d-4c82-a774-e7e9908922f4)

Após tentar substituir, gerou um erro dizendo que há valores nas colunas que não são 'Yes' ou 'No', mas 'No internet service'. 

Vou substituir esses valores também para 'No', pois como eles não tem a internet e esses serviços dependem da internet, podem ser categorizados como 'No'.

### 3 - Análise dos clientes

Gerei uma tabela simples, usando a função desbribe para quem deu churn, e quem não deu churn. Dessa forma podemos verificar o perfil dos clientes em um gráfico simples.

![image](https://github.com/user-attachments/assets/51716344-049b-4924-99df-c609f03437d7)

Agora nós temos o perfil de quem deu churn e de quem ainda é cliente:

- Quem deu churn tem uma média mensal maior de gastos
- Quem deu churn tem maior probabilidade de ter fatura digital , será que ter fatura digital influencia em dar churn por ser mais fácil de cancelar?
- Os dois perfis tem a mesma probabilidade de ter PhoneService
- Quem não deu churn é mais provavel que seja Senior, não tenha dependentes e não tenha parceiro
- Quem deu churn usa fatura sem papel, provavelmente digital. Será que ser digital faz com que influencie a dar churn mas facilmente?
- Quem deu churn tem maior proporção de serviços de Streaming, será que o serviço de streaming esta com qualidade ruim, e por isso influencia as pessoas a cancelarem os serviços?

Vamos fazer uma análise mais profunda a seguir.


#### 3.1 - Gênero

![image](https://github.com/user-attachments/assets/7f05343c-ad6e-4fe6-8bac-b59f323f6713)

Os clientes da empresa são proporcionalmente iguais entre homens e mulheres. As campanhas de marketing e a programação que acontece nos serviços de streaming teriam que se atentar a esse fato, para conseguirem manter essas duas categorias de clientes.

#### 3.2 - Mensal e Total Charges

Agora vou analisar de que forma estão distribuidas as cobranças mensais.

![image](https://github.com/user-attachments/assets/101a867a-137b-49c6-ab64-2f3ecd77038d)

- A mediana esta situada em 70 e temos uma média de 64, portanto teremos uma distribuição quase simétrica de quantidade em torno da variável monthly Charges.
- Temos que os valores, em sua maioria, variam entre 35 e 90, portanto são planos bem distintos que esses clientes tem devido aos vários serviços que a empresa possui.
- O menor valor é de 18, então não temos nenhuma cobrança de 0. Caso tivesse, teriamos que investigar o motivo de não estar sendo cobrado nenhum valor.

![image](https://github.com/user-attachments/assets/d96a8b6e-5898-4423-9c1d-f24c172d6942)

- Quem deu churn pagava uma assinatura mais cara do que quem não de será que o preço influenciaria as pessoas a darem churn? 

Agora verificarei o total que os clientes já pagaram:

![image](https://github.com/user-attachments/assets/b9904a39-fd53-43e5-8425-a335484c672e)

Veja que a tabela esta com várias legendas sobrepostas, pois a coluna 'total charges' esta no formato de object, fazendo com que seja plotado no gráfico todas os valores de Total Charges na legenda.

![image](https://github.com/user-attachments/assets/fbc3970c-e606-4e88-bd1c-d4f3aca72f20)


Corrigindo o gráfico, agora vemos que há clientes que pagaram no total 0 reais, que provavelmente são clientes que assinaram o plano recentemente e ainda não pagaram a primeira fatura, e há clientes que pagaram mais de 8mil, ou seja, clientes muito antigos.

Agora irei plotar dois boxplots sobre os valores de total charges. O primeiro para quem deu churn e o segundo para quem ainda é cliente.

Também farei a conversão para float das duas colunas 'total charges' das duas tabelas.

Após o Tratamento dos dados temos a seguinte visualização:

![image](https://github.com/user-attachments/assets/4cab8c19-ee18-4efe-87ae-84b3ff4bb4fa)


Fazendo uma divisão de Total Charges por quem deu churn e quem ainda é cliente, vemos que quem deu churn tem um total de pagamento menor, isso pode significar que o tenure dos clientes que deram churn é menor!

#### 3.3 - Tenure

![image](https://github.com/user-attachments/assets/345cc434-d3cc-4e2b-add8-44a2742504cb)


- A distribuição de tenure dos clientes é bastante variada. Como já vimos, temos clientes com tenure igual a 0, ou seja, clientes muito recentes, e clientes com tenure de mais de 70, ou seja, com quase 6 anos como cliente.
- Portanto, a empresa pode ser nova no mercado, comparado a empresas de telecomunicações mais tradicionais.

![image](https://github.com/user-attachments/assets/40c50b97-3bea-4b32-8b76-70af0df9b839)

- Como tinhamos suspeitado, quem deu churn tem um tenure menor do que quem é cliente.
- Mais pra frente iremos analisar em qual mes os clientes estão dando churn

### 4 - Começando a análise

Agora vou analisar como é o churn entre homens e mulheres:

  ![image](https://github.com/user-attachments/assets/dd6fee70-ab16-49f2-90e8-b2889b2deafb)

- Ambos os gêneros tiveram a mesma probabilidade de dar churn, pode ser que o churn não tenha influencia do gênero que o cliente é.

Como será que é o churn em quem tem e não tem Partner?

![image](https://github.com/user-attachments/assets/393ec261-74a9-42fe-952d-9ca0e66fe69f)

Veja que os clientes que tem partner tem menor probabilidade de dar churn. Talvez seja pois quem tem um parceiro, tenha mais um dependente dos serviços prestados pela empresa de telecom, criando uma barreira maior para fazer o cancelamento dos serviços.

Agora irei verificar em qual período esta acontecendo o churn.

![image](https://github.com/user-attachments/assets/d9d11152-d4bc-4892-8570-97d34ce79583)


- Quem dá churn concentra-se nos primeiros meses, mais especificamente no primeiro mês.
- A distribuição de quem não deu churn tem uma alta quantidade de clientes no tenure 70, ou seja, muitos cliente fiéis.
- Se há uma alta taxa de fidelidade, porém há muitos clientes cancelando no primeiro mês, será que o tipo de plano estaria influenciando as pessoas a cancelarem o serviço? Por exemplo, se a maioria das pessoas que deu churn, tenha um serviço de contrato mensal, isso estaria desestimulando elas a ficarem como clientes. Talvez oferecendo um desconto para ficarem com um plano anual ou bienal, a taxa de churn diminuiria.
- Iremos analisar isso mais pra frente


![image](https://github.com/user-attachments/assets/737d26b2-8ced-4d6c-972c-2faeabc83914)


- Veja que a taxa de churn em quem é senior é maior, talvez seja pois pessoas de idade não utilizem muito internet, streaming de TV e de filmes, portanto não considerem a assinatura como algo de valor.

Como é o churn em pessoas que tem algum dependente?

![image](https://github.com/user-attachments/assets/c1e70423-da6a-4a21-a90e-ad2bd9d79114)

- Veja que novamente quem tem mais pessoas em casa utilizando o serviço, tem menor probabilidade de dar churn
- Novamente tenho um possível argumento: quanto maior o número de dependentes dos serviços, menor é a chance deles cancelarem.

Será que ter suporte técnico influencia os clientes a não darem churn?

![image](https://github.com/user-attachments/assets/8c0dd89b-6189-410c-b39e-44290afafb57)

- Quem teve suporte técnico tem menor probabilidade de dar churn
- Talvez o suporte técnico esteja fazendo com que os clientes que estariam insatisfeitos com os serviço, utilizassem o suporte para corrigir os problemas, evitando um possível cancelamento.

Agora, voltando ao tema de contrato do cliente, vou verificar como esta dividido o plano de contrato em quem deu churn e em quem não deu churn.

![image](https://github.com/user-attachments/assets/f4816974-0552-4a0a-b2e1-89709721649d)

Veja que quem não deu churn tem muito menos assinaturas de contratos mensais, enquanto quem deu churn tem praticamente somente assinaturas de contratos mensais.
- Talvez, ter assinatura com plano de contrato mensal estaria ocasionando os cancelamentos no primeiro mês de assinatura (que é onde a maioria dos churn estão concentrados), pois o plano se encerrará sozinho, não dando chances de fidelizar o cliente.

E o tipo de internet?

![image](https://github.com/user-attachments/assets/3b137106-76e3-4b12-826a-ba958e2a0bce)

- Curiosamente a internet DSL tem menos churn do que a Fibra
- Pode ser que o serviço de Fibra esteja enfrentando muita instabilidade no sinal.

Agora vou verificar se ter uma fatura sem papel pode ter alguma relação com churn.

![image](https://github.com/user-attachments/assets/184b65a6-5f1b-4cdb-a499-db971326824e)

- Quem tem uma fatura sem papel, ou seja, digital, tem maior probabilidade de dar churn
- Pode ser que quem use a fatura digital, por estar com o aplicativo em mãos, consiga cancelar facilmente os serviço, isso explicaria essa diferença

Como se dá o churn nos diferentes pagamentos

![image](https://github.com/user-attachments/assets/741f4b11-bc8e-4e91-89df-6b4cbcd9c0c3)

- Cartão de Crédito, Mailed Check, e Bank Transfer tiveram praticamente a mesma taxa de churn
- Agora o eCheck teve um churn muito mais expressivo.
- Como o eCheck demora alguns dias para cair o pagamento, pode fazer com que atrase o pagamento da fatura, levando ao cancelamento dos serviços
- O eCheck também tem alguns problemas no pagamento pois se tiver alguma assinatura suspeitamente errada, o valor não irá ser recebido. Essas e outras dificuldades burocráticas desse tipo de pagamento, pode fazer com que as pessoas cancelem o serviço da empresa de telecom.


Para finalizar, irei analisar se como é a cobrança mensal quanto maior o Tenure do cliente:

![image](https://github.com/user-attachments/assets/c8f090db-d9a5-45fd-8733-2597902b7602)

- Temos que quanto maior a Tenure, maior o Monthly Cahrges. Talvez isso se deva ao fato de que quando um cliente é mais fiel, ele vai adquirindo mais pacotes adicionais.

## IV - Conclusões/ Insights


- A maioria dos cancelamentos ocorrem no primeiro mês, e a maior parte de quem deu churn tinha assinatura mensal. Pode ser que incentivando os clientes a já assinarem planos de contrato anual diminua o número de cancelamentos.
- Clientes com Parceiros e com dependentes tem menor probabilidade de dar churn. Pode ser que quanto maior a quantidade de utilizadores do plano na mesma casa, menor a chance de dar churn. Uma boa opção seria oferecer um pacote de plano que envolva mais de uma casa para clientes que não tenham parceiros ou dependentes. Por exemplo, um plano para o cliente e para a mãe dele na outra casa, dessa forma, pode ser que diminuiria a taxa de churn desses clientes.
- Clientes Idosos tem maior chance de dar Churn. Talvez fosse interessante investigar se há dificuldade de acessar aos serviços de streaming nesse público, ou se eles estão utilizando a internet. Caso não estejam, seria interessante fazer alguma campanha oferecendo suporte para instalarem o aplicativo e os ensinarem a utilizar os serviços.
- Os clientes que tiveram suporte técnico tiveram menos churn. Seria interessante oferecer desconto no suporte técnico para clientes que tem mais probabilidade de dar churn, como idosos, sem parceiros, ou para clientes que assinam plano mensal ao trocarem para um plano anual.
- Seria interessante investigar como está a avaliação dos clientes referente a internet de fibra, e fazer constantes verificações de velocidade e ping da internet. Talvez a internet de fibra possa estar enfrentando alguma dificuldade por ter mais churn do que a DSL, proporcionalmente.
- Clientes que utilizam fatura sem papel, provavelmente estão utilizando serviços digitais e conseguem cancelar mais facilmente. Seria interessante obrigar o cliente a ter contato com um representante da empresa, dentro do app, antes de tentarem cancelar, para conseguir conter a taxa de churn.
- Como a taxa de churn em quem usa o pagamento por eCheck é maior, seria interessante verificar o se os clientes não estão tendo cancelamentos por dificuldades nesse tipo de pagamento, que é bastante burocrático.
- Veja que oferecer um desconto nos primeiros meses pode ser interessante, pois, com base no gráfico de dispersão e de distribuição de churn, os clientes tendem a cancelar o plano nos primeiros meses, e os clientes, quanto mais tempo permanecem com a empresa, mais tendem a gastar, trazendo o retorno desse desconto dado nos primeiros meses.
