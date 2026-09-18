-- =============================================================================
-- CRM Sales Agent Bot — Views de suporte
-- =============================================================================
-- Dataset origem: databox.marketing_comum
-- Tabelas base:
--   vw_analytics_salesagent_messages
--   vw_analytics_salesagent_route_classification
--   vw_analytics_salesagent_tool_execution
--   vw_analytics_salesagent_produtos_recomendado
--   vw_analytics_salesagent_conversation_path
--   vw_analytics_salesagent_cart_conversion
--
-- ATENÇÃO: os nomes de coluna abaixo são ESTIMADOS a partir do nome de cada
-- tabela (schema real não foi fornecido). Rode:
--   SELECT * FROM `databox.marketing_comum.<tabela>` LIMIT 0
-- e ajuste os nomes marcados com comentário "-- ajustar" antes de rodar em produção.
--
-- Convenção assumida por tabela:
--   messages:               session_id, user_id, message_id, role, message_text, created_at
--   route_classification:   session_id, message_id, route, confidence_score, created_at
--   tool_execution:         session_id, message_id, tool_name, status, latency_ms, created_at
--   produtos_recomendado:   session_id, message_id, product_id, product_name, created_at
--   conversation_path:      session_id, step_order, step_name, created_at
--   cart_conversion:        session_id, user_id, cart_id, cart_value, converted, converted_at, created_at
-- =============================================================================


-- -----------------------------------------------------------------------------
-- 1) SAÚDE DO BOT — erros, falhas de ferramentas e classificação por dia
-- -----------------------------------------------------------------------------
CREATE OR REPLACE VIEW `databox.marketing_comum.vw_crm_salesagent_bot_health` AS
WITH msgs AS (
  SELECT
    DATE(created_at) AS dia,
    session_id,
    COUNT(*) AS qtd_mensagens
  FROM `databox.marketing_comum.vw_analytics_salesagent_messages`
  GROUP BY dia, session_id
),
tools AS (
  SELECT
    DATE(created_at) AS dia,
    COUNT(*) AS qtd_execucoes_ferramenta,
    COUNTIF(status = 'error') AS qtd_falhas_ferramenta,   -- ajustar: valor de "status" para falha
    SAFE_DIVIDE(COUNTIF(status = 'error'), COUNT(*)) AS taxa_falha_ferramenta,
    AVG(latency_ms) AS latencia_media_ms
  FROM `databox.marketing_comum.vw_analytics_salesagent_tool_execution`
  GROUP BY dia
),
rotas AS (
  SELECT
    DATE(created_at) AS dia,
    COUNT(*) AS qtd_classificacoes,
    COUNTIF(route IS NULL OR route = 'fallback') AS qtd_rota_nao_identificada, -- ajustar: valor de fallback
    AVG(confidence_score) AS confianca_media
  FROM `databox.marketing_comum.vw_analytics_salesagent_route_classification`
  GROUP BY dia
)
SELECT
  COALESCE(m.dia, t.dia, r.dia) AS dia,
  COUNT(DISTINCT m.session_id) AS sessoes_ativas,
  SUM(m.qtd_mensagens) AS total_mensagens,
  ANY_VALUE(t.qtd_execucoes_ferramenta) AS execucoes_ferramenta,
  ANY_VALUE(t.qtd_falhas_ferramenta) AS falhas_ferramenta,
  ANY_VALUE(t.taxa_falha_ferramenta) AS taxa_falha_ferramenta,
  ANY_VALUE(t.latencia_media_ms) AS latencia_media_ms,
  ANY_VALUE(r.qtd_classificacoes) AS classificacoes_rota,
  ANY_VALUE(r.qtd_rota_nao_identificada) AS rotas_nao_identificadas,
  ANY_VALUE(r.confianca_media) AS confianca_media_rota
FROM msgs m
FULL OUTER JOIN tools t ON m.dia = t.dia
FULL OUTER JOIN rotas r ON COALESCE(m.dia, t.dia) = r.dia
GROUP BY dia
ORDER BY dia;


-- -----------------------------------------------------------------------------
-- 2) FUNIL DE VENDAS — sessão -> classificação -> recomendação -> carrinho -> compra
-- -----------------------------------------------------------------------------
CREATE OR REPLACE VIEW `databox.marketing_comum.vw_crm_salesagent_funil_vendas` AS
WITH sessoes AS (
  SELECT DISTINCT session_id, user_id, DATE(created_at) AS dia
  FROM `databox.marketing_comum.vw_analytics_salesagent_messages`
),
classificadas AS (
  SELECT DISTINCT session_id
  FROM `databox.marketing_comum.vw_analytics_salesagent_route_classification`
),
recomendadas AS (
  SELECT DISTINCT session_id
  FROM `databox.marketing_comum.vw_analytics_salesagent_produtos_recomendado`
),
carrinho AS (
  SELECT DISTINCT session_id
  FROM `databox.marketing_comum.vw_analytics_salesagent_cart_conversion`
),
convertidas AS (
  SELECT DISTINCT session_id
  FROM `databox.marketing_comum.vw_analytics_salesagent_cart_conversion`
  WHERE converted = TRUE   -- ajustar: nome/tipo real da flag de conversão
)
SELECT
  s.dia,
  COUNT(DISTINCT s.session_id) AS sessoes_totais,
  COUNT(DISTINCT c.session_id) AS sessoes_classificadas,
  COUNT(DISTINCT p.session_id) AS sessoes_com_recomendacao,
  COUNT(DISTINCT k.session_id) AS sessoes_com_carrinho,
  COUNT(DISTINCT v.session_id) AS sessoes_convertidas,
  SAFE_DIVIDE(COUNT(DISTINCT p.session_id), COUNT(DISTINCT s.session_id)) AS taxa_sessao_para_recomendacao,
  SAFE_DIVIDE(COUNT(DISTINCT k.session_id), COUNT(DISTINCT p.session_id)) AS taxa_recomendacao_para_carrinho,
  SAFE_DIVIDE(COUNT(DISTINCT v.session_id), COUNT(DISTINCT k.session_id)) AS taxa_carrinho_para_compra,
  SAFE_DIVIDE(COUNT(DISTINCT v.session_id), COUNT(DISTINCT s.session_id)) AS taxa_sessao_para_compra
FROM sessoes s
LEFT JOIN classificadas c ON s.session_id = c.session_id
LEFT JOIN recomendadas p ON s.session_id = p.session_id
LEFT JOIN carrinho k ON s.session_id = k.session_id
LEFT JOIN convertidas v ON s.session_id = v.session_id
GROUP BY s.dia
ORDER BY s.dia;


-- -----------------------------------------------------------------------------
-- 3) MENSAGENS — volume, papel (user/bot) e caminho de conversa
-- -----------------------------------------------------------------------------
CREATE OR REPLACE VIEW `databox.marketing_comum.vw_crm_salesagent_mensagens` AS
SELECT
  DATE(m.created_at) AS dia,
  m.session_id,
  m.user_id,
  COUNT(*) AS total_mensagens,
  COUNTIF(m.role = 'user') AS mensagens_usuario,     -- ajustar: valores reais de "role"
  COUNTIF(m.role = 'assistant') AS mensagens_bot,
  MIN(m.created_at) AS primeira_mensagem,
  MAX(m.created_at) AS ultima_mensagem,
  TIMESTAMP_DIFF(MAX(m.created_at), MIN(m.created_at), SECOND) AS duracao_sessao_segundos,
  MAX(cp.step_order) AS ultimo_passo_conversa,        -- ajustar: nome real da coluna de ordem
  ARRAY_AGG(DISTINCT cp.step_name IGNORE NULLS ORDER BY cp.step_name) AS etapas_percorridas
FROM `databox.marketing_comum.vw_analytics_salesagent_messages` m
LEFT JOIN `databox.marketing_comum.vw_analytics_salesagent_conversation_path` cp
  ON m.session_id = cp.session_id
GROUP BY dia, m.session_id, m.user_id
ORDER BY dia DESC;


-- -----------------------------------------------------------------------------
-- 4) SESSÕES E USUÁRIOS — visão de recorrência e engajamento
-- -----------------------------------------------------------------------------
CREATE OR REPLACE VIEW `databox.marketing_comum.vw_crm_salesagent_sessoes_usuarios` AS
SELECT
  user_id,
  COUNT(DISTINCT session_id) AS total_sessoes,
  MIN(created_at) AS primeira_interacao,
  MAX(created_at) AS ultima_interacao,
  DATE_DIFF(DATE(MAX(created_at)), DATE(MIN(created_at)), DAY) AS dias_de_relacionamento,
  COUNT(*) AS total_mensagens_enviadas
FROM `databox.marketing_comum.vw_analytics_salesagent_messages`
GROUP BY user_id
ORDER BY total_sessoes DESC;


-- -----------------------------------------------------------------------------
-- 5) PERFORMANCE DO BOT — latência e sucesso das ferramentas por tipo
-- -----------------------------------------------------------------------------
CREATE OR REPLACE VIEW `databox.marketing_comum.vw_crm_salesagent_performance_bot` AS
SELECT
  DATE(created_at) AS dia,
  tool_name,
  COUNT(*) AS qtd_execucoes,
  COUNTIF(status = 'success') AS qtd_sucesso,   -- ajustar: valor real de sucesso
  COUNTIF(status = 'error') AS qtd_erro,        -- ajustar: valor real de erro
  SAFE_DIVIDE(COUNTIF(status = 'success'), COUNT(*)) AS taxa_sucesso,
  AVG(latency_ms) AS latencia_media_ms,
  APPROX_QUANTILES(latency_ms, 100)[OFFSET(50)] AS latencia_p50_ms,
  APPROX_QUANTILES(latency_ms, 100)[OFFSET(95)] AS latencia_p95_ms
FROM `databox.marketing_comum.vw_analytics_salesagent_tool_execution`
GROUP BY dia, tool_name
ORDER BY dia DESC, qtd_execucoes DESC;


-- -----------------------------------------------------------------------------
-- 6) COMPRA E CONVERSÃO — carrinho, produtos recomendados e receita
-- -----------------------------------------------------------------------------
CREATE OR REPLACE VIEW `databox.marketing_comum.vw_crm_salesagent_compra_conversao` AS
SELECT
  DATE(cc.created_at) AS dia,
  cc.session_id,
  cc.user_id,
  cc.cart_id,
  cc.cart_value,
  cc.converted,                                 -- ajustar: tipo/nome real
  cc.converted_at,
  COUNT(DISTINCT pr.product_id) AS produtos_recomendados_na_sessao,
  ARRAY_AGG(DISTINCT pr.product_name IGNORE NULLS) AS produtos_recomendados
FROM `databox.marketing_comum.vw_analytics_salesagent_cart_conversion` cc
LEFT JOIN `databox.marketing_comum.vw_analytics_salesagent_produtos_recomendado` pr
  ON cc.session_id = pr.session_id
GROUP BY dia, cc.session_id, cc.user_id, cc.cart_id, cc.cart_value, cc.converted, cc.converted_at
ORDER BY dia DESC;
