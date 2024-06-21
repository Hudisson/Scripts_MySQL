/*DML Linguagem de Manipulação de Dados*/
/*
    INSERT, DELETE, UPDATE, SELECT e LOCK;

    Comando DML usado nesse script (SELECT)
    com (DISTINCT).
    DISTINCT serve para eliminar registros
    repetidos em uma consulta SQL
*/

/*Consulta siples*/
SELECT <campo> FROM <nome_tabela>;
SELECT i_id_cliente FROM vendas;

/*Consulta com DISTINCT*/
SELECT DISTINCT <campo> FROM <nome_tabela>;
select distinct i_tipo_cliente from cliente;
