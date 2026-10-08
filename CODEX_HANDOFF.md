# AIR — Handoff operacional para o Codex

## 0. Importação obrigatória
Este repositório foi preparado com as regras e o escopo, porém **o código integral do MVP e suas imagens ainda precisam ser transferidos** do `AIR_EXPO_MVP.zip` entregue ao proprietário. O arquivo possui o projeto Expo em `air-expo/`. Na importação, mover seu conteúdo para a raiz do repositório, preservando `assets/images/`, `App.tsx`, `src/`, `docs/` e arquivos de configuração. Não sobrepor as regras já atualizadas em `AGENTS.md` sem consolidá-las.

## 1. Primeiro trabalho após importação
- Conferir estrutura, imports, pacotes e licença de fontes.
- Executar `npm install`, `npx expo install --fix`, `npm run check` e `npm run web`.
- Corrigir incompatibilidades de versão e erros reais.
- Capturar visualizações a 390px e 1440px e comparar com o conceito aprovado.
- Refatorar `App.tsx` progressivamente para componentes, telas, estado e serviços, sem alterar arbitrariamente aparência e comportamento.
- Adicionar persistência local de tarefas e compras e testes básicos.
- Publicar um relatório objetivo de mudanças com screenshots e limitações.

## 2. Critérios de aceite visual
- Interface predominante branca / off-white, azul petróleo e cyan/água em detalhes.
- Títulos grandes de aparência Montserrat, peso light/regular, sem excesso de tipografia bold.
- Poucos cards: elementos não críticos têm tratamento de lista, divisórias ou seções abertas.
- Hero e recursos de vidro apoiados nos assets oficiais, sem fundos genéricos.
- Navegação responsiva e eficiente, com rodapé mobile elegante.

## 3. Integrações futuras; não executar nesta primeira tarefa
- Open Finance: leitura somente de transações consentidas, acesso via agregador apropriado.
- Mi Fitness: Health Connect e Apple Saúde.
- Google/Outlook Calendar.
- NFC-e: QR Code e obtenção lícita de itens e preços, condicionada a serviços fiscais disponíveis.
- IA contextual: arquitetura com camada de regras, explicações, privacidade e opt-in.

**Lembrar o proprietário do AIR dessas integrações quando a base local estiver pronta.**

## 4. Critérios de produto
Produto concebido para comercialização/SaaS. Evitar protótipo ornamental ou telas que exibam dados falsos como reais. Marcar mocks e integrações ausentes. Comunicação pt-BR.
