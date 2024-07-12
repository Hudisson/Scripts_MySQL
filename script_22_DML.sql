/*
    JOIN
    -------------
    Os JOINS do MySQL são utilizados com a instrução SELECT. 
    É utilizado para obter dados de várias tabelas. É executada
    sempre que é necessário obter registos de duas ou mais tabelas.

    INNER JOIN: Retorna os dados em comum entre as tabelas (conjnto intersecção)
    LEFT JOIN: Retorna os dados da tabela a equeda mais a intersecção entra as tabelas
    RIGHT JOIN: Retorna os dados da tabela a direita mais a intersecção entra as tabelas
    SELF JOIN: Liga uma tabela a ela mesma.
*/

/*INNER JOIN*/
SELECT ALIAS_A.<campo(s)> FROM <nome_da_tabela> ALIAS_A
INNER JOIN <nome_da_tabela> ALIAS_B
ON ALIAS_B <campo> = ALIAS_A.<campo>

select c.s_nome_cliente,v.produto, v.f_valor from cliente c
inner join vendas v
on v.i_cliente = c.id_cliente;

/*RIGHT JOIN*/
SELECT ALIAS_A.<campo(s)> FROM <nome_da_tabela> ALIAS_A
right JOIN <nome_da_tabela> ALIAS_B
ON ALIAS_B <campo> = ALIAS_A.<campo>

select c.s_nome_cliente, v.produto, v.f_valor
from cliente c right join vendas v
on v.i_cliente = c.id_cliente;

/*LEFT JOIN*/
SELECT ALIAS_A.<campo(s)> FROM <nome_da_tabela> ALIAS_A
LEFT JOIN <nome_da_tabela> ALIAS_B
ON ALIAS_B <campo> = ALIAS_A.<campo>

select c.s_nome_cliente, v.produto, v.f_valor
from cliente c left join vendas v
on v.i_cliente = c.id_cliente;

/*SELF JOIN*/
SELECT <campo(s)> FROM <nome_da_tabela_A> ALIAS_A, <nome_da_tabela_A> ALIAS_B
WHERE ALIAS_A.<campo> = ALIAS_B.<campo> AND
ALIAS_A.<campo> = valor;

select * from cliente ca, cliente cb
where ca.i_tipo_cliente = cb.i_tipo_cliente
and ca.s_nome_cliente = 'Fulano da Silva';
