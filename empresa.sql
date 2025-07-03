-- 1. Tabela DEPARTAMENTO (não depende de nenhuma outra)
CREATE TABLE DEPARTAMENTO (
  Dnome                 VARCHAR(100) NOT NULL,
  Dnumero               INT          NOT NULL,
  Cpf_gerente           CHAR(11)     NOT NULL,
  Data_inicio_gerente   DATE,
  PRIMARY KEY (Dnumero),
  UNIQUE (Dnome)
  -- FOREIGN KEY será adicionada depois, pois depende de FUNCIONARIO
);

-- 2. Tabela FUNCIONARIO (depende de DEPARTAMENTO, mas referência circular com Cpf_supervisor e Cpf_gerente)
CREATE TABLE FUNCIONARIO (
  Pnome           VARCHAR(100)    NOT NULL,
  Minicial        CHAR,
  Unome           VARCHAR(100)    NOT NULL,
  Cpf             CHAR(11)        NOT NULL,
  Datanasc        DATE,
  Endereco        VARCHAR(100),
  Sexo            CHAR,
  Salario         DECIMAL(10,2),
  Cpf_supervisor  CHAR(11),
  Dnr             INT,
  PRIMARY KEY (Cpf)
  -- FOREIGN KEYS adicionadas depois para evitar referência circular
);

-- 3. Adicionar FKs agora que as duas tabelas existem
ALTER TABLE FUNCIONARIO
  ADD FOREIGN KEY (Dnr) REFERENCES DEPARTAMENTO(Dnumero),
  ADD FOREIGN KEY (Cpf_supervisor) REFERENCES FUNCIONARIO(Cpf);

ALTER TABLE DEPARTAMENTO
  ALTER COLUMN Cpf_gerente DROP NOT NULL, -- Permite NULL para carga inicial
  ADD FOREIGN KEY (Cpf_gerente) REFERENCES FUNCIONARIO(Cpf);

-- 4. LOCALIZACAO_DEP depende de DEPARTAMENTO
CREATE TABLE LOCALIZACAO_DEP (
  Dnumero  INT           NOT NULL,
  Dlocal   VARCHAR(50)   NOT NULL,
  PRIMARY KEY (Dnumero, Dlocal),
  FOREIGN KEY (Dnumero) REFERENCES DEPARTAMENTO(Dnumero)
);

-- 5. PROJETO depende de DEPARTAMENTO
CREATE TABLE PROJETO (
  Projnome   VARCHAR(100) NOT NULL,
  Projnumero INT          NOT NULL,
  Projlocal  VARCHAR(50),
  Dnum       INT          NOT NULL,
  PRIMARY KEY (Projnumero),
  UNIQUE (Projnome),
  FOREIGN KEY (Dnum) REFERENCES DEPARTAMENTO(Dnumero)
);

-- 6. FUNCIONARIO já existe, então TRABALHA_EM pode ser criada
CREATE TABLE TRABALHA_EM (
  Fcpf   CHAR(11)        NOT NULL,
  Pnr    INT             NOT NULL,
  Horas  DECIMAL(3,1)    NOT NULL,
  PRIMARY KEY (Fcpf, Pnr),
  FOREIGN KEY (Fcpf) REFERENCES FUNCIONARIO(Cpf),
  FOREIGN KEY (Pnr) REFERENCES PROJETO(Projnumero)
);

-- 7. DEPENDENTE depende apenas de FUNCIONARIO
CREATE TABLE DEPENDENTE (
  Fcpf              CHAR(11)      NOT NULL,
  Nome_dependente   VARCHAR(100)  NOT NULL,
  Sexo              CHAR,
  Datanasc          DATE,
  Parentesco        VARCHAR(8),
  PRIMARY KEY (Fcpf, Nome_dependente),
  FOREIGN KEY (Fcpf) REFERENCES FUNCIONARIO(Cpf)
);
