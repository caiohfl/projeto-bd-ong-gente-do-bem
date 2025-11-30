# Projeto de Banco de Dados - ONG Gente do Bem

Este repositório contém os scripts SQL desenvolvidos para a disciplina de Banco de Dados. O projeto simula o sistema de gestão de uma Organização Não Governamental (ONG), focando no controle de doações, voluntários e ações sociais.

## 📂 Estrutura dos Arquivos

* `01_criacao_tabelas.sql`: Script DDL para criar o banco de dados e as tabelas com integridade referencial.
* `02_insercao_dados.sql`: Script DML para povoar o banco com dados fictícios de testes.
* `03_consultas_e_manipulacao.sql`: Scripts contendo consultas complexas (JOINs), atualizações (UPDATE) e exclusões (DELETE).

## 🛠 Tecnologias Utilizadas

* MySQL Workbench 8.0
* Linguagem SQL (DML e DDL)
* Git/GitHub

## 🚀 Como Executar

1.  Abra o arquivo `01_criacao_tabelas.sql` no seu SGBD e execute para criar a estrutura.
2.  Em seguida, execute o arquivo `02_insercao_dados.sql` para inserir os dados.
3.  Utilize o arquivo `03_consultas_e_manipulacao.sql` para testar as funcionalidades do sistema.

## 📊 Modelo Lógico

O sistema foi modelado para atender aos requisitos da 3ª Forma Normal (3FN), garantindo a integridade das informações entre Doadores, Voluntários e Famílias Beneficiadas.
