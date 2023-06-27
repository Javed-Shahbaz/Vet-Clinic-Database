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
---------------------------------------------------------------------------------
-- Who was the last animal seen by William Tatcher?
SELECT animals.name AS last_animal,vets.name AS VET
FROM visits
JOIN animals ON visits.animal_id = animals.id
JOIN vets ON visits.vet_id = vets.id
WHERE vets.name = 'William Tatcher'
ORDER BY visits.visit_date DESC
LIMIT 1;

-- How many different animals did Stephanie Mendez see?
SELECT COUNT(DISTINCT visits.animal_id) AS number_of_animals
FROM visits
JOIN vets ON vets.id = visits.vet_id
WHERE vets.name = 'Stephanie Mendez';

-- List all vets and their specialties, including vets with no specialties.
SELECT vets.name AS ALL_VETS, species.name AS specialties
FROM vets
LEFT JOIN specializations ON vets.id = specializations.vet_id
LEFT JOIN species ON specializations.species_id = species.id;

-- List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.
SELECT animals.name AS All_Animals, vets.name AS visited_by,visits.visit_date AS date_of_visit
FROM visits
JOIN animals ON visits.animal_id = animals.id
JOIN vets ON visits.vet_id = vets.id
WHERE vets.name = 'Stephanie Mendez' AND visits.visit_date BETWEEN '2020-04-01' AND '2020-08-30';

-- What animal has the most visits to vets?
SELECT animals.name AS most_visit_animal, COUNT(visits.animal_id) AS num_of_visits
FROM visits
JOIN animals ON visits.animal_id = animals.id
GROUP BY visits.animal_id, animals.name
ORDER BY num_of_visits DESC
LIMIT 1;

-- Who was Maisy Smith's first visit?
SELECT animals.name AS Maisy_first_visit, visits.visit_date AS visit_date
FROM visits
JOIN animals ON visits.animal_id = animals.id
JOIN vets ON visits.vet_id = vets.id
WHERE vets.name = 'Maisy Smith'
ORDER BY visits.visit_date
LIMIT 1;

-- Details for most recent visit: animal information, vet information, and date of visit.
SELECT animals.name AS Recently_visites_animal, vets.name AS visited_by,visits.visit_date AS visit_date
FROM visits
JOIN animals ON visits.animal_id = animals.id
JOIN vets ON visits.vet_id = vets.id
ORDER BY visits.visit_date DESC
LIMIT 1;

-- How many visits were with a vet that did not specialize in that animal's species?
SELECT COUNT(*) AS num_visits
FROM visits
JOIN vets ON visits.vet_id = vets.id
JOIN animals ON visits.animal_id = animals.id
LEFT JOIN specializations ON vets.id = specializations.vet_id AND animals.species_id = specializations.species_id
WHERE specializations.vet_id IS NULL;

-- What specialty should Maisy Smith consider getting? Look for the species she gets the most.
SELECT species.name AS specialty, COUNT(*) AS num_visits
FROM visits
JOIN animals ON visits.animal_id = animals.id
JOIN species ON animals.species_id = species.id
JOIN vets ON visits.vet_id = vets.id
WHERE vets.name = 'Maisy Smith'
GROUP BY species.name
ORDER BY num_visits DESC
LIMIT 1;

EXPLAIN ANALYZE SELECT visits_total FROM animals WHERE animal_id = 4;
EXPLAIN ANALYZE SELECT * FROM Vet_Sumary WHERE vet_id = 2;
EXPLAIN ANALYZE SELECT * FROM owners where email = 'owner_18327@mail.com';
