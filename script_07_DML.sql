/*DML Linguagem de Manipulação de Dados*/
/*
    INSERT, DELETE, UPDATE, SELECT e LOCK;

    Comando DML usado nesse script (UPDATE). A instrução
    UPDATE serve para atualizar/alterar registros em 
    tabelas no banco de dados.
*/

/*Atualizar ou alterar uma registro*/

update <nome_tabela> set <nome_campo1> = 'Novo valor c1', <nome_campo2> = 'Novo valor c2'
				where <nome_campo3> = valorC3;

update cliente set s_nome_cliente = 'Ciclano da Silva', s_cpf_cliente = '87065423411'
				where i_id_cliente = 2;

/*----[ATENÇÃO]:

    Nunca esquecer de usar a cláusula ( WHERE ) para especificar
    qual o registro será alterado, sem ela todos os campos receberão
    os mesmos valores informados na alteração.
    Geralmente especifica-se um campo de identificação de valor único
    como o ID de registro da tabela.
 */