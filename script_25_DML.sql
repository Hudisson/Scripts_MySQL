/*
    STORED PROCEDURES
    ------------------
*/

DELIMITER @@
CREATE PROCEDURE <nome_procedimento>()
BEGIN
    -- INSTRUÇÃO SQL --
END @@
DELIMITER ;

/*CHAMADA DO PROCEDIMENTO CRIADO ACIMA*/
CALL <nome_procedimento>();

/*DECLARAR VARIÁVEIS*/
DELIMITER @@
CREATE PROCEDURE <nome_procedimento>()
BEGIN
    DECLARE <nome_da_variavel> <tipo_de_dado>(tamanho);
END @@
DELIMITER ;

/*DEFINIR VALOR PARA A VARIÁVEL*/
DELIMITER @@
CREATE PROCEDURE <nome_procedimento>()
BEGIN
    DECLARE <nome_da_variavel> <tipo_de_dado>(tamanho);
    SET <nome_da_variavel> = VALOR;

END @@
DELIMITER ;

/*RETORNAR O VALOR DA VARIÁVEL*/
DELIMITER @@
CREATE PROCEDURE <nome_procedimento>()
BEGIN
    DECLARE <nome_da_variavel> <tipo_de_dado>(tamanho);
    SET <nome_da_variavel> = VALOR;
    SELECT <nome_da_variavel>;
END @@
DELIMITER ;

/*PASSANDO PARÂMETRO PARA UM PROCEDIMENTO*/
DELIMITER @@
CREATE PROCEDURE <nome_procedimento>(IN <parametro> tipo(tamanho))
BEGIN
    DECLARE <nome_da_variavel> <tipo_de_dado>(tamanho);
    SET <nome_da_variavel> = VALOR;
    SELECT <nome_da_variavel>, <parametro>;
END @@
DELIMITER ;

/*CHAMADA DO PROCEDIMENTO CRIADO ACIMA*/
CALL <nome_procedimento>(valor_parametro);
