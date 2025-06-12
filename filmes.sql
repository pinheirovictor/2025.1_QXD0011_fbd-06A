create table clientes (
	id serial primary key,
	cpf char(11) unique,
	nome varchar(50), 
	data_cadastro date,
	cidade varchar(40),
	uf char(2) default 'CE'
)

create table categorias(
	id serial primary key,
	nome varchar(50) not null
)

create table classes(
	id serial primary key,
	nome varchar(50) not null,
	preco decimal(10,2) not null
)

create table distribuidores(
	id serial primary key,
	nome varchar(50) not null
)

create table filmes(
	id serial primary key,
	titulo varchar(50) not null,
	id_distribuidor int not null,
	ano_lancamento date not null,
	id_categoria int not null,
	id_classe int not null,

	foreign key (id_distribuidor) 
	references distribuidores(id),
	foreign key (id_categoria)
	references categorias(id),
	foreign key (id_classe)
	references classes(id)
)

create table locacoes(
	id serial primary key,
	id_cliente int not null,
	id_filme int not null,
	dt_locacao date not null,
	dt_devolucao_prevista date,
	dt_devolucao date,
	valor decimal(10,2) not null,

	foreign key (id_cliente)
	references clientes(id),
	foreign key (id_filme)
	references filmes (id)
)




