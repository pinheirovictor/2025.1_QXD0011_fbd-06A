--roda primeiro esse
SELECT conname
FROM pg_constraint
WHERE conrelid = 'departamento'::regclass AND contype = 'f';

--roda segundo esse
ALTER TABLE departamento
    ALTER CONSTRAINT departamento_cpf_gerente_fkey DEFERRABLE INITIALLY DEFERRED;


--roda terceiro o script de povoar 
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_1', 1, '11111111111', '2021-01-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_2', 2, '22222222222', '2021-02-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_3', 3, '33333333333', '2021-03-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_4', 4, '44444444444', '2021-04-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_5', 5, '55555555555', '2021-05-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_6', 6, '66666666666', '2021-06-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_7', 7, '77777777777', '2021-07-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_8', 8, '88888888888', '2021-08-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_9', 9, '99999999999', '2021-09-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_10', 10, '10101010101', '2021-10-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_11', 11, '11111111111', '2022-01-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_12', 12, '22222222222', '2022-02-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_13', 13, '33333333333', '2022-03-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_14', 14, '44444444444', '2022-04-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_15', 15, '55555555555', '2022-05-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_16', 16, '66666666666', '2022-06-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_17', 17, '77777777777', '2022-07-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_18', 18, '88888888888', '2022-08-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_19', 19, '99999999999', '2022-09-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_20', 20, '10101010101', '2022-10-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_21', 21, '11111111111', '2023-01-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_22', 22, '22222222222', '2023-02-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_23', 23, '33333333333', '2023-03-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_24', 24, '44444444444', '2023-04-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_25', 25, '55555555555', '2023-05-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_26', 26, '66666666666', '2023-06-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_27', 27, '77777777777', '2023-07-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_28', 28, '88888888888', '2023-08-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_29', 29, '99999999999', '2023-09-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_30', 30, '10101010101', '2023-10-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_31', 31, '11111111111', '2024-01-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_32', 32, '22222222222', '2024-02-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_33', 33, '33333333333', '2024-03-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_34', 34, '44444444444', '2024-04-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_35', 35, '55555555555', '2024-05-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_36', 36, '66666666666', '2024-06-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_37', 37, '77777777777', '2024-07-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_38', 38, '88888888888', '2024-08-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_39', 39, '99999999999', '2024-09-01');
INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente) VALUES ('Dep_40', 40, '10101010101', '2024-10-01');


INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('João', 'A', 'Silva', '11111111111', '1980-05-10', 'Rua Alfa, 10', 'M', 7000.00, '11111111111', 1);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Maria', 'B', 'Souza', '22222222222', '1985-08-22', 'Rua Beta, 20', 'F', 9000.00, '11111111111', 2);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('José', 'C', 'Oliveira', '33333333333', '1977-12-31', 'Rua Gama, 30', 'M', 12000.00, '22222222222', 3);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Ana', 'D', 'Costa', '44444444444', '1990-04-18', 'Rua Delta, 40', 'F', 8000.00, '33333333333', 4);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Carlos', 'E', 'Lima', '55555555555', '1982-09-22', 'Rua Épsilon, 50', 'M', 10500.00, '44444444444', 5);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Patrícia', 'F', 'Barros', '66666666666', '1979-03-30', 'Rua Zeta, 60', 'F', 9500.00, '55555555555', 6);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Bruno', 'G', 'Ramos', '77777777777', '1987-10-15', 'Rua Eta, 70', 'M', 7500.00, '66666666666', 7);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Fernanda', 'H', 'Santos', '88888888888', '1984-11-23', 'Rua Teta, 80', 'F', 10800.00, '77777777777', 8);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Gabriel', 'I', 'Melo', '99999999999', '1991-07-19', 'Rua Iota, 90', 'M', 9900.00, '88888888888', 9);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Juliana', 'J', 'Freitas', '10101010101', '1995-02-03', 'Rua Kappa, 100', 'F', 10200.00, '99999999999', 10);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Lucas', 'K', 'Pereira', '12121212121', '1988-06-15', 'Rua Lambda, 110', 'M', 7300.00, '10101010101', 11);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Vanessa', 'L', 'Cardoso', '13131313131', '1983-03-09', 'Rua Mi, 120', 'F', 8600.00, '12121212121', 12);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Renato', 'M', 'Almeida', '14141414141', '1976-11-11', 'Rua Ni, 130', 'M', 9700.00, '13131313131', 13);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Letícia', 'N', 'Batista', '15151515151', '1989-12-22', 'Rua Xi, 140', 'F', 9100.00, '14141414141', 14);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Thiago', 'O', 'Cruz', '16161616161', '1986-04-01', 'Rua Omicron, 150', 'M', 9800.00, '15151515151', 15);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Bianca', 'P', 'Dias', '17171717171', '1992-09-17', 'Rua Pi, 160', 'F', 8500.00, '16161616161', 16);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Sérgio', 'Q', 'Vieira', '18181818181', '1981-08-27', 'Rua Qoppa, 170', 'M', 10400.00, '17171717171', 17);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Amanda', 'R', 'Fernandes', '19191919191', '1983-05-13', 'Rua Rho, 180', 'F', 9700.00, '18181818181', 18);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Otávio', 'S', 'Azevedo', '20202020202', '1978-02-18', 'Rua Sigma, 190', 'M', 8000.00, '19191919191', 19);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Marina', 'T', 'Martins', '21212121212', '1990-11-10', 'Rua Tau, 200', 'F', 10000.00, '20202020202', 20);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Eduardo', 'U', 'Borges', '23232323232', '1984-06-20', 'Rua Ípsilon, 210', 'M', 9000.00, '21212121212', 21);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Simone', 'V', 'Freire', '24242424242', '1979-10-22', 'Rua Fi, 220', 'F', 10600.00, '23232323232', 22);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Fábio', 'W', 'Ribeiro', '25252525252', '1982-01-04', 'Rua Psi, 230', 'M', 9900.00, '24242424242', 23);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Jéssica', 'X', 'Moura', '26262626262', '1987-05-15', 'Rua Omega, 240', 'F', 10200.00, '25252525252', 24);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Rodrigo', 'Y', 'Alves', '27272727272', '1980-08-09', 'Rua Sigma, 250', 'M', 9300.00, '26262626262', 25);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Tatiane', 'Z', 'Pinto', '28282828282', '1994-02-12', 'Rua Alfa, 260', 'F', 9600.00, '27272727272', 26);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Hugo', 'A', 'Farias', '29292929292', '1975-09-25', 'Rua Beta, 270', 'M', 10700.00, '28282828282', 27);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Sueli', 'B', 'Neves', '30303030303', '1986-06-19', 'Rua Gama, 280', 'F', 9100.00, '29292929292', 28);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Diego', 'C', 'Siqueira', '31313131313', '1991-07-27', 'Rua Delta, 290', 'M', 8400.00, '30303030303', 29);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Elisa', 'D', 'Paz', '32323232323', '1996-08-18', 'Rua Épsilon, 300', 'F', 9900.00, '31313131313', 30);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Murilo', 'E', 'Moreira', '33333333334', '1993-11-29', 'Rua Zeta, 310', 'M', 9500.00, '32323232323', 31);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Helena', 'F', 'Bastos', '34343434343', '1992-12-20', 'Rua Eta, 320', 'F', 10800.00, '33333333334', 32);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Matheus', 'G', 'Garcia', '35353535353', '1988-04-01', 'Rua Teta, 330', 'M', 11200.00, '34343434343', 33);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Isabela', 'H', 'Machado', '36363636363', '1991-06-09', 'Rua Iota, 340', 'F', 8800.00, '35353535353', 34);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Caio', 'I', 'Peixoto', '37373737373', '1983-09-22', 'Rua Kappa, 350', 'M', 8200.00, '36363636363', 35);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Rafaela', 'J', 'Fonseca', '38383838383', '1987-01-01', 'Rua Lambda, 360', 'F', 9800.00, '37373737373', 36);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Leandro', 'K', 'Rezende', '39393939393', '1995-07-13', 'Rua Mi, 370', 'M', 8700.00, '38383838383', 37);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Clara', 'L', 'Rosa', '40404040404', '1980-11-21', 'Rua Ni, 380', 'F', 9400.00, '39393939393', 38);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Ricardo', 'M', 'Teixeira', '41414141414', '1983-02-28', 'Rua Xi, 390', 'M', 10500.00, '40404040404', 39);
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Natália', 'N', 'Sampaio', '42424242424', '1990-08-15', 'Rua Omicron, 400', 'F', 10300.00, '41414141414', 40);

INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (1, 'São Paulo');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (2, 'Fortaleza');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (3, 'Rio de Janeiro');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (4, 'Belo Horizonte');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (5, 'Salvador');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (6, 'Recife');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (7, 'Porto Alegre');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (8, 'Manaus');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (9, 'Curitiba');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (10, 'Natal');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (11, 'Belém');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (12, 'João Pessoa');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (13, 'Vitória');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (14, 'Teresina');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (15, 'Florianópolis');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (16, 'São Luís');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (17, 'Campo Grande');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (18, 'Maceió');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (19, 'Aracaju');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (20, 'Cuiabá');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (21, 'Porto Velho');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (22, 'Boa Vista');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (23, 'Palmas');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (24, 'Macapá');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (25, 'Rio Branco');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (26, 'Sorocaba');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (27, 'Uberlândia');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (28, 'Niterói');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (29, 'Ribeirão Preto');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (30, 'Osasco');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (31, 'Maringá');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (32, 'Londrina');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (33, 'Caxias do Sul');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (34, 'São José dos Campos');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (35, 'Joinville');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (36, 'Santos');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (37, 'Campos dos Goytacazes');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (38, 'Ponta Grossa');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (39, 'Petrolina');
INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal) VALUES (40, 'Chapecó');


INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (1, 'Projeto Alfa', 'São Paulo', 1);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (2, 'Projeto Beta', 'Fortaleza', 2);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (3, 'Projeto Gama', 'Rio de Janeiro', 3);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (4, 'Projeto Delta', 'Belo Horizonte', 4);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (5, 'Projeto Épsilon', 'Salvador', 5);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (6, 'Projeto Zeta', 'Recife', 6);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (7, 'Projeto Eta', 'Porto Alegre', 7);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (8, 'Projeto Teta', 'Manaus', 8);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (9, 'Projeto Iota', 'Curitiba', 9);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (10, 'Projeto Kappa', 'Natal', 10);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (11, 'Projeto Lambda', 'Belém', 11);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (12, 'Projeto Mi', 'João Pessoa', 12);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (13, 'Projeto Ni', 'Vitória', 13);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (14, 'Projeto Xi', 'Teresina', 14);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (15, 'Projeto Omicron', 'Florianópolis', 15);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (16, 'Projeto Pi', 'São Luís', 16);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (17, 'Projeto Rho', 'Campo Grande', 17);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (18, 'Projeto Sigma', 'Maceió', 18);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (19, 'Projeto Tau', 'Aracaju', 19);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (20, 'Projeto Ípsilon', 'Cuiabá', 20);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (21, 'Projeto Fi', 'Porto Velho', 21);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (22, 'Projeto Psi', 'Boa Vista', 22);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (23, 'Projeto Omega', 'Palmas', 23);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (24, 'Projeto Alfa 2', 'Macapá', 24);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (25, 'Projeto Beta 2', 'Rio Branco', 25);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (26, 'Projeto Gama 2', 'Sorocaba', 26);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (27, 'Projeto Delta 2', 'Uberlândia', 27);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (28, 'Projeto Épsilon 2', 'Niterói', 28);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (29, 'Projeto Zeta 2', 'Ribeirão Preto', 29);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (30, 'Projeto Eta 2', 'Osasco', 30);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (31, 'Projeto Teta 2', 'Maringá', 31);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (32, 'Projeto Iota 2', 'Londrina', 32);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (33, 'Projeto Kappa 2', 'Caxias do Sul', 33);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (34, 'Projeto Lambda 2', 'São José dos Campos', 34);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (35, 'Projeto Mi 2', 'Joinville', 35);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (36, 'Projeto Ni 2', 'Santos', 36);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (37, 'Projeto Xi 2', 'Campos dos Goytacazes', 37);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (38, 'Projeto Omicron 2', 'Ponta Grossa', 38);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (39, 'Projeto Pi 2', 'Petrolina', 39);
INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum) VALUES (40, 'Projeto Rho 2', 'Chapecó', 40);


INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('11111111111', 1, 10.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('22222222222', 2, 15.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('33333333333', 3, 20.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('44444444444', 4, 22.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('55555555555', 5, 12.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('66666666666', 6, 14.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('77777777777', 7, 17.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('88888888888', 8, 13.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('99999999999', 9, 18.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('10101010101', 10, 16.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('12121212121', 11, 10.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('13131313131', 12, 19.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('14141414141', 13, 21.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('15151515151', 14, 11.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('16161616161', 15, 23.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('17171717171', 16, 17.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('18181818181', 17, 12.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('19191919191', 18, 19.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('20202020202', 19, 14.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('21212121212', 20, 18.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('23232323232', 21, 15.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('24242424242', 22, 22.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('25252525252', 23, 11.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('26262626262', 24, 20.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('27272727272', 25, 16.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('28282828282', 26, 21.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('29292929292', 27, 13.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('30303030303', 28, 19.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('31313131313', 29, 14.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('32323232323', 30, 22.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('33333333334', 31, 18.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('34343434343', 32, 13.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('35353535353', 33, 11.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('36363636363', 34, 15.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('37373737373', 35, 21.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('38383838383', 36, 16.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('39393939393', 37, 20.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('40404040404', 38, 18.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('41414141414', 39, 23.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('42424242424', 40, 19.5);

INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('11111111111', 'Lucas', 'M', '2010-01-01', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('22222222222', 'Laura', 'F', '2012-06-10', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('33333333333', 'Paulo', 'M', '2015-09-09', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('44444444444', 'Ana', 'F', '2014-03-15', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('55555555555', 'Sofia', 'F', '2007-07-25', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('66666666666', 'Bruno', 'M', '2011-02-13', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('77777777777', 'Rafael', 'M', '2005-12-18', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('88888888888', 'Helena', 'F', '2017-08-29', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('99999999999', 'Caio', 'M', '2013-10-20', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('10101010101', 'Clara', 'F', '2016-02-18', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('12121212121', 'Isabela', 'F', '2008-09-09', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('13131313131', 'André', 'M', '2012-12-25', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('14141414141', 'Giovana', 'F', '2015-04-14', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('15151515151', 'Pedro', 'M', '2017-05-30', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('16161616161', 'Luana', 'F', '2006-01-01', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('17171717171', 'Diego', 'M', '2010-11-12', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('18181818181', 'Tatiane', 'F', '2012-07-18', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('19191919191', 'Vitor', 'M', '2013-01-10', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('20202020202', 'Fernanda', 'F', '2016-09-07', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('21212121212', 'Camila', 'F', '2007-03-05', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('23232323232', 'Eduardo', 'M', '2005-04-08', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('24242424242', 'Manuela', 'F', '2011-06-20', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('25252525252', 'Leonardo', 'M', '2015-08-01', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('26262626262', 'Priscila', 'F', '2014-04-13', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('27272727272', 'Lucas', 'M', '2012-11-23', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('28282828282', 'Marina', 'F', '2018-02-12', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('29292929292', 'Matheus', 'M', '2017-07-09', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('30303030303', 'Flávia', 'F', '2011-09-25', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('31313131313', 'Danilo', 'M', '2006-08-11', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('32323232323', 'Sara', 'F', '2010-06-15', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('33333333334', 'Samuel', 'M', '2013-02-20', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('34343434343', 'Elena', 'F', '2016-04-01', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('35353535353', 'Gustavo', 'M', '2017-01-29', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('36363636363', 'Bianca', 'F', '2010-10-10', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('37373737373', 'Alice', 'F', '2015-07-13', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('38383838383', 'Heitor', 'M', '2012-03-18', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('39393939393', 'Juliana', 'F', '2017-06-09', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('40404040404', 'Otávio', 'M', '2013-05-19', 'Filho');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('41414141414', 'Beatriz', 'F', '2011-09-08', 'Filha');
INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES ('42424242424', 'Sabrina', 'F', '2015-08-20', 'Filha');



INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr) VALUES ('Pedro', 'A', 'Fernandes', '50000000001', '1990-01-01', 'Rua 1, 51', 'M', 3500.00, '11111111111', 1), ('Carla', 'B', 'Almeida', '50000000002', '1988-02-02', 'Rua 2, 52', 'F', 3200.00, '22222222222', 2), ('Felipe', 'C', 'Santos', '50000000003', '1985-03-03', 'Rua 3, 53', 'M', 4000.00, '33333333333', 3), ('Juliana', 'D', 'Melo', '50000000004', '1992-04-04', 'Rua 4, 54', 'F', 3900.00, '44444444444', 4), ('Roberto', 'E', 'Oliveira', '50000000005', '1986-05-05', 'Rua 5, 55', 'M', 4100.00, '55555555555', 5), ('Luana', 'F', 'Rocha', '50000000006', '1993-06-06', 'Rua 6, 56', 'F', 3800.00, '66666666666', 6), ('Vitor', 'G', 'Ferreira', '50000000007', '1991-07-07', 'Rua 7, 57', 'M', 3600.00, '77777777777', 7), ('Marina', 'H', 'Barbosa', '50000000008', '1987-08-08', 'Rua 8, 58', 'F', 3500.00, '88888888888', 8), ('Igor', 'I', 'Martins', '50000000009', '1989-09-09', 'Rua 9, 59', 'M', 3700.00, '99999999999', 9), ('Bruna', 'J', 'Silveira', '50000000010', '1994-10-10', 'Rua 10, 60', 'F', 3900.00, '10101010101', 10), ('Tiago', 'K', 'Costa', '50000000011', '1982-11-11', 'Rua 11, 61', 'M', 3800.00, '11111111111', 11), ('Patrícia', 'L', 'Lopes', '50000000012', '1993-12-12', 'Rua 12, 62', 'F', 4200.00, '22222222222', 12), ('André', 'M', 'Moraes', '50000000013', '1984-01-13', 'Rua 13, 63', 'M', 4150.00, '33333333333', 13), ('Gabriela', 'N', 'Rezende', '50000000014', '1985-02-14', 'Rua 14, 64', 'F', 3950.00, '44444444444', 14), ('Sérgio', 'O', 'Cardoso', '50000000015', '1990-03-15', 'Rua 15, 65', 'M', 3650.00, '55555555555', 15), ('Renata', 'P', 'Gonçalves', '50000000016', '1991-04-16', 'Rua 16, 66', 'F', 3900.00, '66666666666', 16), ('Eduardo', 'Q', 'Teixeira', '50000000017', '1986-05-17', 'Rua 17, 67', 'M', 4000.00, '77777777777', 17), ('Michele', 'R', 'Ramos', '50000000018', '1987-06-18', 'Rua 18, 68', 'F', 3500.00, '88888888888', 18), ('Jorge', 'S', 'Monteiro', '50000000019', '1988-07-19', 'Rua 19, 69', 'M', 4200.00, '99999999999', 19), ('Alice', 'T', 'Pereira', '50000000020', '1995-08-20', 'Rua 20, 70', 'F', 4050.00, '10101010101', 20), ('Murilo', 'U', 'Henrique', '50000000021', '1989-09-21', 'Rua 21, 71', 'M', 3850.00, '11111111111', 21), ('Letícia', 'V', 'Campos', '50000000022', '1990-10-22', 'Rua 22, 72', 'F', 3950.00, '22222222222', 22), ('Rafael', 'W', 'Araújo', '50000000023', '1986-11-23', 'Rua 23, 73', 'M', 4100.00, '33333333333', 23), ('Fernanda', 'X', 'Vasconcelos', '50000000024', '1987-12-24', 'Rua 24, 74', 'F', 4000.00, '44444444444', 24), ('William', 'Y', 'Souza', '50000000025', '1988-01-25', 'Rua 25, 75', 'M', 3650.00, '55555555555', 25), ('Camila', 'Z', 'Moreira', '50000000026', '1991-02-26', 'Rua 26, 76', 'F', 3700.00, '66666666666', 26), ('Lucas', 'A', 'Mendes', '50000000027', '1982-03-27', 'Rua 27, 77', 'M', 3800.00, '77777777777', 27), ('Débora', 'B', 'Barros', '50000000028', '1985-04-28', 'Rua 28, 78', 'F', 4100.00, '88888888888', 28), ('Ricardo', 'C', 'Dantas', '50000000029', '1987-05-29', 'Rua 29, 79', 'M', 3900.00, '99999999999', 29), ('Paula', 'D', 'Prado', '50000000030', '1989-06-30', 'Rua 30, 80', 'F', 3750.00, '10101010101', 30), ('César', 'E', 'Freitas', '50000000031', '1990-07-31', 'Rua 31, 81', 'M', 4200.00, '11111111111', 31), ('Tânia', 'F', 'Macedo', '50000000032', '1991-08-01', 'Rua 32, 82', 'F', 3600.00, '22222222222', 32), ('Marcelo', 'G', 'Cavalcante', '50000000033', '1982-09-02', 'Rua 33, 83', 'M', 4150.00, '33333333333', 33), ('Helena', 'H', 'Azevedo', '50000000034', '1984-10-03', 'Rua 34, 84', 'F', 4000.00, '44444444444', 34), ('Otávio', 'I', 'Tavares', '50000000035', '1986-11-04', 'Rua 35, 85', 'M', 4100.00, '55555555555', 35), ('Lívia', 'J', 'Nascimento', '50000000036', '1993-12-05', 'Rua 36, 86', 'F', 3900.00, '66666666666', 36), ('Vinícius', 'K', 'Pires', '50000000037', '1987-01-06', 'Rua 37, 87', 'M', 4200.00, '77777777777', 37), ('Patrícia', 'L', 'Torres', '50000000038', '1989-02-07', 'Rua 38, 88', 'F', 3950.00, '88888888888', 38), ('Gustavo', 'M', 'Miranda', '50000000039', '1992-03-08', 'Rua 39, 89', 'M', 4100.00, '99999999999', 39), ('Silvia', 'N', 'Costa', '50000000040', '1991-04-09', 'Rua 40, 90', 'F', 3750.00, '10101010101', 40), ('Alan', 'O', 'Vidal', '50000000041', '1983-05-10', 'Rua 41, 91', 'M', 4050.00, '11111111111', 1), ('Sandra', 'P', 'Muniz', '50000000042', '1985-06-11', 'Rua 42, 92', 'F', 3800.00, '22222222222', 2), ('Márcio', 'Q', 'Pontes', '50000000043', '1987-07-12', 'Rua 43, 93', 'M', 3950.00, '33333333333', 3), ('Vanessa', 'R', 'Castro', '50000000044', '1990-08-13', 'Rua 44, 94', 'F', 3900.00, '44444444444', 4), ('Rodrigo', 'S', 'Lacerda', '50000000045', '1992-09-14', 'Rua 45, 95', 'M', 4200.00, '55555555555', 5), ('Talita', 'T', 'Nascimento', '50000000046', '1986-10-15', 'Rua 46, 96', 'F', 4100.00, '66666666666', 6), ('Bruno', 'U', 'Queiroz', '50000000047', '1987-11-16', 'Rua 47, 97', 'M', 3800.00, '77777777777', 7), ('Renata', 'V', 'Correia', '50000000048', '1989-12-17', 'Rua 48, 98', 'F', 4050.00, '88888888888', 8), ('Daniel', 'W', 'Trindade', '50000000049', '1991-01-18', 'Rua 49, 99', 'M', 4100.00, '99999999999', 9), ('Aline', 'X', 'Leite', '50000000050', '1993-02-19', 'Rua 50, 100', 'F', 3700.00, '10101010101', 10); 


-- Os primeiros 25 funcionários trabalham em dois projetos (Pnrs consecutivos), os outros em um projeto só
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000001', 1, 15.0),   ('50000000001', 2, 10.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000002', 2, 14.0),   ('50000000002', 3, 10.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000003', 3, 17.5),   ('50000000003', 4, 8.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000004', 4, 12.0),   ('50000000004', 5, 9.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000005', 5, 16.0),   ('50000000005', 6, 12.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000006', 6, 11.5),   ('50000000006', 7, 13.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000007', 7, 14.0),   ('50000000007', 8, 10.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000008', 8, 13.5),   ('50000000008', 9, 11.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000009', 9, 12.0),   ('50000000009', 10, 8.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000010', 10, 15.0),  ('50000000010', 11, 12.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000011', 11, 14.5),  ('50000000011', 12, 9.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000012', 12, 11.0),  ('50000000012', 13, 13.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000013', 13, 16.0),  ('50000000013', 14, 12.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000014', 14, 15.0),  ('50000000014', 15, 11.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000015', 15, 13.5),  ('50000000015', 16, 12.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000016', 16, 14.0),  ('50000000016', 17, 8.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000017', 17, 15.0),  ('50000000017', 18, 9.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000018', 18, 12.0),  ('50000000018', 19, 13.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000019', 19, 16.0),  ('50000000019', 20, 14.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000020', 20, 13.0),  ('50000000020', 21, 10.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000021', 21, 13.5),  ('50000000021', 22, 8.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000022', 22, 14.0),  ('50000000022', 23, 11.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000023', 23, 12.5),  ('50000000023', 24, 15.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000024', 24, 14.5),  ('50000000024', 25, 9.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000025', 25, 15.0),  ('50000000025', 26, 10.0);

-- Funcionários 26 a 50 trabalham em um projeto só (de 26 a 50, modulo 40)
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000026', 26, 12.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000027', 27, 13.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000028', 28, 11.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000029', 29, 14.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000030', 30, 10.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000031', 31, 13.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000032', 32, 15.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000033', 33, 12.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000034', 34, 14.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000035', 35, 16.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000036', 36, 12.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000037', 37, 11.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000038', 38, 14.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000039', 39, 13.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000040', 40, 12.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000041', 1, 10.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000042', 2, 13.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000043', 3, 11.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000044', 4, 14.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000045', 5, 15.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000046', 6, 12.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000047', 7, 13.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000048', 8, 14.5);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000049', 9, 12.0);
INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas) VALUES ('50000000050', 10, 13.5);


INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente)
VALUES 
('DepSemFunc_1', 101, NULL, NULL),
('DepSemFunc_2', 102, NULL, NULL),
('DepSemFunc_3', 103, NULL, NULL),
('DepSemFunc_4', 104, NULL, NULL),
('DepSemFunc_5', 105, NULL, NULL),
('DepSemFunc_6', 106, NULL, NULL),
('DepSemFunc_7', 107, NULL, NULL),
('DepSemFunc_8', 108, NULL, NULL),
('DepSemFunc_9', 109, NULL, NULL),
('DepSemFunc_10', 110, NULL, NULL);



INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente)
VALUES 
('DepSemProj_1', 201, NULL, NULL),
('DepSemProj_2', 202, NULL, NULL),
('DepSemProj_3', 203, NULL, NULL),
('DepSemProj_4', 204, NULL, NULL),
('DepSemProj_5', 205, NULL, NULL),
('DepSemProj_6', 206, NULL, NULL),
('DepSemProj_7', 207, NULL, NULL),
('DepSemProj_8', 208, NULL, NULL),
('DepSemProj_9', 209, NULL, NULL),
('DepSemProj_10', 210, NULL, NULL);





INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum)
VALUES 
(301, 'ProjSemFunc_1', 'Local A', 201),
(302, 'ProjSemFunc_2', 'Local B', 202),
(303, 'ProjSemFunc_3', 'Local C', 203),
(304, 'ProjSemFunc_4', 'Local D', 204),
(305, 'ProjSemFunc_5', 'Local E', 205),
(306, 'ProjSemFunc_6', 'Local F', 206),
(307, 'ProjSemFunc_7', 'Local G', 207),
(308, 'ProjSemFunc_8', 'Local H', 208),
(309, 'ProjSemFunc_9', 'Local I', 209),
(310, 'ProjSemFunc_10', 'Local J', 210);




INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr)
VALUES
('FuncSemDep_1', 'A', 'Solo', '70100000001', '1980-01-01', 'Rua 1', 'M', 3500.00, NULL, 101),
('FuncSemDep_2', 'B', 'Solo', '70100000002', '1981-02-02', 'Rua 2', 'F', 3600.00, NULL, 102),
('FuncSemDep_3', 'C', 'Solo', '70100000003', '1982-03-03', 'Rua 3', 'M', 3700.00, NULL, 103),
('FuncSemDep_4', 'D', 'Solo', '70100000004', '1983-04-04', 'Rua 4', 'F', 3800.00, NULL, 104),
('FuncSemDep_5', 'E', 'Solo', '70100000005', '1984-05-05', 'Rua 5', 'M', 3900.00, NULL, 105),
('FuncSemDep_6', 'F', 'Solo', '70100000006', '1985-06-06', 'Rua 6', 'F', 4000.00, NULL, 106),
('FuncSemDep_7', 'G', 'Solo', '70100000007', '1986-07-07', 'Rua 7', 'M', 4100.00, NULL, 107),
('FuncSemDep_8', 'H', 'Solo', '70100000008', '1987-08-08', 'Rua 8', 'F', 4200.00, NULL, 108),
('FuncSemDep_9', 'I', 'Solo', '70100000009', '1988-09-09', 'Rua 9', 'M', 4300.00, NULL, 109),
('FuncSemDep_10', 'J', 'Solo', '70100000010', '1989-10-10', 'Rua 10', 'F', 4400.00, NULL, 110);



INSERT INTO PROJETO (Projnumero, Projnome, Projlocal, Dnum)
VALUES
(401, 'ProjSemLocal_1', NULL, 1),
(402, 'ProjSemLocal_2', NULL, 2),
(403, 'ProjSemLocal_3', NULL, 3),
(404, 'ProjSemLocal_4', NULL, 4),
(405, 'ProjSemLocal_5', NULL, 5),
(406, 'ProjSemLocal_6', NULL, 6),
(407, 'ProjSemLocal_7', NULL, 7),
(408, 'ProjSemLocal_8', NULL, 8),
(409, 'ProjSemLocal_9', NULL, 9),
(410, 'ProjSemLocal_10', NULL, 10);



INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr)
VALUES
('FuncSemDepto_1', 'K', 'Solto', '70200000001', '1980-01-01', 'Rua X1', 'M', 3500.00, NULL, NULL),
('FuncSemDepto_2', 'L', 'Solto', '70200000002', '1981-02-02', 'Rua X2', 'F', 3600.00, NULL, NULL),
('FuncSemDepto_3', 'M', 'Solto', '70200000003', '1982-03-03', 'Rua X3', 'M', 3700.00, NULL, NULL),
('FuncSemDepto_4', 'N', 'Solto', '70200000004', '1983-04-04', 'Rua X4', 'F', 3800.00, NULL, NULL),
('FuncSemDepto_5', 'O', 'Solto', '70200000005', '1984-05-05', 'Rua X5', 'M', 3900.00, NULL, NULL),
('FuncSemDepto_6', 'P', 'Solto', '70200000006', '1985-06-06', 'Rua X6', 'F', 4000.00, NULL, NULL),
('FuncSemDepto_7', 'Q', 'Solto', '70200000007', '1986-07-07', 'Rua X7', 'M', 4100.00, NULL, NULL),
('FuncSemDepto_8', 'R', 'Solto', '70200000008', '1987-08-08', 'Rua X8', 'F', 4200.00, NULL, NULL),
('FuncSemDepto_9', 'S', 'Solto', '70200000009', '1988-09-09', 'Rua X9', 'M', 4300.00, NULL, NULL),
('FuncSemDepto_10', 'T', 'Solto', '70200000010', '1989-10-10', 'Rua X10', 'F', 4400.00, NULL, NULL);


INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente)
VALUES 
('DepSemLocal_1', 301, NULL, NULL),
('DepSemLocal_2', 302, NULL, NULL),
('DepSemLocal_3', 303, NULL, NULL),
('DepSemLocal_4', 304, NULL, NULL),
('DepSemLocal_5', 305, NULL, NULL),
('DepSemLocal_6', 306, NULL, NULL),
('DepSemLocal_7', 307, NULL, NULL),
('DepSemLocal_8', 308, NULL, NULL),
('DepSemLocal_9', 309, NULL, NULL),
('DepSemLocal_10', 310, NULL, NULL);






--roda por último esse
ALTER TABLE departamento
  ALTER CONSTRAINT departamento_cpf_gerente_fkey NOT DEFERRABLE;
