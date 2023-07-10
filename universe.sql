--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: abc; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.abc (
    abc_id integer NOT NULL,
    name character varying(30) NOT NULL,
    efg integer
);


ALTER TABLE public.abc OWNER TO freecodecamp;

--
-- Name: abc_abc1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.abc_abc1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.abc_abc1_seq OWNER TO freecodecamp;

--
-- Name: abc_abc1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.abc_abc1_seq OWNED BY public.abc.abc_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age integer,
    size numeric(4,1),
    about text,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    bbb boolean,
    bgv boolean,
    key_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_key_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_key_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_key_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_key_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_key_id_seq OWNED BY public.galaxy.key_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    rank integer,
    size numeric,
    about text,
    alive boolean,
    working boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_galaxy_id_seq OWNED BY public.moon.galaxy_id;


--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    "position" integer,
    rank integer,
    age numeric(4,1),
    about text,
    work boolean,
    bdh boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_galaxy_id_seq OWNED BY public.planet.galaxy_id;


--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    life integer,
    size integer,
    description text,
    rank numeric,
    star_id integer NOT NULL,
    bcnj boolean,
    ncc boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: abc abc_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.abc ALTER COLUMN abc_id SET DEFAULT nextval('public.abc_abc1_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy key_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN key_id SET DEFAULT nextval('public.galaxy_key_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN galaxy_id SET DEFAULT nextval('public.moon_galaxy_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN galaxy_id SET DEFAULT nextval('public.planet_galaxy_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: abc; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.abc VALUES (1, 'mnb', NULL);
INSERT INTO public.abc VALUES (2, 'vcx', NULL);
INSERT INTO public.abc VALUES (3, 'poi', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 350, 400.0, 'largest', 'sun', NULL, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES (2, 400, 459.8, 'large', 'sun2', NULL, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES (3, 800, 200.0, 'med', 'sun3', NULL, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES (4, 657, 46.0, 'hgg', 'sun4', NULL, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES (5, 56, 344.0, 'fgg', 'sun5', NULL, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES (6, 433, 45.0, 'jhh', 'sun6', NULL, NULL, NULL, 6);
INSERT INTO public.galaxy VALUES (7, NULL, NULL, NULL, 'sun7', NULL, NULL, NULL, 7);
INSERT INTO public.galaxy VALUES (8, NULL, NULL, NULL, 'sun8', NULL, NULL, NULL, 8);
INSERT INTO public.galaxy VALUES (9, NULL, NULL, NULL, 'sun9', NULL, NULL, NULL, 9);
INSERT INTO public.galaxy VALUES (10, NULL, NULL, NULL, 'sun10', NULL, NULL, NULL, 10);
INSERT INTO public.galaxy VALUES (11, NULL, NULL, NULL, 'sun11', NULL, NULL, NULL, 11);
INSERT INTO public.galaxy VALUES (12, NULL, NULL, NULL, 'sun12', NULL, NULL, NULL, 12);
INSERT INTO public.galaxy VALUES (13, NULL, NULL, NULL, 'sun13', NULL, NULL, NULL, 13);
INSERT INTO public.galaxy VALUES (14, NULL, NULL, NULL, 'sun14', NULL, NULL, NULL, 14);
INSERT INTO public.galaxy VALUES (15, NULL, NULL, NULL, 'sun15', NULL, NULL, NULL, 15);
INSERT INTO public.galaxy VALUES (16, NULL, NULL, NULL, 'sun16', NULL, NULL, NULL, 16);
INSERT INTO public.galaxy VALUES (17, NULL, NULL, NULL, 'sun17', NULL, NULL, NULL, 17);
INSERT INTO public.galaxy VALUES (18, NULL, NULL, NULL, 'sun18', NULL, NULL, NULL, 18);
INSERT INTO public.galaxy VALUES (19, NULL, NULL, NULL, 'sun19', NULL, NULL, NULL, 19);
INSERT INTO public.galaxy VALUES (20, NULL, NULL, NULL, 'sun20', NULL, NULL, NULL, 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'kji', 980, 567, 456, 'moon1', NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'jhk', 983, 345, 89, 'moon2', NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'zsdc', 332, 455, 234, 'moon3', NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'ab', NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'bc', NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'cd', NULL, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'ef', NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'hi', NULL, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'jk', NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'lm', NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'no', NULL, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'pq', NULL, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'rs', NULL, NULL, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES (14, 'tu', NULL, NULL, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (15, 'vw', NULL, NULL, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (16, 'xy', NULL, NULL, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES (17, 'tv', NULL, NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES (18, 'll', NULL, NULL, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES (19, 'vv', NULL, NULL, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES (20, 'za', NULL, NULL, NULL, NULL, NULL, NULL, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'ghi', 987, 645, 876.9, 'planet1', NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'kju', 876, 239, 765.0, 'planet2', NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'kkl', 876, 736, 123.8, 'planet3', NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'sia', NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'bbb', NULL, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'ccc', NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (8, 'ddd', NULL, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, 'eee', NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (10, 'fff', NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, 'ggg', NULL, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, 'hhh', NULL, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES (13, 'iii', NULL, NULL, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (14, 'jjj', NULL, NULL, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.planet VALUES (15, 'kkk', NULL, NULL, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES (16, 'lll', NULL, NULL, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES (17, 'mmm', NULL, NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES (18, 'nnn', NULL, NULL, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.planet VALUES (19, 'ooo', NULL, NULL, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.planet VALUES (20, 'ppp', NULL, NULL, NULL, NULL, NULL, NULL, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('abc', 230, 456, 'twilight', 56, 1, NULL, NULL, 1);
INSERT INTO public.star VALUES ('def', 345, 654, 'twilight2', 87, 2, NULL, NULL, 2);
INSERT INTO public.star VALUES ('ght', 987, 786, 'twilight3', 68, 3, NULL, NULL, 3);
INSERT INTO public.star VALUES ('kju', 543, 433, NULL, 45, 4, NULL, NULL, 4);
INSERT INTO public.star VALUES ('bhb', 64, 56, NULL, 6554, 5, NULL, NULL, 5);
INSERT INTO public.star VALUES ('hhfg', 475, 443, NULL, 456, 6, NULL, NULL, 6);
INSERT INTO public.star VALUES ('a', NULL, NULL, NULL, NULL, 7, NULL, NULL, 7);
INSERT INTO public.star VALUES ('B', NULL, NULL, NULL, NULL, 8, NULL, NULL, 8);
INSERT INTO public.star VALUES ('c', NULL, NULL, NULL, NULL, 9, NULL, NULL, 9);
INSERT INTO public.star VALUES ('d', NULL, NULL, NULL, NULL, 10, NULL, NULL, 10);
INSERT INTO public.star VALUES ('e', NULL, NULL, NULL, NULL, 11, NULL, NULL, 11);
INSERT INTO public.star VALUES ('f', NULL, NULL, NULL, NULL, 12, NULL, NULL, 12);
INSERT INTO public.star VALUES ('g', NULL, NULL, NULL, NULL, 13, NULL, NULL, 13);
INSERT INTO public.star VALUES ('h', NULL, NULL, NULL, NULL, 14, NULL, NULL, 14);
INSERT INTO public.star VALUES ('i', NULL, NULL, NULL, NULL, 15, NULL, NULL, 15);
INSERT INTO public.star VALUES ('j', NULL, NULL, NULL, NULL, 16, NULL, NULL, 16);
INSERT INTO public.star VALUES ('k', NULL, NULL, NULL, NULL, 17, NULL, NULL, 17);
INSERT INTO public.star VALUES ('l', NULL, NULL, NULL, NULL, 18, NULL, NULL, 18);
INSERT INTO public.star VALUES ('m', NULL, NULL, NULL, NULL, 19, NULL, NULL, 19);
INSERT INTO public.star VALUES ('n', NULL, NULL, NULL, NULL, 20, NULL, NULL, 20);


--
-- Name: abc_abc1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.abc_abc1_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: galaxy_key_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_key_id_seq', 20, true);


--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_galaxy_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 2, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 20, true);


--
-- Name: abc abc_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.abc
    ADD CONSTRAINT abc_name_key UNIQUE (name);


--
-- Name: abc abc_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.abc
    ADD CONSTRAINT abc_pkey PRIMARY KEY (abc_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

