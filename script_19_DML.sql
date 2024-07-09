/*
    LIMIT, MAX, MIN
    ------------------
    LIMIT- Limita o número de registros em uma busca SQL,
    MAX - Retorna o maior valor de uma busca SQL
*/

/*Buscar os n primeiros registros de uma tabela*/
SELECT <campo(s)> FROM <nome_da_tabela> LIMIT <numero>;
select * from cliente limit 3;

/*Buscar os n primeiros registros de uma tabela apartir de uma condição*/
SELECT <campo(s)> FROM <nome_da_tabela> WHERE <campo> <codição> LIMIT <numero>
select * from cliente where id_cliente > 2 limit 3 ;

/*Busca o maior valor de uma tabela*/
SELECT MAX(<campo>) FROM <nome_da_tabela>;
select max(id_cliente) from cliente; --Retorna o maior ID da tabela --

/*Busca o menor valor de uma tabela*/
SELECT MIN(<campo>) FROM <nome_da_tabela>;
select min(id_cliente) from cliente; --Retorna o menor ID da tabela --

/*Usando subselect com MAX e MIN*/
SELECT <camo(s)> FROM <nome_da_tabela>
WHERE <campo> = (SELECT MAX(campo)FROM <nome_da_tabela>);

SELECT <camo(s)> FROM <nome_da_tabela>
WHERE <campo> = (SELECT MIN(campo)FROM <nome_da_tabela>);

select * from cliente
where id_cliente = (select max(id_cliente) from cliente);

select * from cliente
where id_cliente = (select min(id_cliente) from cliente);