/*
    CLÁUSULA WHERE
    --------------------------------
    A cláusula WHERE é usada para filtrar dados em uma
    consulta SQL. Essa instrução deve ser acompanhada de
    uma expressão lógica como: 
    - maior(>), maior ou igual(>=), menor(<), 
    menor ou igual(<=), igual(=), diferente(!=) ect.
    Geralmente a cláusula WHERE é usada junto dos comandos:
    SELECT, DELETE, UPDATE.

    O operador LIKE permite uma busca por carateres que
    estejam no início ou meio ou fim de um texto atravéz 
    do sina % que faz a substituição.

    O operador IN cria uma lista de valores que serão 
    comparados com o valor na coluna.
*/

/*Cláusula WHERE com valores lógicos para números */
SELECT * FROM <nome_da_tabela> WHERE <campo> > valor;
select * from cliente where id_cliente > 4;

SELECT * FROM <nome_da_tabela> WHERE <campo> >= valor;
select * from cliente where id_cliente >= 4;

SELECT * FROM <nome_da_tabela> WHERE <campo> < valor;
select * from cliente where id_cliente < 4;

SELECT * FROM <nome_da_tabela> WHERE <campo> <= valor;
select * from cliente where id_cliente <= 4;

/*Cláusula WHERE com valores lógicos gerais */
SELECT * FROM <nome_da_tabela> WHERE <campo> != valor;
select * from cliente where id_cliente != 4;

SELECT * FROM <nome_da_tabela> WHERE <campo> LIKE "%valor%";
select * from cliente where s_nome_cliente LIKE "%Moto%";

SELECT * FROM <nome_da_tabela> WHERE <campo> IN (valor_A, valor_B);
select * from cliente where id_cliente IN (1,4);

/*Cláusula WHERE com valores lógicos (AND e OR) */
SELECT * FROM <nome_da_tabela> WHERE <campo_A> <expressão_logica> AND <campo_B> <expressão_logica>;
SELECT * FROM <nome_da_tabela> WHERE <campo_A> <expressão_logica> OR <campo_B> <expressão_logica>;
select * from cliente where id_cliente > 4 and i_tipo_cliente = 1;





