/*
    EXISTS
    ----------------
    O Operador EXISTS retona verdadeiro quando a consulta encontra 
    registros, e retorna falso quando não encontra registros.
*/  

SELECT <campo(s)> FROM <nome_da_tabela> WHERE 
EXISTS(
    SELECT <campo(s) FROM <nome_da_tabela> WHERE <campo> = valor);

select * from cliente WHERE
exists(select * from venda where i_cliente = 3);

select * from cliente c WHERE
exists(select * from vendas v where v.i_cliente = c.id_cliente);

/*
    CASE
    ---------------
    O operador CASE trata os resultados de uma consulta SQL 
*/

SELECT <campo(S)> CASE 
    WHEN <campo_A> = valor, <campo_B> = valor
    ELSE  <campo_A> = valor, <campo_B> = valor
    END 'ALIAS',
FROM <nome_da_tabela>;   

select s_nome_cliente, i_tipo_cliente, case
	when s_cpf_cliente is null then 'Valor inválido'
    else s_cpf_cliente
	end 'CPF'
from cliente; 

/*
    IFNULL ou COALESCE
    ---------------------
    A função IFNULL ou COALESCE verifica se um campo é nulo em consulta SQL
    IFNULL(campo, VR) -- o VR será retornado se o valor do campo for nulo 
*/

SELECT <campo(s)> IFNULL(<campo>,VR) FROM <nome_da_tabela>

select s_dscproduto_produtovenda, ifnull(i_qtde_produtovenda,0) as 'QTD'
from produtovenda; 

select *,
		round((f_precoun_produtovenda * IFNULL(i_qtde_produtovenda,0)),2 ) as 'TOTAL'
from produtovenda;
