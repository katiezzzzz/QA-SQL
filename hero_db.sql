create database hero_team;

use hero_team;

create table team
(
team_id int not null primary key auto_increment,
team_name varchar(30) not null,
objective varchar(100) not null
);

create table hero (
hero_id int not null primary key auto_increment,
hero_name varchar(30) not null, 
alias varchar(30) not null, 
ability varchar(100) not null, 
team_id int, 
foreign key (team_id) references team(team_id)
);
