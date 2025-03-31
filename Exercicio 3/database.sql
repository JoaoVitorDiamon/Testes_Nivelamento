create database Exercicio03;
use Exercicio03;


CREATE TABLE operadoras (
    Registro_ANS INT PRIMARY KEY,
    CNPJ VARCHAR(20),
    Razao_Social VARCHAR(255),
    Nome_Fantasia VARCHAR(255),
    Modalidade VARCHAR(100),
    Logradouro VARCHAR(255),
    Numero VARCHAR(10),
    Complemento VARCHAR(255),
    Bairro VARCHAR(100),
    Cidade VARCHAR(100),
    UF CHAR(2),
    CEP VARCHAR(10),
    DDD VARCHAR(3),
    Telefone VARCHAR(20),
    Fax VARCHAR(20),
    Endereco_eletronico VARCHAR(255),
    Representante VARCHAR(255),
    Cargo_Representante VARCHAR(100),
    Regiao_de_Comercializacao INT,
    Data_Registro_ANS DATE
);
create table demonstracoes_contabeis (
    data DATE, 
	reg_ans INT ,  
    cd_conta_contabil INT, 
    descricao TEXT,  
    vl_saldo_inicial DECIMAL(15,2), 
    vl_saldo_final DECIMAL(15,2),
   constraint FK_REG_ANS FOREIGN KEY(reg_ans) references operadoras(Registro_ANS)
);



-- Exercicio 1
SELECT 
    operadoras.Razao_Social,
    CONCAT('R$ ', FORMAT(SUM(demonstracoes_contabeis.vl_saldo_final), 2)) AS Total_Despesas  
FROM 
    demonstracoes_contabeis  
JOIN 
    operadoras  
    ON 
    demonstracoes_contabeis.reg_ans = operadoras.Registro_ANS  
WHERE 
    demonstracoes_contabeis.descricao = 'EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR'
    AND
    demonstracoes_contabeis.data BETWEEN '2024-09-30' AND '2024-12-31'  
GROUP BY 
    operadoras.Razao_Social  
ORDER BY 
    SUM(demonstracoes_contabeis.vl_saldo_final) DESC
LIMIT 10;




-- Exercicio 2
SELECT 
    operadoras.Razao_Social,
    CONCAT('R$ ', FORMAT(SUM(demonstracoes_contabeis.vl_saldo_final), 2)) AS Total_Despesas  
FROM 
    demonstracoes_contabeis  
JOIN 
    operadoras  
    ON 
    demonstracoes_contabeis.reg_ans = operadoras.Registro_ANS  
WHERE 
    demonstracoes_contabeis.descricao = 'EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR'
    AND
    demonstracoes_contabeis.data BETWEEN '2023-12-31' AND '2024-12-31'  
GROUP BY 
    operadoras.Razao_Social  
ORDER BY 
    SUM(demonstracoes_contabeis.vl_saldo_final) DESC
LIMIT 10;


