# AIR | Personal Operating System

AIR é um aplicativo pessoal premium multiplataforma (web, iOS e Android), desenvolvido com **Expo + React Native + TypeScript**.

**Estado atual do repositório:** a documentação de handoff está versionada aqui; **o MVP completo ainda precisa ser importado** do arquivo `AIR_EXPO_MVP.zip` entregue na conversa de origem. Não trate este repositório como build executável até que o código e `assets/images/` sejam adicionados.

## Experiência de produto

- **Início:** visão essencial do dia; agenda, tarefas das próximas três horas, gastos das últimas 24 horas, sono e um insight contextual.
- **Tarefas:** lista, Kanban e grade estilo Planner; projetos, prioridades e recorrências.
- **Agenda:** compromissos, planejamento semanal e integração futura com calendários.
- **Saúde:** indicadores pessoais; integração futura por Apple Saúde / Health Connect, conforme dados disponíveis do Mi Fitness.
- **Finanças:** Open Finance **somente para leitura** de gastos das contas consentidas. Sem pagamentos, transferências ou investimentos automáticos.
- **Compras:** lista baseada em hábitos de consumo, com leitura futura de QR de NFC-e, itens e histórico de preços por mercado quando a consulta fiscal permitir.
- **Metas / hábitos / vida:** evolução pessoal, organização familiar e profissional.
- **AIR Insights:** recomendações explicáveis, sempre identificando dados reais, estimativas e simulações.

## Identidade visual inegociável

Tema claro premium; branco perolado e azul-petróleo, títulos amplos com tipografia arredondada/fina de aparência Montserrat; **Liquid Glass seletivo** com refração e transparência discretas; pouquíssimos cards, usados apenas em conteúdo que merece destaque; navegação mobile sofisticada; layout desktop próprio, não interface mobile ampliada. Preservar a biblioteca original em `assets/images/`.

Tokens de referência: `#F7FAFD`, `#FFFFFF`, `#183250`, `#3D82E6`, `#78C6D8`, `#50BEB4`.

## Como iniciar a implementação no Codex

1. Abra o repositório `oluisjr/air` no Codex.
2. **Primeiro importe o conteúdo do ZIP `AIR_EXPO_MVP.zip` para a raiz deste repositório**, removendo apenas a pasta externa `air-expo/` da estrutura do arquivo. Os arquivos esperados são `App.tsx`, `package.json`, `assets/images/`, `src/`, `docs/` e os arquivos de configuração.
3. Preserve este `AGENTS.md`, os assets e as decisões de interface. Em caso de conflito, mescle o conteúdo de documentação.
4. Valide `npm install`, `npx expo install --fix`, `npm run check` e `npm run web`. Não declare testes realizados se não tiverem sido executados.
5. Continue pelo roteiro no `CODEX_HANDOFF.md`.

**Atenção:** as telas iniciais trabalham com dados sintéticos. Integrações reais dependem de aprovação de escopo, credenciais, consentimentos, contratos e testes.

A marca AIR também depende de validação jurídica definitiva antes do lançamento comercial.
