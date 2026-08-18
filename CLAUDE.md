# CLAUDE.md

Guia para assistentes de IA (Claude Code) trabalharem neste repositório.

## O que é este repositório

Portfólio pessoal de projetos de **Análise de Dados** de Mateus (`massis93`). **Não é uma aplicação de software**: não há build, testes, CI, `requirements.txt`, `package.json` ou qualquer configuração. É uma coleção de estudos de caso, cada um composto por *dados brutos + artefato de análise + um README narrativo* que conta a história da análise.

O produto final de cada projeto **é o README**. O código (notebook/SQL/planilha) é a evidência; o README é a entrega.

**Todo o conteúdo é em português do Brasil.** READMEs, comentários de código, nomes de variáveis, mensagens de commit e respostas ao usuário devem seguir o mesmo idioma. Os datasets são majoritariamente fictícios ou públicos (Kaggle, IPEA, ANP, SNIF); os "problemas de negócio" são criados pelo autor.

## Estrutura

Quatro pastas de primeiro nível, uma por ferramenta. Cada uma tem um `README.md` índice que lista seus projetos, e cada projeto é uma subpasta autocontida.

```
README.md                      # índice geral do portfólio (links para todos os projetos)
Excel/       README.md         # índice + projetos: Avengers, Bank Marketing,
                               #   Canadian Cheese, MBA, Smartphone Behavior
PowerBI/     README.md         # índice + projetos: Biblioteca, Ecommerce,
                               #   Monitoramento Incêndios Brasil, Preços de Combustíveis
Python/      README.md (vazio) # projetos: Car Sales, Churn, Depression, Pipeline
SQL/         README.md         # projetos: Análise de Vendas Biblioteca, Bike Store
```

Nomes de pastas contêm **espaços e acentos** (`Excel/Bank Marketing/`, `PowerBI/Preços de Combustíveis no Brasil/`). Sempre cite caminhos entre aspas em comandos shell e use *percent-encoding* em links de README (`Pre%C3%A7os%20de%20Combust%C3%ADveis`).

### Conteúdo por tipo de projeto

| Ferramenta | Arquivos do projeto |
|-|-|
| Excel | `README.md` + `.csv` (dados brutos) + `.xlsx` (análise: fórmulas, tabelas dinâmicas, gráficos) |
| Python | `README.md` + `.ipynb` (Jupyter, **com outputs e imagens salvos**) + `.csv` quando o dado cabe no repo |
| SQL | `README.md` + `.sql` (script único com todas as perguntas) + `.csv` de origem quando aplicável |
| Power BI | `README.md` + `.pbix` quando disponível + `.csv` de origem; o dashboard vive publicado em `app.powerbi.com` e é linkado no README |

## Convenções de README (o mais importante)

Todo README de projeto segue o **mesmo roteiro numerado com algarismos romanos**. Ao criar ou editar um projeto, reproduza esta estrutura:

1. Uma imagem de capa no topo — `![image](https://github.com/user-attachments/assets/<uuid>)`, sem título antes.
2. `# <emoji><Título do projeto>` — o emoji cola no texto, sem espaço (`# 🚗Análise das Vendas...`).
3. `## I - Problema de Negócio` (ou `## I - Introdução`) — enquadramento em primeira pessoa: um CEO/dono fictício "me contratou" para responder algo. Inclui links para o dataset e para o artefato de análise.
4. `## II - Dataset` — tabela markdown de duas colunas (`Coluna` | `Descrição`) com uma linha por campo, nomes de coluna em crase.
5. `## III - Análise` / `## III - Perguntas e Análises` / `## III - Escopo do Projeto` — o corpo da análise, dividido em `### 1 - Pergunta`, `### 2 - ...`. Cada passo alterna **imagem do gráfico → bullets de interpretação**.
6. `## IV/V - Conclusões`, `Conclusões/Insights` ou `Análise e Plano de Ação` — bullets acionáveis para o negócio, não estatísticas soltas.

Projetos de Power BI usam uma variante: `I- Introdução`, `II- Dataset` (ou `II- DER` com o diagrama entidade-relacionamento), `III- Dashboard` (print + link público), `IV- Objetivo do Dashboard` (bullets de KPIs e objetivos).

Notas de estilo a preservar:
- Narração em primeira pessoa e no futuro ("vou verificar", "iremos concatenar") — é um walkthrough, não documentação técnica.
- **Imagens são links do GitHub user-attachments** e só podem ser geradas fazendo upload pela interface do GitHub. Não invente URLs de imagem; ao adicionar uma seção nova, deixe um marcador explícito e avise o usuário que ele precisa subir o print.
- Cada afirmação vem acompanhada da evidência visual que a sustenta.

## Convenções de código

### Python / Jupyter

Todo notebook abre com o **mesmo bloco de setup** — mantenha-o idêntico em notebooks novos:

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
plt.style.use('ggplot')  ##definindo estilo ggplot
plt.rcParams["figure.figsize"] = (8, 6) #fixando o figsize
```

- Stack fixa: **pandas, matplotlib, seaborn, numpy**. Sem scikit-learn, sem plotly, sem framework de ML — as análises são exploratórias e diagnósticas, não preditivas.
- Kernel `python3` / Python 3.11 (Anaconda). Notebooks são commitados **com os outputs** (incl. PNGs embutidos) — é isso que torna o `.ipynb` legível no GitHub. **Nunca limpe os outputs** antes de commitar.
- Comentários curtos em português, na mesma linha ou na linha anterior.
- Carregamento de dados: `Churn.ipynb` e `Depression_Analysis.ipynb` leem o CSV pela **URL raw do próprio repositório** (`https://raw.githubusercontent.com/massis93/Projetos_Analise_Dados/refs/heads/main/...`) — prefira esse padrão para dados versionados aqui. `carSales.ipynb` ainda aponta para um caminho local do Windows (`C:\\Users\mateu\...`) e seu dataset (`car_prices.csv`, ~500 mil linhas) **não está no repositório**; esse notebook não roda sem baixar os dados do Kaggle.
- `Python/Pipeline/pandas_expert.py` é um script **VSCode Interactive** (células `# %%`), não um módulo. A variável `path` aponta para `../../Desbravando_Pandas/desbravando-pandas-main/data/ipea/`, fora do repositório — os mesmos CSVs estão em `Python/Pipeline/Ipea/`. Se for executar o script, ajuste o `path` para essa pasta.

### SQL

- Dialeto **T-SQL / Microsoft SQL Server** (`YEAR()`, `STDEVP()`, `CAST(... AS float)`, aliases entre colchetes `[Ticket Médio]`, `ROUND(x/SUM(x) OVER(), 2)`).
- Um único `.sql` por projeto, organizado como uma sequência de perguntas de negócio marcadas por comentário (`-- 1 - Qual o valor total de estoque por marca?` ou `/* PERGUNTA 1 - ... */`), na mesma ordem em que aparecem no README.
- Uso intenso de CTEs encadeadas (`WITH tb1 AS (...), tb2 AS (...)`) e window functions para calcular percentuais.
- Os scripts incluem os `CREATE DATABASE`, `ALTER TABLE` e `UPDATE` de preparação dos dados (ex.: corrigir preços importados como inteiro). Mantenha esses passos no arquivo — fazem parte da narrativa.
- Palavras-chave em maiúsculas na maior parte do tempo, mas o estilo é inconsistente entre arquivos; siga o arquivo que estiver editando.

### Dados (CSV)

**O separador varia por arquivo** — sempre confira o cabeçalho antes de ler:

| Arquivo | `sep` | Observações |
|-|-|-|
| `Python/Pipeline/Ipea/*.csv` | `;` | colunas `cod;nome;período;valor` |
| `Python/Depression/Student Depression Dataset.csv` | `;` | |
| `Excel/Bank Marketing/bank.csv` | `;` | |
| `SQL/Análise de Vendas Biblioteca/sales.csv` | `;` | BOM UTF-8, decimal com vírgula (`2,15`), data `dd/mm/aaaa` |
| `Python/Churn/churn.csv`, `Excel/**` (demais), `PowerBI/**/amazon.csv` | `,` | |

Datasets grandes (>5 MB) ficam versionados normalmente — não há Git LFS nem `.gitignore` no repositório.

## Fluxo de trabalho

Não há build, lint, teste ou pipeline de CI. Um "ciclo de desenvolvimento" aqui é:

1. Escolher/limpar um dataset e colocá-lo na pasta do projeto.
2. Fazer a análise na ferramenta correspondente (notebook, `.sql`, `.xlsx`, `.pbix`).
3. Escrever o README seguindo o roteiro romano, subindo os prints dos gráficos pelo GitHub.
4. Linkar o projeto novo no `README.md` da pasta da ferramenta **e** no `README.md` da raiz.

Validação possível neste ambiente: os notebooks podem ser inspecionados como JSON, mas **pandas/matplotlib não estão instalados no container** — não conte com execução de notebook sem instalar as dependências antes. Não há SQL Server nem Power BI disponíveis; scripts `.sql` e `.pbix` só podem ser revisados por leitura.

Ao mexer em `.ipynb`, prefira a ferramenta NotebookEdit a editar o JSON na mão, para não corromper o arquivo.

## Estado atual / pendências conhecidas

Ao atualizar o repositório, estes pontos estão abertos e podem ser corrigidos junto:

- `Python/README.md` e `Python/Pipeline/Ipea/README.md` estão **vazios**; as outras três pastas de ferramenta têm índice com capa e lista de projetos.
- O projeto `Excel/Avengers` **não está listado** no `README.md` da raiz nem no `Excel/README.md`.
- `Excel/Canadian Cheese/README.md` tem um link quebrado para o XLSX: `[aqui](-----------)`.
- `Excel/Bank Marketing/README.md` tem duas descrições trocadas na tabela do dataset (`balance` → "Gênero do Personagem", `housing` → "Saldo bancário").
- `PowerBI/Biblioteca` e `PowerBI/Ecommerce` não têm `.pbix` commitado — só o README com o link público.

## Git

- Branch padrão: `main`. Histórico dominado por commits vindos da interface web do GitHub ("Update README.md", "Add files via upload").
- Mensagens de commit em português, curtas e descritivas.
