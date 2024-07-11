/*
    Operadores LIKE, IN, BETWEEN
    ----------------------------
    O operador LIKE é usado em uma cláusula WHERE para procurar um padrão especificado em uma coluna.
    Existem dois curingas frequentemente usados ​​em conjunto com o operador LIKE:
    O sinal de porcentagem (%) representa zero, um ou vários caracteres
    O sinal de sublinhado (_) representa um único caractere

    O operador IN permite especificar vários valores em uma cláusula WHERE.
    O operador IN é uma abreviatura para múltiplas condições OR.

    O operador BETWEEN seleciona valores dentro de um determinado intervalo. Os valores podem ser números, texto ou datas.
    O operador BETWEEN é inclusivo: os valores inicial e final estão incluídos.
*/

/*Buscar com LIKE (%)*/
SELECT <campo(s)> FROM <nome_da_tabela>
WHERE <campo_A> LIKE ('?%'); 
-- Faz uma busca por nomes que tenha um letra 'F' no início--
select * from cliente where s_nome_cliente like ("F%");

-- Faz uma busca por nomes que tenha um letra 'A' no final--
select * from cliente where s_nome_cliente like ("%A");

-- Faz uma busca por nomes que tenha um letra 'C' no início e 'A' no final--
select * from cliente where s_nome_cliente like ("C%A");

/*Busca com LIKE (_)*/
SELECT <campo(s)> FROM <nome_da_tabela>
WHERE <campo_A> LIKE ('_'); 
-- Buscar por registros que tenham apenas dois caracters--
select * from cliente where s_nome_cliente like('__'); /*dois sublinhados*/

-- Buscar por registros que tenham dois caracteres com um específico no início--
select * from cliente where s_nome_cliente like('A_');

/*Busca com IN*/
SELECT <campo(s)> FROM <nome_da_tabela>
WHERE <campo_A> IN (valor1, valor2, ... ); 

select * from cliente where s_nome_cliente in("Fulano", "Beltrano");
-- Exemplo do operador IN combinado com like 
select * from cliente 
where s_nome_cliente in( select s_nome_cliente where s_nome_cliente like ('C%') );
-- Busca por valores a direita termindados em ... ---
select * from cliente where right(s_cpf_cliente,1) in(3,8);

/*Busca com BETWEEN*/
SELECT <campo(s)> FROM <nome_da_tabela>
WHERE <campo_A> BETWEEN valor1 AND valor2;
-- Bucar por registros entre o valores específicados
select * from cliente where id_cliente between 1 and 5;
