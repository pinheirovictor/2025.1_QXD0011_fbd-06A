select nome as usuario_nome, data_nascimento as nascimento
from usuario

select u.nome, e.cidade
from usuario as u
join endereco as e ON u.id_usuario = e.id_usuario

select u.nome, e.cidade
from usuario as u, endereco as e
where u.id_usuario = e.id_usuario


select * from emprestimo where data_devolucao IS NULL


select count(*) as total_emprestimos
From emprestimo



select min(data_reserva) as ultima_reserva
from reserva

select max(data_reserva) as ultima_reserva
from reserva

select * from livro



select avg(ano_publicacao) as media_ano
from livro


select c.nome as categoria,
count(lc.id_livro) as qtd_livros
from categoria c
join livro_categoria lc ON c.id_categoria=lc.id_categoria
group by c.nome


select c.nome as categoria,
count(lc.id_livro) as qtd_livros
from categoria c, livro_categoria lc
where c.id_categoria=lc.id_categoria
group by c.nome


