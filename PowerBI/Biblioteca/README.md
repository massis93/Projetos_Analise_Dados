![image](https://github.com/user-attachments/assets/3948a806-a935-4e11-a0b3-f79746c62f8a)

# 🦸‍♂️Dashboard Vendas Biblioteca

## I - Introdução
- Este [conjunto de dados](https://github.com/massis93/Projetos_Analise_Dados/blob/main/SQL/An%C3%A1lise%20de%20Vendas%20Biblioteca/sales.csv) contém informações sobre as vendas online realizadas em uma biblioteca fictícia nos anos de 2022, 2023 e 2024. A minha empresa fictícia de consultores de dados foi contratada para analisar os dados e fornecer insights para aumentar faturamento da biblioteca, que não sabia quais decisões tomar com base em seus dados de vendas.
- A análise será feita no SQL SERVER da Microsoft e no Power BI
- Será fornecido um Dashboard no Power BI, que pode ser acessado virtualmente nesse [link](https://app.powerbi.com/view?r=eyJrIjoiZmE5ZGE0YmMtNGRlMC00NjFmLWI4NzItOThkZmMzODc4ZmVmIiwidCI6IjRmZDUyYzZkLTcwMDctNDc1NS04NWZhLTI1Zjg2ZTcxYWVjNyJ9) para que a empresa possa monitorar todos os KPIs e fazer uma análise das vendas
- Forneci à empresa também uma análise dos dados das suas vendas, em SQL, neste [link](https://github.com/massis93/Projetos_Analise_Dados/edit/main/SQL/An%C3%A1lise%20de%20Vendas%20Biblioteca)


## II - Dataset

| Coluna          | Descrição                                                  
|-|-|                            
| `Order_id`        | Id do pedido                                          
| `Data` | Data da compra            
| `Título`       | Título do Livro
| `Genero`    	  | Gênero Literário do Livro
| `Páginas`    	  | Quantidade de Páginas do livro
| `Preço`    	  | Preço do Livro
| `Review_Score`    	  | Avaliação do cliente sobre o livro
| `Author`    	  | Autor do livro
| `Award`    	  | Prêmio que o livro ganhou
| `Cliente_ID`    	  | Id do cliente
| `Sexo`    	  | Sexo do Cliente
| `Idade`    	  | Idade do cliente


## III- Dashboard 

- Você pode acessar o dashboard online do Power BI deste projeto neste [link](https://app.powerbi.com/view?r=eyJrIjoiZmE5ZGE0YmMtNGRlMC00NjFmLWI4NzItOThkZmMzODc4ZmVmIiwidCI6IjRmZDUyYzZkLTcwMDctNDc1NS04NWZhLTI1Zjg2ZTcxYWVjNyJ9).

![image](https://github.com/user-attachments/assets/a6bee9a2-c1bd-40f9-b5ea-1a720b70c8b5)


## IV- Objetivo do Dashboard
- Fornecer e monitorar os KPI's da empresa
- Indicar quais livros/genero literário a área de compras deve adquirir
- Verificar o perfil de compra dos clientes
- Verificar a sazonalidade das compras




## V- Análise e Plano de Ação

Primeiramente foi fornecido alguns KPI's importantes dos dados que me foi passados.

![image](https://github.com/user-attachments/assets/9a521cee-8843-462f-9603-a9eb2f49a59b)

E aqui já vemos um ticket médio bem baixo para uma biblioteca. Provavelmente o valor dos produtos é baixo, e o lucro acaba sendo baixo também. Seria interessante trabalhar com produtos de ticket maior!

---

![image](https://github.com/user-attachments/assets/b6eb4baa-fe75-4e32-8c0a-a457efb2545e)

Vemos também uma queda no faturamento a cada ano que passa. O que a empresa tem feito com o marketing dela? Há marketing na empresa? Precisariamos de mais dados para obter essas respostas.


![image](https://github.com/user-attachments/assets/6cd036c8-f2ab-4873-b180-53e6414baef3)

Acima nós temos o faturamento médio por mês, dos 3 anos da empresa. Veja que fevereiro e junho são os meses onde o faturamento é o mais baixo. Como junho é um período que começa as férias escolares, seria interessante a equipe de marketing investir em livros para o público mais juvenil.

![image](https://github.com/user-attachments/assets/8e9fa3f7-d3b6-4b26-a9c1-b2b557cd82d8)


Agora analisando pelo grão de dia do mês, vemos que o período do fim do mês é onde tem menos vendas. Seria interessante a equipe de marketing fazer algum tipo de promoção nesses dias, ou campanhas de pagamento por cartão de crédito, pois é uma maneira das pessoas que estão sem dinheiro poderem ainda comprar.


---

![image](https://github.com/user-attachments/assets/899f1189-de24-4fa7-bc32-32061f306fb4)

No projeto de SQL, nós decidimos segmentar o clientes em 6 públicos, e aqui nós observamos que o Adulto Feminino e Masculino são os que mais compram em todas os gêneros literários. Por isso, é necessário um investimento nos livros que esse tipo de público poderia ler, por exemplo, livros de finanças, material para universidades. 

![image](https://github.com/user-attachments/assets/4b948323-0a5c-46ee-a41e-8f28f7e55c9e)

E os Gêneros Literários que mais vendem estão resumidos neste gráfico de barras. O Gênero que mais sai no ano, e em cada mês é o Scifi. Ele sempre é o campeão de vendas independente do mês. Por isso, seria interessante a equipe de compras destinar um orçamento maior para este gênero literário.

---


![image](https://github.com/user-attachments/assets/4aa8ad2a-72b8-4f80-a16f-b3ad50f36b7b)

Com o nosso gráfico de dispersão conseguimos verificar que, na medida em que cresce a idade, há pouca variação na quantidade de páginas que as pessoas lêem, e isso acontece da mesma forma para cada gênero literário. Portanto, a idade não influencia muito na quantidade de páginas que um livro deve ter.

Porém, vemos que há bastante variação na quantidade de páginas dos livros de cada gênero. Veja o Scifi:

![image](https://github.com/user-attachments/assets/74cc72c0-66c1-4f29-8d05-1a909f25a461)

E agora o Mistery:

![image](https://github.com/user-attachments/assets/06c8053c-a286-4487-9386-12c04b899865)

O Gênero Scifi possue muito mais páginas do que o Mistery. Seria interessante trazer livros de Scifi com mneos páginas? Ou trazer livros Mistery com mais páginas? Pode ser que sim, arriscar nesse caso poderia comprovar que a quantidade de páginas de um gênero não precisa estar naquele range fixo para vender. 


---

Agora vamos verificar os livros mais vendidos:

![image](https://github.com/user-attachments/assets/5263f0f7-f46e-4774-82f8-44612120b28a)

Aqui temos a lei de paretto, que diz que 20% dos produtos geram 80% da receita. Seria interessante que a livraria fizesse um combo entre esses livros mais vendidos e os menos vendidos oferecendo promoções, para aumentar o ticket médio da empresa. Para isso ela teria que adquirir mais estoque destes 20%, porém, até conseguiria algum desconto na hora da compra.








