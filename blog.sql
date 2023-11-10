create database blog;
use blog; 

create table users (id int auto_increment, first_name varchar(100) NOT NULL, last_name varchar(100) NOT NULL, PRIMARY KEY(id));
insert into users (first_name, last_name) values ('Ramiz', 'Zmaj');
insert into users (first_name, last_name) values ('Pera', 'Peric');

create table posts (id int auto_increment, title varchar(255) NOT NULL, body text NOT NULL, author int NOT NULL, created_at date NOT NULL, PRIMARY KEY(id), FOREIGN KEY(author) references users(id));
insert into posts (title, body, author, created_at) values ('Prvi post', 'Neki tekst u prvom postu', 1, '2023-11-9');
insert into posts (title, body, author, created_at) values ('Drugi post', 'Random tekst u drugom postu', 1, '2023-10-9');
insert into posts (title, body, author, created_at) values ('Treci post', 'Random sadrzaj u trecem postu', 2, '2023-10-05');

create table comments (id int auto_increment, author varchar(100) NOT NULL, text text NOT NULL, post_id int NOT NULL, PRIMARY KEY(id), FOREIGN KEY(post_id) references posts(id));
insert into comments (author, text, post_id) values ('Vaja', 'Nevezano, prodajem golfa dvojku', 1);
insert into comments (author, text, post_id) values ('Baja', 'Da je cetvorka pa haj', 1);
insert into comments (author, text, post_id) values ('Saja', 'Nevezano, prodajem tovljena pilad', 2);

