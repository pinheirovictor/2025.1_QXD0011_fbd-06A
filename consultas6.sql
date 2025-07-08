-- 1. INNER JOIN: Só mostra registros com correspondência nas duas tabelas
SELECT u.nome, e.rua, e.cidade
FROM Usuario u
INNER JOIN Endereco e ON u.id_usuario = e.id_usuario;

SELECT em.id_emprestimo, u.nome AS usuario, l.titulo AS livro, em.data_emprestimo
FROM Emprestimo em
INNER JOIN Usuario u ON em.id_usuario = u.id_usuario
INNER JOIN Livro l ON em.id_livro = l.id_livro;

SELECT l.titulo, a.nome AS autor
FROM Livro l
INNER JOIN Livro_Autor la ON l.id_livro = la.id_livro
INNER JOIN Autor a ON la.id_autor = a.id_autor;

SELECT l.titulo, c.nome AS categoria
FROM Livro l
INNER JOIN Livro_Categoria lc ON l.id_livro = lc.id_livro
INNER JOIN Categoria c ON lc.id_categoria = c.id_categoria;

-- 2. LEFT JOIN: Todos os registros da tabela da esquerda, mesmo sem correspondência à direita
SELECT u.nome, e.rua, e.cidade
FROM Usuario u
LEFT JOIN Endereco e ON u.id_usuario = e.id_usuario;

SELECT l.titulo, em.id_emprestimo, em.data_emprestimo
FROM Livro l
LEFT JOIN Emprestimo em ON l.id_livro = em.id_livro;

SELECT a.nome AS autor, l.titulo
FROM Autor a
LEFT JOIN Livro_Autor la ON a.id_autor = la.id_autor
LEFT JOIN Livro l ON la.id_livro = l.id_livro;

SELECT c.nome AS categoria, l.titulo
FROM Categoria c
LEFT JOIN Livro_Categoria lc ON c.id_categoria = lc.id_categoria
LEFT JOIN Livro l ON lc.id_livro = l.id_livro;

-- 3. RIGHT JOIN: Todos os registros da tabela da direita, mesmo sem correspondência à esquerda
SELECT u.nome, e.rua, e.cidade
FROM Usuario u
RIGHT JOIN Endereco e ON u.id_usuario = e.id_usuario;

SELECT r.id_reserva, u.nome, r.data_reserva
FROM Usuario u
RIGHT JOIN Reserva r ON u.id_usuario = r.id_usuario;

SELECT em.id_emprestimo, f.nome AS funcionario, em.data_emprestimo
FROM Funcionario f
RIGHT JOIN Emprestimo em ON f.id_funcionario = em.id_funcionario;

SELECT l.titulo, c.nome AS categoria
FROM Categoria c
RIGHT JOIN Livro_Categoria lc ON c.id_categoria = lc.id_categoria
RIGHT JOIN Livro l ON lc.id_livro = l.id_livro;

-- 4. FULL JOIN: Todos os registros das duas tabelas, correspondendo quando possível
SELECT u.nome, r.id_reserva, r.data_reserva
FROM Usuario u
FULL JOIN Reserva r ON u.id_usuario = r.id_usuario;

SELECT l.titulo, em.id_emprestimo, em.data_emprestimo
FROM Livro l
FULL JOIN Emprestimo em ON l.id_livro = em.id_livro;

SELECT f.nome AS funcionario, em.id_emprestimo, em.data_emprestimo
FROM Funcionario f
FULL JOIN Emprestimo em ON f.id_funcionario = em.id_funcionario;

SELECT c.nome AS categoria, l.titulo
FROM Categoria c
FULL JOIN Livro_Categoria lc ON c.id_categoria = lc.id_categoria
FULL JOIN Livro l ON lc.id_livro = l.id_livro;
