drop table if exists user;
drop table if exists post;

create TABLE user (
    id integer primary key autoincrement,
    username text unique not null,
    password text not null
);

create table post (
    id integer primary key AUTOINCREMENT,
    author_id integer not null,
    created TIMESTAMP not null default CURRENT_TIMESTAMP,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES user (id)
);
