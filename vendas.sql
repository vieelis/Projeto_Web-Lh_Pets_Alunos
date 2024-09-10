CREATE DATABASE VENDAS;
GO;

CREATE TABLE TBLCLIENTES (
    CPF_CNPJ VARCHAR(20),
    NOME VARCHAR(30),
    ENDERECO VARCHAR(50),
    RG_IE VARCHAR(18),
    TIPO CHAR,
    VALOR FLOAT,
    VALOR_IMPOSTO FLOAT,
    TOTAL FLOAT
);
GO;

INSERT INTO TBLCLIENTES VALUES (
    '123.567.898-02', 'Vini Junior', 'Rua Madalena, 67', '3.879.489', 'F', 2500.00, 250.00, 2750.00 
);
GO;

SELECT * FROM TBLCLIENTES;

-- COMANDOS DE SEGURANÇA

CREATE LOGIN aluno WITH PASSWORD = 'Abc12345';

USE VENDAS;

CREATE USER usuario_venda FOR LOGIN aluno;

GRANT SELECT TO usuario_venda;

GRANT INSERT TO usuario_venda;

REVOKE INSERT FROM usuario_venda;
