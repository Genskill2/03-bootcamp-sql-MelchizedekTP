create table publisher (
       id serial primary key,
       name text,
       country text,
       );

create table books (
       id serial primary key,
       title text,
       publisher serial reference studios(id),
       );

create table subjects(
       id serial primary key,
       name text,
       );

create table subjects (
       book serial reference books(id),
       subject serial reference subjects(id),
       );
