/*
    VIEWS ou  TABELAS VIRTUAIS
    --------------------------------
    Uma View é um objetos pertencnte a um banco de dados 
    que serve para visualizar o retorno de uma consulta
    em um tabela de dados. As Views também são chamadas
    de Tabelas Virtuais e são baseadas em:
    SELECT, INSERT, DELETE, UPDATE.

    Em resumo, uma view é uma consulta automatizada (custo-
    mizada ou não).
*/


/*Criar uma view*/
create view <nome_da_view> as <instrução_DML>;

--- Exemplo1 ---
create view cliente_pf as 
   select s_nome_cliente, s_cpf_cliente from cliente where i_tipo_cliente = 1;

--- Exemplo2 ---
create view aniversario_pf as 
   select 
     s_nome_cliente, 
     s_cpf_cliente, 
     day(d_nasc_cliente) as aniversario
  from cliente where i_tipo_cliente = 1 and month(d_nasc_cliente) = month(curdate());
