CREATE DATABASE vet_clinic
create table animals (id integer, name varchar(20), data_of_birth date,escape_attempts integer,neutered boolean,weight_kg decimal);

alter table animals 
add species varchar;
