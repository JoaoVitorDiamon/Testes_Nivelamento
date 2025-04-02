# Testes de Nivelamento - v.250321

Este repositório contém os testes de nivelamento solicitados, divididos em 4 seções principais: Web Scraping, Transformação de Dados, Banco de Dados e API. O objetivo de cada seção é avaliar o conhecimento em diferentes áreas de programação e análise de dados.

## Estrutura do Repositório

O repositório está organizado em pastas e arquivos que correspondem às tarefas solicitadas. Cada tarefa está implementada em um arquivo específico. O código foi desenvolvido em Python, Java, SQL e Vue.js, conforme as exigências.

### 1. **Teste de Web Scraping**
- **Objetivo**: Realizar o scraping do site da ANS e realizar o download dos anexos I e II (PDF).
- **Tarefas**:
  - Acesso ao site [https://www.gov.br/ans/pt-br/acesso-a-informacao/participacao-dasociedade/atualizacao-do-rol-de-procedimentos](https://www.gov.br/ans/pt-br/acesso-a-informacao/participacao-dasociedade/atualizacao-do-rol-de-procedimentos).
  - Baixar os anexos I e II em formato PDF.
  - Compactar todos os anexos em um único arquivo (ZIP, RAR, etc.).

### 2. **Teste de Transformação de Dados**
- **Objetivo**: Extrair dados de uma tabela dentro do PDF do Anexo I e transformá-los em formato CSV.
- **Tarefas**:
  - Extração de dados da tabela "Rol de Procedimentos e Eventos em Saúde" do Anexo I.
  - Salvar os dados extraídos em um arquivo CSV estruturado.
  - Compactar o CSV em um arquivo ZIP com o nome "Teste_{seu_nome}.zip".
  - Substituir as abreviações "OD" e "AMB" pelas descrições completas da legenda.

### 3. **Teste de Banco de Dados**
- **Objetivo**: Trabalhar com SQL para estruturar dados, importar arquivos CSV e realizar consultas analíticas.
- **Tarefas**:
  - Baixar os arquivos dos últimos 2 anos do repositório público da ANS: [https://dadosabertos.ans.gov.br/FTP/PDA/demonstracoes_contabeis/](https://dadosabertos.ans.gov.br/FTP/PDA/demonstracoes_contabeis/).
  - Baixar os Dados Cadastrais das Operadoras Ativas na ANS: [https://dadosabertos.ans.gov.br/FTP/PDA/operadoras_de_plano_de_saude_ativas/](https://dadosabertos.ans.gov.br/FTP/PDA/operadoras_de_plano_de_saude_ativas/).
  - Criar queries para estruturar tabelas no banco de dados para os arquivos CSV.
  - Importar os dados para as tabelas criadas, garantindo o encoding correto.
  - Criar queries analíticas para responder:
    - Quais as 10 operadoras com maiores despesas em "EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR" no último trimestre?
    - Quais as 10 operadoras com maiores despesas nessa categoria no último ano?

### 4. **Teste de API**
- **Objetivo**: Criar uma interface web em Vue.js que interaja com um servidor Python para buscar dados de operadoras.
- **Tarefas**:
  - Utilizar o CSV do item 3.2 para alimentar a API.
  - Criar um servidor em Python com uma rota que faça busca textual nos registros das operadoras.
  - Criar uma coleção no Postman para demonstrar o funcionamento da API.

## Instruções para Execução

1. **Web Scraping**:
   - Execute o código em Python ou Java para realizar o scraping do site, fazer o download dos PDFs e compactá-los.

2. **Transformação de Dados**:
   - Execute o script Python para extrair os dados do Anexo I em formato CSV, substituir as abreviações e compactar o arquivo.

3. **Banco de Dados**:
   - Baixe os arquivos do repositório da ANS.
   - Execute os scripts SQL para estruturar e importar os dados para o banco de dados.
   - Utilize as queries analíticas para responder às perguntas solicitadas.

4. **API**:
   - Clone o repositório e execute o servidor em Python.
   - Teste a API com a coleção do Postman para verificar a busca nos registros das operadoras.

## Tecnologias Utilizadas

- **Python** (para Transformação de Dados e Backend)
- **Java** (para Web Scraping)
- **SQL** (MySQL)
- **Vue.js** (para a interface web)
- **Postman** (para testes de API)
