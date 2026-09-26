# 🧠 Engenharia de Prompt — Do Zero ao Avançado (2026)

> Engenharia de prompt = a técnica de escrever instruções para uma IA (ChatGPT, Claude, Gemini) de forma clara e estruturada, para conseguir a resposta certa de primeira, sem "adivinhação".

Guia com **104 tópicos** organizados em 3 níveis. Cada linha tem: o tópico, o que significa (sem jargão solto) e um exemplo pronto pra copiar.

---

## 📗 Nível Iniciante (fundamentos)

| # | Tópico | O que é | Exemplo |
|---|--------|---------|---------|
| 1 | Engenharia de prompt | Escrever instruções pra IA responder melhor | — |
| 2 | Zero-shot prompting | Pedir direto, sem exemplo nenhum | "Traduza para inglês: bom dia" |
| 3 | One-shot prompting | Dar 1 exemplo antes de pedir a tarefa | "Ex: casa→house. Traduza: carro" |
| 4 | Few-shot prompting | Dar 2 a 5 exemplos pra fixar o padrão | 3 exemplos de tom formal antes do pedido |
| 5 | Anatomia do prompt | Instrução + contexto + exemplo + formato | "Resuma [contexto] em 3 tópicos" |
| 6 | Clareza e especificidade | Quanto mais específico, menos erro | Trocar "fale sobre vendas" por "liste 3 causas da queda de vendas em jul/2026" |
| 7 | Role prompting (persona) | Dizer qual "papel" a IA deve assumir | "Aja como analista de dados sênior" |
| 8 | Formato de saída | Definir como a resposta deve vir | "Responda em tabela markdown" |
| 9 | Delimitadores | Marcar onde começa/termina um bloco de texto | Usar `"""texto"""` ou `<contexto>...</contexto>` |
| 10 | Instrução positiva vs negativa | Dizer o que fazer é mais eficaz que o que não fazer | "Use frases curtas" em vez de "não use frases longas" |
| 11 | Temperature | Parâmetro que controla criatividade (0=preciso, 1=criativo) | Temperature 0 para cálculo, 0.8 para brainstorm |
| 12 | Tokens | Pedaços de texto que a IA processa (~4 letras = 1 token) | "Olá mundo" ≈ 3 tokens |
| 13 | Janela de contexto | Quanto texto a IA "enxerga" de uma vez | Modelos atuais leem de 128k a 1M+ tokens |
| 14 | System prompt vs user prompt | Regra fixa da conversa vs pergunta pontual | System: "responda sempre em PT-BR" |
| 15 | Iteração de prompt | Testar, ver o erro, ajustar, testar de novo | Ciclo: escrever → rodar → refinar |
| 16 | Exemplos de entrada/saída | Mostrar o par "isso entra → isso sai" | Input: nota fiscal → Output: JSON |
| 17 | Pergunta aberta vs fechada | Aberta gera texto livre; fechada gera resposta objetiva | "Sim/não" vs "explique" |
| 18 | Definir público-alvo | Dizer pra quem é o texto muda o nível de linguagem | "Explique como se eu tivesse 10 anos" |
| 19 | Definir tom e estilo | Formal, informal, técnico, comercial | "Tom consultivo, sem gírias" |
| 20 | Checklist no prompt | Listar critérios que a resposta precisa cumprir | "Inclua: causa, impacto, solução" |
| 21 | Evitar ambiguidade | Frases com dupla interpretação confundem a IA | Trocar "analise isso" por "analise a coluna Vendas do CSV" |
| 22 | Prompt de esclarecimento | Pedir pra IA perguntar antes de responder | "Se faltar informação, me pergunte antes" |
| 23 | Prompt de resumo | Pedir síntese de um texto grande | "Resuma em 5 bullets" |
| 24 | Prompt de tradução | Converter idioma mantendo o sentido | "Traduza mantendo o tom formal" |
| 25 | Prompt de classificação | Rotular um texto em categorias | "Classifique como Positivo/Negativo/Neutro" |
| 26 | Prompt de extração | Puxar dados específicos de um texto | "Extraia nome, data e valor" |
| 27 | Templates com variáveis | Prompt reutilizável com campos que trocam | "Escreva um e-mail para {{cliente}} sobre {{assunto}}" |
| 28 | Passo a passo simples | Numerar as etapas que a IA deve seguir | "1) Leia 2) Resuma 3) Sugira ação" |
| 29 | Markdown no prompt | Usar `#`, `-`, `**negrito**` pra organizar | Listas e títulos deixam a instrução mais clara |
| 30 | Restrição de tamanho | Limitar palavras/linhas da resposta | "Em até 100 palavras" |
| 31 | Permitir incerteza | Deixar a IA dizer "não sei" em vez de inventar | "Se não tiver certeza, diga que não sabe" |
| 32 | Prompt negativo | Dizer o que evitar na resposta | "Não use jargão técnico" |
| 33 | Separação visual de seções | Dividir o prompt em blocos (contexto, tarefa, formato) | Facilita prompts longos |
| 34 | Testar em vários modelos | O mesmo prompt reage diferente em cada IA | Testar em GPT, Claude e Gemini |
| 35 | Biblioteca pessoal de prompts | Guardar os prompts que funcionaram bem | Arquivo/planilha com prompts testados |

---

## 📘 Nível Intermediário (técnicas que aumentam muito a precisão)

| # | Tópico | O que é | Exemplo |
|---|--------|---------|---------|
| 36 | Chain-of-Thought (CoT) | Pedir raciocínio passo a passo antes da resposta final | "Pense passo a passo antes de responder" |
| 37 | Few-shot balanceado | Exemplos variados, cobrindo casos difíceis | Incluir 1 exemplo de exceção/erro comum |
| 38 | Tags XML no prompt | Marcar seções com `<tag>` (funciona muito bem no Claude) | `<contexto>...</contexto><tarefa>...</tarefa>` |
| 39 | Prompt chaining | Encadear prompts: saída de um vira entrada do próximo | Prompt 1 resume → Prompt 2 traduz o resumo |
| 40 | Decomposição de tarefas | Quebrar uma tarefa grande em subtarefas menores | "Primeiro extraia os dados, depois calcule a média" |
| 41 | Self-consistency | Gerar várias respostas e ficar com a mais repetida | Rodar 3x e comparar resultados |
| 42 | ReAct (Reason + Act) | IA alterna entre "pensar" e "usar uma ferramenta" | Pesquisar na web → analisar → responder |
| 43 | Self-check / autocrítica | Pedir pra IA revisar a própria resposta | "Revise sua resposta e aponte erros" |
| 44 | Framework CO-STAR | Context, Objective, Style, Tone, Audience, Response | Estrutura fixa pra prompts de marketing/copy |
| 45 | Framework RTF / RISEN / TAG | Role-Task-Format e variações prontas | "Role: consultor. Task: analisar. Format: tabela" |
| 46 | System prompt avançado | Regras globais de comportamento do agente | "Nunca invente dados, sempre cite a fonte" |
| 47 | RAG (Retrieval-Augmented Generation) | IA busca dados reais antes de responder, em vez de "chutar" | Buscar no PDF da empresa antes de responder |
| 48 | Prompt com contexto de documento | Colar um documento e pedir análise sobre ele | "Com base no relatório abaixo, responda..." |
| 49 | Function calling / tool use | IA decide chamar uma função/API pra resolver a tarefa | IA chama uma API de cotação de dólar |
| 50 | Structured output (JSON Schema) | Forçar a resposta num formato de dados fixo | Definir schema `{"nome": str, "valor": float}` |
| 51 | Grammars / regex de saída | Restringir a resposta a um padrão exato | Só aceitar `SIM` ou `NÃO` |
| 52 | Reflection (auto-correção) | IA gera, critica e reescreve a própria resposta | "Gere, depois critique, depois melhore" |
| 53 | Critique-and-refine | Ciclo formal de crítica + reescrita com critérios | "Avalie de 1 a 10 e corrija até chegar em 9" |
| 54 | Meta-prompting | Pedir pra IA melhorar o próprio prompt | "Reescreva este prompt para ficar mais claro" |
| 55 | Prompt para geração de código com teste | Pedir código + os testes que provam que funciona | "Gere a função e 3 testes unitários" |
| 56 | Prompt de debugging guiado | Dar o erro e pedir diagnóstico estruturado | "Aqui está o erro, explique a causa raiz" |
| 57 | Prompt tuning vs fine-tuning | Ajustar via prompt (rápido) vs treinar o modelo (caro) | Prompt tuning resolve 90% dos casos |
| 58 | Few-shot dinâmico | Escolher os exemplos mais parecidos com a pergunta atual | Buscar os 3 exemplos mais similares no banco |
| 59 | Prompt caching | Reaproveitar um contexto fixo repetido pra economizar custo | Cachear o system prompt e o manual da empresa |
| 60 | Gestão da janela de contexto | Decidir o que entra no limite de tokens disponível | Priorizar dados mais recentes/relevantes |
| 61 | Sumarização hierárquica | Resumir por partes e depois resumir os resumos | Resumir cada capítulo, depois resumir o livro |
| 62 | Prompt multi-turno | Conversa com memória do que já foi dito | Manter contexto entre pergunta 1 e pergunta 5 |
| 63 | Temperature por tarefa | Ajustar criatividade conforme o objetivo | 0 para SQL, 0.7 para ideias de campanha |
| 64 | Avaliação de prompt (LLM-as-judge) | Usar uma IA pra dar nota na resposta de outra | "Avalie esta resposta de 0 a 10 quanto à clareza" |
| 65 | A/B testing de prompts | Testar 2 versões e medir qual performa melhor | Comparar taxa de acerto do Prompt A vs B |
| 66 | Versionamento de prompt | Tratar prompt como código (com histórico de mudanças) | Guardar v1, v2, v3 num repositório |
| 67 | Exemplos negativos | Mostrar um exemplo de resposta ruim e por quê | "Isso está errado porque..." |
| 68 | Prompt multilíngue | Ajustar prompt pra funcionar bem em vários idiomas | Testar o mesmo prompt em PT e EN |
| 69 | Dados sensíveis (PII) | Instruir a IA a mascarar ou não expor dados pessoais | "Substitua CPF por [REDACTED]" |
| 70 | Prompt para dados tabulares | Estruturar o pedido pra análise de planilhas/CSV | "Considere que a coluna 'Data' está em formato AAAA-MM-DD" |

---

## 📕 Nível Avançado (o que separa o bom do melhor engenheiro de prompt)

| # | Tópico | O que é | Exemplo |
|---|--------|---------|---------|
| 71 | Tree-of-Thought (ToT) | Explorar vários caminhos de raciocínio em paralelo e escolher o melhor | Gerar 3 estratégias, avaliar cada uma, seguir a melhor |
| 72 | Graph-of-Thought (GoT) | Raciocínio em grafo, conectando ideias não lineares | Útil em planejamento complexo com dependências |
| 73 | Chain-of-Symbol (CoS) | Usar símbolos (↑ ↓ [x]) em vez de texto p/ tarefas espaciais | Melhor que CoT em mapas, jogos, grades |
| 74 | Program-Aided LM (PAL) | IA escreve código pra "calcular" em vez de estimar de cabeça | Gerar código Python pra resolver a conta, não "no olho" |
| 75 | Automatic Prompt Engineering (APE) | A própria IA gera e testa variações de prompt | IA cria 10 versões e escolhe a de melhor nota |
| 76 | DSPy / otimização programática | Framework que otimiza prompts automaticamente com dados | Define métricas e o sistema ajusta o prompt sozinho |
| 77 | Prompt compression | Reduzir tokens sem perder o significado (economiza custo) | Resumir instruções repetitivas em regras curtas |
| 78 | Orquestração multiagente | Vários "agentes" especializados conversando entre si | Agente pesquisador → agente redator → agente revisor |
| 79 | Agentic workflow design | Definir objetivo, ferramentas e limites do agente | "Meta: X. Ferramentas: Y. Não pode: Z" |
| 80 | Reasoning effort (budget de raciocínio) | Parâmetro que troca temperature em modelos de raciocínio | Nível baixo/médio/alto de "pensar antes de responder" |
| 81 | Extended thinking | Modelo mostra/usa raciocínio interno estendido antes da resposta | Ativar "thinking" em tarefas complexas (Claude, o3) |
| 82 | Tool boundaries (guardrails de ferramenta) | Definir exatamente o que o agente pode/não pode acessar | "Só pode ler arquivos da pasta /dados" |
| 83 | Planejamento com TODO interno | Agente monta e atualiza uma lista de tarefas sozinho | Agente cria checklist antes de executar |
| 84 | Preâmbulo de ferramenta | Agente explica a intenção antes de cada ação | "Vou consultar o banco de dados para..." |
| 85 | Recuperação de erro (error recovery) | Instruir o agente a se recuperar sozinho de uma falha | "Se a API falhar, tente 1x, depois avise" |
| 86 | Rastreamento de tarefas longas | Manter estado/progresso em tarefas que duram muitas etapas | Agente registra o que já foi feito e o que falta |
| 87 | Prompt injection | Ataque que injeta instruções maliciosas dentro do conteúdo lido pela IA | Um PDF com texto escondido dizendo "ignore as regras" |
| 88 | Jailbreak e defesas | Tentativas de burlar as regras do modelo e como bloquear | Reforçar no system prompt o que nunca pode mudar |
| 89 | Red teaming de prompt | Testar propositalmente o prompt pra achar falhas antes do uso real | Simular ataques e perguntas maliciosas |
| 90 | Constitutional AI / prompts com princípios | Dar princípios éticos como regra permanente do sistema | "Sempre priorize segurança do usuário sobre engajamento" |
| 91 | LLM-as-a-judge com rubrica | Avaliação automatizada com critérios objetivos e nota | Rubrica: precisão (40%), clareza (30%), formato (30%) |
| 92 | Evals (suíte de testes de prompt) | Conjunto de casos de teste pra medir qualidade do prompt | 50 perguntas com resposta esperada, rodadas a cada mudança |
| 93 | Fine-tuning vs prompt engineering | Saber quando treinar o modelo compensa mais que ajustar o prompt | Fine-tune só quando volume e repetição justificam o custo |
| 94 | RAG avançado | Re-ranking, chunking estratégico, busca híbrida (texto + vetor) | Buscar por palavra-chave E por similaridade semântica |
| 95 | Context engineering | Curar o que entra no contexto, não só escrever o prompt | Decidir quais documentos, memórias e ferramentas entram |
| 96 | Memory systems | Memória de curto prazo (conversa) e longo prazo (perfil salvo) | Agente lembra preferências entre sessões diferentes |
| 97 | Raciocínio com grafos de conhecimento | Conectar fatos estruturados pra raciocínio mais confiável | Usar grafo de entidades em vez de texto solto |
| 98 | Frameworks de orquestração | Ferramentas que montam pipelines de prompt (LangChain, LlamaIndex) | Encadear busca + prompt + validação automaticamente |
| 99 | Observabilidade de prompt | Logar, rastrear e medir custo/latência de cada chamada | Dashboard com tokens gastos por prompt |
| 100 | Compliance e segurança em prompts | Auditoria, LGPD/GDPR, controle do que a IA pode processar | Log de auditoria de todo prompt com dado de cliente |
| 101 | Self-refinement loop automatizado | Ciclo automático de gerar → avaliar → corrigir sem humano no meio | Pipeline que só entrega quando a nota interna passa de 8 |
| 102 | Model routing | Escolher automaticamente o modelo certo por tarefa/custo | Tarefa simples → modelo barato; complexa → modelo caro |
| 103 | Prompt engineering multimodal | Combinar texto, imagem, áudio e vídeo no mesmo prompt | "Analise esta imagem e cruze com esta planilha" |
| 104 | Otimização de custo | Cache, batching e modelos menores para subtarefas simples | Usar modelo pequeno para classificar, grande só pra análise final |

---

## 🚀 Como virar o melhor engenheiro de prompt (resumo em 5 passos)

| Passo | O que fazer |
|-------|-------------|
| 1 | Domine o Nível Iniciante até virar automático (clareza, formato, exemplos) |
| 2 | Use CoT + few-shot + RAG como padrão em qualquer tarefa não trivial |
| 3 | Monte uma suíte de testes (evals) pros seus prompts mais usados |
| 4 | Aprenda a projetar agentes (ferramentas, limites, recuperação de erro) |
| 5 | Trate prompt como código: versionado, testado e medido |

---

### Fontes consultadas
- [Prompt engineering best practices for 2026 — Claude/Anthropic](https://claude.com/blog/best-practices-for-prompt-engineering)
- [Prompting best practices — Claude Platform Docs](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices)
- [Prompt engineering — OpenAI API Docs](https://developers.openai.com/api/docs/guides/prompt-engineering)
- [Reasoning best practices — OpenAI API Docs](https://developers.openai.com/api/docs/guides/reasoning-best-practices)
- [Chain-of-Thought Prompting — Prompt Engineering Guide](https://www.promptingguide.ai/techniques/cot)
- [Advanced Prompt Engineering Techniques for LLMs in 2026 — Medium](https://medium.com/@pysquad/advanced-prompt-engineering-techniques-for-llms-in-2026-1df5ebb414d1)
- [The 2026 Guide to Prompt Engineering — IBM](https://www.ibm.com/think/prompt-engineering)
