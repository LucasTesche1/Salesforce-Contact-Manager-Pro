# Salesforce-Contact-Manager-Pro

O **Contact Manager Pro** é uma aplicação Salesforce completa desenvolvida para gerenciar **Contatos, Interações e Clientes Premium**, integrando automações, relatórios e componentes Lightning Web Components (LWC).  
O projeto simula um ambiente real de CRM, aplicando boas práticas de desenvolvimento Salesforce e conceitos avançados de Apex e LWC.

## 🚀 Funcionalidades Principais

### 1. **Modelagem e Relacionamentos**
- Objeto **Interaction__c**: registra interações entre a empresa e os contatos.
- Objeto **Premium_Client__c**: armazena informações sobre clientes Gold, Silver e Bronze.
- Relacionamento entre **Contact ↔ Interaction ↔ Premium Client**.

---

### 2. **Automations & Triggers**
- Trigger `InteractionTrigger` → atualiza a **data da última interação** no contato.
- Trigger `PremiumTrigger` → atualiza automaticamente o **nível Premium** do cliente.
- Handlers separados (`InteractionTriggerHandler` e `PremiumTriggerHandler`) garantem código limpo e fácil manutenção.

---

### 3. **Apex Controllers**
- `PremiumClientController`: fornece dados de contatos premium para componentes LWC.
- Estruturado com cache, boas práticas de consulta SOQL e tratamento de exceções.

---

### 4. **LWC Components**
- **PremiumClientCard** → exibe informações do cliente (nome, email, VIP, nível premium e última interação).
- **DemoPremiumClient** → componente de demonstração com dados mockados para fins de portfólio.
- Estilização aprimorada com `lightning-layout`, `lightning-badge` e `lightning-card`.

---

### 5. **Reports & Dashboards**
- Relatório de **Interações por Tipo** (Follow-up, Call, Meeting...).
- Relatório de **Clientes Premium por Nível** (Gold, Silver, Bronze).
- Painel de **Últimas Interações da Semana**.
- Dashboard final que consolida todas as métricas em tempo real.


## Tecnologias

- Apex
- LWC
- SOQL
- Flow
- Salesforce Setup



