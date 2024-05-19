CREATE USER repl_user WITH REPLICATION ENCRYPTED PASSWORD 'repl_password';
SELECT pg_create_physical_replication_slot('replications');

\c db

CREATE TABLE emails(
    id SERIAL PRIMARY KEY,
    mail VARCHAR (100) NOT NULL
);
CREATE TABLE phones(
    id SERIAL PRIMARY KEY,
    number VARCHAR(100) NOT NULL
);

INSERT INTO emails(mail)
VALUES ('ananev.zakhar@bk.ru'),
       ('ananev-zakhar@mail.ru');

INSERT INTO phones(number)
VALUES ('8-927-554-33-25'),
       ('+7-929-666-29-78');
COMMIT;

