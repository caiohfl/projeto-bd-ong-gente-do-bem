USE ong_gente_do_bem;
SET SQL_SAFE_UPDATES = 0;

-- ==========================================================
-- A. CONSULTAS (SELECT) - Mínimo 2 a 5 exigidos
-- ==========================================================

-- 1. Listar todas as doações financeiras acima de R$ 100,00 (Uso de WHERE)
SELECT * FROM Doacao 
WHERE tipo = 'Financeira' AND valor > 100;

-- 2. Quem são os voluntários que participaram da ação "Natal Solidário"? (Uso de JOIN)
SELECT v.nome_completo, v.habilidade_principal, p.carga_horaria_realizada
FROM Voluntario v
JOIN Participacao p ON v.id_voluntario = p.id_voluntario
JOIN Acao_Social a ON p.id_acao = a.id_acao
WHERE a.nome_evento = 'Natal Solidário';

-- 3. Total arrecadado em dinheiro (Função de Agregação)
SELECT SUM(valor) as Total_Financeiro FROM Doacao 
WHERE tipo = 'Financeira';

-- 4. Endereço das famílias que receberam "Cesta Básica" (JOIN + LIKE)
SELECT f.nome_responsavel, f.endereco_responsavel 
FROM Familia f
JOIN Atendimento atd ON f.id_familia = atd.id_familia
WHERE atd.descricao_beneficio LIKE '%Cesta Básica%';


-- ==========================================================
-- B. ATUALIZAÇÕES (UPDATE) - Mínimo 3 exigidos
-- ==========================================================

-- 1. Atualizar o telefone de um voluntário
UPDATE Voluntario 
SET telefone = '(11) 90000-0000' 
WHERE nome_completo = 'João Silva';

-- 2. Corrigir o status da ação "Natal Solidário" para Concluída
UPDATE Acao_Social 
SET status_acao = 'Concluída' 
WHERE nome_evento = 'Natal Solidário';

-- 3. Ajustar a renda familiar de um cadastro específico
UPDATE Familia 
SET renda_familiar = 1300.00 
WHERE cpf_responsavel = '666.777.888-99';


-- ==========================================================
-- C. EXCLUSÕES (DELETE) - Mínimo 3 exigidos
-- ==========================================================

-- 1. Deletar uma participação específica (ex: erro de lançamento)
DELETE FROM Participacao 
WHERE id_voluntario = 3 AND id_acao = 1;

-- 2. Remover uma doação inserida incorretamente
DELETE FROM Doacao 
WHERE id_doacao = 3;

-- 3. Remover um atendimento duplicado (hipotético)
DELETE FROM Atendimento 
WHERE id_atendimento = 2;