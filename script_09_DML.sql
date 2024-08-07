/*DML Linguagem de Manipulação de Dados*/
/*
    INSERT, DELETE, UPDATE, SELECT e LOCK;

    Comando DML usado nesse script (SELECT ). A instrução
    SELECT serve para realizar consultas em registros de 
    tabelas no banco de dados.

    Para verificar se o valor de um campo é nulo usa-se
    (IS NULL) ou (IS NOT NULL)
*/

/*Selecionar todos so registro de uma tabela*/
SELECT * FROM <nome_tabela>

/*Selecionar registros de um único campo da tabela*/
SELECT <nome_do_campo> FROM <nome_tabela>
SELECT s_nome_cliente FROM cliente;

/*Selecina um registro específico na tabela*/
--- Retorna todos os dados do registro específico
SELECT * FROM <nome_tabela> WHERE <nome_do_campo> = valor;
select * from cliente where s_cpf_cliente = '71058204033';

--- Retorna apenas os dados selecionado do registro específico
SELECT <nome_do_campo1>, <nome_do_campo2>  FROM <nome_tabela> WHERE <nome_do_campo> = valor;
select s_nome_cliente, d_nasc_cliente, i_tipo_cliente from cliente where s_cpf_cliente = '97053804011';

/*Selecionar registros nulos e não nulos*/
SELECT * FROM <nome_da_tabela> WHERE <campo> IS NULL;
SELECT * FROM <nome_da_tabela> WHERE <campo> IS NOT NULL;
select * from cliente where d_nasc_cliente is null;
select * from cliente where d_nasc_cliente is not null;