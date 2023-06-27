INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (1, 'Agumon', '2020-02-03', 0, 'yes', 10.23);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (2, 'Gabumon', '2018-11-15', 2, 'yes', 8.0);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (3, 'Pikachu', '2021-01-07', 1, 'NO', 15.04);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (4, 'Devimon', '2017-05-12', 5, 'YES', 11.0);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)

VALUES (5, 'Charmander', '2020-02-08', 0, 'No', 11);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (6, 'Plantmon', '2021-11-15', 2, 'YES', 5.7);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (7, 'Squirtle', '1993-04-02', 3, 'NO', 12.13);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (8, 'Angemon', '2005-06-12', 1, 'YES', 45);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (9, 'Boarmon', '2005-06-07', 7, 'YES', 20.4);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (10, 'Blossom', '1998-10-13', 3, 'YES', 17);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (11, 'Ditto', '2022-05-14', 4, 'YES', 22);

VALUES (5, 'Charmander', '2020-02-08', 0, 'NO', 11);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (6, 'Plantmon', '2021-11-15', 2, 'yes', 5.7);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (7, 'Squirtle', '1993-04-02', 3, 'NO', 12.13);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (8, 'Angemon', '2005-06-12', 1, 'YES', 45);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (9, 'Boarmon', '2005-06-07', 7, 'yes', 20.4);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (10, 'Blossom', '1998-10-13', 3, 'yes', 17);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (11, 'Ditto', '2022-05-14', 4, 'yes', 22);

insert into owners values('Sam Smith', 34);
insert into owners values('Jennifer Orwell', 19);
insert into owners values('Bob', 45);
insert into owners values('Melody Pond', 77);
insert into owners values('Dean Winchester', 14);
insert into owners values('Jodie Whittaker', 38);
insert into species values(1,'Pokemon');
insert into species values(2,'Digimon');
update animals set species_id = 2 where name like '%mon';
update animals set species_id = 1 where name not like '%mon';
update animals set owner_id = 1 where name ='Agumon';
update animals set owner_id = 2 where name = 'Gabumon'; 
update animals set owner_id = 2 where name = 'Pikachu';
update animals set owner_id = 3 where name = 'Devimon'; 
update animals set owner_id = 3 where name = 'Plantmon';
update animals set owner_id = 4 where name = 'Charmander'; 
update animals set owner_id = 4 where name = 'Squirtle';
update animals set owner_id = 4 where name = 'Blossom';
update animals set owner_id = 5 where name = 'Angemon';
update animals set owner_id = 5 where name = 'Boarmon';

INSERT INTO vets(id,name,age,date_of_graduation)
values(1,'William Tatcher',45,'2000-04-23');
INSERT INTO vets(id,name,age,date_of_graduation)
values(2,'Maisy Smith',26,'2019-01-17');
INSERT INTO vets(id,name,age,date_of_graduation)
values(3,'Stephanie Mendez',64,'1981-05-04');
INSERT INTO vets(id,name,age,date_of_graduation)
values(4,'Jack Harkness',38,'2008-06-08');

INSERT INTO specializations values(1,1);
INSERT INTO specializations values(1,3);
INSERT INTO specializations values(2,3);
INSERT INTO specializations values(2,4);

INSERT INTO visits values(1,1,'2020-05-24');
INSERT INTO visits values(1,3,'2020-07-22');
INSERT INTO visits values(2,4,'2021-02-02');
INSERT INTO visits values(3,2,'2020-01-05');
INSERT INTO visits values(3,2,'2020-03-08');
INSERT INTO visits values(3,2,'2020-05-14');
INSERT INTO visits values(4,3,'2021-05-04');
INSERT INTO visits values(5,4,'2021-02-24');
INSERT INTO visits values(6,2,'2019-12-21');
INSERT INTO visits values(6,1,'2020-08-10');
INSERT INTO visits values(6,2,'2021-04-07');
INSERT INTO visits values(7,3,'2019-09-29');
INSERT INTO visits values(8,4,'2020-10-03');
INSERT INTO visits values(8,4,'2020-11-04');
INSERT INTO visits values(9,2,'2019-01-24');
INSERT INTO visits values(9,2,'2019-05-15');
INSERT INTO visits values(9,2,'2020-02-27');
INSERT INTO visits values(9,2,'2019-08-03');
INSERT INTO visits values(10,3,'2020-05-24');
INSERT INTO visits values(10,1,'2021-01-11');

-- This will add 3.594.280 visits considering you have 10 animals, 4 vets, and it will use around ~87.000 timestamps (~4min approx.)
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;

-- This will add 2.500.000 owners with full_name = 'Owner <X>' and email = 'owner_<X>@email.com' (~2min approx.)
insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';

-- INSERT DATA INTO visits_total
UPDATE animals
SET visits_total = (
SELECT COUNT(*)
FROM visits
WHERE visits.animal_id = animals.id
);

-- INSERT TOTAL VISITS by vet  IN Vet_Sumary
INSERT INTO Vet_Sumary (vet_id,total_visits) SELECT vet_id,count(*) FROM visits GROUP BY vet_id;
