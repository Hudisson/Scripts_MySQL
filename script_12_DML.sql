/*DML Linguagem de Manipulação de Dados*/
/*
    INSERT, DELETE, UPDATE, SELECT e LOCK;

    Subselect ou subquery
*/

/*Inserir dados com Subselect*/
INSERT INTO cliente values(
    (SELECT max(<ALIAS.campo>) from <nome_tabela ALIAS>),
    "Valor_A",
    "Valor_B",
    "Valor_C",
    Valor_D
);

INSERT INTO cliente values(
    (SELECT max(c.i_id_cliente)+1 as i_id_cliente from cliente c), /*ID*/
    "Cilcano dos Santos",
    "12345678911",
    "1994-07-27",
    01
);

/*No conjunto de instrução acima o id do cliente é incrementado em uma unidade
  durante a execução de um subselect.
  Para que o subselect funcione é preciso usar um ALIAS (etiqueta) na tabela de busca.
*/
    