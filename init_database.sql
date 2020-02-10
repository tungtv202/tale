# ALTER TABLE tale.t_contents MODIFY COLUMN content text
#     CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;

drop database tungexplorer;
create database tungexplorer;
ALTER DATABASE tungexplorer CHARACTER SET utf8 COLLATE utf8_unicode_ci;


create table t_attach
(
    id        int auto_increment
        primary key,
    fname     varchar(255) null,
    ftype     varchar(255) null,
    fkey      varchar(255) null,
    author_id int          not null,
    created   int          not null
);


create table t_comments
(
    coid      int auto_increment
        primary key,
    cid       int default 0 not null,
    created   int           null,
    author    varchar(255)  null,
    author_id int default 0 null,
    owner_id  int default 0 null,
    mail      varchar(255)  null,
    url       varchar(255)  null,
    ip        varchar(255)  null,
    agent     varchar(255)  null,
    content   text          null,
    type      varchar(255)  null,
    status    varchar(255)  null,
    parent    int default 0 null
);


create table t_contents
(
    cid           int auto_increment
        primary key,
    title         varchar(255)                    null,
    slug          varchar(255)                    null,
    thumb_img     varchar(255)                    null,
    created       datetime                        null,
    modified      datetime                        null,
    column_7      int                             null,
    content       text                            null,
    author_id     int                             null,
    type          varchar(255)                    null,
    status        varchar(255)                    null,
    column_12     int                             null,
    fmt_type      varchar(255) default 'markdown' null,
    tags          varchar(255)                    null,
    categories    varchar(255)                    null,
    hits          int          default 0          null,
    comments_num  int          default 0          null,
    allow_comment int          default 1          null,
    allow_ping    int          default 1          null,
    allow_feed    int          default 1          null
);

create table t_logs
(
    id        int auto_increment
        primary key,
    action    varchar(255) null,
    data      varchar(255) null,
    author_id int          null,
    ip        varchar(255) null,
    created   int          null
);

create table t_metas
(
    mid         int auto_increment
        primary key,
    name        varchar(255)  null,
    slug        varchar(255)  null,
    type        varchar(255)  null,
    description varchar(255)  null,
    sort        int default 0 null,
    parent      int default 0 null
);

create table t_options
(
    name        varchar(255) not null,
    value       text         null,
    description varchar(255) null,
    constraint t_options_name_uindex
        unique (name)
);

alter table t_options
    add primary key (name);

create table t_relationships
(
    cid int not null,
    mid int not null
);

create table t_users
(
    uid         int auto_increment
        primary key,
    username    varchar(256) not null,
    password    varchar(256) null,
    email       varchar(256) null,
    home_url    varchar(256) null,
    screen_name varchar(256) null,
    created     int          null,
    activated   int          null,
    logged      int          null,
    group_name  varchar(255) null,
    constraint t_users_username_uindex
        unique (username)
);
