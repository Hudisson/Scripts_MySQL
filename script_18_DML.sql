/*
    Operadores lógicos - AND, OR, NOT 
    ---------------------------------
    Os operadores AND, OR e NOT são usados para filtrar registros
    baseados em mais de uma condição. Geralmente usados juntos com
    a cláusula WHERE.

    O operador AND mostra um registro se ambas as condições forem verdadeiras.

    O operador OR mostra um registro se pelo menos uma das condições for verdadeira.

    O operador NOT é a negação de uma expressão (inverte seu estado lógico).
*/

/*Uso do operador AND*/
SELECT <campos> FROM <nome_da_tabela>
WHERE <campo_A> <codição> AND <campo_B> = valor;

select * from cliente
where d_nasc_cliente is not null and i_tipo_cliente = 1;

/*Uso do operador OR*/
SELECT <campos> FROM <nome_da_tabela>
WHERE <campo_A> <codição> OR <campo_B> = valor;

select * from cliente
where d_nasc_cliente is null or i_tipo_cliente > 1;

/*Uso do operador NOT*/
SELECT <campos> FROM <nome_da_tabela>
WHERE NOT <campo_A> = valor;

SELECT <campos> FROM <nome_da_tabela>
WHERE NOT (<campo_A> = valor);  /*Diferente de valor*/

select * from cliente
where not i_tipo_cliente < 1;

select * from cliente
where not (i_tipo_cliente = 1); /*Diferente de 1*/