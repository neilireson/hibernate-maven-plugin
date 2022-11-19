
    create table Category_Category (
        Category_id varchar(191) not null,
        Category_nodeType integer not null,
        Category_source VARCHAR(191) not null,
        parents_id varchar(191) not null,
        parents_nodeType integer not null,
        parents_source VARCHAR(191) not null
    );

    create table Custom_Category (
        Custom_id varchar(191) not null,
        Custom_nodeType integer not null,
        Custom_source VARCHAR(191) not null,
        categories_id varchar(191) not null,
        categories_nodeType integer not null,
        categories_source VARCHAR(191) not null
    );

    create table Custom_contributors (
        Custom_id varchar(191) not null,
        Custom_nodeType integer not null,
        Custom_source VARCHAR(191) not null,
        contributor_id varchar(191),
        contributor_nodeType integer,
        contributor_source VARCHAR(191),
        text varchar(511),
        type varchar(255)
    );

    create table Custom_emails (
        Custom_id varchar(191) not null,
        Custom_nodeType integer not null,
        Custom_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table Custom_links (
        Custom_id varchar(191) not null,
        Custom_nodeType integer not null,
        Custom_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(1023)
    );

    create table Custom_numbers (
        Custom_id varchar(191) not null,
        Custom_nodeType integer not null,
        Custom_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table Date_contributors (
        Date_id varchar(191) not null,
        Date_nodeType integer not null,
        Date_source VARCHAR(191) not null,
        contributor_id varchar(191),
        contributor_nodeType integer,
        contributor_source VARCHAR(191),
        text varchar(511),
        type varchar(255)
    );

    create table Date_emails (
        Date_id varchar(191) not null,
        Date_nodeType integer not null,
        Date_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table Date_links (
        Date_id varchar(191) not null,
        Date_nodeType integer not null,
        Date_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(1023)
    );

    create table Date_numbers (
        Date_id varchar(191) not null,
        Date_nodeType integer not null,
        Date_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table Date_types (
        Date_id varchar(191) not null,
        Date_nodeType integer not null,
        Date_source VARCHAR(191) not null,
        types varchar(255)
    );

    create table Event_Category (
        Event_id varchar(191) not null,
        Event_nodeType integer not null,
        Event_source VARCHAR(191) not null,
        categories_id varchar(191) not null,
        categories_nodeType integer not null,
        categories_source VARCHAR(191) not null
    );

    create table Event_contributors (
        Event_id varchar(191) not null,
        Event_nodeType integer not null,
        Event_source VARCHAR(191) not null,
        contributor_id varchar(191),
        contributor_nodeType integer,
        contributor_source VARCHAR(191),
        text varchar(511),
        type varchar(255)
    );

    create table Event_emails (
        Event_id varchar(191) not null,
        Event_nodeType integer not null,
        Event_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table Event_links (
        Event_id varchar(191) not null,
        Event_nodeType integer not null,
        Event_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(1023)
    );

    create table Event_numbers (
        Event_id varchar(191) not null,
        Event_nodeType integer not null,
        Event_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table EventInfo_Group (
        nodeId varchar(191) not null,
        nodeType integer not null,
        source VARCHAR(191) not null,
        groups_id varchar(191) not null,
        groups_nodeType integer not null,
        groups_source VARCHAR(191) not null
    );

    create table Exhibition_contributors (
        Exhibition_id varchar(191) not null,
        Exhibition_nodeType integer not null,
        Exhibition_source VARCHAR(191) not null,
        contributor_id varchar(191),
        contributor_nodeType integer,
        contributor_source VARCHAR(191),
        text varchar(511),
        type varchar(255)
    );

    create table Exhibition_emails (
        Exhibition_id varchar(191) not null,
        Exhibition_nodeType integer not null,
        Exhibition_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table Exhibition_hours (
        Exhibition_id varchar(191) not null,
        Exhibition_nodeType integer not null,
        Exhibition_source VARCHAR(191) not null,
        close time,
        day integer,
        open time,
        type varchar(255)
    );

    create table Exhibition_links (
        Exhibition_id varchar(191) not null,
        Exhibition_nodeType integer not null,
        Exhibition_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(1023)
    );

    create table Exhibition_numbers (
        Exhibition_id varchar(191) not null,
        Exhibition_nodeType integer not null,
        Exhibition_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table Group_contributors (
        Group_id varchar(191) not null,
        Group_nodeType integer not null,
        Group_source VARCHAR(191) not null,
        contributor_id varchar(191),
        contributor_nodeType integer,
        contributor_source VARCHAR(191),
        text varchar(511),
        type varchar(255)
    );

    create table Group_emails (
        Group_id varchar(191) not null,
        Group_nodeType integer not null,
        Group_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table Group_links (
        Group_id varchar(191) not null,
        Group_nodeType integer not null,
        Group_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(1023)
    );

    create table Group_numbers (
        Group_id varchar(191) not null,
        Group_nodeType integer not null,
        Group_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table LegalPerson_Category (
        LegalPerson_id varchar(191) not null,
        LegalPerson_nodeType integer not null,
        LegalPerson_source VARCHAR(191) not null,
        categories_id varchar(191) not null,
        categories_nodeType integer not null,
        categories_source VARCHAR(191) not null
    );

    create table LegalPerson_emails (
        LegalPerson_id varchar(191) not null,
        LegalPerson_nodeType integer not null,
        LegalPerson_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table LegalPerson_links (
        LegalPerson_id varchar(191) not null,
        LegalPerson_nodeType integer not null,
        LegalPerson_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(1023)
    );

    create table LegalPerson_numbers (
        LegalPerson_id varchar(191) not null,
        LegalPerson_nodeType integer not null,
        LegalPerson_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table Location_Category (
        Location_id varchar(191) not null,
        Location_nodeType integer not null,
        Location_source VARCHAR(191) not null,
        categories_id varchar(191) not null,
        categories_nodeType integer not null,
        categories_source VARCHAR(191) not null
    );

    create table Location_emails (
        Location_id varchar(191) not null,
        Location_nodeType integer not null,
        Location_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table Location_hours (
        Location_id varchar(191) not null,
        Location_nodeType integer not null,
        Location_source VARCHAR(191) not null,
        close time,
        day integer,
        open time,
        type varchar(255)
    );

    create table Location_links (
        Location_id varchar(191) not null,
        Location_nodeType integer not null,
        Location_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(1023)
    );

    create table Location_numbers (
        Location_id varchar(191) not null,
        Location_nodeType integer not null,
        Location_source VARCHAR(191) not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table Node (
        DTYPE integer not null,
        id varchar(191) not null,
        nodeType integer not null,
        source VARCHAR(191) not null,
        created timestamp,
        locale varchar(127),
        modified timestamp,
        name varchar(511),
        version integer,
        ord integer,
        alt varchar(255),
        copyright varchar(255),
        credit varchar(255),
        height integer,
        width integer,
        file varchar(255),
        mediaType varchar(255),
        size bigint,
        teaser varchar(1023),
        text varchar(4095),
        uri varchar(255),
        latitude double,
        longitude double,
        east double,
        north double,
        south double,
        west double,
        city varchar(127),
        postalCode varchar(31),
        street varchar(255),
        firstName varchar(255),
        lastName varchar(255),
        type varchar(255),
        end date,
        start date,
        gemkey varchar(31),
        generator varchar(255),
        after varchar(255),
        date date,
        photographer_id varchar(191),
        photographer_nodeType integer,
        photographer_source VARCHAR(191),
        country_id varchar(191),
        country_nodeType integer,
        country_source VARCHAR(191),
        state_id varchar(191),
        state_nodeType integer,
        state_source VARCHAR(191),
        city_id varchar(191),
        city_nodeType integer,
        city_source VARCHAR(191),
        district_id varchar(191),
        district_nodeType integer,
        district_source VARCHAR(191),
        parent_id varchar(191),
        parent_nodeType integer,
        parent_source VARCHAR(191),
        event_id varchar(191),
        event_nodeType integer,
        event_source VARCHAR(191),
        location_id varchar(191),
        location_nodeType integer,
        location_source VARCHAR(191),
        node_id varchar(191),
        node_nodeType integer,
        node_source VARCHAR(191),
        subunit_id varchar(191),
        subunit_nodeType integer,
        subunit_source VARCHAR(191),
        primary key (id, nodeType, source)
    );

    create table Node_features (
        Node_id varchar(191) not null,
        Node_nodeType integer not null,
        Node_source VARCHAR(191) not null,
        features varchar(255)
    );

    create table Node_fields (
        Node_id varchar(191) not null,
        Node_nodeType integer not null,
        Node_source VARCHAR(191) not null,
        fields varchar(255),
        fields_KEY varchar(255) not null,
        primary key (Node_id, Node_nodeType, Node_source, fields_KEY)
    );

    create table Node_Media (
        nodeId varchar(191) not null,
        nodeType integer not null,
        source VARCHAR(191) not null,
        media_id varchar(191) not null,
        media_nodeType integer not null,
        media_source VARCHAR(191) not null
    );

    create table Node_Nodes (
        Node_id varchar(191) not null,
        Node_nodeType integer not null,
        Node_source VARCHAR(191) not null,
        nodes_dbid bigint not null,
        nodes_KEY varchar(255) not null,
        primary key (Node_id, Node_nodeType, Node_source, nodes_KEY)
    );

    create table Nodes (
        dbid bigint generated by default as identity,
        type varchar(255),
        primary key (dbid)
    );

    create table Nodes_Node (
        Nodes_dbid bigint not null,
        nodes_id varchar(191) not null,
        nodes_nodeType integer not null,
        nodes_source VARCHAR(191) not null
    );

    create table Organization_contributors (
        Organization_id varchar(191) not null,
        Organization_nodeType integer not null,
        Organization_source VARCHAR(191) not null,
        contributor_id varchar(191),
        contributor_nodeType integer,
        contributor_source VARCHAR(191),
        text varchar(511),
        type varchar(255)
    );

    create table Place_Region (
        Place_id varchar(191) not null,
        Place_nodeType integer not null,
        Place_source VARCHAR(191) not null,
        regions_id varchar(191) not null,
        regions_nodeType integer not null,
        regions_source VARCHAR(191) not null
    );

    create table Price (
        dbid bigint generated by default as identity,
        currency varchar(255),
        text varchar(255),
        type varchar(255),
        value double,
        nodeId varchar(191),
        nodeType integer,
        source VARCHAR(191),
        primary key (dbid)
    );

    create table Price_emails (
        Price_dbid bigint not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table Price_links (
        Price_dbid bigint not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(1023)
    );

    create table Price_numbers (
        Price_dbid bigint not null,
        extra varchar(255),
        icon_id varchar(191),
        icon_nodeType integer,
        icon_source VARCHAR(191),
        type varchar(255),
        value varchar(255)
    );

    create table Region_City (
        Region_id varchar(191) not null,
        Region_nodeType integer not null,
        Region_source VARCHAR(191) not null,
        cities_id varchar(191) not null,
        cities_nodeType integer not null,
        cities_source VARCHAR(191) not null
    );

    create table Source (
        uri VARCHAR(191) not null,
        name varchar(255),
        primary key (uri)
    );

    create table Source_features (
        Source_uri VARCHAR(191) not null,
        features binary(255),
        features_KEY varchar(255) not null,
        primary key (Source_uri, features_KEY)
    );

    create table Source_types (
        Source_uri VARCHAR(191) not null,
        types binary(255),
        types_KEY varchar(255) not null,
        primary key (Source_uri, types_KEY)
    );

    alter table Category_Category 
        add constraint UK_ed5lqxomulp7x8hcy3104lw7t unique (parents_id, parents_nodeType, parents_source);

    alter table Node 
        add constraint uri unique (source, nodeType, id, locale, version);

    alter table Category_Category 
        add constraint FKbtv4wjkjdxcopetysbong6ui6 
        foreign key (parents_id, parents_nodeType, parents_source) 
        references Node;

    alter table Category_Category 
        add constraint FKkvdv0b6eqyobky9sah5hv2new 
        foreign key (Category_id, Category_nodeType, Category_source) 
        references Node;

    alter table Custom_Category 
        add constraint FK2o95493movsb6l1yw4n4khtbh 
        foreign key (categories_id, categories_nodeType, categories_source) 
        references Node;

    alter table Custom_Category 
        add constraint FK9k7jg7cp6xluljk2qt815tdjp 
        foreign key (Custom_id, Custom_nodeType, Custom_source) 
        references Node;

    alter table Custom_contributors 
        add constraint FKi7asp1dwf0b59mmrqjlhuspfe 
        foreign key (contributor_id, contributor_nodeType, contributor_source) 
        references Node;

    alter table Custom_contributors 
        add constraint FKthm0rsemcxntnnw2vqa9fbjtg 
        foreign key (Custom_id, Custom_nodeType, Custom_source) 
        references Node;

    alter table Custom_emails 
        add constraint FKphffh59qd5yhax6ompthaby5w 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Custom_emails 
        add constraint FKt2p150a9i7yores6qhhrxdlqg 
        foreign key (Custom_id, Custom_nodeType, Custom_source) 
        references Node;

    alter table Custom_links 
        add constraint FKoavtb3ysx30i4vkp1o9qha3x8 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Custom_links 
        add constraint FKdp6pu85ss0k17nhnhg8wt95qu 
        foreign key (Custom_id, Custom_nodeType, Custom_source) 
        references Node;

    alter table Custom_numbers 
        add constraint FKspyya70ibrtp0yp0aet1aulv0 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Custom_numbers 
        add constraint FK9n5qkj8uw768qyxluocmgp86l 
        foreign key (Custom_id, Custom_nodeType, Custom_source) 
        references Node;

    alter table Date_contributors 
        add constraint FKi6oc1dly4i431dvbh5p6bf8mk 
        foreign key (contributor_id, contributor_nodeType, contributor_source) 
        references Node;

    alter table Date_contributors 
        add constraint FKr39enr8uc3pjasjsvts2qk67t 
        foreign key (Date_id, Date_nodeType, Date_source) 
        references Node;

    alter table Date_emails 
        add constraint FKipovx7k7ccjs6ovv2p1squaqb 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Date_emails 
        add constraint FK8ewik7de7eruekfjln9wiw9u7 
        foreign key (Date_id, Date_nodeType, Date_source) 
        references Node;

    alter table Date_links 
        add constraint FK56sagoqdlfivnhx9j64ffq0aq 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Date_links 
        add constraint FK2epditya9rqnwedje5clh9fst 
        foreign key (Date_id, Date_nodeType, Date_source) 
        references Node;

    alter table Date_numbers 
        add constraint FK8sybhsii1xwy1b6ay4yw29aad 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Date_numbers 
        add constraint FKpi1tiq27ga4vg10jpu3lcn00j 
        foreign key (Date_id, Date_nodeType, Date_source) 
        references Node;

    alter table Date_types 
        add constraint FKdwuqn78ynn843lq8qnay7m99d 
        foreign key (Date_id, Date_nodeType, Date_source) 
        references Node;

    alter table Event_Category 
        add constraint FK796bki6riterk5qhwwer52i7e 
        foreign key (categories_id, categories_nodeType, categories_source) 
        references Node;

    alter table Event_Category 
        add constraint FKoxnijth24p7efxasu8gbqglnh 
        foreign key (Event_id, Event_nodeType, Event_source) 
        references Node;

    alter table Event_contributors 
        add constraint FK1tegfyer7c6f6gvjaxum2qoh4 
        foreign key (contributor_id, contributor_nodeType, contributor_source) 
        references Node;

    alter table Event_contributors 
        add constraint FK9nb0vn1fpg02lv1xqwrnymp2a 
        foreign key (Event_id, Event_nodeType, Event_source) 
        references Node;

    alter table Event_emails 
        add constraint FKgukmvw30p78pd01t0ub3yhl89 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Event_emails 
        add constraint FK44jxwok6hcnl26utfhmabp0w6 
        foreign key (Event_id, Event_nodeType, Event_source) 
        references Node;

    alter table Event_links 
        add constraint FKh2cty42m9dcwee8jrbwcykd00 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Event_links 
        add constraint FKhnuhk1ebnx3lhblp9tobx2xkm 
        foreign key (Event_id, Event_nodeType, Event_source) 
        references Node;

    alter table Event_numbers 
        add constraint FKgpmu2w9h057i4412lhy35u8wk 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Event_numbers 
        add constraint FK7vkbmaxmvnycab6grkx1enack 
        foreign key (Event_id, Event_nodeType, Event_source) 
        references Node;

    alter table EventInfo_Group 
        add constraint FKpwna397y3jfavhfbi631jrfuc 
        foreign key (groups_id, groups_nodeType, groups_source) 
        references Node;

    alter table EventInfo_Group 
        add constraint FK7vvheht7xq6t8q60x0iwbbo8e 
        foreign key (nodeId, nodeType, source) 
        references Node;

    alter table Exhibition_contributors 
        add constraint FK5x96y7obyfslktrjb3lw5ksnf 
        foreign key (contributor_id, contributor_nodeType, contributor_source) 
        references Node;

    alter table Exhibition_contributors 
        add constraint FKhb6cddg2ut19lyqhvhkm3n8k6 
        foreign key (Exhibition_id, Exhibition_nodeType, Exhibition_source) 
        references Node;

    alter table Exhibition_emails 
        add constraint FKrj3srkor5p48sqctfmqk7kndb 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Exhibition_emails 
        add constraint FK4hdpyj0v87bnl6qjs8q50esot 
        foreign key (Exhibition_id, Exhibition_nodeType, Exhibition_source) 
        references Node;

    alter table Exhibition_hours 
        add constraint FK27vcm7e9ercq01vac5vfjy8lp 
        foreign key (Exhibition_id, Exhibition_nodeType, Exhibition_source) 
        references Node;

    alter table Exhibition_links 
        add constraint FKd7q17uoid3jjmj5juqnn6kh3t 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Exhibition_links 
        add constraint FK9a6f7rvpeplqd2w7se00d6k7i 
        foreign key (Exhibition_id, Exhibition_nodeType, Exhibition_source) 
        references Node;

    alter table Exhibition_numbers 
        add constraint FK50xco0skes213iffdar4rsjdl 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Exhibition_numbers 
        add constraint FKr3esjj54fnif36h8khekq6cjl 
        foreign key (Exhibition_id, Exhibition_nodeType, Exhibition_source) 
        references Node;

    alter table Group_contributors 
        add constraint FKbmsmbeitqbq8iex4vylge405d 
        foreign key (contributor_id, contributor_nodeType, contributor_source) 
        references Node;

    alter table Group_contributors 
        add constraint FKf636sk9rghhtgj07a9b19ln5h 
        foreign key (Group_id, Group_nodeType, Group_source) 
        references Node;

    alter table Group_emails 
        add constraint FKmip0rdn17823nw0ev7j07658u 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Group_emails 
        add constraint FK7skv245m9v0iq1pksnqul1ljx 
        foreign key (Group_id, Group_nodeType, Group_source) 
        references Node;

    alter table Group_links 
        add constraint FKe52ogqykhxk91v8l6tnvwt1gn 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Group_links 
        add constraint FKd3p24awb4qhm7i7sqhm7gmw3y 
        foreign key (Group_id, Group_nodeType, Group_source) 
        references Node;

    alter table Group_numbers 
        add constraint FKadx9i37o50hkycey1s3q1uc97 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Group_numbers 
        add constraint FK4w1p7ivthda1sxpmt2py3n4r5 
        foreign key (Group_id, Group_nodeType, Group_source) 
        references Node;

    alter table LegalPerson_Category 
        add constraint FKqqfb7yiroxuw542ni9p54ge6i 
        foreign key (categories_id, categories_nodeType, categories_source) 
        references Node;

    alter table LegalPerson_Category 
        add constraint FKq571u0kqnrtbw1kaebgp5o5b6 
        foreign key (LegalPerson_id, LegalPerson_nodeType, LegalPerson_source) 
        references Node;

    alter table LegalPerson_emails 
        add constraint FK57r51bhrrtkphral2s5g8fliw 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table LegalPerson_emails 
        add constraint FKcw2plu6hr2x0cn9oif1vb8fnc 
        foreign key (LegalPerson_id, LegalPerson_nodeType, LegalPerson_source) 
        references Node;

    alter table LegalPerson_links 
        add constraint FK2n9qnfwvfu8np8w29h7k3323g 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table LegalPerson_links 
        add constraint FKqtqxdehi6fu72ko6odlbg6r3t 
        foreign key (LegalPerson_id, LegalPerson_nodeType, LegalPerson_source) 
        references Node;

    alter table LegalPerson_numbers 
        add constraint FKe37ecgbbetkxwlw77m973rqwe 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table LegalPerson_numbers 
        add constraint FKo2l34vktv5jnysok64g3wfqvq 
        foreign key (LegalPerson_id, LegalPerson_nodeType, LegalPerson_source) 
        references Node;

    alter table Location_Category 
        add constraint FKbpj9fd3vreu4hi2xpe2ll55vo 
        foreign key (categories_id, categories_nodeType, categories_source) 
        references Node;

    alter table Location_Category 
        add constraint FK5b6fpm548a7lgts68vhy7mcj4 
        foreign key (Location_id, Location_nodeType, Location_source) 
        references Node;

    alter table Location_emails 
        add constraint FKn2xd9u1a04ks23nd0ussna3rq 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Location_emails 
        add constraint FKckgpp1j0ob5bspu854g61goko 
        foreign key (Location_id, Location_nodeType, Location_source) 
        references Node;

    alter table Location_hours 
        add constraint FK2fgc24b4d2v3pu1opsfvowt3o 
        foreign key (Location_id, Location_nodeType, Location_source) 
        references Node;

    alter table Location_links 
        add constraint FK22oj3jm0qo3ylcojflryeovsj 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Location_links 
        add constraint FKr1c5cxw7f0kea4e6jf3t4wwbl 
        foreign key (Location_id, Location_nodeType, Location_source) 
        references Node;

    alter table Location_numbers 
        add constraint FKn5fopoumjl9peoc0wydq0y7if 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Location_numbers 
        add constraint FKr5k04mtbvfnbof26m75de5ujl 
        foreign key (Location_id, Location_nodeType, Location_source) 
        references Node;

    alter table Node 
        add constraint FK9ted8q3xnwgdae6r2b6a2j2c8 
        foreign key (photographer_id, photographer_nodeType, photographer_source) 
        references Node;

    alter table Node 
        add constraint FKdbvdgnv0766xu7jlxwghad4oq 
        foreign key (country_id, country_nodeType, country_source) 
        references Node;

    alter table Node 
        add constraint FKkh3kdosgk406i59pksttr398b 
        foreign key (state_id, state_nodeType, state_source) 
        references Node;

    alter table Node 
        add constraint FKqwd2vxgkcydcohnw9xuxu4w8n 
        foreign key (city_id, city_nodeType, city_source) 
        references Node;

    alter table Node 
        add constraint FKcfsvjllpwnsrxy2qkv2fg1wli 
        foreign key (district_id, district_nodeType, district_source) 
        references Node;

    alter table Node 
        add constraint FKhuf20tlghhk21gs0n65cdgwxh 
        foreign key (parent_id, parent_nodeType, parent_source) 
        references Node;

    alter table Node 
        add constraint FK3t7obkasckpeh8lam3gul13k 
        foreign key (event_id, event_nodeType, event_source) 
        references Node;

    alter table Node 
        add constraint FK5v23em75p47f86muwm34i6ibk 
        foreign key (location_id, location_nodeType, location_source) 
        references Node;

    alter table Node 
        add constraint FKnsy9f76nf7ocajkfuuvxmv5g7 
        foreign key (node_id, node_nodeType, node_source) 
        references Node;

    alter table Node 
        add constraint FK6udg7k9o0ffj9lesyf3a12pqr 
        foreign key (subunit_id, subunit_nodeType, subunit_source) 
        references Node;

    alter table Node_features 
        add constraint FKrq26l7t2c19663gew9ml6cvud 
        foreign key (Node_id, Node_nodeType, Node_source) 
        references Node;

    alter table Node_fields 
        add constraint FKneblsglqyju4ma3kpju4c7orq 
        foreign key (Node_id, Node_nodeType, Node_source) 
        references Node;

    alter table Node_Media 
        add constraint FKn0qdv3hrutqr6r0umned27d4c 
        foreign key (media_id, media_nodeType, media_source) 
        references Node;

    alter table Node_Media 
        add constraint FK1xaqp7wwyf36aporbvniekdrv 
        foreign key (nodeId, nodeType, source) 
        references Node;

    alter table Node_Nodes 
        add constraint FKi3m2oeejpb1njux7j14pvo16b 
        foreign key (nodes_dbid) 
        references Nodes;

    alter table Node_Nodes 
        add constraint FKee84dn6iionubhwkf575y9vax 
        foreign key (Node_id, Node_nodeType, Node_source) 
        references Node;

    alter table Nodes_Node 
        add constraint FKq8jht9sf4j6k5qo8cuwn65cbo 
        foreign key (nodes_id, nodes_nodeType, nodes_source) 
        references Node;

    alter table Nodes_Node 
        add constraint FKjp2exc3ajmkmmt4oa151243e 
        foreign key (Nodes_dbid) 
        references Nodes;

    alter table Organization_contributors 
        add constraint FKdr4ufvx8juh8jpq913j63mvjy 
        foreign key (contributor_id, contributor_nodeType, contributor_source) 
        references Node;

    alter table Organization_contributors 
        add constraint FKlda1w56spi8gim216xocg2n5t 
        foreign key (Organization_id, Organization_nodeType, Organization_source) 
        references Node;

    alter table Place_Region 
        add constraint FK1barpdkpy4p8f2tcgwhqaay1n 
        foreign key (regions_id, regions_nodeType, regions_source) 
        references Node;

    alter table Place_Region 
        add constraint FK3gga17h07k8awue3capjepjb2 
        foreign key (Place_id, Place_nodeType, Place_source) 
        references Node;

    alter table Price 
        add constraint FKson2y4hg9osya48c5idq0kguk 
        foreign key (nodeId, nodeType, source) 
        references Node;

    alter table Price_emails 
        add constraint FK7j7cjie0a3qemqlgwlxqqlc92 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Price_emails 
        add constraint FKq6ito5fik1kniadn6cwqm0l9f 
        foreign key (Price_dbid) 
        references Price;

    alter table Price_links 
        add constraint FKobn3hdtitjci6trqdwnrmj7m2 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Price_links 
        add constraint FKhmji8edy6h9017ktwlrr9vmw 
        foreign key (Price_dbid) 
        references Price;

    alter table Price_numbers 
        add constraint FK4xahu5ppk7qmu1g6toypk0a13 
        foreign key (icon_id, icon_nodeType, icon_source) 
        references Node;

    alter table Price_numbers 
        add constraint FKiejn1brgdrrpflwykhlpw0w4n 
        foreign key (Price_dbid) 
        references Price;

    alter table Region_City 
        add constraint FKogds6ncpkoqv484wign95w0sd 
        foreign key (cities_id, cities_nodeType, cities_source) 
        references Node;

    alter table Region_City 
        add constraint FKhifiimy7x0ksxh6ffenvqw38t 
        foreign key (Region_id, Region_nodeType, Region_source) 
        references Node;

    alter table Source_features 
        add constraint FKbowlk95psbed0re5f8b2x8xch 
        foreign key (Source_uri) 
        references Source;

    alter table Source_types 
        add constraint FK2miu98q4nc71gepck5sx3v7ye 
        foreign key (Source_uri) 
        references Source;
