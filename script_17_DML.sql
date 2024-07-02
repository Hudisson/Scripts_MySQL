/*
    GROUP BY, HAVING, ORDER BY
    --------------------------------
    A cláusula GROUP BY agrupa linhas e colunas 
    baseado em semelhanças entre elas.

    A cláusula HAVING é usada para especificar condições
    de filtragem em grupos de registros ou agregações.
    É frequentemente usada em conjunto com a cláusula GROUP BY
    para filtrar as colunas agrupadas.

    A palavra-chave ORDER BY é usada para ordenar 
    o conjunto-resultado de registros em um consulta
    SQL, tanto de forma ascendente quanto descendente.
      ASC – Ordem ascendente
      DESC – Ordem descendente (inversa)
*/

/*SELECT com GROUP BY*/
SELECT <campo> FROM <nome_da_tabela> GROUP BY <campo>;
select i_tipo_cliente from cliente group by i_tipo_cliente;

select 
 .i_tipo_cliente as TIPO_CLIENTE,
  count(.i_tipo_cliente) as QTD
from 
 cliente
 group by 
i_tipo_cliente;

/*SELECT com GROUP BY e INNER JOIN*/
SELECT ALIAS_1.<campo> FROM <nome_da_tabela_1> ALIAS_1 
INNER JOIN <nome_da_tabela_2> ALIAS_2
ON ALIAS_1.<campo_A> = ALIAS_2.<campo_B>
GROUP BY <campo>;

select 
 c.i_tipo_cliente as TIPO_CLIENTE,
 t.s_desc_tipocliente as TIPO,
 count(c.i_tipo_cliente) as QTD
from 
cliente c
inner join 
 tipocliente t
on c.i_tipo_cliente = t.id_tipo_tipocliente
group by 
i_tipo_cliente;

/*SELECT com GROUP BY HAVING*/
SELECT <campo> FROM <nome_da_tabela> GROUP BY <campo> HAVING <campo_B> {expressão lógica} valor;
select i_tipo_cliente from cliente group by i_tipo_cliente having i_tipo_cliente > 1;

select 
 c.i_tipo_cliente as CD_TIPO,
 t.s_desc_tipocliente as TIPO,
 count(c.i_tipo_cliente) as QTD
from 
cliente c
inner join 
 tipocliente t
on c.i_tipo_cliente = t.id_tipo_tipocliente
group by  i_tipo_cliente
having t.s_desc_tipocliente != 'PJ';

/*SELECT com ORDER BY*/
SELECT <campo> FROM <nome_da_tabela> ORDER BY <campo_B>;
SELECT <campo> FROM <nome_da_tabela> ORDER BY <campo_B> <ORDEM>;
SELECT <campo> FROM <nome_da_tabela> ORDER BY <campo_B>, <campo_C>;
SELECT <campo> FROM <nome_da_tabela> ORDER BY <campo_B>, <campo_C> <ORDEM>
SELECT <campo> FROM <nome_da_tabela> ORDER BY <campo_B> <ORDEM>, <campo_C> <ORDEM>

select * from cliente order by s_nome_cliente;
select * from cliente order by s_nome_cliente asc;
select * from cliente order by s_nome_cliente desc;
select * from cliente order by i_tipo_cliente, s_nome_cliente;
select * from cliente order by i_tipo_cliente, s_nome_cliente desc;
select * from cliente order by i_tipo_cliente desc, s_nome_cliente asc;

/*SELECT com ORDER BY e expressões*/
SELECT <campo> FROM <nome_da_tabela> ORDER BY <expressão>(campo_desejado);

select * from cliente order by right(s_cpf_cliente, 3); /*busca por tres últios digitos do cpf*/
select * from cliente order by left(s_cpf_cliente, 3); /*busca por tres primeirs digitos do cpf*/