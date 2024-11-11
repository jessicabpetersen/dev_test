USE test_db;

--TODO Crie a tabela de user;
CREATE TABLE IF NOT EXISTS public.user (
	id integer AUTO_INCREMENT NOT NULL ,
	firstName Varchar(100) NOT NULL,
    lastName  Varchar(100) NOT NULL,
	email   Varchar(100) NOT NULL,
    CONSTRAINT user_pkey PRIMARY KEY (id)
);
--TODO Crie a tabela de posts;
CREATE TABLE IF NOT EXISTS public.post (
	id integer AUTO_INCREMENT NOT NULL,
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
