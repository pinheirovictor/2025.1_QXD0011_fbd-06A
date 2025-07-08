-- 1. Theta Join
SELECT u.id_usuario, u.nome, e.id_emprestimo
FROM Usuario u
JOIN Emprestimo e ON u.id_usuario < e.id_usuario;

-- 2. Equijoin
SELECT r.id_reserva, u.nome, r.data_reserva
FROM Reserva r
JOIN Usuario u ON r.id_usuario = u.id_usuario;

-- 3. Natural Join
SELECT *
FROM Reserva
NATURAL JOIN Usuario;

-- 4. INNER JOIN - empréstimos e livros
SELECT e.id_emprestimo, l.titulo, e.data_emprestimo, e.data_devolucao
FROM Emprestimo e
INNER JOIN Livro l ON e.id_livro = l.id_livro;

-- 5. LEFT JOIN - usuários e reservas
SELECT u.id_usuario, u.nome, r.id_reserva, r.data_reserva
FROM Usuario u
LEFT JOIN Reserva r ON u.id_usuario = r.id_usuario;

-- 6. RIGHT JOIN - reservas e usuários
SELECT r.id_reserva, u.nome, r.data_reserva
FROM Reserva r
RIGHT JOIN Usuario u ON r.id_usuario = u.id_usuario;

-- 7. FULL JOIN - todos usuários e reservas
SELECT u.nome, r.id_reserva, r.data_reserva
FROM Usuario u
FULL JOIN Reserva r ON u.id_usuario = r.id_usuario;

-- 8. CROSS JOIN - livros e categorias (todas as combinações)
SELECT l.titulo, c.nome AS categoria
FROM Livro l
CROSS JOIN Categoria c;

-- 9. SELF JOIN - pares de usuários na mesma cidade
SELECT u1.nome AS usuario1, u2.nome AS usuario2, e1.cidade
FROM Usuario u1
JOIN Endereco e1 ON u1.id_usuario = e1.id_usuario
JOIN Endereco e2 ON e1.cidade = e2.cidade
JOIN Usuario u2 ON u2.id_usuario = e2.id_usuario
WHERE u1.id_usuario < u2.id_usuario;

-- APENAS JUNÇÕES

-- 1.1. INNER JOIN - usuários e seus endereços
SELECT u.nome, e.rua, e.cidade
FROM Usuario u
INNER JOIN Endereco e ON u.id_usuario = e.id_usuario;

-- 1.2. INNER JOIN - empréstimos com info do livro e usuário
SELECT em.id_emprestimo, u.nome AS usuario, l.titulo AS livro, em.data_emprestimo
FROM Emprestimo em
INNER JOIN Usuario u ON em.id_usuario = u.id_usuario
INNER JOIN Livro l ON em.id_livro = l.id_livro;

-- 1.3. INNER JOIN - livros e autores
SELECT l.titulo, a.nome AS autor
FROM Livro l
INNER JOIN Livro_Autor la ON l.id_livro = la.id_livro
INNER JOIN Autor a ON la.id_autor = a.id_autor;

-- 1.4. INNER JOIN - livros e categorias
SELECT l.titulo, c.nome AS categoria
FROM Livro l
INNER JOIN Livro_Categoria lc ON l.id_livro = lc.id_livro
INNER JOIN Categoria c ON lc.id_categoria = c.id_categoria;

-- 2.1. LEFT JOIN - todos usuários e seus endereços
SELECT u.nome, e.rua, e.cidade
FROM Usuario u
LEFT JOIN Endereco e ON u.id_usuario = e.id_usuario;

-- 2.2. LEFT JOIN - todos livros e seus empréstimos
SELECT l.titulo, em.id_emprestimo, em.data_emprestimo
FROM Livro l
LEFT JOIN Emprestimo em ON l.id_livro = em.id_livro;

-- 2.3. LEFT JOIN - todos autores e livros escritos
SELECT a.nome AS autor, l.titulo
FROM Autor a
LEFT JOIN Livro_Autor la ON a.id_autor = la.id_autor
LEFT JOIN Livro l ON la.id_livro = l.id_livro;

-- 2.4. LEFT JOIN - todas categorias e livros associados
SELECT c.nome AS categoria, l.titulo
FROM Categoria c
LEFT JOIN Livro_Categoria lc ON c.id_categoria = lc.id_categoria
LEFT JOIN Livro l ON lc.id_livro = l.id_livro;

-- 3.1. RIGHT JOIN - todos endereços e seus usuários
SELECT u.nome, e.rua, e.cidade
FROM Usuario u
RIGHT JOIN Endereco e ON u.id_usuario = e.id_usuario;

-- 3.2. RIGHT JOIN - todas reservas, nome do usuário (incluindo reservas órfãs)
SELECT r.id_reserva, u.nome, r.data_reserva
FROM Usuario u
RIGHT JOIN Reserva r ON u.id_usuario = r.id_usuario;

-- 3.3. RIGHT JOIN - todos empréstimos, funcionário responsável
SELECT em.id_emprestimo, f.nome AS funcionario, em.data_emprestimo
FROM Funcionario f
RIGHT JOIN Emprestimo em ON f.id_funcionario = em.id_funcionario;

-- 3.4. RIGHT JOIN - todos livros, mostrando categoria
SELECT l.titulo, c.nome AS categoria
FROM Categoria c
RIGHT JOIN Livro_Categoria lc ON c.id_categoria = lc.id_categoria
RIGHT JOIN Livro l ON lc.id_livro = l.id_livro;

-- 4.1. FULL JOIN - usuários e reservas
SELECT u.nome, r.id_reserva, r.data_reserva
FROM Usuario u
FULL JOIN Reserva r ON u.id_usuario = r.id_usuario;

-- 4.2. FULL JOIN - livros e empréstimos
SELECT l.titulo, em.id_emprestimo, em.data_emprestimo
FROM Livro l
FULL JOIN Emprestimo em ON l.id_livro = em.id_livro;

-- 4.3. FULL JOIN - funcionários e empréstimos
SELECT f.nome AS funcionario, em.id_emprestimo, em.data_emprestimo
FROM Funcionario f
FULL JOIN Emprestimo em ON f.id_funcionario = em.id_funcionario;

-- 4.4. FULL JOIN - categorias e livros
SELECT c.nome AS categoria, l.titulo
FROM Categoria c
FULL JOIN Livro_Categoria lc ON c.id_categoria = lc.id_categoria
FULL JOIN Livro l ON lc.id_livro = l.id_livro;
