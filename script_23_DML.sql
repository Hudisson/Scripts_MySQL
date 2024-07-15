/*
    UNION
    -----------------
    O operador UNION é usado para combinar o resultado de dois ou mais SELECTs.
    O UNION seleciona somente valores distintos por padrão. Para valores duplicados use UNION ALL
*/

SELECT <campo(S)> FROM <nome_da_tabela_1>
UNION
SELECT <campo(S)> FROM <nome_da_tabela_2>

SELECT 'TXT_Identificador TBL1' <campo(S)> FROM <nome_da_tabela_1>
UNION
SELECT 'TXT_Identificador TBL2'<campo(S)> FROM <nome_da_tabela_2>

select s_nome_cliente,s_cpf_cliente from cliente
union
select produto, f_valor from vendas;

select 'Cliente',s_nome_cliente,s_cpf_cliente from cliente
union
select 'Vanda', produto, f_valor from vendas;