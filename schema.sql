CREATE DATABASE vet_clinic
create table animals (id integer, name varchar(20), data_of_birth date,escape_attempts integer,neutered boolean,weight_kg decimal);

alter table animals 
add species varchar(255);

alter table animals alter column id set default nextval('animals');
CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name varchar(25),
	age int
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name varchar(25)
);

select * from animals;
alter table animals add column species_id integer;
alter table animals add constraint fk_id foreign key (species_id) references species(id);
alter table animals add column owner_id integer;
alter table animals add constraint fko_id foreign key (owner_id) references owners(id);
