/*
    INNER JOIN
    --------------------------------
    INNER JOIN é uma cláusula que permite a junção 
    entre duas ou mais tabelas na mesma consulta SQL, 
    desde que hajam relacionamento entre as tabelas.
*/

/*Consulta com INNER JOIN*/

SELECT 
   ALIAS_1.<campo_A>
   ALIAS_2.<campo_B>
FROM
    <nome_da_tabela_1> ALIAS_1
INNER JOIN 
    <nome_da_tabela_2> ALIAS_2
ON 
  ALIAS_1.<campo_C> = ALIAS_2.<campo_D>
      
/*Exemplo*/
select 
  c.s_nome_cliente as Nome,
  c.s_cpf_cliente as CPF_ou_CNPJ,
  t.s_desc_tipocliente as TIPO
from 
   cliente c 
inner join
   tipocliente t
ON  c.i_tipo_cliente = t.id_tipo_tipocliente; 