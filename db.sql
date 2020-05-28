create table countries
(
    id   serial  not null
        constraint country_pk
            primary key,
    name varchar not null
);

alter table countries
    owner to postgres;

create unique index country_id_uindex
    on countries (id);

create table states
(
    id         serial  not null
        constraint states_pk
            primary key,
    name       varchar not null,
    country_id bigint  not null
        constraint states_country_id_fk
            references countries
);

alter table states
    owner to postgres;

create unique index states_id_uindex
    on states (id);

create table streets
(
    id       serial  not null,
    name     varchar not null,
    state_id bigint  not null
        constraint streets_states_id_fk
            references states
);

alter table streets
    owner to postgres;

create unique index streets_id_uindex
    on streets (id);

