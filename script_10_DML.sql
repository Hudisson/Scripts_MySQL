/*DML Linguagem de Manipulação de Dados*/
/*
    INSERT, DELETE, UPDATE, SELECT e LOCK;

    Comando DML usado nesse script (SELECT). A instrução
    SELECT serve para realizar consultas em registros de 
    tabelas no banco de dados.
    É possível usar apelidos (ALIAS) nas consultas SQL,
    o ALIAS serve para renomear o campo durante a consulta
    sem alterar a esrutura da tabela.
*/

/*Consulta simples*/
SELECT <campoA>, <campoB> FROM <nome_tabela>;
SELECT s_nome_cliente, s_cpf_cliente FROM cliente;

/*Consulta com ALIAS*/
SELECT <campoA> as <campoAA>, <campoB> as <campoBB> FROM <nome_tabela>;
SELECT s_nome_cliente as NOME, s_cpf_cliente as CPF FROM cliente;
