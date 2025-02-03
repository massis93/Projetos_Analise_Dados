![image](https://github.com/user-attachments/assets/fa540e64-2d05-4f20-9f77-0f23be0a70a5)


# 🏦Análise da Admissão de uma escola de MBA

## I - Introdução
- Este [conjunto de dados](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Excel/MBA/MBA.csv) refere-se aos incritos de uma prova para entrar em um programa de MBA de uma instituição de ensino. Cada entrada possui informações do candidato tais como gênero, nota GPA e GMAT, profissão, Major entre outros.
- Toda a análise será pelo Excel, com o auxílio de fórmulas e da tabela dinâmica
- O arquivo XLSX que contém as tabelas e fórmulas pode ser acessado [aqui](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Excel/MBA/An%C3%A1lise.xlsx)


## II - Dataset

| Coluna          | Descrição                                                  
|-|-|                            
| `Aplication_id`        | Id da inscrição                                         
| `Gender` | Gênero            
| `International`       | Se é estrangeiro
| `GPA`    	  | Média de notas da graduação
| `Major`    	  | Formação
| `race`    	  | Raça
| `GMAT`    	  | Nota da prova do candidato
| `Work_exp`    	  | Anos de Experiência profissional
| `Work_industry`    	  | Segmento da Industria onde trabalha
| `admission`    	  | Se o Canditado foi admitido


## III - Escopo do Projeto

- Primeiro farei uma análise Univariada para descobrir o perfil dos candidatos
- Analisarei o  GMAT e GPA dos candidatos aprovados e não aprovados para ver se essas duas variáveis influenciam na aprovação do candidato
- Analisarei se há alguma relação entre ser aprovado e ser de uma raça, gênero, major work_industry específico, com o auxílio de boxplot e graficos de pizza comparativos
- Tenho certeza de que você irá gostar deste trabalho! 😅

## IV - Análise

### 1 - Perfil dos candidatos

- O arquivo XLSX que contém a análise na íntegra pode ser acessado [aqui](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Excel/MBA/An%C3%A1lise.xlsx)

Vamos verificar qual a distribuição dos candidatos por gênero:

![image](https://github.com/user-attachments/assets/b2e2b620-f2f0-4512-89c4-8901e7414851)

- São homens em sua maioria

![image](https://github.com/user-attachments/assets/abf185b5-6b40-429f-840d-a15dae4ff41f)

- Os candidatos formados em Humanities são maioria

![image](https://github.com/user-attachments/assets/6a8382ea-cae0-44f8-97b8-ed0dd5672461)

- São nativos em sua maioria

Agora vamos observar a raça dos candidatos:

![image](https://github.com/user-attachments/assets/1d66dacb-665f-4079-8cee-eea9d2c5c0b7)

- A maior parte colocou como nulo, e aqui fiz um ajuste colocando na legenda  a classe "Unknown".

### 2 - Análise de GPA

Agora verificaremos se a nota GPA pode influenciar em ser aprovado ou não.

![image](https://github.com/user-attachments/assets/787eb983-85b2-4cfc-a7be-29d52c1e9660)

- Há pouca, mas há diferença entre a média das notas dos admitidos e os não admitidos. Para verificar melhor essa comparação, é necessário o auxílio de um boxplot:

![image](https://github.com/user-attachments/assets/6fd79255-b123-4186-909f-651ad4ee39b1)

- Novamente, pode-se afirmar que a média GPA influencia um pouco na admissão dos candidatos, porém, não podemos descartar a hipótese de que quem tirou maior nota GPA, pode ter tirado maiores notas do GMAT, e o único fator que influenciaria seria o GMAT
- Posteriormente faremos um gráfico de correlação entre GPA e GMAT

### 3 - Análise de GMAT

Verificaremos se a nota da prova influencia em ser admitido no programa

![image](https://github.com/user-attachments/assets/aa4c64ab-fd97-4563-b569-6cf0e174d6cb)

- A distribuição das notas dos admitidos estão em número superiores aos de não admitidos. Por isso, é possível concluir que a nota GMAT influencia em ser aprovado e influencia mais do que o GPA.

### 4 - Correlação entre GPA e GMAT

Para descartar a possibilidade de que, a nota GPA não influenciaria em ser admitido pois quem foi bem no GPA provavelmente tiraria notas maiores no GMAT, vamos observar a correlação entre as duas variáveis. 

![image](https://github.com/user-attachments/assets/43ff3301-6d5a-4be9-bfd6-237435386b1f)

- Aqui pode-se observar que não há nenhuma correlação entre tirar altas notas no GPA e altas notas no GMAT.
- Portanto, é possível concluir que a nota do GPA é sim um fator que influencia sim na admissão no programa

### 5 - Análise admissão por Nacionalidade

- Aqui iremos verificar se ser estrangeiro ou nativo tem influência na admissão do programa

![image](https://github.com/user-attachments/assets/e5b2f10b-9b41-4ec4-9549-531947dd6309)

- A média dos admitidos e não admitidos dos nativos e estrangeiros são as mesmas, porém os admitidos naturais do país do programa apresentam uma média superior. Talvez eles tenham tirado notas superiores aos estrangeiros.

![image](https://github.com/user-attachments/assets/57a5af5e-48be-48f7-9cd1-a0f51084dd47)

- Como falei, os nativos tiraram uma nota ligeiramente superior, isso explica o motivo da média dos aprovados naturais serem maiores do que a dos estrangeiros

Agora verificarei a porcentagem dos admitidos e não admitidos dessas duas segmentações

![image](https://github.com/user-attachments/assets/8b287b0b-5a21-4a86-9736-171144bfe9d5)

- Ambos possuem a mesma porcentagem de aprovados
- Portanto, não há influência da variável International para ser admitido no programa.

### 5 - Análise admissão por Raça

Vou verificar a porcentagem de admissão por raça com um gráfico de cluster de coluna

![image](https://github.com/user-attachments/assets/99bb118e-e60e-49c7-94de-ccac98609dc5)

- Veja que hispânicos e Negros possuem uma porcentagem menor de admissão no programa
- Talvez possam ter tirado notas menores ou há uma certa seletividade de raça dentro do programa

![image](https://github.com/user-attachments/assets/5ccb9f72-76f8-4a2d-8c56-fb720864e0ad)

- Com o gráfico de boxplot confirmamos que os negros e hispânicos tem notas ligeiramente maiores

![image](https://github.com/user-attachments/assets/2cd0707d-9aaa-4c7f-b41c-fac7509239a8)

- Com o gráfico acima da média de GMAT pelos aprovados por raça, vemos que a média dos aprovados hispânicos e negros são maiores
- Portanto é possível afirmar que temos um viés de raça na admissão deste programa


### 6 - Análise admissão por Gênero

Iremos analisar agora se a variável Gênero influencia na admissão do programa

![image](https://github.com/user-attachments/assets/3f04d47c-f421-40ca-b678-d61c2c7dde2d)

- As notas de ambos os Gêneros são bem semelhantes
- Vou verificar se a média de admissão também é

![image](https://github.com/user-attachments/assets/562209ae-e729-4baa-8a7b-b982afe520c1)

- Aqui vemos que os homens admitidos no programa tem nota de GMAT em média superiores às das mulheres. Como ambos tem notas iguais, é possível afirmar que há um viés de gênero para a admissão do programa.

![image](https://github.com/user-attachments/assets/c7660a4b-f848-4fb0-9041-2dfc7d19bd9a)

- Novamente, como ambos possuem as mesmas notas, e as mulheres estão sendo mais admitidas do que os homens, confirmamos o viés do programa

### 6 - Análise admissão por Major

- Major é a área de formação. Irei verificar se essa formação influecia em ser admitido ou não

![image](https://github.com/user-attachments/assets/3af47d60-3028-4991-ab6c-348806aac392)

- As notas GMAT do grupo Humanities foram ligeiramente superiores, por isso, a média dos aprovados deste grupo deve ser ligeiramente superior também.

![image](https://github.com/user-attachments/assets/3f6b762b-8485-48f2-83bd-746efcdbfd8e)

- Aqui verificamos que a média de aprovados do Humanities é ligeiramente superior como o esperado. Portanto, parece que não existe relação entre o curso de graduação e ser aprovado ou não no programa. Para terminar nossa análise iremos verificar a porcentagem de aprovação de cada major

![image](https://github.com/user-attachments/assets/2761a530-8375-45be-8b55-21bcbb4da127)

Conforme o esperado, ambos tiveram os mesmos percentuais de aprovação

### 7 - Análise admissão por Xp Experience

- Agora iremos analisar se o tempo de experiência profissional influencia na admissão do programa.
- Para isso iremos construir uma tabela usando a porcentagem de aprovação por anos de experiência, e depois fazer um gráfico de dispersão entre os dois

![image](https://github.com/user-attachments/assets/e424be4a-178f-4cbf-8351-7437c2901487)

- Parece que pessoas com menos de 20 anos de experiência não são bem vistas no programa
- A taxa de aprovação de programa após os 20 anos não varia muito, portanto, podemos afirmar que após 20 anos de experiência, não há influência na taxa de aprovação do programa


## V- Conclusão


