USE test_db;

--TODO Crie a tabela de user;
CREATE TABLE IF NOT EXISTS public.user (
	id integer NOT NULL AUTO_INCREMENT,
	firstName Varchar(100) NOT NULL,
    lastName  Varchar(100) NOT NULL,
	email   Varchar(100) NOT NULL,
    CONSTRAINT user_pkey PRIMARY KEY (id)
);
--TODO Crie a tabela de posts;
CREATE TABLE IF NOT EXISTS public.post (
	id integer NOT NULL AUTO_INCREMENT,
	title Varchar(100) NOT NULL,
    description  Varchar(100) NOT NULL,
	userId integer,
    CONSTRAINT user_pkey PRIMARY KEY (id)
	CONSTRAINT userId FOREIGN KEY (userId)
        REFERENCES public.user (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);
