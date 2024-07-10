/*  
    Funções round, count, sum e avg
    --------------------------------
*/

/*Somar valores de uma coluna*/
SELECT sum(campo) FROM <nome_da_tabela>;

/*Arrendondar valores*/
SELECT round( sum(campo),casa_decimais ) FROM <nome_da_tabela>;

/*Média de valores de uma coluna*/
SELECT avg(campo) FROM <nome_da_tabela>;
SELECT round(avg(campo), casa_decimais) FROM <nome_da_tabela>;
