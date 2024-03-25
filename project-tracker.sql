--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Homebrew)
-- Dumped by pg_dump version 14.11 (Homebrew)

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
-- Name: projects; Type: TABLE; Schema: public; Owner: lilymcclain
--

CREATE TABLE public.projects (
    title character varying(10) NOT NULL,
    description text,
    max_grade integer
);


ALTER TABLE public.projects OWNER TO lilymcclain;

--
-- Name: students; Type: TABLE; Schema: public; Owner: lilymcclain
--

CREATE TABLE public.students (
    github character varying(30) NOT NULL,
    first_name character varying(30),
    last_name character varying(30)
);


ALTER TABLE public.students OWNER TO lilymcclain;

--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: lilymcclain
--

COPY public.projects (title, description, max_grade) FROM stdin;
Markov	Tweets generated from Markov chains	50
Blockly	Programmatic Logic Puzzle Game	100
Penis Game	I suck at living in this world	1000
FUCK	How much wood could a woodchuck chuck	0
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: lilymcclain
--

COPY public.students (github, first_name, last_name) FROM stdin;
sdevelops	Sarah	Developer
jhacks	Jane	Hacker
\.


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: lilymcclain
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (title);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: lilymcclain
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (github);


--
-- PostgreSQL database dump complete
--

