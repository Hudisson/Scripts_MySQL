/*DML Linguagem de Manipulação de Dados*/
/*
    INSERT, DELETE, UPDATE, SELECT e LOCK;

    Comando DML usado nesse script (INSERT). A instrução
    INSERT serve para inserir informações
    no banco de dados.
*/

/*Inserir dados segundo cada coluna na tabela*/
INSERT into <nome_tabela> (coluna_1, coluna_2) values (valor_1, valor_2);
insert into cliente (s_nome_cliente, s_cpf_cliente, d_nasc_cliente, i_tipo_cliente)
              values('Fulano da Silva', '71058204033', '1993-11-19',01);

/*
    Quando é inserido todos os dados de cada coluna na tabela, não
    é preciso informar as colunas na instrução sql apenas os valores.
*/
INSERT into <nome_tabela> values (valor_1, valor_2);
insert into tipocliente values (01,'PF');
insert into tipocliente values (02,'PJ');