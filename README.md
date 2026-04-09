# 📊 Análise Comercial — Contoso

Projeto de análise comercial utilizando o banco de dados fictício **Contoso**, com extração de dados via **SQL Server** e visualização em **Power BI**. O objetivo é simular um dashboard executivo real, respondendo perguntas de negócio sobre vendas, clientes e produtos.

---

## 🗂️ Estrutura do Repositório

```
├── Querys/
│   ├── SqlPagina1.sql       # Vendas & Receita
│   ├── SqlPagina2.sql       # Clientes
│   └── SqlPagina3.sql       # Produtos
├── ProjetoContoso.Report/   # Arquivos do relatório Power BI
├── ProjetoContoso.SemanticModel/  # Modelo semântico Power BI
├── ProjetoContoso.pbip      # Arquivo principal do projeto Power BI
└── .gitignore
```

---

## 🛠️ Stack Utilizada

- **SQL Server** — extração e transformação dos dados
- **Power BI** — modelagem, medidas DAX e visualização
- **Power Query** — tratamento e limpeza dos dados

---

## 📄 Páginas do Dashboard

### Página 1 — Vendas & Receita

<img width="1118" height="636" alt="image" src="https://github.com/user-attachments/assets/82c3a0be-043b-40c0-8fc5-02cf8bb57380" />

Visão geral da performance comercial da empresa ao longo do tempo.

**KPIs:** Receita Bruta · Lucro Bruto · Margem de Lucro · Ticket Médio · Total de Pedidos

**Visuais:** Receita mensal por ano · Mapa de receita por região · Receita por canal · TOP 10 lojas por receita

**Tabelas utilizadas:** `FactSales`, `DimChannel`, `DimStore`, `DimGeography`

---

### Página 2 — Clientes

<img width="1022" height="574" alt="image" src="https://github.com/user-attachments/assets/0b991178-6e2e-4822-b23c-ffbe99cf282f" />


Análise do perfil e comportamento da base de clientes.

**KPIs:** Total de Clientes Únicos · Gasto Médio por Cliente · Média de Compras por Cliente

**Visuais:** Distribuição por gênero e faixa etária · Clientes por país · TOP clientes por receita gerada

**Tabelas utilizadas:** `FactOnlineSales`, `DimCustomer`, `DimGeography`

---

### Página 3 — Produtos

<img width="1117" height="637" alt="image" src="https://github.com/user-attachments/assets/0b93b3a0-b8b6-4967-b3d0-fce4fd304e48" />


Performance do portfólio de produtos por receita, volume e margem.

**KPIs:** Receita por categoria · Margem por produto · Volume vendido

**Visuais:** Scatter de margem × volume por categoria · Receita por categoria · Quantidade vendida por subcategoria · Lucro bruto por marca

**Tabelas utilizadas:** `FactSales`, `DimProduct`, `DimProductSubcategory`, `DimProductCategory`

---

## 🔍 Principais Insights

### Vendas & Receita
- A receita apresentou **queda ao longo de 2007–2009**, período que coincide com a crise financeira global,o contexto macroeconômico é um fator relevante antes de atribuir o declínio à performance comercial interna.
- O canal **Online** apresenta receita significativamente inferior aos demais canais (Store, Reseller, Catalog), sinalizando oportunidade de investigação em marketing digital e logística de entrega.
- A **Ásia** demonstra presença crescente no mapa de receita, representando uma oportunidade de expansão com menor saturação em comparação à Europa.

### Clientes
- A **Alemanha** concentra o maior número de clientes registrados, porém os **Estados Unidos** geram maior receita total, indicando ticket médio mais alto no mercado americano, o que merece investigação sobre comportamento de compra por região.
- O segmento de **meia-idade** apresenta crescimento na base de clientes e representa uma oportunidade de público-alvo para campanhas de marketing, especialmente em categorias de tecnologia.
- A média de **153 compras por cliente** reflete a característica do dataset (histórico longo com base reduzida de clientes), mas indica alto nível de retenção.

### Produtos
- **Music, Movies & Audio** apresenta a **maior margem de lucro** entre as categorias, porém com volume de vendas relativamente baixo,há espaço para aumentar receita nessa categoria com ações de marketing direcionadas.
- **Home Appliances** lidera em receita absoluta, enquanto **Computers Accessories** domina em volume de unidades vendidas.
- A marca **Contoso** é a de maior lucro bruto, seguida de **Fabrikam** e **Litware**, concentração de resultado em poucas marcas.

### Recomendações
1. **Investigar canal Online:** realizar análise de satisfação do cliente e tempo de entrega para identificar se o problema é aquisição ou retenção.
2. **Focar em Music/Movies/Audio:** alta margem com baixo volume é o cenário ideal para ações de impulsionamento com baixo risco.
3. **Segmentar marketing para meia-idade em tecnologia:** cruzamento de perfil de cliente com categorias de menor penetração nesse público.
4. **Analisar mercado asiático:** potencial de expansão com menor concorrência regional no portfólio atual.
5. **Entender gap Alemanha vs EUA:** aprofundar análise de ticket médio e frequência de compra por país para identificar se há problema de precificação, logística ou mix de produto na Europa.

---

## ▶️ Como Reproduzir

1. Baixe e restaure o banco de dados [Contoso BI Demo Dataset](https://www.microsoft.com/en-us/download/details.aspx?id=18279) no SQL Server
2. Execute as queries da pasta `Querys/` para extrair os dados de cada página
3. Abra o arquivo `ProjetoContoso.pbip` no Power BI Desktop
4. Atualize a fonte de dados apontando para sua instância do SQL Server

---

**Autor** : Cauã de Godoy

**Linkedin** : https://www.linkedin.com/in/caua-de-godoy/
