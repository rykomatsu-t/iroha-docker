set client_encoding = 'UTF8';

create table users (
  id serial primary key,
  name varchar not null,
  password varchar not null
);

insert into users(name, password) values 
  ('yamada', 'password'),
  ('tanaka', 'password'),
  ('satou', 'password')
;