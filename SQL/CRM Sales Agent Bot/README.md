# CRM Sales Agent Bot — Views de Suporte

6 views SQL (BigQuery) criadas sobre as tabelas de analytics do bot de vendas, para dar suporte a um painel de CRM.

## Views criadas

| View | O que responde |
|---|---|
| `vw_crm_salesagent_bot_health` | O bot está saudável? Falhas de ferramenta, rotas não identificadas, latência, por dia |
| `vw_crm_salesagent_funil_vendas` | Funil: sessão → classificação → recomendação → carrinho → compra, com taxas de conversão entre etapas |
| `vw_crm_salesagent_mensagens` | Volume de mensagens por sessão, duração e etapas de conversa percorridas |
| `vw_crm_salesagent_sessoes_usuarios` | Recorrência e engajamento por usuário (nº de sessões, dias de relacionamento) |
| `vw_crm_salesagent_performance_bot` | Performance técnica: taxa de sucesso e latência (p50/p95) por ferramenta |
| `vw_crm_salesagent_compra_conversao` | Detalhe de carrinho, conversão e produtos recomendados por sessão |

## Origem dos dados

Dataset `databox.marketing_comum`, tabelas:
- `vw_analytics_salesagent_messages`
- `vw_analytics_salesagent_route_classification`
- `vw_analytics_salesagent_tool_execution`
- `vw_analytics_salesagent_produtos_recomendado`
- `vw_analytics_salesagent_conversation_path`
- `vw_analytics_salesagent_cart_conversion`

## ⚠️ Importante

Os nomes de coluna usados no SQL foram **estimados** a partir do nome de cada tabela (schema real não foi validado). Antes de rodar em produção:

1. Rode `SELECT * FROM \`databox.marketing_comum.<tabela>\` LIMIT 0` para cada tabela e confira os nomes reais.
2. Ajuste os trechos marcados com `-- ajustar` em [`crm_salesagent_views.sql`](./crm_salesagent_views.sql) (nomes de coluna de status, flags booleanas, ordem de etapas, etc).
