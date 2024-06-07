/* DDL Linguagem de Definição de Dados*/
/*
    CREATE TABLE, CREATE INDEX, ALTER TABLE, DROP
    TABLE, DROP VIEW e DROP INDEX;
*/

/* ALTER TABLE e FOREING KEY (chave estrangeira)*/
/*===================================================================================*/

/*-----------Adicionar chave estrangeira simples a uma tabela-------------*/
alter table <tabela_origem> add constraint <nome_da_chave> foreign key(<campo_tabela_origem>)
references <tabela_destino>(<campo_tabela_destino>);

alter table cliente add constraint fk_tipocliente foreign key(i_tipo_cliente)
references tipocliente(i_tipocli_tipocliente);

/*
    <tabela_origem> -> onde será adicionado a chave estrangeira
    <tabela_destino> -> tabela de refêrencia para onde a chave estrangeira aponta
    <campo_tabela_destino> -> o campo o qual a chave estrangeira se refere na table de destino
*/

/*===================================================================================*/