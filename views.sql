--Shows item info and who owns the item
create or replace view iteminfo_vew as
SELECT item_tbl.name, trainer_tbl.name2
FROM item_tbl
INNER JOIN trainer_tbl ON item_tbl.trainerID=trainer_tbl.trainerID;

--List the owned pokemon by level and their stats
create or replace view pokemoninfo_vew as
SELECT owned_pokemon_tbl.nickname, species_info_tbl.name, owned_pokemon_tbl.currentlevel, owned_pokemon_tbl.healthPoints, owned_pokemon_tbl.attack, owned_pokemon_tbl.defense, owned_pokemon_tbl.speed
FROM owned_pokemon_tbl
INNER JOIN species_info_tbl ON owned_pokemon_tbl.pokedexNum=species_info_tbl.pokedexNum
ORDER BY owned_pokemon_tbl.currentlevel;

--Lists pokemon that are brand new (level 1)
create or replace view newpokemon_vew as
SELECT owned_pokemon_tbl.nickname, species_info_tbl.name, owned_pokemon_tbl.currentlevel, owned_pokemon_tbl.gender, owned_pokemon_tbl.status
FROM owned_pokemon_tbl
INNER JOIN species_info_tbl ON owned_pokemon_tbl.pokedexNum=species_info_tbl.pokedexNum
WHERE owned_pokemon_tbl.currentlevel = 1;

--Lists all male pokemon owned
create or replace view malepokemon_vew as
SELECT owned_pokemon_tbl.nickname, species_info_tbl.name, owned_pokemon_tbl.gender
FROM owned_pokemon_tbl
INNER JOIN species_info_tbl ON owned_pokemon_tbl.pokedexNum=species_info_tbl.pokedexNum
WHERE owned_pokemon_tbl.gender = 'M';

--Lists all female pokemon owned
create or replace view femalepokemon_vew as
SELECT owned_pokemon_tbl.nickname, species_info_tbl.name, owned_pokemon_tbl.gender
FROM owned_pokemon_tbl
INNER JOIN species_info_tbl ON owned_pokemon_tbl.pokedexNum=species_info_tbl.pokedexNum
WHERE owned_pokemon_tbl.gender = 'F';


--Lists all grass type pokemon owned with level
create or replace view grasspokemon_vew as
SELECT owned_pokemon_tbl.nickname, species_info_tbl.name, species_info_tbl.type_1, species_info_tbl.type_2, owned_pokemon_tbl.currentlevel
FROM owned_pokemon_tbl
INNER JOIN species_info_tbl ON owned_pokemon_tbl.pokedexNum=species_info_tbl.pokedexNum
WHERE species_info_tbl.type_1 = 'grass' OR species_info_tbl.type_2 = 'grass';

--Lists all fire type pokemon owned with level
create or replace view firepokemon_vew as
SELECT owned_pokemon_tbl.nickname, species_info_tbl.name, species_info_tbl.type_1, species_info_tbl.type_2, owned_pokemon_tbl.currentlevel
FROM owned_pokemon_tbl
INNER JOIN species_info_tbl ON owned_pokemon_tbl.pokedexNum=species_info_tbl.pokedexNum
WHERE species_info_tbl.type_1 = 'fire' OR species_info_tbl.type_2 = 'fire';