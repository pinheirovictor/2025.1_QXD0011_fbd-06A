-- 1. Subquery no WHERE
-- Mostrar empregados que trabalham no departamento cujo nome é "Vendas"
SELECT nome
FROM Empregados
WHERE id_dept = (
    SELECT id_dept
    FROM Departamentos
    WHERE nome = 'Vendas'
);

-- 2. Subquery no SELECT
-- Mostrar o nome do empregado e o nome do seu departamento (sem usar JOIN)
SELECT nome,
    (SELECT nome FROM Departamentos WHERE id_dept = Empregados.id_dept) AS departamento
FROM Empregados;

-- 3. Subquery no FROM
-- Contar quantos funcionários há em cada departamento e exibir apenas os departamentos com mais de 2 funcionários
SELECT depto.nome, qtd
FROM (
    SELECT id_dept, COUNT(*) AS qtd
    FROM Empregados
    GROUP BY id_dept
) AS resumo
JOIN Departamentos AS depto
  ON resumo.id_dept = depto.id_dept
WHERE qtd > 2;

-- 4. Subquery com IN
-- Mostrar empregados que trabalham nos departamentos 'Vendas' ou 'RH'
SELECT nome
FROM Empregados
WHERE id_dept IN (
    SELECT id_dept
    FROM Departamentos
    WHERE nome IN ('Vendas', 'RH')
);

-- 5. Subquery correlacionada
-- Mostrar empregados que ganham mais que a média do seu departamento
SELECT nome, salario, id_dept
FROM Empregados e
WHERE salario > (
    SELECT AVG(salario)
    FROM Empregados
    WHERE id_dept = e.id_dept
);
