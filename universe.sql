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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    age integer,
    is_active boolean,
    size numeric
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_id integer,
    distance_from_planet numeric,
    is_inhabitable boolean,
    has_atmosphere boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

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
-- Name: pilot; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.pilot (
    pilot_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    height integer
);


ALTER TABLE public.pilot OWNER TO freecodecamp;

--
-- Name: pilot_pilot_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.pilot_pilot_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pilot_pilot_id_seq OWNER TO freecodecamp;

--
-- Name: pilot_pilot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.pilot_pilot_id_seq OWNED BY public.pilot.pilot_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    star_id integer,
    size numeric,
    distance_from_star numeric,
    has_water boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

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
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer,
    type character varying(50),
    temperature integer,
    is_main_sequence boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: pilot pilot_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pilot ALTER COLUMN pilot_id SET DEFAULT nextval('public.pilot_pilot_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral galaxy', 13000, true, 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral galaxy', 14000, true, 120000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral galaxy', 10000, true, 50000);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'Elliptical galaxy', 12000, true, 200000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Spiral galaxy', 9000, true, 40000);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 'Spiral galaxy', 8000, true, 35000);
INSERT INTO public.galaxy VALUES (7, 'Centaurus B', 'Elliptical galaxy', 12000, true, 200000);
INSERT INTO public.galaxy VALUES (8, 'Whirlpool2', 'Spiral galaxy', 9000, true, 40000);
INSERT INTO public.galaxy VALUES (9, 'Black Eye2', 'Spiral galaxy', 8000, true, 35000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 0.00257, false, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 0.0009, false, false);
INSERT INTO public.moon VALUES (3, 'Europa', 3, 0.0048, true, false);
INSERT INTO public.moon VALUES (21, 'Titan', 6, 0.0082, false, true);
INSERT INTO public.moon VALUES (22, 'Ganymede', 3, 0.0071, false, false);
INSERT INTO public.moon VALUES (23, 'Callisto', 3, 0.0126, false, false);
INSERT INTO public.moon VALUES (24, 'Enceladus', 6, 0.0020, true, true);
INSERT INTO public.moon VALUES (25, 'Deimos', 2, 0.0015, false, false);
INSERT INTO public.moon VALUES (26, 'Triton', 5, 0.3548, false, true);
INSERT INTO public.moon VALUES (27, 'Oberon', 8, 0.0034, false, false);
INSERT INTO public.moon VALUES (28, 'Rhea', 6, 0.0015, false, false);
INSERT INTO public.moon VALUES (29, 'Charon', 9, 0.0036, false, false);
INSERT INTO public.moon VALUES (30, 'Larissa', 10, 0.0005, false, false);
INSERT INTO public.moon VALUES (31, 'Phoebe', 6, 0.1253, false, false);
INSERT INTO public.moon VALUES (32, 'Hyperion', 6, 0.1507, false, false);
INSERT INTO public.moon VALUES (33, 'Pandora', 7, 0.0001, false, false);
INSERT INTO public.moon VALUES (34, 'Io', 3, 0.0028, false, true);
INSERT INTO public.moon VALUES (35, 'Ariel', 8, 0.0019, false, false);
INSERT INTO public.moon VALUES (36, 'Tethys', 6, 0.0011, false, false);
INSERT INTO public.moon VALUES (37, 'Miranda', 6, 0.0013, false, false);
INSERT INTO public.moon VALUES (38, 'Dione', 6, 0.0025, false, false);
INSERT INTO public.moon VALUES (39, 'Mimas', 6, 0.0012, false, false);


--
-- Data for Name: pilot; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.pilot VALUES (1, 'Chris', NULL, NULL);
INSERT INTO public.pilot VALUES (2, 'Mary', NULL, NULL);
INSERT INTO public.pilot VALUES (3, 'Hank', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 1, 1, true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 0.53, 1.52, false);
INSERT INTO public.planet VALUES (3, 'Jupiter', 2, 11.2, 5.2, false);
INSERT INTO public.planet VALUES (5, 'Venus', 1, 0.95, 0.72, false);
INSERT INTO public.planet VALUES (6, 'Neptune', 1, 3.86, 30.05, false);
INSERT INTO public.planet VALUES (7, 'Saturn', 2, 9.44, 9.58, false);
INSERT INTO public.planet VALUES (8, 'Mercury', 1, 0.38, 0.39, false);
INSERT INTO public.planet VALUES (9, 'Uranus', 2, 4.0, 19.22, false);
INSERT INTO public.planet VALUES (10, 'Pluto', 1, 0.18, 39.48, false);
INSERT INTO public.planet VALUES (11, 'Kepler-186f', 3, 1, 0.35, false);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 2, 1.32, 0.047, false);
INSERT INTO public.planet VALUES (13, 'Gliese 581 c', 2, 0.15, 0.07, false);
INSERT INTO public.planet VALUES (14, 'TrES-2b', 2, 1.24, 0.0351, false);
INSERT INTO public.planet VALUES (15, 'WASP-39b', 2, 1.34, 0.0601, false);
INSERT INTO public.planet VALUES (16, 'TOI-700d', 3, 0.76, 0.1649, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G-type', 5778, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 2, 'M-type', 3042, false);
INSERT INTO public.star VALUES (3, 'Sirius', 1, 'A-type', 9940, true);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 2, 'G-type', 5790, true);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 1, 'M-type', 3600, false);
INSERT INTO public.star VALUES (6, 'Vega', 1, 'A-type', 9602, true);
INSERT INTO public.star VALUES (7, 'Polaris', 1, 'F-type', 6730, true);
INSERT INTO public.star VALUES (8, 'Antares', 2, 'M-type', 3570, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 39, true);


--
-- Name: pilot_pilot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.pilot_pilot_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: pilot pilot_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pilot
    ADD CONSTRAINT pilot_name_key UNIQUE (name);


--
-- Name: pilot pilot_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pilot
    ADD CONSTRAINT pilot_pkey PRIMARY KEY (pilot_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

