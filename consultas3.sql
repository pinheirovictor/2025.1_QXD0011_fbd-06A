-- 1. Usuários que têm empréstimos com livros cujo id_livro é maior que algum livro emprestado
SELECT nome
FROM Usuario
WHERE id_usuario IN (
    SELECT id_usuario
    FROM Emprestimo
    WHERE id_livro > SOME (
        SELECT id_livro
        FROM Emprestimo
    )
);

-- 2. Funcionários que registraram empréstimos com livros com id_livro menor ou igual a todos os outros empréstimos
SELECT nome
FROM Funcionario
WHERE id_funcionario IN (
    SELECT id_funcionario
    FROM Emprestimo
    WHERE id_livro <= ALL (
        SELECT id_livro
        FROM Emprestimo
    )
);

-- 3. Livros que foram emprestados por usuários que fizeram empréstimos com qualquer livro de ID 10 ou maior
SELECT titulo
FROM Livro
WHERE id_livro IN (
    SELECT id_livro
    FROM Emprestimo
    WHERE id_usuario = ANY (
        SELECT id_usuario
        FROM Emprestimo
        WHERE id_livro >= 10
    )
);

-- 4. Livros que não têm id_livro menor que todos os livros reservados
SELECT titulo
FROM Livro
WHERE id_livro >= ALL (
    SELECT id_livro
    FROM Reserva
);

-- 5. Usuários que reservaram livros com id_livro maior que algum livro emprestado
SELECT nome
FROM Usuario
WHERE id_usuario IN (
    SELECT id_usuario
    FROM Reserva
    WHERE id_livro > SOME (
        SELECT id_livro
        FROM Emprestimo
    )
);
