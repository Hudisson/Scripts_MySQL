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

/*PASSANDO PARAMENTRO DE SAÍDA*/
DELIMITER @@
CREATE PROCEDURE <nome_procedimento>(IN <parametro_in> tipo(tamanho), out <parametro_out> tipo) 
BEGIN
    DECLARE <nome_da_variavel> <tipo_de_dado>(tamanho);
    SET <nome_da_variavel> = VALOR;
    SET <parametro_out> = VALOR;
    SELECT <nome_da_variavel>, <parametro>;
END @@
DELIMITER ;

CALL <nome_procedimento>(valor_in, @retorno);
SELECT @retorno;

-- Exemplo --
DELIMITER @@
	CREATE PROCEDURE idade(IN idCliente INT, OUT idadeCliente int)
BEGIN
	DECLARE data_nasc datetime;
    SET data_nasc = (SELECT d_nasc_cliente FROM cliente WHERE id_cliente = idCliente);
    SET idadeCliente = year(now()) - year(data_nasc);
    
END @@
DELIMITER ;

call idade(3,@idadeCliente);
SELECT @idadeCliente;

/*Exemplo com condicional IF*/
DELIMITER @@
	CREATE PROCEDURE idade(IN idCliente INT, OUT idadeCliente int, OUT res varchar(5))
BEGIN
	DECLARE data_nasc datetime;
    SET data_nasc = (SELECT d_nasc_cliente FROM cliente WHERE id_cliente = idCliente);
    SET idadeCliente = year(now()) - year(data_nasc);
    IF(idadeCliente >= 18)THEN
		SET res = "SIM";
     ELSE
		SET res = "NÃO";
    END IF;
    
END @@
DELIMITER ;

call idade(4,@idadeCliente, @maiorIdade);
select @idadeCliente as 'Idade',@maiorIdade as "Maior Idade";