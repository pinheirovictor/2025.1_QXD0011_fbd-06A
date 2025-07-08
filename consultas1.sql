-- 1. Renomeação de atributos e relações (AS)
SELECT nome AS usuario_nome, data_nascimento AS nascimento
FROM Usuario;

SELECT u.nome, e.cidade
FROM Usuario AS u
JOIN Endereco AS e ON u.id_usuario = e.id_usuario;


-- 2. Comparações envolvendo NULL
-- Buscar usuários sem endereço cadastrado
SELECT u.id_usuario, u.nome
FROM Usuario u
LEFT JOIN Endereco e ON u.id_usuario = e.id_usuario
WHERE e.id_endereco IS NULL;

-- Buscar empréstimos ainda não devolvidos
SELECT *
FROM Emprestimo
WHERE data_devolucao IS NULL;


-- 3. Consultas diversas
-- Listar todos os livros de uma categoria específica
SELECT l.titulo, c.nome AS categoria
FROM Livro l
JOIN Livro_Categoria lc ON l.id_livro = lc.id_livro
JOIN Categoria c ON lc.id_categoria = c.id_categoria
WHERE c.nome = 'Categoria 5';

-- Mostrar todos os autores de um livro específico
SELECT l.titulo, a.nome AS autor
FROM Livro l
JOIN Livro_Autor la ON l.id_livro = la.id_livro
JOIN Autor a ON la.id_autor = a.id_autor
WHERE l.titulo = 'Livro 10';


-- 4. Funções Agregadas
-- Quantidade total de empréstimos realizados
SELECT COUNT(*) AS total_emprestimos
FROM Emprestimo;

-- Data mais recente de reserva feita
SELECT MAX(data_reserva) AS ultima_reserva
FROM Reserva;

-- Média de anos de publicação dos livros
SELECT AVG(ano_publicacao) AS media_ano
FROM Livro;


-- 5. Agrupando tuplas no SQL (GROUP BY)
-- Quantidade de livros por categoria
SELECT c.nome AS categoria, COUNT(lc.id_livro) AS qtd_livros
FROM Categoria c
JOIN Livro_Categoria lc ON c.id_categoria = lc.id_categoria
GROUP BY c.nome;

-- Número de empréstimos por usuário
SELECT u.nome AS usuario, COUNT(e.id_emprestimo) AS num_emprestimos
FROM Usuario u
LEFT JOIN Emprestimo e ON u.id_usuario = e.id_usuario
GROUP BY u.nome;

-- Número de reservas por livro
SELECT l.titulo AS livro, COUNT(r.id_reserva) AS num_reservas
FROM Livro l
LEFT JOIN Reserva r ON l.id_livro = r.id_livro
GROUP BY l.titulo;


-- Exercícios aula 19

-- 1. Usuários que fizeram empréstimo do livro "Livro 10"
SELECT nome
FROM Usuario
WHERE id_usuario IN (
    SELECT id_usuario
    FROM Emprestimo
    WHERE id_livro = (
        SELECT id_livro
        FROM Livro
        WHERE titulo = 'Livro 10'
    )
);

-- 2. Nome do usuário e nome da cidade do seu endereço
SELECT nome, 
    (SELECT cidade FROM Endereco WHERE Endereco.id_usuario = Usuario.id_usuario) AS cidade
FROM Usuario;

-- 3. Funcionários que registraram mais de 2 empréstimos
SELECT nome, 
    (SELECT COUNT(*) FROM Emprestimo WHERE Emprestimo.id_funcionario = Funcionario.id_funcionario) AS total_emprestimos
FROM Funcionario
WHERE (SELECT COUNT(*) FROM Emprestimo WHERE Emprestimo.id_funcionario = Funcionario.id_funcionario) > 2;

-- 4. Usuários que fizeram empréstimo de livros das categorias 'Categoria 5' ou 'Categoria 10'
SELECT DISTINCT nome
FROM Usuario
WHERE id_usuario IN (
    SELECT id_usuario
    FROM Emprestimo
    WHERE id_livro IN (
        SELECT id_livro
        FROM Livro_Categoria
        WHERE id_categoria IN (
            SELECT id_categoria
            FROM Categoria
            WHERE nome IN ('Categoria 5', 'Categoria 10')
        )
    )
);

-- 5. Usuários que fizeram mais empréstimos que a média de todos os usuários
SELECT nome
FROM Usuario
WHERE (
    SELECT COUNT(*) FROM Emprestimo WHERE Emprestimo.id_usuario = Usuario.id_usuario
) > (
    SELECT AVG(emp_count) 
    FROM (
        SELECT COUNT(*) AS emp_count
        FROM Emprestimo
        GROUP BY id_usuario
    ) AS sub
);
