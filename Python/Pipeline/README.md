![image](https://github.com/user-attachments/assets/f320c90d-f6e2-43d7-b7a1-c68cfafb5289)

# 🛶Criando uma Pipeline de ETL em Python

## I - Problema de Negócio
- Este [conjunto de dados](https://github.com/massis93/Projetos_Analise_Dados/tree/main/Python/Pipeline/Ipea) contém informações sobre os homicídios no Brasil no período de 1979 até 2021 para todos os estados. O CEO de uma empresa necessitou de um programa em Python que, além de unificar todas as 18 planilhas dentro da pasta, conseguisse, ao chegar uma nova planilha, incluir nesse novo arquivo csv unificado.
- O código em Python pode ser acessado [aqui](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Python/Pipeline/pandas_expert.py)

## II - Dataset

Cada tabela contém as mesmas colunas, porém, os valores de homicídios correspondem a diferentes tipos de homicídios, como de jovens, homens negros, mulheres.

| Coluna          | Descrição                                                  
|-|-|                            
| `cod`        | Código do Estado                                          
| `nome` | Nome do Estado            
| `período`       | Ano Correspondente
| `valor`    	  | Número de Homicídios




## III - O código

- O código será rodado no VSCODE com a extensão da Biblioteca do Jupyter Notebook e o Python do Anaconda, junto com o Kernel do Pyhton Anaconda.

![image](https://github.com/user-attachments/assets/74c5d8bc-5c7f-4a72-ade1-2f3905266a12)

Primeiramente fiz a importação da biblioteca Pandas e de Sistema Operacional para lidar com arquivos dentro do PC.

![image](https://github.com/user-attachments/assets/1838ec12-9cab-4dda-97d9-82f5056369be)

Defini a raíz dos arquivos IPEA como sendo uma variável denominada `Path`.

![image](https://github.com/user-attachments/assets/2ded5dd3-b629-4e2d-8611-24d6ae57ff35)

- Criei uma função denominada etl, que recebe um nome de arquivo (que estará dentro da pasta `Path`)
- A função, com o auxílio da biblioteca pandas faz a leitura deste arquivo (através do caminho `Path` + `name`, separando por ";"
- Como os arquivos csv tem 3 colunas iguais, iremos setar o index da função com o set_index()
- Logo após iremos renomear essa coluna de `valor` com o nome do arquivo

![image](https://github.com/user-attachments/assets/41fed806-3a24-42d4-b9ba-2622c0f6ddcc)

Feita a função, agora iremos ler os arquivos dentro do diretório de `Path`

![image](https://github.com/user-attachments/assets/839425fe-9ced-43f5-bdb5-bcf99cbc5eb9)

- Agora, utilizando um for, iremos aplicar a função etl para cada arquivo dentro de `Path` e salvar esse Dataframe gerado dentro de uma lista

![image](https://github.com/user-attachments/assets/b97b15b5-a5ab-4962-9e95-f21e1f591c4f)

- Com a função concat, podemos concatenar todos esses arquivos da lista, que possuem um setado em comum
- Com a função reset_index() retornamos um indice numérico para esse novo dataframe

![image](https://github.com/user-attachments/assets/7a864f7b-f72f-47fd-9335-af8d58d0a5d1)

- Para finalizar, iremos exportar o Dataframe para um arquivo csv







