-- 2023
-- 1T2023
LOAD DATA INFILE 'C:\\Users\\gamer\\Desktop\\Testes\\Exercicio 3\\Excel\\2023\\1T2023.csv'
INTO TABLE demonstracoes_contabeis 
FIELDS TERMINATED BY ';'
OPTIONALLY  ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 Lines
(data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
set
vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.'),
reg_ans = IF(EXISTS (SELECT 1 FROM operadoras where Registro_ANS = reg_ans), reg_ans, NULL);


-- 2T2023
LOAD DATA INFILE 'C:\\Users\\gamer\\Desktop\\Testes\\Exercicio 3\\Excel\\2023\\2T2023.csv'
INTO TABLE demonstracoes_contabeis 
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
set
vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.'),
reg_ans = IF(EXISTS (SELECT 1 FROM operadoras where Registro_ANS = reg_ans), reg_ans, NULL);

-- 3T2023
LOAD DATA INFILE 'C:\\Users\\gamer\\Desktop\\Testes\\Exercicio 3\\Excel\\2023\\3T2023.csv'
INTO TABLE demonstracoes_contabeis 
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
set
vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.'),
reg_ans = IF(EXISTS (SELECT 1 FROM operadoras where Registro_ANS = reg_ans), reg_ans, NULL);



-- 4T 2023
LOAD DATA INFILE 'C:\\Users\\gamer\\Desktop\\Testes\\Exercicio 3\\Excel\\2023\\4T2023.csv'
INTO TABLE demonstracoes_contabeis 
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
set
vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.'),
reg_ans = IF(EXISTS (SELECT 1 FROM operadoras where Registro_ANS = reg_ans), reg_ans, NULL);

-- 2024
-- 1T2024
LOAD DATA INFILE 'C:\\Users\\gamer\\Desktop\\Testes\\Exercicio 3\\Excel\\2024\\1T2024.csv'
INTO TABLE demonstracoes_contabeis 
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
set
vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.'),
reg_ans = IF(EXISTS (SELECT 1 FROM operadoras where Registro_ANS = reg_ans), reg_ans, NULL);

-- 2T2024
LOAD DATA INFILE 'C:\\Users\\gamer\\Desktop\\Testes\\Exercicio 3\\Excel\\2024\\2T2024.csv'
INTO TABLE demonstracoes_contabeis 
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
set
vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.'),
reg_ans = IF(EXISTS (SELECT 1 FROM operadoras where Registro_ANS = reg_ans), reg_ans, NULL);


-- 3T2024
LOAD DATA INFILE 'C:\\Users\\gamer\\Desktop\\Testes\\Exercicio 3\\Excel\\2024\\3T2024.csv'
INTO TABLE demonstracoes_contabeis 
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
set
vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.'),
reg_ans = IF(EXISTS (SELECT 1 FROM operadoras where Registro_ANS = reg_ans), reg_ans, NULL);


-- 4T2024
LOAD DATA INFILE 'C:\\Users\\gamer\\Desktop\\Testes\\Exercicio 3\\Excel\\2024\\4T2024.csv'
INTO TABLE demonstracoes_contabeis 
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
set
vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.'),
reg_ans = IF(EXISTS (SELECT 1 FROM operadoras where Registro_ANS = reg_ans), reg_ans, NULL);


-- Operadoras
LOAD DATA INFILE 'C:\\Users\\gamer\\Desktop\\Testes\\Exercicio 3\\Excel\\Operadoras\\Relatorio_cadop.csv'
INTO TABLE operadoras
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 rows;
