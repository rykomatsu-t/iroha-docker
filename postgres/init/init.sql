CREATE DATABASE sampleapp;
create table user(id integer primary key, name text not null);
create table asset(id integer primary key, name text not null, domain text not null);
create table user_asset(
    user_id integer references user(id) not null, 
    asset_id integer references asset(id) not null,
    quantity real not null,
    primary key(user_id, asset_id)
);

insert into user (id, name) values (1, "admin");
insert into user (id, name) values (2, "user");
insert into asset (id, name, domain) values (1, "coin", "test");
insert into user_asset (user_id, asset_id, quantity) values (1, 1, 100);
insert into user_asset (user_id, asset_id, quantity) values (2, 1, 0);
