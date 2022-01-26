--DONT FORGET WE NEED TO FIX THE OPTIONALITY OF ALL THE TABLES' RELATIONS TO EACHOTHER

--Dropping tables
drop table if exists species_info_tbl cascade;
drop table if exists pokedex_tbl cascade;
drop table if exists trainer_tbl cascade;
drop table if exists owned_pokemon_tbl cascade;
drop table if exists item_tbl cascade;

--Adding tables

create table trainer_tbl (
  trainerID int PRIMARY Key,
  name2 text NOT NULL,
  birthdate date NOT NULL,
  region text NOT NULL,
  money numeric(9, 2) NOT NULL,
  badge_qty int NOT NULL
);

create table pokedex_tbl(
  pokedexID int PRIMARY Key,
  trainerID int references trainer_tbl UNIQUE NOT NULL
);

create table species_info_tbl(
	pokedexNum int PRIMARY Key,
	name text NOT NULL,
  description text NOT NULL,
	height int NOT NULL,
	weight numeric(5, 2) NOT NULL,
	generation int NOT NULL,
  type_1 text NOT NULL,
	egg_group_1 text NOT NULL,
	type_2 text,
	egg_group_2 text,
  def_hitpoints int NOT NULL,
  def_attack int NOT NULL,
  def_defense int NOT NULL,
  def_spAttack int NOT NULL,
  def_spDefense int NOT NULL,
  def_speed int NOT NULL
);

create table owned_pokemon_tbl(
  pokemonID int PRIMARY Key,
  pokedexNum int references species_info_tbl NOT NULL,
  pokedexID int references pokedex_tbl NOT NULL,
  currentlevel int NOT NULL,
  healthpoints int NOT NULL,
  attack int NOT NULL,
  defense int NOT NULL,
  spAttack int NOT NULL,
  spDefense int NOT NULL,
  speed int NOT NULL,
  gender varchar(1),
  nickname text,
  status text
);

--This is the superclass and all classes below are subclasses
create table item_tbl (
  itemID int PRIMARY Key,
  pokemonID int references owned_pokemon_tbl,
  trainerID int references trainer_tbl,
  name text NOT NULL,
  category text NOT NULL,
  effect text NOT NULL
);
