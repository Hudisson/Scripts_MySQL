/*DML Linguagem de Manipulação de Dados*/
/*
    INSERT, DELETE, UPDATE, SELECT e LOCK;

    Subselect ou subquery com instrução FROM
*/

/*
    Usar resultado de uma outra consulta

    select da consulta 2 from (select da consulta 1) ALIAS

*/

SELECT <ALIAS.campo> FROM (SELECT <campo1>, <campo2> FROM <nome_da_tabela>) ALIAS;

select c.s_nome_cliente from (select s_nome_cliente, s_cpf_cliente from cliente) c;