/*DML Linguagem de Manipulação de Dados*/
/*
    INSERT, DELETE, UPDATE, SELECT e LOCK;

    Comando DML usado nesse script (DELETE). A instrução
    DELETE serve para apagar/deletar registros em 
    tabelas no banco de dados.
*/

/*Deletar todos os registro em tabela*/
DELETE FROM <nome_tabela>;

/*Deletar um registro específico em uma tabela*/
DELETE FROM <nome_tabela> WHERE <campo> = valor;

DELETE FROM cliente WHERE i_id_cliente = 5;

/*----[ATENÇÃO]:

    Nunca esquecer de usar a cláusula ( WHERE ) para especificar
    qual o registro será deletado, sem ela todos os registros dos
    campos serão deletados.
    Geralmente especifica-se um campo de identificação de valor único
    como o ID de registro da tabela.
 */
