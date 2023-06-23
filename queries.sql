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

