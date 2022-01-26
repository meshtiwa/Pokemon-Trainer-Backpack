--pokNum, Name, Description, Height, Weight, Generation, Type1, Egg1, Type2, Egg2, defHitpoints, defAttack, defDefense, defSpAttack, defSpDefense, defSpeed
insert into species_info_tbl values
  (1, 'Bulbasaur', 'Bulbasaur is a Grass/Poison type Pokémon introduced in Generation 1. It is known as the Seed Pokémon.', 28, 15.2, 1, 'grass', 'grass', 'poison', 'monster', 45, 49, 49, 65, 65, 45),
  (6, 'Charizard', 'Charizard is a Fire/Flying type Pokémon introduced in Generation 1. It is known as the Flame Pokémon.', 67, 199.5, 1, 'fire', 'dragon', 'flying', 'monster', 78, 84, 78, 109, 85, 100 ),
  (7, 'Squirtle', 'Squirtle is a Water type Pokémon introduced in Generation 1. It is known as the Tiny Turtle Pokémon.', 20, 19.8, 1, 'water', 'monster', NULL, 'water 1', 44, 48, 65, 50, 64, 43), 
  (25, 'Pikachu', 'Pikachu is an Electric type Pokémon introduced in Generation 1. It is known as the Mouse Pokémon.', 16, 13.2, 1, 'electric', 'fairy', NULL, 'field', 45, 80, 50, 75, 60, 120),
  (150, 'Mewtwo', 'Mewtwo is a Psychic type Pokémon introduced in Generation 1. It is known as the Genetic Pokémon.', 79, 269, 1, 'psychic', 'undiscovered', NULL, NULL, 106, 110, 90, 154, 90, 130),
  (152, 'Chikorita', 'Chikorita is a Grass type Pokémon introduced in Generation 2. It is known as the Leaf Pokémon.', 35, 14.1, 2, 'grass', 'grass', NULL, 'monster', 45, 49, 65, 49, 65, 45),
  (158, 'Totodile', 'Totodile is a Water type Pokémon introduced in Generation 2. It is known as the Big Jaw Pokémon.', 24, 20.9, 2, 'water', 'monster', NULL, 'water 1', 50, 65, 64, 44, 48, 43),
  (172, 'Pichu', 'Pichu is an Electric type Pokémon introduced in Generation 2. It is known as the Tiny Mouse Pokémon.', 12, 4.4, 2, 'electric', 'undiscovered', NULL, NULL, 20, 40, 15, 35, 35, 60), 
  (252, 'Treecko', 'Treecko is a Grass type Pokémon introduced in Generation 3. It is known as the Wood Gecko Pokémon.', 20, 11, 3, 'grass', 'dragon', NULL, 'monster', 40, 45, 35, 65, 55, 70), 
  (258, 'Mudkip', 'Mudkip is a Water type Pokémon introduced in Generation 3. It is known as the Mud Fish Pokémon.', 16, 16.8, 3, 'water', 'water', NULL, 'monster', 50, 70, 50, 50, 50, 40)
;

--trainerID, name, birthdate, region, money, badge_quantity
insert into trainer_tbl values
  (1, 'Animesh', '1/14/2003', 'Kanto', 5.25, 2),
  (2, 'Alex', '8/19/2003', 'Johto', 1800.50, 5),
  (3, 'Allen', '1/1/2000', 'Kanto', 54300.64, 8)
;

--pokedexID, trainerID
insert into pokedex_tbl values 
  (1, 1),
  (2, 2),
  (3, 3)
;

--pokemonID, pokedexNum, pokedexID, currentlevel, hp, attack, defense, spAttack, spDefense, speed, gender, nickname, status
insert into owned_pokemon_tbl values
  --Animesh
  (1, 1, 1, 4, 50, 60, 70, 70, 85, 70, 'M', 'Big Bulby', NULL),
  (2, 1, 1, 1, 45, 49, 49, 65, 65, 45, 'F', 'OG Bulby', 'sleepy'),
  (3, 6, 1, 35, 80, 85, 79, 120, 100, 111, 'M', 'God Slayer', 'angry'),
  (9, 258, 1, 13, 55, 90, 60, 65, 70, 45, 'M', 'Stupid Idiot', 'sad'),
  (10, 158, 1, 1, 50, 65, 64, 44, 48, 43, 'F', 'TMNT', NULL),
  (12, 150, 1, 5, 106, 110, 90, 154, 90, 130, 'F', 'Animew', NULL),
  --Alex
  (5, 7, 2, 1, 44, 48, 65, 50, 64, 43, 'M', 'Squirt', NULL),
  (6, 6, 2, 30, 85, 90, 76, 112, 105, 112, 'F', 'Astrid', 'happy'),
  (8, 1, 2, 3, 45, 49, 49, 65, 65, 45, 'M', 'Light Bulb', 'sleepy'),
  (11, 158, 2, 40, 55, 65, 70, 50, 55, 48, 'F', 'Toto', NULL),
  --Allen
  (4, 7, 3, 12, 50, 50, 76, 54, 67, 52, 'M', 'Peanut Butter', 'happy'),
  (7, 1, 3, 23, 60, 50, 64, 90, 70, 71, 'F', 'Programmer Jarrett', 'sleepy')
;

--itemID, pokemonID, trainerID, name, category, effect
insert into item_tbl values
  (1, NULL, 2, 'Belue Berry', 'berry', 'A Berry which is very rare in the Unova region. A maniac will buy it for a high price.'),
  (2, NULL, 1, 'Carbos', 'Medicine', 'Increases Speed EVs by 10.'),
  (3, NULL, 3, 'Antidote', 'Spray-type medicine', 'It lifts the effect of poison from one Pokémon.'),
  (4, 8, 2, 'Burn Heal', 'Medicine', 'A spray-type medicine. It heals a single Pokémon that is suffering from a burn'),
  (5, 3, 3, 'Cheri', 'Berry', 'If held by a Pokémon, it recovers from paralysis.')
;