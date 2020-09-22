-- db maken
create database project1;

-- tabel account maken
create table account(
	id int not null AUTO_INCREMENT,
	naam varchar(250),
	email varchar(250),
	account_id int,
	primary key(id),
	foreign key(account_id) REFERENCES account(id)
);

--tabel persoon aanmaken
create table persoon(
	id int not null AUTO_INCREMENT,
	firstname varchar(250),
	insertion varchar(250),
	lastname varchar(250),
	account_id int,
	primary key(id),
	foreign key(account_id) REFERENCES persoon(id)
);