/*DML Linguagem de Manipulação de Dados*/
/*
    INSERT, DELETE, UPDATE, SELECT e LOCK;

    Comando DML usado nesse script (INSERT). A instrução
    INSERT serve para inserir informações
    no banco de dados.
    Comando DQL (SELECT) para selecionar ou retornar os dados
    de uma tabela
*/
/*Inserir múltiplos valores em uma tabela usando INSERT e SELECT */
insert into <nome_tabela_02>
    (campo_a, campo_b, campo_c)
    select campo_aa, campo_bb, campo_cc from <nome_tabela_01>;
/* O trecho de código acima realiza em consulta na tabela_01 e inseri os valore 
na tabela_02*/
insert into cliente_02
    (s_nome_cliente, s_cpf_cliente, d_nasc_cliente, i_tipo_cliente)
    select s_nome_cliente, s_cpf_cliente, d_nasc_cliente, i_tipo_cliente from cliente;

