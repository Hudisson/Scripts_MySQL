/*
    Funções SQL.
    --------------
*/

/*LOCATE o conteúdo X em um texto e retorna a posição */
SELECT LOCATE('a', s_nome_cliente),s_nome_cliente FROM cliente WHERE id_cliente = 1;

/*UPPER Converter texto para maiúsculos*/
SELECT UPPER(s_nome_cliente) FROM cliente WHERE id_cliente = 1;

/*LOWER Converter texto para minúsculo */
SELECT LOWER(s_nome_cliente) FROM cliente WHERE id_cliente = 1;

/*SUBSTR Extrair parte de um texto (texto, posicao qtde) */
SELECT SUBSTR(s_nome_cliente, 2, 3) FROM cliente WHERE id_cliente = 1;

/*CONCAT Concatena duas Strings*/
SELECT CONCAT('Nome: ', s_nome_cliente) FROM cliente WHERE id_cliente = 1;

/* FORMAT Formara um numeral para o padrão (#,###,###,##),
com a quantidade de casas decimais informada */
SELECT FORMAT(f_valor_venda,2) FROM venda;

/*ASCII Retorna o valor ASCII do primeiro caracter do texto*/
SELECT ASCII(s_nome_cliente) FROM cliente WHERE id_cliente = 1;

/*CHAR_LENGTH Retorna o tamanho do texto*/
SELECT CHAR_LENGTH(s_nome_cliente) FROM cliente WHERE id_cliente = 1;

