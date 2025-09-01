create schema if not exists gamedata;
create schema if not exists userdata;
create schema if not exists appdata;

create table if not exists userdata.users (
    id bigserial primary key,
    username text not null,
    password varchar (255) not null,
    timeCreated timestamptz not null default now()
)

create index on userdata.users (username, timeCreated);