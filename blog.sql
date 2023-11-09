create database blog;
use blog; 
create table posts (id int auto_increment, title varchar(255) NOT NULL, body text NOT NULL, author varchar(100) NOT NULL, created_at date NOT NULL, PRIMARY KEY(id));
insert into posts (title, body, author, created_at) values ('Prvi post', 'Neki tekst u prvom postu', 'Paja', '2023-11-9');
insert into posts (title, body, author, created_at) values ('Drugi post', 'Random tekst u drugom postu', 'Maja', '2023-10-9');
insert into posts (title, body, author, created_at) values ('Treci post', 'Random sadrzaj u trecem postu', 'Zlaja', '2023-10-05');
