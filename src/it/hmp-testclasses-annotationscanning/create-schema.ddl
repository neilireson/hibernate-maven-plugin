create sequence HMP_SEQ start with 1 increment by 1;

    create table HMP_FACHGEBIET (
        ID bigint not null,
        GEAENDERT_AM timestamp,
        GEAENDERT_VON varchar(255),
        ERSTELLT_AM timestamp,
        ERSTELLT_VON varchar(255),
        CODE varchar(255) not null,
        NAME varchar(255) not null,
        VERSION bigint,
        primary key (ID)
    );

    create table HMP_UCI_TEST_ENTITY (
        ID bigint not null,
        GEAENDERT_AM timestamp,
        GEAENDERT_VON varchar(255),
        ERSTELLT_AM timestamp,
        ERSTELLT_VON varchar(255),
        NAME varchar(255) not null,
        primary key (ID)
    );
