-- db maken
create database project1;

-- tabel account maken
create table account(
	id int not null AUTO_INCREMENT,
	email varchar(250) not null UNIQUE,
	username varchar(250) not null,
	password varchar(250) not null,
	primary key(id),
);

--tabel persoon aanmaken
create table persoon(
	id int not null AUTO_INCREMENT,
	account_id int not null,
	username varchar(250) not null,
	firstname varchar(250) not null,
	middlename varchar(250),
	lastname varchar(250) not null,
	primary key(id),
	foreign key(account_id) REFERENCES acount(id)
);