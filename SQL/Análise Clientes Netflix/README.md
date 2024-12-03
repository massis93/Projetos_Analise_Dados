![image](https://github.com/user-attachments/assets/cc8798cb-5ba9-49af-8720-913b4696f208)

# 🧑Campanha de Marketing Netflix

## Introdução
O [dataset](https://github.com/massis93/Projetos_Analise_Dados/blob/main/SQL/An%C3%A1lise%20Clientes%20Netflix/Netflix%20Userbase.csv) desde projeto foi retirado do Kaggle no [link](https://www.kaggle.com/datasets/arnavsmayan/netflix-userbase-dataset/data).
Criei um fictício problema de negócio baseado nesses dados: A NETFLIX deseja investir em campanhas de marketing para usuários assinarem seus planos, mas não sabe em qual público investir.


## Metodologia
Irei, através do SQL SERVER, da Microsoft, coletar dados dos usuários que assinam a NETFLIX, e verificar por conquência o público não assinante. Como a empresa tem um orçamento limitado, ela quer focar suas campanhas de marketing apenas no público não assinante e expandir seus negócios.

## Análise

Primeiramente foi criado um novo database, importar os dados de csv para o SQL server, e renomeada a tabela.




![image](https://github.com/user-attachments/assets/51d62003-8b16-4c69-b57f-a00c0ab1731b)


Limitei uma amostra das 10 primeiras linhas para observar os dados

![image](https://github.com/user-attachments/assets/060dc9c4-a66f-40b1-a02f-131133e8487d)


![image](https://github.com/user-attachments/assets/4a494b8f-7db6-4a90-a133-b6254a7365a0)

Através desses dados é possível gerar alguns questionamentos para identificar onde a Netflix deve investir o orçamento de marketing.

- Qual são os países que mais geram receita?

![image](https://github.com/user-attachments/assets/be69bcb3-595e-4423-873d-1ba12ffad128)

![image](https://github.com/user-attachments/assets/510bc7fe-ae0d-4e78-b2c1-251a7668d130)

Porém, precisamos saber os países que estão abaixo da média de faturamento/país. Dessa forma, nossa equipe de marketing saberá em quais países deverá focar.

![image](https://github.com/user-attachments/assets/8d1af804-04e6-4cd1-b1be-be4038fb5d0d)

![image](https://github.com/user-attachments/assets/aa209231-bbfd-41c3-a91f-ab6614eadfb8)

Os Países que estão com faturamento abaixo da média são Italy, Brazil, Germany, Australia, United Kingdom, Mexico e France.

Agora vamos analisar somente estes países:
- Qual é a faixa etária dos assinantes?

![image](https://github.com/user-attachments/assets/97016842-09e8-4273-83f9-a1295fe47f18)

![image](https://github.com/user-attachments/assets/1731b7dd-ae00-4a38-9411-c8a6da32af57)

Os países possuem praticamente a mesma faixa etária de assinantes. Um público mais velho, de 38 anos. Em todos esses países o público jovem não está assistindo netflix.

- O público assinante é em sua maior parte masculino ou feminino?

![image](https://github.com/user-attachments/assets/232ebbc8-0486-4c57-900b-84201503337b)

![image](https://github.com/user-attachments/assets/2bed918f-fd8a-4549-b8e9-e74765fd6bee)

O Brazil é um país que possue mais diferença de Masculino e Feminino, contando com 7 Pessoas do Genero Feminino a mais do que o sexo masculino. Porém, comparando com o total de usuários, é apenas uma diferença pequena, levando a totalidade de 183 Usuários no total. Isso mostra uma pequena diferença de 3,8% a mais de pessoas do genero feminino para o masculino. (7/183 = 3,8%)


- Os assinantes preferem qual tipo de assinatura (Premium, Standard, Basic)?

![image](https://github.com/user-attachments/assets/bacfd991-7755-484f-8168-707026cb7ea9)

![image](https://github.com/user-attachments/assets/042e1dc7-e68d-4de5-bb63-5674c576f3d8)

Há uma defasagem entre os clientes premium, quando se compara com o Standard e Basic. Seria interessante uma campanha de Marketing incentivando os clientes a comprarem a assinatura premium.

- São clientes que assinam há bastante tempo ou são assinantes novos?

Utilizando como parâmetro de negócio, que um cliente é novo quando assina há menos de 1 ano, e antigo quando assina há 1 ano ou mais, temos a seguinte tabela

![image](https://github.com/user-attachments/assets/70f76ac4-2fec-4f1b-81c5-03467e6f0207)

![image](https://github.com/user-attachments/assets/f92a7ff4-1b4b-47f8-8b61-3b8789d41263)

Ou seja, os cliente que assinam há mais tempo são menores em comparação aos que assinam há mais tempo.



- Quais são os clientes que gastam menos que a média dos assinantes de seu país?

![image](https://github.com/user-attachments/assets/c60bed71-4f91-4012-9dc8-97d73c8abf3b)

![image](https://github.com/user-attachments/assets/1b0b0c54-8087-44ff-a8e2-b2383517d692)

Esses clientes são os que puxam a média para baixo. Por isso, seria interessante incentiva-los a gastarem mais.



