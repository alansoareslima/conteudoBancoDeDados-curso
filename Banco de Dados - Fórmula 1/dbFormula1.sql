
-- Criar Banco de Dados - Fórmula 1 --

Create Database db_formula1;

use db_formula1;

-- Criar Tabela em Banco de Dados -- 

Create Table Campeonato
(
	Id_Campeonato	int not null Primary Key,
	Descricao	Varchar(40) not null,
	Ano_Campeonato	Numeric(4)
);

Create Table Pais
(
	Sigla_Pais	Char(3) not null Primary Key,
	Nome_Pais	Varchar(50) not null
);

Create Table Piloto 
(
	Id_Piloto	int not null Primary Key,
	Nome_Piloto	Varchar(60) not null
);

Create Table Pista
(
	Id_Pista	int not null Primary Key,
	Nome_Pista	Varchar(60) not null,
	Tamanho		numeric(6, 2), -- 6 dígitos, 2 decimais (9999,99)
	Sigla_Pais	Char(3)
);

Create Table Corrida
(
	Id_Corrida		int not null Primary Key,
	Data_Corrida		date,
	Id_Campeonato		int,
	Id_Pista		int
);

Create Table Ranking
(
	Id_Piloto		int,
	Id_Corrida		int,
	Num_Colocacao		Numeric(2)
);
