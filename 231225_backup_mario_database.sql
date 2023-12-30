--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: characters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.characters (
    character_id integer NOT NULL,
    name character varying(50),
    homeland character varying(50),
    favorite_color character varying(50)
);


ALTER TABLE public.characters OWNER TO postgres;

--
-- Name: characters_character_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.characters_character_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.characters_character_id_seq OWNER TO postgres;

--
-- Name: characters_character_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.characters_character_id_seq OWNED BY public.characters.character_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    birthday date,
    height integer,
    weight numeric(4,1),
    character_id integer NOT NULL
);


ALTER TABLE public.more_info OWNER TO postgres;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.more_info_more_info_id_seq OWNER TO postgres;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: characters character_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.characters ALTER COLUMN character_id SET DEFAULT nextval('public.characters_character_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Data for Name: characters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.characters (character_id, name, homeland, favorite_color) FROM stdin;
3	Luigi	Mushroom Kingdom	Green
4	Peach	Mushroom Kingdom	Pink
8	Yoshi	Dinosaur Land	Green
7	Daisy	Sarasaland	Orange
1	Mario	Mushroom Kingdom	Red
5	Toad	Mushroom Kingdom	Blue
6	Bowser	Koopa Kingdom	Yellow
\.


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.more_info (more_info_id, birthday, height, weight, character_id) FROM stdin;
\.


--
-- Name: characters_character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.characters_character_id_seq', 1, false);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 1, false);


--
-- Name: characters characters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.characters
    ADD CONSTRAINT characters_pkey PRIMARY KEY (character_id);


--
-- Name: more_info more_info_character_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_character_id_key UNIQUE (character_id);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: more_info more_info_character_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_character_id_fkey FOREIGN KEY (character_id) REFERENCES public.characters(character_id);


--
-- PostgreSQL database dump complete
--

