-- 1. Funcionários com o nome do departamento onde trabalham
SELECT 
  f.Pnome, f.Unome, f.Cpf,
  d.Dnome AS departamento
FROM FUNCIONARIO f
JOIN DEPARTAMENTO d ON f.Dnr = d.Dnumero;

-- 2. Funcionários e, se houver, o nome do supervisor
SELECT 
  f.Pnome AS funcionario, f.Unome,
  s.Pnome AS supervisor, s.Unome AS supervisor_unome
FROM FUNCIONARIO f
LEFT JOIN FUNCIONARIO s ON f.Cpf_supervisor = s.Cpf;

-- 3. Funcionários, departamento, projetos e horas gastas (3 tabelas)
SELECT 
  f.Pnome, f.Unome,
  d.Dnome AS departamento,
  p.Projnome AS projeto,
  t.Horas
FROM FUNCIONARIO f
JOIN DEPARTAMENTO d ON f.Dnr = d.Dnumero
JOIN TRABALHA_EM t ON f.Cpf = t.Fcpf
JOIN PROJETO p ON t.Pnr = p.Projnumero
ORDER BY f.Pnome, p.Projnome;

-- 4. Para cada departamento, total de funcionários e total de salários
SELECT 
  d.Dnome,
  COUNT(f.Cpf) AS total_funcionarios,
  SUM(f.Salario) AS soma_salarios
FROM DEPARTAMENTO d
LEFT JOIN FUNCIONARIO f ON d.Dnumero = f.Dnr
GROUP BY d.Dnome
ORDER BY soma_salarios DESC;

-- 5. Nome dos gerentes de cada departamento
SELECT 
  d.Dnome AS departamento,
  f.Pnome AS gerente_nome,
  f.Unome AS gerente_sobrenome
FROM DEPARTAMENTO d
JOIN FUNCIONARIO f ON d.Cpf_gerente = f.Cpf;

-- 6. Para cada projeto, funcionários e total de horas gastas
SELECT 
  p.Projnome,
  COUNT(te.Fcpf) AS total_funcionarios,
  SUM(te.Horas) AS total_horas
FROM PROJETO p
LEFT JOIN TRABALHA_EM te ON p.Projnumero = te.Pnr
GROUP BY p.Projnome
ORDER BY total_horas DESC;

-- 7. Funcionários que NÃO trabalham em nenhum projeto
SELECT 
  f.Pnome, f.Unome, f.Cpf
FROM FUNCIONARIO f
WHERE NOT EXISTS (
  SELECT 1 
  FROM TRABALHA_EM t 
  WHERE t.Fcpf = f.Cpf
);

-- 8. Para cada funcionário, total de dependentes
SELECT 
  f.Pnome, f.Unome,
  (SELECT COUNT(*) FROM DEPENDENTE d WHERE d.Fcpf = f.Cpf) AS total_dependentes
FROM FUNCIONARIO f
ORDER BY total_dependentes DESC;

-- 9. Funcionários que têm mais de 2 dependentes
SELECT 
  f.Pnome, f.Unome, COUNT(d.Nome_dependente) AS qtd_dependentes
FROM FUNCIONARIO f
JOIN DEPENDENTE d ON f.Cpf = d.Fcpf
GROUP BY f.Pnome, f.Unome
HAVING COUNT(d.Nome_dependente) > 2;

-- 10. Departamentos que têm mais de um projeto associado
SELECT 
  d.Dnome, COUNT(p.Projnumero) AS qtd_projetos
FROM DEPARTAMENTO d
JOIN PROJETO p ON d.Dnumero = p.Dnum
GROUP BY d.Dnome
HAVING COUNT(p.Projnumero) > 1;

-- 11. Funcionários e nome dos departamentos onde são gerentes
SELECT 
  f.Pnome, f.Unome, d.Dnome AS departamento_gerente
FROM FUNCIONARIO f
JOIN DEPARTAMENTO d ON f.Cpf = d.Cpf_gerente;

-- 12. Para cada departamento, média de salários dos funcionários
SELECT 
  d.Dnome,
  AVG(f.Salario) AS media_salario
FROM DEPARTAMENTO d
JOIN FUNCIONARIO f ON d.Dnumero = f.Dnr
GROUP BY d.Dnome;

-- 13. Funcionários que possuem dependente do mesmo sexo
SELECT DISTINCT
  f.Pnome, f.Unome
FROM FUNCIONARIO f
JOIN DEPENDENTE d ON f.Cpf = d.Fcpf
WHERE d.Sexo = f.Sexo AND f.Sexo IS NOT NULL AND d.Sexo IS NOT NULL;

-- 14. Para cada funcionário, nomes dos seus dependentes (MySQL: GROUP_CONCAT)
SELECT
  f.Pnome, f.Unome,
  GROUP_CONCAT(d.Nome_dependente) AS dependentes
FROM FUNCIONARIO f
LEFT JOIN DEPENDENTE d ON f.Cpf = d.Fcpf
GROUP BY f.Pnome, f.Unome;

-- 14. Para cada funcionário, nomes dos seus dependentes (PostgreSQL: STRING_AGG)
SELECT
  f.Pnome, f.Unome,
  STRING_AGG(d.Nome_dependente, ', ') AS dependentes
FROM FUNCIONARIO f
LEFT JOIN DEPENDENTE d ON f.Cpf = d.Fcpf
GROUP BY f.Pnome, f.Unome;

-- 15. Nome dos funcionários, total de horas gastas e número de projetos
SELECT
  f.Pnome, f.Unome,
  COUNT(t.Pnr) AS qtd_projetos,
  COALESCE(SUM(t.Horas), 0) AS total_horas
FROM FUNCIONARIO f
LEFT JOIN TRABALHA_EM t ON f.Cpf = t.Fcpf
GROUP BY f.Pnome, f.Unome
ORDER BY total_horas DESC;

-- 16. Funcionário(s) que trabalham no maior número de projetos
WITH ProjPorFuncionario AS (
  SELECT
    f.Cpf, f.Pnome, f.Unome,
    COUNT(t.Pnr) AS qtd_projetos
  FROM FUNCIONARIO f
  LEFT JOIN TRABALHA_EM t ON f.Cpf = t.Fcpf
  GROUP BY f.Cpf, f.Pnome, f.Unome
)
SELECT *
FROM ProjPorFuncionario
WHERE qtd_projetos = (
  SELECT MAX(qtd_projetos) FROM ProjPorFuncionario
);

-- 17. Projetos localizados no mesmo local do departamento responsável
SELECT
  p.Projnome, p.Projlocal,
  d.Dnome, ld.Dlocal
FROM PROJETO p
JOIN DEPARTAMENTO d ON p.Dnum = d.Dnumero
JOIN LOCALIZACAO_DEP ld ON d.Dnumero = ld.Dnumero
WHERE p.Projlocal = ld.Dlocal;

-- 18. Para cada departamento, funcionários que são gerentes
SELECT
  d.Dnome,
  f.Pnome, f.Unome
FROM DEPARTAMENTO d
JOIN FUNCIONARIO f ON d.Cpf_gerente = f.Cpf;

-- A. Departamentos e total de funcionários
SELECT d.Dnumero, d.Dnome, COUNT(f.Cpf) AS total_func
FROM DEPARTAMENTO d
LEFT JOIN FUNCIONARIO f ON d.Dnumero = f.Dnr
GROUP BY d.Dnumero, d.Dnome
ORDER BY d.Dnumero;

-- B. Todos os projetos e funcionários que trabalham neles (projetos >= 40)
SELECT p.Projnome, f.Pnome, f.Cpf
FROM PROJETO p
LEFT JOIN TRABALHA_EM t ON p.Projnumero = t.Pnr
LEFT JOIN FUNCIONARIO f ON t.Fcpf = f.Cpf
WHERE p.Projnumero >= 40;

-- C. Funcionários e projetos (funcionários sem projeto aparecem com NULL)
SELECT f.Pnome, f.Cpf, p.Projnome
FROM FUNCIONARIO f
LEFT JOIN TRABALHA_EM t ON f.Cpf = t.Fcpf
LEFT JOIN PROJETO p ON t.Pnr = p.Projnumero
WHERE f.Cpf LIKE '600000%';

-- D. Departamentos e localização (LEFT JOIN para pegar os sem localização)
SELECT d.Dnumero, d.Dnome, l.Dlocal
FROM DEPARTAMENTO d
LEFT JOIN LOCALIZACAO_DEP l ON d.Dnumero = l.Dnumero
WHERE d.Dnumero >= 40;

-- E. Funcionários e dependentes (quem não tem dependente aparece com NULL)
SELECT f.Pnome, f.Cpf, d.Nome_dependente
FROM FUNCIONARIO f
LEFT JOIN DEPENDENTE d ON f.Cpf = d.Fcpf
WHERE f.Cpf LIKE '600000%';

-- F. FULL OUTER JOIN: Todos os projetos e todos os funcionários (relacionados ou não)
SELECT f.Pnome AS funcionario, p.Projnome AS projeto
FROM FUNCIONARIO f
FULL OUTER JOIN TRABALHA_EM t ON f.Cpf = t.Fcpf
FULL OUTER JOIN PROJETO p ON t.Pnr = p.Projnumero
WHERE f.Cpf LIKE '600000%' OR p.Projnumero >= 40;
