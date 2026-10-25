# Guia de Preparação: Growth Analytics Sênior (Stone)

Oct 25, 2026 · @Mateus Silva

## 1. Como usar este guia

Este guia prepara para a segunda fase da vaga de Analista de Growth Analytics da Stone: entrevista técnica com a gestora e case técnico ao vivo. O objetivo é chegar agindo como sênior, não como pleno.

Use assim: leia os capítulos 2 a 5 em um dia, rode a base de treino (capítulo 7) e faça os exercícios digitando, nunca só lendo. Simule o case em voz alta pelo menos duas vezes com cronômetro.

| Dia | Foco | Entrega do dia |
| --- | --- | --- |
| 1 | Capítulos 2, 3 e 5: vaga, sênior x pleno, métricas | Decorar as fórmulas de CAC, ROAS, LTV e payback |
| 2 | Capítulo 4 e 7: criar conta no BigQuery e rodar a base | Tabelas criadas e primeira query funcionando |
| 3 | Capítulo 6 e exercícios 1 a 10 | Dominar JOIN com agregação prévia e window functions |
| 4 | Exercícios 11 a 20 | Refazer os que errou sem olhar o gabarito |
| 5 | Capítulos 9, 10 e 11: cases, testes A/B, atribuição | Responder cada case em voz alta em 3 minutos |
| 6 | Capítulos 12 e 13: dashboard no Looker Studio e Sheets | Um painel com 5 KPIs ligado à base de treino |
| 7 | Capítulos 14, 15 e 16: simulação completa do case | Case de 60 minutos cronometrado, gravado em áudio |

Se tiver menos de 7 dias, priorize nesta ordem: capítulo 14 (roteiro do case), capítulo 8 (exercícios) e capítulo 9 (cases de negócio).

## 2. A vaga e o vocabulário da Stone

A vaga pede uma pessoa que diagnostica funis de aquisição, modela dados em SQL, cria dashboards e transforma análise em recomendação de investimento em marketing digital. O time existe para melhorar o retorno da verba de mídia que traz novos lojistas.

O que a descrição da vaga pede e como isso aparece no case:

| Requisito da vaga | Como é testado | Onde estudar |
| --- | --- | --- |
| SQL avançado | Query ao vivo com JOIN, agregação e window function | Capítulos 6, 7 e 8 |
| Looker Studio, Power BI ou Tableau | Pergunta sobre como montaria o painel | Capítulo 12 |
| Diagnosticar funil de aquisição | Case: onde o funil vaza e por quê | Capítulos 5 e 9 |
| Hipóteses e testes com ROI | Desenhar um teste A/B e um geo-test | Capítulo 10 |
| Monitorar KPIs de marketing | Explicar variação de CAC e ROAS | Capítulos 5 e 9 |
| Comunicação com negócio | Fechar o case com recomendação em reais | Capítulo 14 |
| Diferencial: IA aplicada a dados | Contar como usa Claude Code ou similar na rotina | Capítulo 15 |

Vocabulário que precisa sair natural na conversa:

| Termo | Significado | Exemplo de uso |
| --- | --- | --- |
| Lead | Pessoa que deixou contato interessada na maquininha | "Geramos 12 mil leads no mês" |
| Credenciamento | Cadastro do lojista na Stone | "A taxa de lead para credenciamento caiu" |
| Aprovação | Análise de risco aceitou o lojista | "Aprovação depende da política de crédito, não de marketing" |
| Ativação | Lojista fez a primeira venda na maquininha | "Ativo é quem transacionou em 30 dias" |
| TPV | Total Payment Volume, volume transacionado | "TPV de R$ 10 mil no primeiro mês" |
| Take rate ou MDR | Percentual que a Stone fica de cada transação | "Com take rate de 1,5%, R$ 10 mil de TPV viram R$ 150 de receita" |
| Churn | Lojista parou de transacionar | "Churn de 5% ao mês" |
| CAC | Custo de aquisição por cliente ativo | "CAC de R$ 400 no Google" |
| LTV | Receita que o cliente gera na vida dele | "LTV/CAC acima de 3 é saudável" |
| Hub | Time comercial regional que visita lojistas | "Lead do digital que fecha no hub" |
| Incrementalidade | Resultado que só aconteceu por causa da campanha | "Busca de marca tem baixa incrementalidade" |

## 3. Sênior x Pleno

A diferença não é saber mais SQL. O sênior decide o que vale analisar, valida antes de concluir, quantifica em reais e assume a recomendação. O pleno executa bem o que foi pedido.

| Dimensão | Pleno | Sênior |
| --- | --- | --- |
| Começo do case | Abre os dados e começa a escrever SQL | Faz 3 perguntas: qual decisão, qual métrica norte, o que já suspeitam |
| Dados | Confia na base | Checa duplicidade, período, nulos e granularidade antes |
| Métrica | Reporta o número | Decompõe: CAC subiu porque o investimento subiu ou porque ativos caíram? |
| Profundidade | Abre 5 frentes rasas | Escolhe o maior vazamento e vai fundo nele |
| Insight | "TikTok tem CAC alto" | "TikTok perde na ativação, não no lead. Realocar 30% gera X ativos a mais" |
| Teste | Executa o A/B pedido | Define hipótese, amostra, duração e critério de decisão antes de rodar |
| Atribuição | Usa last click | Sabe os vieses do last click e propõe incrementalidade |
| Erro | Fica em silêncio ou defende | "Me enganei aqui, corrigindo" e segue |
| Fechamento | Mostra gráficos | Abre com a recomendação, mostra 3 evidências, nomeia risco e próximo passo |
| Dashboard | Coloca tudo que pediram | Hierarquiza: 1 métrica norte, 5 de topo, detalhe a um clique |
| Modelagem | Refaz o JOIN toda semana | Cria a tabela tratada para o time inteiro usar |
| Com o negócio | Entrega o que pediram | Reformula a pergunta quando ela está errada e explica por quê |

Três hábitos que a gestora vai observar no case ao vivo:

1. Pensar alto. Narrar o raciocínio a cada passo, inclusive quando travar.
2. Resumir a cada 10 minutos. "Até aqui vi X. Agora vou olhar Y porque Z."
3. Trocar adjetivo por número. Nunca "caiu bastante"; sempre "caiu 18%, de R$ 380 para R$ 450 de CAC".

## 4. Ferramentas: onde baixar e configurar

Quase tudo roda no navegador. A stack recomendada é BigQuery Sandbox para SQL e Looker Studio para dashboard, porque é a stack do Google que a vaga cita.

| Ferramenta | Para quê | Onde | Instalação |
| --- | --- | --- | --- |
| BigQuery Sandbox | Treinar SQL (dialeto mais provável na Stone) | [console.cloud.google.com/bigquery](https://console.cloud.google.com/bigquery) | Nenhuma, só conta Google, sem cartão |
| Looker Studio | Dashboards | [lookerstudio.google.com](https://lookerstudio.google.com) | Nenhuma |
| Google Sheets | Análise rápida em planilha | [sheets.google.com](https://sheets.google.com) | Nenhuma |
| Power BI Desktop | Dashboards, alternativa | Microsoft Store (só Windows) | Grátis |
| Tableau Public | Dashboards, alternativa | [public.tableau.com](https://public.tableau.com) | Grátis |
| Google Colab | Python, se o case pedir | [colab.research.google.com](https://colab.research.google.com) | Nenhuma |
| Claude Code | Diferencial citado na vaga | [claude.ai/code](https://claude.ai/code) | Nenhuma pelo navegador |
| DBeaver | Cliente SQL local, se preferir | [dbeaver.io](https://dbeaver.io) | Grátis |

Passo a passo para o BigQuery Sandbox:

1. Entre em console.cloud.google.com/bigquery com uma conta Google.
2. Aceite os termos e crie um projeto (qualquer nome, por exemplo `treino-growth`).
3. No editor de consultas, cole os scripts do capítulo 7 e clique em Executar.
4. As tabelas aparecem no painel esquerdo dentro do dataset `treino`.
5. O sandbox dá 1 TB de consulta por mês de graça; a base de treino usa menos de 1 GB.

Passo a passo para o Looker Studio:

1. Entre em lookerstudio.google.com e clique em Criar, depois Fonte de dados.
2. Escolha o conector BigQuery, selecione o projeto, o dataset `treino` e a tabela `leads`.
3. Clique em Criar relatório. Adicione um gráfico de série temporal com `data_lead` e um cartão de resultado com contagem de `lead_id`.
4. Monte o painel do capítulo 12.

## 5. Métricas de Growth: fórmulas e benchmarks

Toda análise de aquisição se resume a três perguntas: quanto custou trazer o cliente (CAC), quanto ele devolve (LTV) e em quanto tempo (payback). As outras métricas explicam por que essas três mudaram.

| Etapa | Métrica | Dono do vazamento |
| --- | --- | --- |
| Clique | CTR e CPC | Criativo e mídia |
| Lead | CPL | Landing page |
| Cadastro | Taxa de cadastro | Produto |
| Aprovação | Taxa de aprovação | Risco e crédito |
| **Ativação** | Taxa de ativação, CAC | CRM e logística |

O funil anda da esquerda para a direita; a ativação, em destaque, é a etapa que define o CAC e onde o TikTok perde na base de treino.

| Métrica | Fórmula | Referência de mercado | O que explica quando muda |
| --- | --- | --- | --- |
| CTR | Cliques / Impressões | 1% a 3% em busca; 0,5% a 1,5% em social | Criativo e público |
| CPC | Investimento / Cliques | Varia por leilão | Concorrência e qualidade do anúncio |
| CPL | Investimento / Leads | Depende do canal | Landing page e oferta |
| Taxa de ativação | Ativos / Aprovados | 40% a 60% em 30 dias | Onboarding, entrega da maquininha, CRM |
| CAC | Investimento / Clientes ativos | Deve ficar abaixo de LTV / 3 | Qualquer etapa acima |
| ROAS | Receita / Investimento | Acima de 1 paga a mídia; acima de 3 é bom | Mix de canal e ticket |
| LTV | Receita mensal por cliente / Churn mensal | Depende do take rate e do TPV | Retenção e volume do lojista |
| LTV/CAC | LTV / CAC | Acima de 3 é saudável; abaixo de 1 destrói valor | Tudo junto |
| Payback | CAC / Receita mensal por cliente | Abaixo de 12 meses | Preço e CAC |
| Churn mensal | Clientes perdidos no mês / Clientes no início do mês | 2% a 5% em PMEs | Qualidade do lead e atendimento |

As duas fórmulas que mais aparecem em case:

```latex
CAC = \frac{Investimento}{Clientes\ ativos} = \frac{Investimento}{Leads \times Tx_{cadastro} \times Tx_{aprovacao} \times Tx_{ativacao}}
```

```latex
LTV = \frac{TPV_{mensal} \times Take\ rate}{Churn_{mensal}}
```

Exemplo numérico para ter na ponta da língua: lojista com TPV de R$ 10 mil por mês, take rate de 1,5% e churn de 3% ao mês gera R$ 150 por mês e LTV de R$ 5.000. Com CAC de R$ 1.000, o LTV/CAC é 5 e o payback é de 6,7 meses.

Regras que o sênior fala sem pensar:

- CAC geral é soma do investimento dividida pela soma de ativos, nunca a média dos CACs por canal.
- CAC médio decide o passado; CAC marginal (custo do próximo cliente) decide onde colocar o próximo real.
- Cohort recente ainda não maturou: não compare ativação de 30 dias de um mês que fechou há 10 dias.
- Aprovação de crédito é política de risco, não marketing. Se ela caiu, pergunte ao time de risco antes de culpar o canal.

## 6. SQL do básico às window functions

O case vai exigir cinco coisas: agregar, juntar tabelas sem duplicar, filtrar depois de agregar, comparar linhas vizinhas e rankear dentro de grupos. Tudo abaixo é dialeto BigQuery.

Ordem em que o SQL executa (saber isso resolve 80% das dúvidas de WHERE x HAVING):

1. FROM e JOIN: monta a tabela base.
2. WHERE: filtra linhas.
3. GROUP BY: agrupa.
4. HAVING: filtra grupos.
5. SELECT: calcula as colunas (aqui entram as window functions).
6. QUALIFY: filtra pelo resultado da window function (exclusivo do BigQuery).
7. ORDER BY e LIMIT.

| Recurso | Para quê | Sintaxe |
| --- | --- | --- |
| COUNTIF | Contar com condição sem CASE WHEN | `COUNTIF(ativou)` |
| SAFE\_DIVIDE | Dividir sem erro quando o divisor é zero | `SAFE_DIVIDE(invest, ativos)` |
| DATE\_TRUNC | Agrupar por mês ou semana | `DATE_TRUNC(data, MONTH)` |
| CTE (WITH) | Quebrar a query em blocos legíveis | `WITH inv AS (...), f AS (...) SELECT ...` |
| LAG / LEAD | Pegar o valor da linha anterior ou seguinte | `LAG(cac) OVER (PARTITION BY canal ORDER BY mes)` |
| ROW\_NUMBER | Numerar linhas dentro de um grupo | `ROW_NUMBER() OVER (PARTITION BY lead_id ORDER BY ts DESC)` |
| RANK / DENSE\_RANK | Rankear com empates | `RANK() OVER (PARTITION BY mes ORDER BY cac)` |
| SUM OVER () | Total geral para calcular share | `ativos / SUM(ativos) OVER ()` |
| Média móvel | Suavizar ruído diário | `AVG(x) OVER (ORDER BY data ROWS BETWEEN 6 PRECEDING AND CURRENT ROW)` |
| QUALIFY | Filtrar pelo rank sem subquery | `QUALIFY ROW_NUMBER() OVER (...) = 1` |
| APPROX\_QUANTILES | Mediana e percentis | `APPROX_QUANTILES(x, 100)[OFFSET(50)]` |
| PIVOT | Transformar linhas em colunas | `PIVOT (COUNTIF(ativou) FOR canal IN ('a','b'))` |

Os três erros que derrubam candidato sênior:

| Erro | O que acontece | Como evitar |
| --- | --- | --- |
| Fan-out no JOIN | Juntar investimento diário com leads multiplica linhas e infla o investimento | Agregar cada tabela no seu grain antes do JOIN, em CTEs separadas |
| Média de razões | Fazer AVG(cac) por canal como se fosse o CAC geral | Somar numerador e denominador e dividir no fim |
| Divisão inteira ou por zero | `5/10` dá 0 em alguns bancos; divisor zero quebra a query | Usar SAFE\_DIVIDE e multiplicar por 1.0 em bancos sem ela |

Diferenças de dialeto, caso o case use outro banco:

| BigQuery | PostgreSQL / Redshift | SQL Server |
| --- | --- | --- |
| `COUNTIF(x)` | `COUNT(*) FILTER (WHERE x)` ou `SUM(CASE WHEN x THEN 1 ELSE 0 END)` | `SUM(CASE WHEN x THEN 1 ELSE 0 END)` |
| `SAFE_DIVIDE(a, b)` | `a / NULLIF(b, 0)` | `a / NULLIF(b, 0)` |
| `DATE_TRUNC(d, MONTH)` | `DATE_TRUNC('month', d)` | `DATEFROMPARTS(YEAR(d), MONTH(d), 1)` |
| `QUALIFY` | Subquery com WHERE | Subquery com WHERE |

## 7. Base de treino

Quatro tabelas simulam a aquisição digital da Stone no primeiro semestre de 2026. Cole cada bloco no BigQuery e clique em Executar, na ordem.

| Tabela | Grain (uma linha por) | Colunas principais |
| --- | --- | --- |
| `treino.investimento` | Dia e canal | investimento, impressoes, cliques |
| `treino.leads` | Lead | data\_lead, canal, variante\_lp, cadastrou, aprovado, ativou, tpv\_90d |
| `treino.touchpoints` | Ponto de contato de um lead | lead\_id, canal, ts |
| `treino.clientes` | Cliente ativo | data\_ativacao, data\_churn, tpv\_90d |

Bloco 1: schema e investimento.

```sql
CREATE SCHEMA IF NOT EXISTS treino;

CREATE OR REPLACE TABLE treino.investimento AS
SELECT d AS data, canal,
  ROUND(1000 + RAND()*4000, 2) AS investimento,
  CAST(20000 + RAND()*80000 AS INT64) AS impressoes,
  CAST(500 + RAND()*2500 AS INT64) AS cliques
FROM UNNEST(GENERATE_DATE_ARRAY('2026-01-01','2026-06-30')) d,
     UNNEST(['google_ads','meta_ads','tiktok','afiliados']) canal;
```

Bloco 2: leads e funil. A variante B da landing page converte um pouco melhor e o TikTok ativa menos, de propósito, para os exercícios terem o que achar.

```sql
CREATE OR REPLACE TABLE treino.leads AS
WITH base AS (
  SELECT GENERATE_UUID() AS lead_id,
    DATE_ADD(DATE '2026-01-01', INTERVAL CAST(FLOOR(RAND()*181) AS INT64) DAY) AS data_lead,
    ['google_ads','meta_ads','tiktok','afiliados'][OFFSET(CAST(FLOOR(RAND()*4) AS INT64))] AS canal,
    IF(RAND() < 0.5, 'A', 'B') AS variante_lp,
    RAND() r1, RAND() r2, RAND() r3, RAND() r4
  FROM UNNEST(GENERATE_ARRAY(1, 40000))
), f AS (
  SELECT *, r1 < IF(variante_lp='B', 0.63, 0.60) AS cadastrou FROM base
), g AS (
  SELECT *, cadastrou AND r2 < 0.70 AS aprovado FROM f
)
SELECT lead_id, data_lead, canal, variante_lp, cadastrou, aprovado,
  aprovado AND r3 < CASE canal WHEN 'google_ads' THEN 0.55 WHEN 'meta_ads' THEN 0.40
                               WHEN 'tiktok' THEN 0.25 ELSE 0.45 END AS ativou,
  IF(aprovado AND r3 < 0.55, ROUND(r4*30000, 2), 0) AS tpv_90d
FROM g;
```

Bloco 3: pontos de contato e clientes.

```sql
CREATE OR REPLACE TABLE treino.touchpoints AS
SELECT lead_id, canal_tp AS canal,
  TIMESTAMP_SUB(TIMESTAMP(data_lead), INTERVAL CAST(FLOOR(RAND()*72) AS INT64) HOUR) AS ts
FROM treino.leads, UNNEST(['google_ads','meta_ads','tiktok','organico']) canal_tp
WHERE RAND() < 0.5;

CREATE OR REPLACE TABLE treino.clientes AS
SELECT lead_id, canal, data_lead AS data_ativacao,
  IF(RAND() < 0.3, DATE_ADD(data_lead, INTERVAL CAST(FLOOR(RAND()*120) AS INT64) DAY), NULL) AS data_churn,
  tpv_90d
FROM treino.leads WHERE ativou;
```

Teste rápido de que tudo funcionou:

```sql
SELECT 'investimento' t, COUNT(*) n FROM treino.investimento
UNION ALL SELECT 'leads', COUNT(*) FROM treino.leads
UNION ALL SELECT 'touchpoints', COUNT(*) FROM treino.touchpoints
UNION ALL SELECT 'clientes', COUNT(*) FROM treino.clientes;
```

Esperado: 724 linhas de investimento, 40.000 leads, cerca de 80.000 touchpoints e cerca de 7.000 clientes. Os números variam porque a base usa RAND().

## 8. Exercícios de SQL com gabarito

Vinte exercícios na ordem em que um case real costuma pedir: validar, medir o funil, calcular custo, olhar tendência, retenção e atribuição. Tente cada um por 10 minutos antes de abrir o gabarito e leia a nota de sênior ao final de cada um.

### Bloco A: validar a base

**1. Valide a tabela de leads antes de analisar.** Linhas, IDs únicos, nulos, período e inconsistências lógicas.

```sql
SELECT COUNT(*) linhas, COUNT(DISTINCT lead_id) ids_unicos,
  COUNTIF(canal IS NULL) canal_nulo,
  MIN(data_lead) inicio, MAX(data_lead) fim,
  COUNTIF(ativou AND NOT aprovado) inconsistentes
FROM treino.leads;
```

Nota de sênior: falar em voz alta "linhas igual a IDs únicos, zero nulos, período fechado, zero ativados sem aprovação; posso seguir".

**2. Confirme que investimento tem uma linha por dia e canal.**

```sql
SELECT data, canal, COUNT(*) n
FROM treino.investimento
GROUP BY 1, 2
HAVING n > 1;
```

Nota de sênior: resultado vazio significa grain correto. Se vier linha, somar antes de dar JOIN.

### Bloco B: funil e custo

**3. Funil por canal com taxa de conversão em cada etapa.**

```sql
SELECT canal, COUNT(*) leads, COUNTIF(cadastrou) cad,
  COUNTIF(aprovado) aprov, COUNTIF(ativou) ativos,
  ROUND(SAFE_DIVIDE(COUNTIF(cadastrou), COUNT(*))*100, 1) pct_lead_cad,
  ROUND(SAFE_DIVIDE(COUNTIF(aprovado), COUNTIF(cadastrou))*100, 1) pct_cad_aprov,
  ROUND(SAFE_DIVIDE(COUNTIF(ativou), COUNTIF(aprovado))*100, 1) pct_aprov_ativ
FROM treino.leads
GROUP BY canal
ORDER BY ativos DESC;
```

Nota de sênior: o TikTok perde na ativação, não na geração de leads. Dizer isso já direciona a recomendação.

**4. CPL, CAC e ROAS por canal.** Take rate de 1,5% como premissa.

```sql
WITH inv AS (
  SELECT canal, SUM(investimento) invest FROM treino.investimento GROUP BY canal),
f AS (
  SELECT canal, COUNT(*) leads, COUNTIF(ativou) ativos, SUM(tpv_90d) tpv
  FROM treino.leads GROUP BY canal)
SELECT canal, invest, leads, ativos,
  ROUND(SAFE_DIVIDE(invest, leads), 2) cpl,
  ROUND(SAFE_DIVIDE(invest, ativos), 2) cac,
  ROUND(SAFE_DIVIDE(tpv * 0.015, invest), 2) roas
FROM inv JOIN f USING (canal)
ORDER BY cac;
```

Nota de sênior: agregar antes do JOIN evita fan-out. Dizer a premissa do take rate em voz alta.

**5. CTR, CPC e conversão de clique para lead.**

```sql
WITH inv AS (
  SELECT canal, SUM(investimento) inv, SUM(impressoes) imp, SUM(cliques) cli
  FROM treino.investimento GROUP BY 1),
l AS (SELECT canal, COUNT(*) leads FROM treino.leads GROUP BY 1)
SELECT canal,
  ROUND(SAFE_DIVIDE(cli, imp)*100, 2) ctr_pct,
  ROUND(SAFE_DIVIDE(inv, cli), 2) cpc,
  ROUND(SAFE_DIVIDE(leads, cli)*100, 2) conv_clique_lead_pct
FROM inv JOIN l USING (canal);
```

Nota de sênior: CTR baixo é criativo; conversão clique para lead baixa é landing page. Separar os dois evita culpar o canal errado.

**6. Share de cada canal no total de ativos.**

```sql
SELECT canal, COUNTIF(ativou) ativos,
  ROUND(COUNTIF(ativou) / SUM(COUNTIF(ativou)) OVER () * 100, 1) share_pct
FROM treino.leads
GROUP BY canal
ORDER BY ativos DESC;
```

**7. Canais com CAC acima do CAC geral.**

```sql
WITH i AS (SELECT canal, SUM(investimento) inv FROM treino.investimento GROUP BY 1),
l AS (SELECT canal, COUNTIF(ativou) ativos FROM treino.leads GROUP BY 1),
c AS (SELECT canal, inv, ativos FROM i JOIN l USING (canal))
SELECT canal, ROUND(inv / ativos, 2) cac,
  ROUND(SUM(inv) OVER () / SUM(ativos) OVER (), 2) cac_geral
FROM c
QUALIFY cac > cac_geral;
```

Nota de sênior: CAC geral é soma dividida por soma, nunca AVG dos CACs.

### Bloco C: tendência

**8. Ativos por mês com variação MoM.**

```sql
WITH m AS (
  SELECT DATE_TRUNC(data_lead, MONTH) mes, COUNTIF(ativou) ativos
  FROM treino.leads GROUP BY mes)
SELECT mes, ativos,
  LAG(ativos) OVER (ORDER BY mes) mes_ant,
  ROUND(SAFE_DIVIDE(ativos - LAG(ativos) OVER (ORDER BY mes),
                    LAG(ativos) OVER (ORDER BY mes))*100, 1) var_pct
FROM m ORDER BY mes;
```

**9. CAC mensal por canal com variação MoM dentro de cada canal.**

```sql
WITH inv AS (
  SELECT DATE_TRUNC(data, MONTH) mes, canal, SUM(investimento) inv
  FROM treino.investimento GROUP BY 1, 2),
a AS (
  SELECT DATE_TRUNC(data_lead, MONTH) mes, canal, COUNTIF(ativou) ativos
  FROM treino.leads GROUP BY 1, 2),
c AS (SELECT mes, canal, SAFE_DIVIDE(inv, ativos) cac FROM inv JOIN a USING (mes, canal))
SELECT mes, canal, ROUND(cac, 2) cac,
  ROUND(SAFE_DIVIDE(cac - LAG(cac) OVER (PARTITION BY canal ORDER BY mes),
                    LAG(cac) OVER (PARTITION BY canal ORDER BY mes))*100, 1) var_mom_pct
FROM c ORDER BY canal, mes;
```

Nota de sênior: PARTITION BY canal é o que impede comparar junho do Google com maio do Meta.

**10. Média móvel de 7 dias de leads.**

```sql
WITH d AS (SELECT data_lead, COUNT(*) leads FROM treino.leads GROUP BY 1)
SELECT data_lead, leads,
  ROUND(AVG(leads) OVER (ORDER BY data_lead ROWS BETWEEN 6 PRECEDING AND CURRENT ROW), 1) mm7
FROM d ORDER BY data_lead;
```

Nota de sênior: média móvel tira o efeito de fim de semana. Em dashboard, mostrar as duas linhas.

**11. Dias atípicos: leads fora de 2 desvios padrão.**

```sql
WITH d AS (SELECT data_lead, COUNT(*) leads FROM treino.leads GROUP BY 1),
s AS (SELECT *, AVG(leads) OVER () media, STDDEV(leads) OVER () dp FROM d)
SELECT data_lead, leads, ROUND((leads - media) / dp, 1) z
FROM s
WHERE ABS(leads - media) > 2 * dp
ORDER BY data_lead;
```

Nota de sênior: anomalia é ponto de partida da investigação, não conclusão. Cruzar com investimento e com mudanças de tracking no mesmo dia.

**12. Melhor dia da semana por canal.**

```sql
WITH d AS (
  SELECT canal, FORMAT_DATE('%A', data_lead) dia_sem, COUNTIF(ativou) ativos
  FROM treino.leads GROUP BY 1, 2)
SELECT * FROM d
QUALIFY RANK() OVER (PARTITION BY canal ORDER BY ativos DESC) = 1;
```

**13. Pivot: ativos por mês com um canal em cada coluna.**

```sql
SELECT * FROM (
  SELECT DATE_TRUNC(data_lead, MONTH) mes, canal, ativou FROM treino.leads)
PIVOT (COUNTIF(ativou) FOR canal IN ('google_ads', 'meta_ads', 'tiktok', 'afiliados'))
ORDER BY mes;
```

### Bloco D: retenção e valor

**14. Churn por mês de ativação.**

```sql
SELECT DATE_TRUNC(data_ativacao, MONTH) mes, COUNT(*) ativados,
  COUNTIF(data_churn IS NOT NULL) churnaram,
  ROUND(COUNTIF(data_churn IS NOT NULL) / COUNT(*) * 100, 1) churn_pct
FROM treino.clientes
GROUP BY 1 ORDER BY 1;
```

**15. Cohort: percentual retido aos 30, 60 e 90 dias.**

```sql
SELECT DATE_TRUNC(data_ativacao, MONTH) cohort, COUNT(*) base,
  ROUND(COUNTIF(data_churn IS NULL OR DATE_DIFF(data_churn, data_ativacao, DAY) > 30) / COUNT(*) * 100, 1) ret_30,
  ROUND(COUNTIF(data_churn IS NULL OR DATE_DIFF(data_churn, data_ativacao, DAY) > 60) / COUNT(*) * 100, 1) ret_60,
  ROUND(COUNTIF(data_churn IS NULL OR DATE_DIFF(data_churn, data_ativacao, DAY) > 90) / COUNT(*) * 100, 1) ret_90
FROM treino.clientes
GROUP BY 1 ORDER BY 1;
```

Nota de sênior: cohorts recentes ainda não completaram 90 dias, então a retenção delas parece melhor do que é. Dizer isso antes que a gestora pergunte.

**16. LTV, CAC e LTV/CAC por canal.** Receita mensal = TPV de 90 dias vezes 1,5% dividido por 3. Churn mensal = churn observado dividido por 4 meses.

```sql
WITH rec AS (
  SELECT canal, COUNT(*) cli,
    SUM(tpv_90d) * 0.015 / 3 rec_mensal,
    COUNTIF(data_churn IS NOT NULL) / COUNT(*) / 4 churn_mensal
  FROM treino.clientes GROUP BY 1),
inv AS (SELECT canal, SUM(investimento) inv FROM treino.investimento GROUP BY 1),
ati AS (SELECT canal, COUNTIF(ativou) ativos FROM treino.leads GROUP BY 1),
cac AS (SELECT canal, inv / ativos cac FROM inv JOIN ati USING (canal))
SELECT canal,
  ROUND(rec_mensal / cli, 2) rec_cliente_mes,
  ROUND((rec_mensal / cli) / churn_mensal, 2) ltv,
  ROUND(cac, 2) cac,
  ROUND(((rec_mensal / cli) / churn_mensal) / cac, 1) ltv_cac,
  ROUND(cac / (rec_mensal / cli), 1) payback_meses
FROM rec JOIN cac USING (canal)
ORDER BY ltv_cac DESC;
```

Nota de sênior: canal com CAC baixo e payback longo pode ser pior do que o contrário. Olhar as duas colunas juntas.

**17. Pareto: que percentual dos clientes gera 80% do TPV.**

```sql
WITH r AS (
  SELECT lead_id, tpv_90d,
    SUM(tpv_90d) OVER (ORDER BY tpv_90d DESC) / SUM(tpv_90d) OVER () acum,
    ROW_NUMBER() OVER (ORDER BY tpv_90d DESC) / COUNT(*) OVER () pct_clientes
  FROM treino.clientes)
SELECT ROUND(MIN(pct_clientes) * 100, 1) pct_clientes_para_80pct_tpv
FROM r WHERE acum >= 0.8;
```

### Bloco E: atribuição e experimento

**18. First click x last click por canal.**

```sql
WITH t AS (
  SELECT lead_id, canal,
    ROW_NUMBER() OVER (PARTITION BY lead_id ORDER BY ts) primeiro,
    ROW_NUMBER() OVER (PARTITION BY lead_id ORDER BY ts DESC) ultimo
  FROM treino.touchpoints)
SELECT canal,
  COUNTIF(primeiro = 1) first_click,
  COUNTIF(ultimo = 1) last_click,
  COUNTIF(primeiro = 1) - COUNTIF(ultimo = 1) diferenca
FROM t GROUP BY canal ORDER BY diferenca DESC;
```

Nota de sênior: canal com first maior que last abre o funil (descoberta). Last maior que first fecha o funil (busca de marca). Nenhum modelo de clique mede incrementalidade.

**19. Atribuição linear: crédito dividido entre os pontos de contato.**

```sql
SELECT canal, ROUND(SUM(1.0 / n), 1) credito
FROM (
  SELECT lead_id, canal, COUNT(*) OVER (PARTITION BY lead_id) n
  FROM treino.touchpoints)
GROUP BY canal ORDER BY credito DESC;
```

**20. Teste A/B da landing page: a variante B converte mais em cadastro?**

```sql
WITH ab AS (
  SELECT variante_lp v, COUNT(*) n, COUNTIF(cadastrou) c
  FROM treino.leads GROUP BY v),
p AS (
  SELECT MAX(IF(v = 'A', n, NULL)) nA, MAX(IF(v = 'A', c, NULL)) cA,
         MAX(IF(v = 'B', n, NULL)) nB, MAX(IF(v = 'B', c, NULL)) cB
  FROM ab)
SELECT ROUND(cA / nA * 100, 2) pA, ROUND(cB / nB * 100, 2) pB,
  ROUND((cB / nB - cA / nA) * 100, 2) lift_pp,
  ROUND((cB / nB - cA / nA) /
    SQRT(((cA + cB) / (nA + nB)) * (1 - (cA + cB) / (nA + nB)) * (1 / nA + 1 / nB)), 2) z
FROM p;
```

Nota de sênior: z acima de 1,96 significa diferença significativa com 95% de confiança. Mesmo assim, checar se B não piorou aprovação ou ativação (métricas de guardrail) antes de recomendar.

Como se auto-avaliar:

| Resultado | Leitura |
| --- | --- |
| Acertou 16 ou mais sem olhar o gabarito | SQL em nível sênior; foque nos capítulos 9 e 14 |
| Acertou 11 a 15 | Refaça os blocos C e E; window functions precisam ficar automáticas |
| Acertou 10 ou menos | Volte ao capítulo 6 e refaça tudo digitando, um bloco por dia |

## 9. Cases de negócio com resposta estruturada

Todo case de growth é uma destas oito perguntas disfarçadas. Responda sempre na mesma estrutura: validar o dado, decompor a métrica, achar a causa, recomendar com número, propor como medir.

**Case 1. "O CAC subiu 25% no mês. Por quê?"**

1. Validar: tracking quebrou? Ativação tem atraso, então o mês atual sempre parece pior.
2. Decompor: CAC = investimento dividido por ativos. Subiu o investimento ou caíram os ativos?
3. Abrir por canal e campanha: um canal puxou ou foi geral?
4. Abrir por etapa: CPC, CTR, lead para cadastro, aprovação, ativação. Cada etapa tem um dono.
5. Fatores externos: sazonalidade, concorrente, mudança de política de crédito.
6. Recomendar: "Pausar a campanha X economiza R$ Y sem perder ativos, porque ela gera lead que não aprova."

**Case 2. "Leads caíram 40% em uma semana."**

1. Bug primeiro: cliques normais e leads zero significa pixel ou formulário quebrado.
2. Orçamento: campanha pausada ou verba esgotada aparece no investimento diário.
3. Leilão: CPC subiu por concorrência ou data comemorativa.
4. Só depois: caiu em todo canal e dispositivo, ou em um só?

Frase pronta: "Antes de culpar o mercado, descarto bug e orçamento. Na maioria das vezes é um dos dois."

**Case 3. "Você tem R$ 100 mil a mais. Onde investe?"**

Resposta: no canal com menor CAC marginal, não menor CAC médio. Canais saturam: cada real a mais compra um cliente mais caro. Subir aos poucos, 20% por vez, medindo o CAC da verba adicional. Parar quando o CAC marginal passar de LTV dividido por 3.

**Case 4. "Mídia quer dobrar o TikTok. Aprova?"**

Não com o dado atual. O TikTok tem CPL baixo e ativação baixa, então o CAC real é alto. Proposta: subir 30% em duas regiões (geo-test), manter as demais como controle, medir ativos incrementais em três semanas. Critério fixado antes: segue se CAC marginal ficar abaixo de LTV dividido por 3.

**Case 5. "A taxa de aprovação caiu. É marketing ou risco?"**

1. Mudou a política de crédito? Perguntar ao time de risco antes de qualquer query.
2. Mudou o mix de canal? Um canal que traz lead pior (CNPJ novo, MEI informal) derruba a aprovação geral mesmo sem ninguem piorar.
3. Abrir aprovação por canal e por segmento do lojista. Se caiu em todos os canais ao mesmo tempo, é política. Se caiu em um canal só, é qualidade de lead.

**Case 6. "Priorize três iniciativas de otimização."**

Usar impacto em reais vezes confiança dividido por esforço. Exemplo de raciocínio:

| Iniciativa | Impacto estimado | Confiança | Esforço | Prioridade |
| --- | --- | --- | --- | --- |
| Realocar 30% do TikTok para Google | Alto, CAC geral cai | Alta, dado histórico | Baixo | 1 |
| Nova landing page para Meta | Médio, conversão de lead | Média, precisa de teste | Médio | 2 |
| Fluxo de CRM para ativação | Alto, ativação de todos os canais | Baixa, depende de outro time | Alto | 3 |

**Case 7. "A gestora quer 30 métricas no dashboard."**

Resposta: uma métrica norte, cinco de topo, funil por etapa e o restante em uma aba de diagnóstico com filtros. Frase pronta: "Painel com 30 números é painel que ninguem lê. Proponho 5 na tela inicial e o detalhe a um clique."

**Case 8. "Last click ou data-driven?"**

Last click é simples e todos entendem, mas dá crédito demais a quem fecha (busca de marca) e de menos a quem abre (social, vídeo). Data-driven redistribui com base em padrões de jornada, mas continua medindo correlação. Para decidir verba, o que vale é incrementalidade: geo-test ou holdout. Recomendar last click para operar o dia a dia e incrementalidade trimestral para decidir o mix.

## 10. Testes A/B e experimentação

Um teste bem desenhado tem a decisão definida antes de começar. Se a gestora pedir "desenhe um teste", responda nesta ordem: hipótese, métrica, guardrails, amostra, duração, critério.

| Elemento | O que é | Exemplo para a Stone |
| --- | --- | --- |
| Hipótese | Mudança esperada, com número | "A landing page B sobe a taxa de cadastro de 60% para 63%" |
| Métrica primária | A única que decide | Taxa de lead para cadastro |
| Guardrails | Métricas que não podem piorar | Taxa de aprovação, taxa de ativação, TPV médio |
| Unidade de aleatorização | Quem recebe A ou B | Lead (ou região, em geo-test) |
| Amostra | Quantos por grupo para ver o efeito | Cerca de 4.300 leads por grupo (fórmula abaixo) |
| Duração | Tempo mínimo | 2 semanas inteiras, para cobrir dias da semana |
| Critério | Regra de decisão fixada antes | "Lança B se lift maior que 2 p.p. com p menor que 0,05 e guardrails estáveis" |

Fórmula rápida de amostra por grupo, com 80% de poder e 95% de confiança:

```latex
n \approx \frac{16 \times p(1-p)}{\Delta^2}
```

Exemplo: p = 0,60 e Δ = 0,03 dá 16 × 0,24 ÷ 0,0009, cerca de 4.270 leads por grupo. Com 300 leads por dia, são 29 dias.

Erros que a gestora vai testar se você conhece:

| Erro | Por que quebra o teste | Como falar |
| --- | --- | --- |
| Parar quando der significante | Olhar todo dia infla o falso positivo | "Fixo a duração antes e só leio no fim" |
| Testar 10 métricas | Alguma vai dar significante por acaso | "Uma métrica primária; o resto é guardrail" |
| Mudar o teste no meio | Mistura populações diferentes | "Mudou? Reinicia o relógio" |
| Ignorar novidade | Efeito das primeiras semanas some | "Comparo a segunda semana com a primeira" |
| Grupos desbalanceados | Diferença já existia antes | "Checo se A e B tinham o mesmo perfil de canal e região" |

Quando não dá para fazer A/B no lead (branding, TV, influenciador), o teste muda de unidade:

| Método | Como funciona | Quando usar |
| --- | --- | --- |
| Geo-test | Liga a campanha em algumas regiões e compara com regiões parecidas | Canal que não permite aleatorizar por pessoa |
| Holdout | Esconde a campanha de 10% do público | Remarketing e CRM |
| Diff-in-diff | Compara a variação do grupo tratado com a do controle | Quando os grupos já eram diferentes antes |
| Marketing mix model | Regressão do resultado contra investimento de cada canal ao longo do tempo | Decidir o mix anual, não a campanha da semana |

## 11. Atribuição e incrementalidade

Atribuição responde "quem leva o crédito pelo lead". Incrementalidade responde "quantos leads não existiriam sem a campanha". São perguntas diferentes, e confundir as duas é o erro mais comum em marketing digital.

| Modelo | Regra | Favorece | Viés |
| --- | --- | --- | --- |
| Last click | 100% para o último ponto de contato | Busca de marca, remarketing | Infla quem fecha, ignora quem abriu |
| First click | 100% para o primeiro | Social, vídeo, display | Infla descoberta, ignora quem converteu |
| Linear | Divide igual entre todos | Jornadas longas | Trata contato inútil igual ao decisivo |
| Time decay | Mais peso para os últimos | Fundo de funil | Parecido com last click, mais suave |
| Position based | 40% primeiro, 40% último, 20% meio | Equilíbrio | Pesos arbitrários |
| Data-driven | Peso aprendido pelas jornadas que converteram x não converteram | Depende dos dados | Ainda mede correlação, não causa |
| Incrementalidade | Compara grupo exposto com grupo não exposto | Nenhum | Caro e lento, mas é o único que mede causa |

Raciocínio que o sênior apresenta no case:

1. Last click para operar o dia a dia, porque é rápido e todos entendem.
2. Comparar first e last por canal (exercício 18) para ver quem abre e quem fecha o funil.
3. Incrementalidade trimestral por geo-test ou holdout para decidir o mix de verba.
4. Busca de marca é o caso clássico: last click dá CAC baixíssimo, mas boa parte desses leads viria de qualquer jeito.

Exemplo numérico para o case: uma campanha mostra 1.000 leads por last click. No holdout, o grupo exposto converteu 2,0% e o não exposto 1,6%. Só 20% dos leads são incrementais, então o CAC real é cinco vezes o CAC reportado.

Frase pronta: "Atribuição distribui crédito; incrementalidade mede causa. Para alocar verba eu uso a segunda e para acompanhar a semana eu uso a primeira."

## 12. Dashboard de aquisição no Looker Studio

Um bom painel de aquisição responde em 10 segundos se o mês está bom ou ruim e em 1 minuto por quê. A estrutura é sempre a mesma: topo com KPIs, meio com funil e tendência, base com abertura por canal.

| Faixa | Conteúdo | Tipo de visual |
| --- | --- | --- |
| Topo | Investimento, Ativos, CAC, ROAS, LTV/CAC, cada um com variação vs mês anterior e vs meta | Cartão de resultado (scorecard) |
| Meio esquerdo | Funil: leads, cadastros, aprovados, ativos com taxa entre etapas | Barras horizontais |
| Meio direito | CAC e ativos por semana com média móvel | Linha com duas séries |
| Base | Canal e campanha: investimento, leads, CAC, ROAS, taxa de ativação | Tabela com barras e formatação condicional |
| Filtros | Período, canal, região, variante de landing page | Controles no topo |

Regras de construção:

- Uma métrica norte em destaque. Para aquisição, ativos ou LTV/CAC.
- Máximo de 5 cartões no topo. O resto vai para uma segunda página de diagnóstico.
- Toda métrica com comparação: vs período anterior e vs meta. Número sem referência não é insight.
- Cores com significado: verde acima da meta, vermelho abaixo, cinza para o resto. Nada decorativo.
- Fonte única: uma tabela tratada no BigQuery (por exemplo `fato_aquisicao_diaria`) com uma linha por dia e canal já com investimento e funil juntos. O Looker só soma; nenhum JOIN no painel.

Tabela tratada que alimenta o painel:

```sql
CREATE OR REPLACE TABLE treino.fato_aquisicao_diaria AS
WITH inv AS (
  SELECT data, canal, SUM(investimento) investimento, SUM(impressoes) impressoes, SUM(cliques) cliques
  FROM treino.investimento GROUP BY 1, 2),
fun AS (
  SELECT data_lead data, canal, COUNT(*) leads, COUNTIF(cadastrou) cadastros,
    COUNTIF(aprovado) aprovados, COUNTIF(ativou) ativos, SUM(tpv_90d) tpv_90d
  FROM treino.leads GROUP BY 1, 2)
SELECT data, canal, investimento, impressoes, cliques,
  leads, cadastros, aprovados, ativos, tpv_90d
FROM inv FULL OUTER JOIN fun USING (data, canal);
```

No Looker Studio, CAC vira um campo calculado `SUM(investimento) / SUM(ativos)`, nunca uma média de CACs diários.

Se a gestora perguntar sobre Power BI ou Tableau, a resposta é a mesma estrutura. No Power BI o campo calculado é uma medida DAX: `CAC = DIVIDE(SUM(fato[investimento]), SUM(fato[ativos]))`.

## 13. Excel e Google Sheets essencial

Se o case vier em CSV, planilha é mais rápida que SQL para as primeiras respostas. Google Sheets é grátis e usa as mesmas fórmulas do Excel; treine nele.

| Função | Para quê no case | Exemplo |
| --- | --- | --- |
| Tabela dinâmica | Funil por canal em 30 segundos | Linhas: canal. Valores: contagem de lead\_id, soma de ativou |
| `SOMASES` (`SUMIFS`) | Investimento por canal e mês | `=SOMASES(C:C; B:B; "google_ads"; A:A; ">="&DATA(2026;3;1))` |
| `CONT.SES` (`COUNTIFS`) | Leads que ativaram por canal | `=CONT.SES(C:C; "tiktok"; G:G; VERDADEIRO)` |
| `PROCX` (`XLOOKUP`) | Trazer investimento para a linha do canal | `=PROCX(A2; Inv!A:A; Inv!B:B; 0)` |
| `SEERRO` (`IFERROR`) | Evitar erro de divisão por zero | `=SEERRO(B2/C2; 0)` |
| `MÉDIASES` | Ticket médio por canal | `=MÉDIASES(H:H; C:C; "meta_ads")` |
| Formatação condicional | Destacar CAC acima da meta | Regra: valor maior que 500, fundo vermelho |
| Gráfico combinado | CAC em linha e ativos em barra | Inserir gráfico, tipo combinado, eixo secundário para CAC |

Sequência de 5 minutos para abrir um CSV e ter o funil:

1. Importar o CSV e congelar a primeira linha.
2. Checar duplicidade: `=CONT.SE(A:A; A2)>1` em uma coluna auxiliar, ou tabela dinâmica contando lead\_id.
3. Inserir tabela dinâmica: canal nas linhas, contagem de lead\_id e soma de cadastrou, aprovado e ativou nos valores.
4. Adicionar colunas de taxa ao lado da dinâmica, dividindo etapa por etapa anterior.
5. Trazer investimento com `PROCX` e calcular CAC.

O que não fazer: digitar números à mão, fórmulas que apontam para células soltas sem nome, e gráfico de pizza para comparar canais.

## 14. Roteiro do case ao vivo

O case ao vivo avalia raciocínio, não velocidade de digitação. A gestora quer ver como você pensa, prioriza e se comunica sob pressão. Siga o roteiro e fale o tempo todo.

| Minuto | Ação | O que falar |
| --- | --- | --- |
| 0 a 5 | Entender e alinhar | "Qual decisão essa análise apoia? Qual a métrica norte? Tem algo que vocês já suspeitam? Posso assumir take rate de 1,5%?" |
| 5 a 10 | Validar a base | "Antes de analisar, checo grain, duplicidade, nulos e período. Linhas igual a IDs, posso seguir." |
| 10 a 25 | Visão geral: funil e CAC por canal | "Vou agregar cada tabela no seu grain e juntar depois, para não duplicar. O funil mostra que..." |
| 25 a 30 | Resumo e escolha | "Até aqui vi X e Y. O maior vazamento é Z. Vou aprofundar nele e deixar o resto como próximo passo." |
| 30 a 45 | Aprofundar um ponto | Abrir por mês, por etapa, por variante. Buscar a causa, não só o sintoma. |
| 45 a 55 | Recomendação | "Recomendo A. Estimo impacto de R$ B por mês. Validaria com o teste C em duas semanas, com critério D." |
| 55 a 60 | Limitações e próximos passos | "O dado não permite E. Com mais tempo eu faria F, G e H." |

Frases para cada situação:

| Situação | Frase |
| --- | --- |
| Travou na sintaxe | "Não lembro a sintaxe exata, mas a lógica é uma window function particionada por lead. Escrevo o pseudocódigo e sigo?" |
| Errou um número | "Me enganei aqui. O correto é X. Corrigindo e seguindo." |
| Não sabe a resposta | "Não sei de cabeça. Meu raciocínio seria A, B e C, e eu validaria assim." |
| Gestora discorda | "Faz sentido. Qual dado te faz pensar isso? Se for X, eu mudaria minha leitura para Y." |
| Pediram algo fora do escopo | "Anoto como próximo passo. Prefiro fechar o diagnóstico principal com qualidade." |
| Dado estranho | "Esse número não bate com o resto. Antes de interpretar, verifico se é problema de dado." |
| Terminou cedo | "Posso usar o tempo restante para testar a robustez da recomendação por região." |

Como apresentar o fechamento, na ordem:

1. Recomendação em uma frase, com impacto em reais.
2. Contexto e premissas (take rate, janela de ativação, período).
3. Três evidências, uma por vez, cada uma com um número.
4. Teste proposto, métrica de sucesso e duração.
5. Riscos, limitações do dado e próximos passos.

Pergunta quase garantida no fim: "O que você faria com mais tempo?" Tenha três respostas prontas: medir incrementalidade com holdout, calcular LTV real por cohort e criar a tabela tratada para automatizar o painel.

O que não fazer: ficar em silêncio por mais de 30 segundos, abrir cinco frentes sem fechar nenhuma, apresentar gráfico sem dizer o que ele prova, e terminar sem recomendação.

## 15. Banco de perguntas da entrevista técnica

A entrevista com a gestora mistura perguntas de SQL, de métricas e de comportamento. Responda em até 1 minuto cada; profundidade vem quando ela pedir.

### SQL

| Pergunta | Resposta curta |
| --- | --- |
| WHERE x HAVING? | WHERE filtra linhas antes de agrupar; HAVING filtra grupos depois de agregar. |
| LEFT JOIN x INNER JOIN? | LEFT mantém tudo da esquerda e preenche com nulo; INNER só o que casa nas duas. |
| ROW\_NUMBER x RANK x DENSE\_RANK? | Em empate: ROW\_NUMBER dá 1, 2, 3; RANK dá 1, 1, 3; DENSE\_RANK dá 1, 1, 2. |
| O que é window function? | Cálculo sobre um conjunto de linhas relacionadas sem colapsar o resultado, como LAG, SUM OVER e ROW\_NUMBER. |
| Como evitar duplicar linhas em JOIN? | Agregar cada tabela no grain certo antes de juntar, e validar contagem antes e depois. |
| Como otimizar uma query lenta no BigQuery? | Filtrar por partição de data, selecionar só as colunas necessárias, evitar SELECT \*, agregar antes do JOIN. |
| Como garantir que o resultado está certo? | Conferir totais com a fonte, contar distintos, checar nulos, comparar com o mês anterior. |
| CTE x subquery? | Mesma coisa em performance na maioria dos bancos; CTE é mais legível e reutilizável. |

### Métricas e negócio

| Pergunta | Resposta curta |
| --- | --- |
| Como calcula CAC? | Investimento dividido por clientes ativos no período, com cuidado na janela de ativação. |
| O que é um bom LTV/CAC? | Acima de 3. Abaixo de 1 destrói valor. Payback abaixo de 12 meses. |
| Correlação x causalidade? | Correlação é andar junto; causalidade se prova com teste ou grupo de controle. |
| Como define sucesso de uma campanha? | CAC marginal abaixo do LTV dividido por 3, com guardrails de aprovação e ativação estáveis. |
| Como lida com atraso de ativação? | Uso cohort por mês de lead e janela fixa de 30 dias; não comparo mês incompleto. |
| Como prioriza pedidos de várias áreas? | Impacto em reais vezes confiança dividido por esforço; alinho com a gestora toda semana. |
| O que faz se o negócio discorda do dado? | Entendo a hipótese deles, busco o dado que a testaria, e trago os dois lados com número. |

### Comportamentais (responder em STAR: Situação, Tarefa, Ação, Resultado)

| Pergunta | O que a gestora quer ouvir |
| --- | --- |
| Conte uma análise que mudou uma decisão | Um número no início, um número no fim, e o que você fez no meio. |
| Conte um erro que cometeu com dados | Como descobriu, como corrigiu, o que mudou no processo para não repetir. |
| Como explica algo técnico para quem não é técnico? | Começa pela decisão, usa analogia, mostra um gráfico só. |
| Por que Stone e por que Growth? | Ligar sua experiência com o problema real: trazer lojista com CAC saudável. |
| Como usa IA no trabalho? | Exemplos concretos: gerar e revisar SQL, documentar tabelas, acelerar análise exploratória, sempre validando o resultado. |

Preparo para a pergunta sobre IA, que a vaga cita como diferencial: tenha um exemplo pronto de como usou Claude Code ou similar para escrever uma query complexa, revisar lógica, criar documentação ou montar um script de validação. Diga também o limite: a IA acelera, mas você valida cada número antes de apresentar.

## 16. Checklist final e dia da entrevista

Marque cada item conforme completar. Chegar ao dia com tudo marcado é o que separa o candidato que "sabe" do candidato que "mostra".

Preparação técnica:

- [ ] Conta no BigQuery Sandbox criada e as 4 tabelas de treino rodando
- [ ] 20 exercícios feitos digitando, com pelo menos 16 acertos sem gabarito
- [ ] Fórmulas de CAC, ROAS, LTV, payback e amostra de A/B decoradas
- [ ] Painel de 5 KPIs montado no Looker Studio sobre a base de treino
- [ ] Tabela dinâmica de funil feita no Sheets a partir de um CSV
- [ ] Os 8 cases do capítulo 9 respondidos em voz alta em até 3 minutos cada

Simulação:

- [ ] Case de 60 minutos cronometrado, falando o tempo todo, pelo menos 2 vezes
- [ ] Gravação em áudio ouvida: cortar silêncios longos e adjetivos sem número
- [ ] Três histórias em formato STAR com número no início e no fim
- [ ] Um exemplo concreto de uso de IA em análise de dados
- [ ] Três respostas para "o que faria com mais tempo"

Dia da entrevista:

- [ ] Testar câmera, microfone e compartilhamento de tela 30 minutos antes
- [ ] BigQuery, Sheets e um bloco de notas já abertos em abas
- [ ] Papel e caneta para rascunhar o funil enquanto fala
- [ ] Perguntas para a gestora prontas (abaixo)

Perguntas para fazer à gestora no fim, que mostram senioridade:

| Pergunta | Por que funciona |
| --- | --- |
| "Qual foi a última decisão de verba que o time de Analytics mudou com dado?" | Mostra que você mede impacto, não entrega |
| "Como vocês medem incrementalidade hoje: last click, MMM ou testes?" | Mostra domínio de atribuição |
| "Qual a maior dor de dado do time hoje: qualidade, latência ou modelagem?" | Mostra que você pensa em infraestrutura analítica |
| "O que diferencia, na prática, um sênior de um pleno no seu time?" | Mostra autoconsciência e dá a resposta que você precisa |

Última regra: na dúvida entre parecer esperto e ser claro, seja claro. Direto ao ponto é um dos cinco valores da Stone.
