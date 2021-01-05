set client_encoding = 'UTF8';

create table department (
  id serial primary key,
  name varchar(200) not null
);

create table employee (
  id serial primary key,
  name varchar(200) not null,
  password varchar(200) not null,
  dep_id int references department(id),
  asset_quantity int,
  status_code int,
  priv_hex varchar(200),
  pub_hex varchar(200)
);

create table asset (
  id serial primary key,
  name varchar(200) not null,
  status_code int not null
);

create table history (
  id serial primary key,
  send_time time not null,
  message varchar(200),
  asset_id int not null references asset(id),
  send_id int not null references employee(id),
  recieve_id int not null references employee(id),
  val real not null
);

insert into department(name) values
  ('経理部'),
  ('企画部'),
  ('開発部')
;

insert into asset(name, status_code) values
  ('coin2020',1)
;

insert into employee(name, password, dep_id, asset_quantity, status_code, priv_hex, pub_hex) values
  ('admin@test','password',1,123,1,'f101537e319568c765b2cc89698325604991dca57b9716b58016b253506cab70','313a07e6384776ed95447710d15e59148473ccfc052a681317a72a69f2a49910'),
  ('test@test','password',1,500,1,'7e00405ece477bb6dd9b03a78eee4e708afc2f5bcdce399573a5958942f4a390','716fe505f69f18511a1b083915aa9ff73ef36e6688199f3959750db38b8f4bfc')
;