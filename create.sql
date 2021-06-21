create table publisher (
       id integer serial primary key,
       name text,
       country text
       );

create table books (
       id integer serial primary key,
       title text,
       publisher serial reference publisher(id)
       );

create table subjects(
       id integer serial primary key,
       name text
       );

create table books_subjects (
       book serial reference books(id),
       subject serial reference subjects(id)
       );
