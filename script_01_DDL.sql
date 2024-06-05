
/* DDL Linguagem de Definição de Dados*/
/*
    CREATE TABLE, CREATE INDEX, ALTER TABLE, DROP
    TABLE, DROP VIEW e DROP INDEX;

    Há duas maneira de criar um banco de dados no MySQL,
    a primeira é usando o comando (create database nome_DB),
    o segundo é usando o comando (create schema nome_DB)
    Tambem é possível verificar no processo de criação do 
    banco de dados se já existe um DB com o mesmo nome.
        (CREATE DATABASE IF NOT EXISTS nome_DB;)

    i -> int, s -> varchar/char
    UUID bIdcCliente
         b_idc_cliente
*/

/*----------CRIANDO BANCO DE DADOS-----------*/
CREATE DATABASE IF NOT EXISTS curso_db;
use curso_db;

/*----------CRIANDO TABELA-----------*/
create table if not exists cliente(
	i_id_cliente int primary key not null auto_increment,
    s_nome_cliente varchar(50) not null,
    s_cpf_cliente varchar(11) not null,
    d_nasc_cliente datetime
);