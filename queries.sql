SELECT * FROM ANIMALS WHERE NAME LIKE '%mon';
SELECT NAME FROM ANIMALS WHERE EXTRACT(YEAR FROM DATE_OF_BIRTH) BETWEEN 2016 AND 2019;
SELECT NAME FROM ANIMALS WHERE neutered = 'yes' AND escape_attempts < 3;
SELECT date_of_birth FROM ANIMALS WHERE name = 'Agumon' or name='Pikachu';
SELECT name, escape_attempts FROM ANIMALS WHERE weight_kg > 10.5;
SELECT * FROM ANIMALS WHERE neutered = 'yes';
SELECT * FROM ANIMALS WHERE name != 'Gabumon';
SELECT * FROM ANIMALS WHERE weight_kg BETWEEN 10.4 AND 17.3;
-------------------------------------------------------------------------
BEGIN;
delete from animals where date_of_birth > '2022-01-01';
savepoint data_check;
update animals set weight_kg = weight_kg * -1;
rollback to savepoint data_check;
update animals set weight_kg = weight_kg * -1 where weight_kg < 0;
commit;
select * from animals;
----------------------------------------------------
SELECT * FROM ANIMALS WHERE escape_attempts = 0;
SELECT AVG(weight_kg) as Average_Weight from animals;
select max(escape_attempts) as escapes from animals;
SELECT MIN(weight_kg) AS Minimu_weight, max(weight_kg) as max_weight from animals
where species ='pokemon';
SELECT MIN(weight_kg) AS Minimu_weight, max(weight_kg) as max_weight from animals
where species ='digimon';

SELECT avg(escape_attempts) as average_escapes FROM ANIMALS 
WHERE species = 'digimon' and (EXTRACT(YEAR FROM DATE_OF_BIRTH) BETWEEN 1990 AND 2000);

SELECT avg(escape_attempts) as average_escapes FROM ANIMALS 
WHERE species = 'pokemon' and (EXTRACT(YEAR FROM DATE_OF_BIRTH) BETWEEN 1990 AND 2000);
-----------------------------------------------------------
SELECT a.id, a.name
FROM animals a
JOIN owners o ON a.owner_id = o.id
WHERE o.full_name = 'Melody Pond';

SELECT a.id, a.name
FROM animals a
JOIN species s ON a.species_id = s.id
WHERE s.name = 'Pokemon';

SELECT a.owner_id, o.full_name, a.id, a.name
FROM owners o
LEFT JOIN animals a ON o.id = a.owner_id;

SELECT COUNT(*) AS animal_count
FROM animals
WHERE species_id = 1;

SELECT COUNT(*) AS animal_count
FROM animals
WHERE species_id = 2;

SELECT a.id, a.name
FROM owners o
LEFT JOIN animals a ON o.id = a.owner_id
WHERE o.full_name = 'Jennifer Orwell';

SELECT a.id, a.name, a.escape_attempts
FROM owners o
LEFT JOIN animals a ON o.id = a.owner_id
WHERE o.full_name = 'Dean Winchester' and a.escape_attempts=0 ;

SELECT o.full_name, COUNT(*) AS animal_count
FROM owners o
JOIN animals a ON o.id = a.owner_id
GROUP BY o.full_name;
