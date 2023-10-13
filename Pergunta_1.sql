-- 1. criar e usar o schema com o nome específico para ser utilizado

DROP SCHEMA IF EXISTS questionario;
CREATE SCHEMA questionario;
USE questionario;

# a) Crie as tabelas com suas respectivas relações. - OK 

-- 2. criar as tabelas específicas: usuarios, Empresas, PesquisaClima

# Empresas:
# - empresa_id (int, PK)
# - nome_empresa (varchar)
# - endereço (varchar)

-- 2.1: criação da tabela empresas primeiro porque ela tem relacionamentos como foreign key na tabela usuarios.

CREATE TABLE Empresas(
	empresa_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_empresa VARCHAR(100),
    endereco VARCHAR(255)
    );

# Usuarios:
# - usuario_id (int, PK)
# - nome (varchar)
# - email (varchar)
# - empresa_id (int, FK)

-- 2.2: criação da tabela usuarios

CREATE TABLE usuarios(
	usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(180),
    empresa_id INT NOT NULL,
    FOREIGN KEY (empresa_id) REFERENCES Empresas(empresa_id)
    );

# PesquisaClima:
# - pesquisa_id (int, PK)
# - usuario_id (int, FK)
# - satisfação (int, valor entre 1 e 5)
# - comentário (varchar)

-- 2.3: criação da tabela 

CREATE TABLE PesquisaClima(
	pesquisa_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    satisfacao INT NOT NULL,
    comentario VARCHAR(255),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
    );


# b) Insira os dados de 3 usuários diferentes que trabalham em 2 empresas diferentes (Sendo uma delas a TechCorp).

# c) Dentre esses 3 usuários, 2 deles devem responder à pesquisa de clima com diferentes níveis de satisfação.

-- 3.1: adicionando dados na tabela Empresas

INSERT INTO Empresas (nome_empresa, endereco) VALUES
    ('Masp', 'Avenida Paulista, 2000, Bela Vista, São Paulo, SP'),
    ('TechCorp', 'Rua da Felicidade, 128, Vila Madalena, São Paulo, SP');
 
-- 3.2: adicionando dados na tabela usuarios

INSERT INTO usuarios (nome, email, empresa_id) VALUES
	('Tabata Wod', 'wod@techcorp.com', 2),
	('Zeca Pag Odin', 'zeca@techcorp.com', 2),
	('Candido Portinari', 'portinari@masp.com.br', 1);

-- 3.3: adicionando dados na tabela PesquisaClima

INSERT INTO PesquisaClima (usuario_id, satisfacao, comentario) VALUES
	(1, 5, 'A TechCorp possui muitos projetos desafiadores, mas sempre entregamos no prazo!'),
	(2, 4, 'TechCorp é uma excelente empresa para trabalhar, porém nos últimos projetos não tínhamos um time totalmente alinhado'),
	(3, 4, 'Sinto que estou estagnado na minha função, mas o ambiente de trabalho do Masp é muito bom');