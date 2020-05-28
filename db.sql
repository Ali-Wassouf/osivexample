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

INSERT INTO public.countries (id, name) VALUES (1, 'Syria');
INSERT INTO public.states (id, name, country_id) VALUES (1, 'Aleppo', 1);
INSERT INTO public.states (id, name, country_id) VALUES (2, 'Damascus', 1);
INSERT INTO public.streets (id, name, state_id) VALUES (1, 'Kabbas', 2);
INSERT INTO public.streets (id, name, state_id) VALUES (2, 'Dwail3a', 2);