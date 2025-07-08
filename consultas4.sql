-- 1. Livros que já foram emprestados alguma vez
SELECT titulo
FROM Livro l
WHERE EXISTS (
    SELECT *
    FROM Emprestimo e
    WHERE e.id_livro = l.id_livro
);

-- 2. Usuários que nunca fizeram nenhum empréstimo
SELECT nome
FROM Usuario u
WHERE NOT EXISTS (
    SELECT *
    FROM Emprestimo e
    WHERE e.id_usuario = u.id_usuario
);

-- 3. Funcionários que registraram pelo menos um empréstimo
SELECT nome
FROM Funcionario f
WHERE EXISTS (
    SELECT *
    FROM Emprestimo e
    WHERE e.id_funcionario = f.id_funcionario
);

-- 4. Livros que nunca foram reservados
SELECT titulo
FROM Livro l
WHERE NOT EXISTS (
    SELECT *
    FROM Reserva r
    WHERE r.id_livro = l.id_livro
);

-- 5. Usuários que fizeram uma reserva e também já pegaram o mesmo livro emprestado
SELECT DISTINCT u.nome
FROM Usuario u
WHERE EXISTS (
    SELECT *
    FROM Reserva r
    WHERE r.id_usuario = u.id_usuario
    AND EXISTS (
        SELECT *
        FROM Emprestimo e
        WHERE e.id_usuario = r.id_usuario
          AND e.id_livro = r.id_livro
    )
);
