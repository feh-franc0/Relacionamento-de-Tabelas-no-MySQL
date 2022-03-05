DROP TABLE tb_funcionarios;
DROP TABLE tb_pessoas;

create database hcode;
use hcode;

CREATE TABLE tb_pessoas(
	idpessoa INT AUTO_INCREMENT NOT NULL,
    desnome VARCHAR(256) NOT NULL,
    dtcadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    CONSTRAINT PK_pessoas PRIMARY KEY(idpessoa)
) ENGINE = innoDB;

CREATE TABLE tb_funcionarios (
	idfuncionario INT AUTO_INCREMENT NOT NULL,
    idpessoa INT NOT NULL,
    vlsalario DECIMAL(10,2) NOT NULL DEFAULT 1000.00,
    dtadmissao DATE NOT NULL,
    CONSTRAINT PK_funcionarios PRIMARY KEY (idfuncionario),
    CONSTRAINT FK_funcionarios_pessoas foreign key (idpessoa)
		REFERENCES tb_pessoas(idpessoa)
);

INSERT INTO tb_pessoas (desnome) VALUES ('João');
SELECT * FROM tb_pessoas;
INSERT INTO tb_funcionarios (idpessoa,vlsalario,dtadmissao) VALUES(1,5000,CURRENT_DATE());
SELECT * FROM tb_funcionarios;
INSERT INTO tb_funcionarios (idpessoa,vlsalario,dtadmissao) VALUES(2,5000,CURRENT_DATE());


