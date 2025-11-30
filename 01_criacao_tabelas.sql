-- Criação do Banco de Dados
CREATE DATABASE ong_gente_do_bem;
USE ong_gente_do_bem;

-- Tabela Doador
CREATE TABLE Doador (
    id_doador INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo VARCHAR(100) NOT NULL,
    cpf_cnpj VARCHAR(18) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- Tabela Voluntario
CREATE TABLE Voluntario (
    id_voluntario INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    habilidade_principal VARCHAR(50)
);

-- Tabela Familia Beneficiada
CREATE TABLE Familia (
    id_familia INT PRIMARY KEY AUTO_INCREMENT,
    nome_responsavel VARCHAR(100) NOT NULL,
    cpf_responsavel VARCHAR(14) UNIQUE NOT NULL,
    endereco_responsavel VARCHAR(150),
    qtd_membros INT,
    renda_familiar DECIMAL(10,2)
);

-- Tabela Acao Social
CREATE TABLE Acao_Social (
    id_acao INT PRIMARY KEY AUTO_INCREMENT,
    nome_evento VARCHAR(100) NOT NULL,
    data_evento DATE,
    local_evento VARCHAR(100),
    status_acao VARCHAR(20) -- Ex: Planejada, Concluída
);

-- Tabela Doacao (FK para Doador)
CREATE TABLE Doacao (
    id_doacao INT PRIMARY KEY AUTO_INCREMENT,
    data_doacao DATE,
    valor DECIMAL(10,2),
    descricao_item VARCHAR(100),
    tipo VARCHAR(50), -- Financeira, Material
    id_doador INT,
    FOREIGN KEY (id_doador) REFERENCES Doador(id_doador)
);

-- Tabela Participacao (Associativa: Voluntario <-> Acao)
CREATE TABLE Participacao (
    id_participacao INT PRIMARY KEY AUTO_INCREMENT,
    id_voluntario INT,
    id_acao INT,
    carga_horaria_realizada INT,
    FOREIGN KEY (id_voluntario) REFERENCES Voluntario(id_voluntario),
    FOREIGN KEY (id_acao) REFERENCES Acao_Social(id_acao)
);

-- Tabela Atendimento (Associativa: Familia <-> Acao)
CREATE TABLE Atendimento (
    id_atendimento INT PRIMARY KEY AUTO_INCREMENT,
    id_familia INT,
    id_acao INT,
    descricao_beneficio VARCHAR(100),
    FOREIGN KEY (id_familia) REFERENCES Familia(id_familia),
    FOREIGN KEY (id_acao) REFERENCES Acao_Social(id_acao)
);