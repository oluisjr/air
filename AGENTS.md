# AGENTS.md — AIR / Codex

Você está desenvolvendo um **produto comercial premium**, não um projeto didático.

## Objetivo
Um Personal Operating System que una planejamento, tarefas, saúde, finanças (apenas consulta de gastos) e compras com insights inteligentes e decisões justificáveis.

## Regras de produto e UI
- Priorize o português brasileiro. O consumidor deve compreender tudo sem jargão.
- Mantenha **tema claro** com paleta consistente, bastante respiro e tipografia fina e arredondada em títulos grandes.
- **Não coloque um card em toda seção**: destaque apenas resumos e decisões prioritárias.
- Liquid Glass com qualidade: camadas, bordas suaves, refração/translucidez discretas e fallback opaco, sempre com bom contraste.
- Design mobile e desktop precisam de layouts próprios; jamais use zoom como substituto de responsividade.
- Comece a Home com: agenda do dia, próximas 3 horas, gastos últimas 24 horas, sono e um insight útil.
- Preserve assets visuais originais em `assets/images/`; fotos e texturas são assets, dados e controles são componentes.
- Menu mobile inferior com poucos itens e ícones coerentes. Acessibilidade e performance importam tanto quanto aparência.

## Regras funcionais
- Tarefas com lista, Kanban e grade, coerentes sobre o mesmo estado.
- Open Finance **somente leitura de gastos de contas autorizadas**. Nunca transfers, pagamentos ou aplicações.
- Mi Fitness deve ser considerado por intermédio de Health Connect (Android) e Apple Saúde/HealthKit (iOS), conforme permissões e disponibilidade.
- QR de nota fiscal: decodificação não é acesso automático aos produtos; avaliar consulta NFC-e autorizada, disponibilidade por UF e tratamento de dados.
- Sugestões da IA são explicáveis, reversíveis e submetidas a consentimento do usuário.
- Dados de saúde e financeiros são sensíveis; proteção, consentimento e segregação desde o desenho da arquitetura.
- Não invente endpoints, sincronizações, qualidade de dados nem disponibilidade de integrações.

## Qualidade de engenharia
- Stack inicial: Expo / React Native Web / TypeScript.
- Modularizar por features e manter tokens de design centralizados.
- Testar os fluxos principais: criar/editar tarefa, alternar visualizações, lista de compras e navegação.
- Executar verificações de TypeScript e builds web/mobile disponíveis; explicar impedimentos.
- Todo PR deve explicar o que mudou, testes executados e riscos/pontos pendentes.
- Se o ZIP original ainda não estiver importado, **não reconstruir ou descartar os assets silenciosamente**. Solicitar o pacote antes de começar a refatoração.
