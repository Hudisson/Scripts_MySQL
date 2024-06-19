/* DDL Linguagem de Definição de Dados*/

/*
    CREATE TABLE, CREATE INDEX, ALTER TABLE, DROP
    TABLE, DROP VIEW e DROP INDEX;
*/
/*Comandos DDL desse escript: (DROP e ALTER)*/
/*===================================================================================*/

/* -----------------ALTERAR ESTRUTURA DE UMA TABELA-------*/

/* Modificar campo de uma tabela*/
 ALTER TABLE <nome_tabela> MODIFY COLUNM <linha_da_tabela> <TIPO_DADO(valor)>;
 ALTER TABLE cliente MODIFY COLUMN nome_cliente varchar(70) not null;
/*-----------------------------------------------------------------------------------*/
/*Adicionar linha em uma tabela já existente*/
ALTER table <nome_tabela> ADD <nome_da_nova_linha> <TIPO_DADO(valor)>;
alter table cliente add tipo_cliente varchar(2); /*Permite valor nulo*/
alter table cliente add tipo_cliente varchar(2) not null; /*Não permite valor nulo*/
alter table cliente add tipo_cliente varchar(2) not null default "PF"; /*Adiciona umvalor padrão*/
/*-----------------------------------------------------------------------------------*/
/*Remover linha ou coluna de uma tabela*/
alter table <nome_tabela> drop column <nome_da_linha>;
alter table cliente drop column telefone_cliente;

/*===================================================================================*/
/*Deletar tablelas*/
drop table <nome_tabela>;
/*===================================================================================*/

/*Deletar banco de dados*/
DROP SCHEMA <nome_DB>;
drop database <nome_banco_de dados>;

