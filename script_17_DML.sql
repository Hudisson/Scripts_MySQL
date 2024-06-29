/*
    GROUP BY
    --------------------------------
    A cláusula GROUP BY agrupa linhas e colunas 
    baseado em semelhanças entre elas.
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