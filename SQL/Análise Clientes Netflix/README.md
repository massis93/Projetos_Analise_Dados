![image](https://github.com/user-attachments/assets/cc8798cb-5ba9-49af-8720-913b4696f208)

# 🧑Campanha de Marketing Netflix

## Introdução
Este dataset foi retirado do Kaggle no link https://www.kaggle.com/datasets/arnavsmayan/netflix-userbase-dataset/data. O arquivo pode ser baixado aqui.
Com este dataset criei um fictício problema de negócio para que esse DATASET poderia ser usado: A NETFLIX deseja investir em campanhas de marketing para usuários assinarem seus planos, mas não sabe em qual público investir.


## Metodologia
A análise será feita no SGBD SQL SERVER da Microsoft. Investigar-se-á os qual é a Persona que atualmente assina a NETFLIX. Ora, a campanha de marketing será direcionada à Persona não assinante.

## Análise

Primeiramente foi criado um novo database, importar os dados de csv para o SQL server, e renomeada a tabela.

![image](https://github.com/user-attachments/assets/51d62003-8b16-4c69-b57f-a00c0ab1731b)

Limitei uma amostra das 10 primeiras linhas para observar os dados

![image](https://github.com/user-attachments/assets/060dc9c4-a66f-40b1-a02f-131133e8487d)


![image](https://github.com/user-attachments/assets/4a494b8f-7db6-4a90-a133-b6254a7365a0)

Através desses dados é possível gerar alguns questionamentos para identificar o tipo de persona assinante:

- Qual são os países que geram mais receita?

![image](https://github.com/user-attachments/assets/be69bcb3-595e-4423-873d-1ba12ffad128)

![image](https://github.com/user-attachments/assets/510bc7fe-ae0d-4e78-b2c1-251a7668d130)


- Qual é a faixa etária dos assinantes?
- Os assinantes preferem qual tipo de assinatura (Premium, Standard, Basic)?
- O público assinante é em sua maior parte masculino ou feminino?

![image](https://github.com/user-attachments/assets/b71f5be2-dea7-45de-bb73-a7a962156f11)

![image](https://github.com/user-attachments/assets/4f078df2-9c1f-4534-b8f3-0e054b2adda1)




- Quais são os países que mais tem assinantes?

![image](https://github.com/user-attachments/assets/7e9e67f6-8194-4f67-935a-71d0b51fb2b9)
  
![image](https://github.com/user-attachments/assets/b8024e33-5d24-4fca-aa6b-4e8ab82c322d)


- Em qual dispositivo os assinantes assistem aos vídeos? (Smartphone, SmartTV, Tablet, Laptop)


- São clientes que assinam há bastante tempo ou são assinantes novos?

Utilizando um parâmetro de negócio que categoriza clientes novos como assinantes que tem menos de 180 dias desde primeira assinatura, clientes em potencial que tem entre 180 a 365 dias desde a primeira assinatura, e clientes antigos que tem mais que 365 desde a primeira assinatura:

![image](https://github.com/user-attachments/assets/420c32c0-15ca-4fa3-879e-3bb8c78dc7fa)

É gerada a seguinte tabela:

![image](https://github.com/user-attachments/assets/2c6d3e84-ef5b-4528-8409-16e730154ca3)

Porém, é necessário contar quantos clientes são Novos, em Potencial, e Antigos.


- Qual é o ticket médio gasto por assinante?




## Conclusão



