# 🎯 Trilha de Estudo — Análise de Dados, Martech e IA (com foco em TDAH)

> Objetivo deste arquivo: não só te dar conteúdo, mas te ensinar **como estudar sozinho** — método, onde buscar, como praticar e como usar IA como tutor. Complementa o [Guia de Engenharia de Prompt](./README.md): aqui cada tema aponta quais tópicos de lá (nº 1–104) usar.

---

## 1️⃣ Método de estudo (funciona bem com TDAH)

O problema raramente é "não saber o conteúdo" — é sustentar atenção e criar rotina. Por isso o método vem antes do conteúdo.

| Técnica | O que é | Como aplicar |
|---|---|---|
| Pomodoro adaptado | Blocos curtos de foco + pausa | Teste 25/5 e 52/17, fique com o que "gruda" |
| Body doubling | Estudar "junto" de alguém (mesmo online) | App Focusmate, ou call aberta com um amigo estudando |
| Aprendizagem multissensorial | Misturar vídeo + prática + escrita | Assistir 10 min → praticar 15 min → escrever 3 linhas do que aprendeu |
| Recompensa imediata / gamificação | Cérebro TDAH responde melhor a reforço rápido | App Forest (pomodoro vira árvore), marcar checklist visível |
| Microtarefas | Tarefa grande trava, tarefa de 15 min não | "Estudar SQL" → "fazer 5 exercícios de SELECT no SQLZoo" |
| Repetição espaçada | Revisar em intervalos crescentes evita esquecer | Anki: cria flashcard toda vez que aprende um conceito novo |
| Projeto real, não teoria pura | TDAH engaja mais fazendo do que lendo | Pegar uma base de dados real e tentar responder uma pergunta de negócio |
| Interleaving (intercalar assuntos) | Saturou em SQL? Troca pra estatística por 20 min | Evita o "trancar" na mesma tarefa |
| Ambiente com menos fricção | Menos decisão = mais início de tarefa | Site blocker (Cold Turkey/Freedom), tudo já aberto antes de começar |
| Ensinar de volta (Feynman) | Explicar em voz alta fixa muito mais que reler | Grava um áudio de 2 min explicando o que aprendeu, como se fosse pra um amigo |

**Regra de ouro:** comece pela tarefa menor possível ("abrir o notebook", não "aprender Pandas"). O TDAH trava no início, não na execução.

---

## 2️⃣ Como "aprender sozinho" (o método, não só o conteúdo)

Fluxo em 5 passos, sempre igual, pra qualquer assunto novo:

| Passo | O que fazer | Prompt de exemplo (usa IA como tutor) |
|---|---|---|
| 1. Pergunta certa | Defina exatamente o que você não sabe | "Não entendo a diferença entre correlação e causalidade" |
| 2. Fonte primária | Doc oficial / livro-base > blog > vídeo solto | Ex: Khan Academy antes de um vídeo aleatório do YouTube |
| 3. Prática imediata (15 min) | Aplicar em cima de um dado/caso real, não decorar | "Me dá 3 exercícios práticos sobre isso com uma base fictícia" |
| 4. Ensinar de volta | Explicar em voz alta/escrito como se fosse pra alguém | "Vou te explicar o que entendi, aponte o que está errado" |
| 5. Registrar | Guardar num só lugar (Notion/Obsidian) — sua "segunda memória" | Nota curta: conceito + exemplo + onde usar |

**Usando a IA como tutor (não como resposta pronta):** peça pra ela te questionar, não só responder — isso usa direto os tópicos **#7 (role prompting)**, **#44/45 (frameworks de prompt)** e **#54/55 (meta-prompt)** do guia principal.

```
Aja como um tutor socrático de [estatística/SQL/storytelling].
Não me dê a resposta direto: me faça 1 pergunta de cada vez
pra eu chegar na resposta sozinho. Se eu errar, me dê uma dica,
não a solução completa.
```

---

## 3️⃣ Trilha por tema

Cada tema tem: o essencial pra sair de iniciante → intermediário, onde estudar de graça, como praticar, e qual tópico de Prompt Engineering (do guia principal) usar nessa etapa.

### 📊 Análise de Dados (base de tudo)

| O que dominar | Referência | Como praticar | PE relacionado |
|---|---|---|---|
| Excel/Google Sheets avançado (tabela dinâmica, PROCV/XLOOKUP) | Você já tem projetos no seu repo — reforce com [Curso em Vídeo](https://www.youtube.com/@CursoemVideo) | Refazer 1 projeto seu do zero, cronometrado | #26 extração, #50 saída estruturada |
| SQL (SELECT, JOIN, GROUP BY, window functions) | [SQLZoo](https://sqlzoo.net/), [Mode SQL Tutorial](https://mode.com/sql-tutorial/), curso gratuito da [Data Science Academy](https://blog.dsacademy.com.br/sql_analytics/) | [StrataScratch](https://www.stratascratch.com/) ou HackerRank SQL, 3x/semana | #39 chaining, #47 RAG (buscar contexto do schema) |
| Python p/ dados (Pandas, gráficos básicos) | [Kaggle Learn](https://www.kaggle.com/learn) (grátis, em blocos curtos — ótimo p/ TDAH) | Refazer uma análise sua em Python | #55 código+teste, #74 PAL (deixa a IA calcular, não estimar) |
| Análise exploratória (EDA) | Livro *Storytelling com Dados* (cap. 1) já ajuda no raciocínio | Pegar dataset do Kaggle e responder 3 perguntas de negócio | #16 exemplos entrada/saída, #40 decomposição de tarefa |

### 📐 Estatística (o que sustenta a análise)

| O que dominar | Referência | Como praticar | PE relacionado |
|---|---|---|---|
| Medidas de tendência/dispersão, distribuições | [Khan Academy - Estatística](https://pt.khanacademy.org/math/statistics-probability) (grátis, PT-BR, ~15h) | Calcular na mão E validar com Python | #11 temperature=0 pra cálculo exato |
| Correlação vs causalidade, viés | [Seeing Theory](https://seeing-theory.brown.edu/) (visual, ótimo p/ TDAH) + livro *Como Mentir com Estatística* (Darrell Huff) | Achar 1 gráfico "enganoso" por semana e explicar o erro | #21 evitar ambiguidade, #91 avaliação com rubrica |
| Testes de hipótese, intervalo de confiança | Canal [StatQuest](https://www.youtube.com/@statquest) (inglês, didático, legendável) | Aplicar num dataset A/B fictício | #64 LLM-as-judge pra validar sua conclusão |

### 🗄️ Construção de bases de dados

| O que dominar | Referência | Como praticar | PE relacionado |
|---|---|---|---|
| Modelagem (chave primária/estrangeira, normalização) | Curso gratuito SQL da [USP (Coursera)](https://jornal.usp.br/universidade/curso-on-line-e-gratuito-ensina-analise-de-dados-usando-a-linguagem-de-programacao-sql/) | Modelar um mini-CRM (clientes, pedidos, produtos) | #94 RAG avançado (chunking de dados) |
| ETL básico (extrair, transformar, carregar) | Seu próprio projeto [Pipeline](https://github.com/massis93/Projetos_Analise_Dados/blob/main/Python/Pipeline/README.md) já é um ótimo case | Automatizar a limpeza de uma base suja do Kaggle | #39 prompt chaining, #56 debugging guiado |
| Qualidade de dados / dados faltantes | Você já fez isso no projeto de queijos — aprofunde | Criar um checklist de qualidade reutilizável | #20 checklist no prompt |

### 📣 Martech / Growth

| O que dominar | Referência | Como praticar | PE relacionado |
|---|---|---|---|
| Fundamentos de funil, atribuição, CRM | [HubSpot Academy](https://academy.hubspot.com/) (grátis, com certificado) | Mapear o funil de um negócio fictício | #44 CO-STAR pra briefing de campanha |
| Google Analytics 4 / tags | [Google Skillshop](https://skillshop.exceedlms.com/) (GA4 gratuito e oficial) | Configurar GA4 num site de teste | #49 function calling (a IA "aciona" relatórios) |
| Growth / experimentação | [Growth.Design](https://growth.design/) (cases em quadrinho, leve pra TDAH) | Desenhar 1 experimento de A/B por semana | #65 A/B testing de prompt (mesma lógica de teste) |
| Stack martech na prática | [ClubMartech](https://clubmartech.com.br/blog/martech/) (PT-BR) | Listar o stack de 3 empresas que você admira | #78 orquestração multiagente (vários canais = vários "agentes") |

### 🧠 Pensamento crítico

| O que dominar | Referência | Como praticar | PE relacionado |
|---|---|---|---|
| Vieses cognitivos | *Rápido e Devagar* (Kahneman) | Antes de concluir algo, pergunte "que viés pode estar aqui?" | #43 self-check, #52 reflection |
| Perguntas certas antes de analisar | *The Mom Test* (Rob Fitzpatrick) | Escrever 3 perguntas antes de abrir qualquer planilha | #22 prompt de esclarecimento |
| Estrutura de argumento (hipótese → evidência → conclusão) | Método científico básico, sem curso — só prática | Sempre escrever a hipótese antes de olhar o dado | #17 pergunta aberta vs fechada |

### 🎤 Storytelling & Apresentação

| O que dominar | Referência | Como praticar | PE relacionado |
|---|---|---|---|
| Estrutura de narrativa com dados | *Storytelling com Dados* — Cole Nussbaumer Knaflic (livro-base do tema) | Reescrever 1 slide seu removendo tudo que não muda a decisão | #18/19 público-alvo e tom |
| Construção de apresentação | *Data Story* — Nancy Duarte | Aplicar a estrutura "e então... mas... portanto" numa análise sua | #44 CO-STAR (Style/Tone/Audience) |
| Curso estruturado (opcional, PT-BR) | [Alura — Storytelling com Dados](https://www.alura.com.br/curso-online-storytelling-com-dados-e-comunicacao-para-alta-gestao) | Apresentar 1 dashboard seu pra alguém leigo e cronometrar a compreensão | #62 prompt multi-turno (simular perguntas da audiência) |

### 💰 Vendas (dado a serviço de decisão comercial)

| O que dominar | Referência | Como praticar | PE relacionado |
|---|---|---|---|
| Gatilhos de persuasão (ético) | *Influência* — Robert Cialdini | Analisar 1 pitch/anúncio e apontar qual gatilho foi usado | #7 role prompting ("aja como o cliente cético") |
| Funil de vendas + métricas (CAC, LTV, conversão) | HubSpot Academy (mesmo do martech) | Calcular CAC/LTV de um case fictício | #26 extração de dados de um relatório |
| Contar a história do número pro time comercial | Junta storytelling + vendas (temas acima) | Transformar 1 dashboard seu num "pitch de 2 minutos" | #103 multimodal (dado + narrativa + visual juntos) |

---

## 4️⃣ Preciso aprender programação?

| Nível | Precisa? | O mínimo |
|---|---|---|
| SQL | **Sim, obrigatório** | SELECT, JOIN, GROUP BY, subquery — dá pra aprender o essencial em 2-3 semanas |
| Python | **Recomendado, não urgente** | Pandas + gráficos básicos — só depois de já dominar SQL e Excel |
| Outras linguagens (R, JS...) | Não neste momento | Foco em profundidade, não em colecionar linguagem |

Você não precisa "virar programador" — precisa de SQL fluente + Python o suficiente pra automatizar o que hoje você faz manual no Excel.

---

## 5️⃣ Ferramentas por área

| Área | Ferramenta grátis pra começar |
|---|---|
| Organização/estudo | Notion ou Obsidian (sua "segunda memória") + Anki (revisão espaçada) |
| Foco/TDAH | Forest (pomodoro gamificado), Focusmate (body doubling) |
| Dados | Google Sheets/Excel → SQL (Postgres local ou BigQuery sandbox) → Python (Jupyter/Colab) |
| Visualização | Power BI (você já usa) ou Looker Studio (grátis, web) |
| Martech | Google Analytics 4 + Google Tag Manager (grátis) |
| Prática de SQL | SQLZoo, Mode SQL Tutorial, StrataScratch |
| Prática de dados | Kaggle (datasets + Kaggle Learn) |

---

## 6️⃣ Plano semanal exemplo (TDAH-friendly, ~5h/semana)

| Dia | Bloco (25–50 min) | Foco |
|---|---|---|
| Seg | 1 bloco | SQL (SQLZoo) |
| Ter | 1 bloco | Estatística (Khan Academy) |
| Qua | 1 bloco | Projeto prático (aplicar SQL+stats numa base real) |
| Qui | 1 bloco | Storytelling/apresentação (reescrever 1 slide) |
| Sex | 1 bloco | Martech ou vendas (case do Growth.Design) |
| Sáb/Dom | 15 min | Revisão no Anki + gravar áudio "Feynman" do que aprendeu |

Ajuste o número de blocos, não o formato — o formato curto e alternado é o que sustenta foco com TDAH.

---

### Fontes consultadas
- [Storytelling com Dados — Alura](https://www.alura.com.br/artigos/storytelling-com-dados)
- [Khan Academy — Estatística (PT-BR)](https://pt.khanacademy.org/math/statistics-probability)
- [Curso gratuito de SQL — USP/Coursera](https://jornal.usp.br/universidade/curso-on-line-e-gratuito-ensina-analise-de-dados-usando-a-linguagem-de-programacao-sql/)
- [Módulo gratuito SQL Analytics — Data Science Academy](https://blog.dsacademy.com.br/sql_analytics/)
- [ClubMartech — Guia de Martech](https://clubmartech.com.br/blog/martech/)
- [Growth.Design — cases de growth](https://growth.design/)
- [Dicas de estudo para TDAH baseadas em evidência](https://www.blabby.ai/blog/pt-br/adhd-study-tips)
- [Kaggle Learn](https://www.kaggle.com/learn)
