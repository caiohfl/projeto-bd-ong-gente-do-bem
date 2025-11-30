USE ong_gente_do_bem;

-- 1. Inserindo Doadores
INSERT INTO Doador (nome_completo, cpf_cnpj, telefone, email) VALUES 
('Empresa Tech Solutions', '12.345.678/0001-90', '(11) 3030-4040', 'contato@techsol.com'),
('Ana Maria Souza', '123.456.789-00', '(11) 99999-1111', 'ana.souza@email.com'),
('Carlos Pereira', '987.654.321-11', '(11) 98888-2222', 'carlos.p@email.com');

-- 2. Inserindo Voluntários
INSERT INTO Voluntario (nome_completo, cpf, telefone, habilidade_principal) VALUES 
('João Silva', '111.222.333-44', '(11) 97777-3333', 'Motorista'),
('Maria Oliveira', '222.333.444-55', '(11) 96666-4444', 'Cozinheira'),
('Pedro Santos', '333.444.555-66', '(11) 95555-5555', 'Recreação');

-- 3. Inserindo Famílias
INSERT INTO Familia (nome_responsavel, cpf_responsavel, endereco_responsavel, qtd_membros, renda_familiar) VALUES 
('Josefa da Silva', '444.555.666-77', 'Rua das Flores, 10, Centro', 5, 1200.00),
('Antonio Marcos', '555.666.777-88', 'Beco da Esperança, 5, Zona Norte', 3, 800.00),
('Clara Nunes', '666.777.888-99', 'Av. Brasil, 500, Bloco C', 4, 1400.00);

-- 4. Inserindo Ações Sociais
INSERT INTO Acao_Social (nome_evento, data_evento, local_evento, status_acao) VALUES 
('Natal Solidário', '2025-12-25', 'Sede da ONG', 'Planejada'),
('Sopão Comunitário', '2025-06-15', 'Praça Central', 'Concluída');

-- 5. Inserindo Doações (Ligando aos doadores criados)
INSERT INTO Doacao (data_doacao, valor, descricao_item, tipo, id_doador) VALUES 
('2025-12-01', 5000.00, NULL, 'Financeira', 1), -- Tech Solutions
('2025-12-05', NULL, '50kg de Arroz', 'Material', 2), -- Ana Maria
('2025-12-10', 200.00, NULL, 'Financeira', 3); -- Carlos

-- 6. Registrando Participações (Voluntários nas Ações)
INSERT INTO Participacao (id_voluntario, id_acao, carga_horaria_realizada) VALUES 
(1, 1, 4), -- João no Natal
(2, 2, 6), -- Maria no Sopão
(3, 1, 4); -- Pedro no Natal

-- 7. Registrando Atendimentos (Famílias recebendo ajuda)
INSERT INTO Atendimento (id_familia, id_acao, descricao_beneficio) VALUES 
(1, 1, 'Cesta Básica Grande'),
(2, 2, '2 Litros de Sopa + Pão'),
(3, 1, 'Brinquedos para crianças');