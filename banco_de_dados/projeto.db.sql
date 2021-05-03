BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Uf" (
	"id"	integer,
	"nome"	varchar,
	"sigla"	varchar,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Bairro" (
	"id"	integer,
	"nome"	varchar,
	"Cidade_id"	varchar,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Cidade" (
	"id"	integer,
	"nome"	varchar,
	"Uf_id"	integer,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Endereco" (
	"id"	integer,
	"complemento"	varchar,
	"numero"	integer,
	"rua"	varchar,
	"Bairro_id"	integer,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Imovel" (
	"id"	integer,
	"descricao"	varchar,
	"nro_max_hospedes"	integer,
	"TipoImovel_id"	integer,
	"Endereco_id"	integer,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "TipoImovel" (
	"id"	integer,
	"descricao"	varchar,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "AnuncioAluguel" (
	"id"	integer,
	"data_inicio_disponibilidade"	date,
	"data_fim_disponibilidade"	date,
	"valor_min_diaria"	float,
	"Imovel_id"	integer,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "PropostaAluguel" (
	"id"	integer,
	"data_inicio"	date,
	"data_fim"	date,
	"nro_hospedes"	integer,
	"valor_diaria"	float,
	"Usuario_id"	integer,
	"AnuncioAluguel_id"	integer,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Usuario" (
	"id"	integer,
	"nome"	date,
	"email"	varchar,
	"password"	varchar,
	"telefone"	varchar,
	"TipoUsuario_id"	integer,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "TipoUsuario" (
	"id"	integer,
	"descricao"	varchar,
	PRIMARY KEY("id" AUTOINCREMENT)
);
COMMIT;
