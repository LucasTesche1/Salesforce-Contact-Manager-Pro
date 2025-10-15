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


---

## 🧰 Tecnologias e Ferramentas

| Tecnologia | Uso |
|-------------|-----|
| **Salesforce Apex** | Lógica backend, triggers e controllers |
| **LWC (Lightning Web Components)** | Interface moderna e responsiva |
| **SOQL** | Consultas otimizadas ao banco Salesforce |
| **Reports & Dashboards** | Análises visuais e métricas de CRM |
| **Git & GitHub** | Versionamento e colaboração |
| **Salesforce CLI (sf)** | Deploy e configuração de ambiente |

---

## 🧑‍💻 Autor

**Lucas Tesche**  
💡 Desenvolvedor Salesforce | Apaixonado por tecnologia, automação e soluções inteligentes.  
🔗 [linkedin.com/in/lucastesche1](https://linkedin.com/in/lucastesche1)

---

## 📸 Screenshots
<div style="padding:5px, display:column">
<img width="1902" height="856" alt="{2FF1C975-A88B-4BE2-AD12-BF6B4EE8FDB4}" src="https://github.com/user-attachments/assets/86d3939b-2ff0-4d30-8e06-2f360929e7a7" />
<img width="1905" height="411" alt="{3D67319E-9A5E-406D-B8FB-166200251236}" src="https://github.com/user-attachments/assets/3f1bddf1-8539-4cb6-bde1-d0219af28b7a" />
<img width="1918" height="855" alt="{BA33EEDA-3B96-42B2-8FF5-332FA5831A11}" src="https://github.com/user-attachments/assets/06f6c564-b308-4af0-8135-ebd7e9d5bd89" />
</div>
<img width="870" height="809" alt="image" src="https://github.com/user-attachments/assets/2790194e-1730-43d2-8d18-fb1e2870e25e" />
<img width="430" height="569" alt="image" src="https://github.com/user-attachments/assets/e2f31b1c-fdb7-4486-bbf5-2ca49c50ccc6" />


---

## ⚡ Como Executar

1. Clone o repositório:
   ```bash
   git clone https://github.com/LucasTesche1/Salesforce-Contact-Manager-Pro.git




