--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30),
    age_in_billions_of_years numeric NOT NULL,
    has_life boolean,
    distance_from_earth_in_au numeric
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
    name character varying(30),
    age_in_billions_of_years numeric NOT NULL,
    discoverer text,
    distance_from_earth_in_au numeric,
    planet_id integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age_in_billions_of_years numeric NOT NULL,
    has_life boolean,
    distance_from_earth_in_au numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

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
-- Name: ringed_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ringed_planet (
    ringed_planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_rings integer,
    year_discovered integer
);


ALTER TABLE public.ringed_planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_in_billions_of_years numeric NOT NULL,
    supports_life boolean,
    distance_from_earth_in_au numeric,
    galaxy_id integer
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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13.6, true, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10, false, 158000000000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 10, false, 190000000000);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 10, false, 3350000000000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 0.4, false, 1440000000000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 9.55, false, 1760000000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4.5, 'Unknown', 0.00257, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4.5, 'Unknown', 0.00036, 6);
INSERT INTO public.moon VALUES (3, 'Deimos', 4.5, 'Unknown', 0.0006, 6);
INSERT INTO public.moon VALUES (4, 'Io', 4.5, 'Galileo Galilei', 5.2, 7);
INSERT INTO public.moon VALUES (5, 'Europa', 4.5, 'Galileo Galilei', 5.2, 7);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4.5, 'Galileo Galilei', 5.2, 7);
INSERT INTO public.moon VALUES (7, 'Callisto', 4.5, 'Galileo Galilei', 5.2, 7);
INSERT INTO public.moon VALUES (8, 'Titan', 4.5, 'Christiaan Huygens', 9.55, 8);
INSERT INTO public.moon VALUES (9, 'Rhea', 4.5, 'Giovanni Cassini', 9.69, 8);
INSERT INTO public.moon VALUES (10, 'Iapetus', 4.5, 'Giovanni Cassini', 10.14, 8);
INSERT INTO public.moon VALUES (11, 'Dione', 4.5, 'Giovanni Cassini', 9.56, 8);
INSERT INTO public.moon VALUES (12, 'Tethys', 4.5, 'Giovanni Cassini', 9.52, 8);
INSERT INTO public.moon VALUES (13, 'Enceladus', 4.5, 'William Herschel', 9.57, 8);
INSERT INTO public.moon VALUES (14, 'Miranda', 4.5, 'Gerard Kuiper', 19.34, 9);
INSERT INTO public.moon VALUES (15, 'Titania', 4.5, 'William Herschel', 19.29, 9);
INSERT INTO public.moon VALUES (16, 'Oberon', 4.5, 'William Herschel', 19.35, 9);
INSERT INTO public.moon VALUES (17, 'Ariel', 4.5, 'William Herschel', 19.16, 9);
INSERT INTO public.moon VALUES (18, 'Umbriel', 4.5, 'William Herschel', 19.31, 9);
INSERT INTO public.moon VALUES (19, 'Charon', 4.5, 'James Christy', 32.18, 13);
INSERT INTO public.moon VALUES (20, 'Nereid', 4.5, 'Gerard Kuiper', 29.82, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4.5, true, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', 4.5, false, 0.39, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 4.5, false, 0.72, 1);
INSERT INTO public.planet VALUES (6, 'Mars', 4.5, false, 1.52, 1);
INSERT INTO public.planet VALUES (7, 'Jupiter', 4.5, false, 5.2, 1);
INSERT INTO public.planet VALUES (8, 'Saturn', 4.5, false, 9.58, 1);
INSERT INTO public.planet VALUES (9, 'Uranus', 4.5, false, 19.22, 1);
INSERT INTO public.planet VALUES (10, 'Neptune', 4.5, false, 30.05, 1);
INSERT INTO public.planet VALUES (12, 'Ceres', 4.5, false, 2.77, 1);
INSERT INTO public.planet VALUES (13, 'Pluto', 4.5, false, 39.48, 1);
INSERT INTO public.planet VALUES (14, 'Eris', 4.5, false, 67.67, 1);
INSERT INTO public.planet VALUES (15, 'Haumea', 4.5, false, 51.49, 1);


--
-- Data for Name: ringed_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ringed_planet VALUES (7, 'Jupiter', 4, 1979);
INSERT INTO public.ringed_planet VALUES (8, 'Saturn', 7, 1655);
INSERT INTO public.ringed_planet VALUES (9, 'Uranus', 13, 1986);
INSERT INTO public.ringed_planet VALUES (10, 'Neptune', 5, 1989);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4.6, true, 1, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 6, false, 276000, 2);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 6, false, 276000, 2);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 4.85, false, 268770, 2);
INSERT INTO public.star VALUES (5, 'Sirius A', 0.24, false, 546500, 2);
INSERT INTO public.star VALUES (6, 'Vega', 0.45, false, 1583500, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: ringed_planet ringed_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ringed_planet
    ADD CONSTRAINT ringed_planet_pkey PRIMARY KEY (ringed_planet_id);


--
-- Name: ringed_planet ringed_planet_ringed_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ringed_planet
    ADD CONSTRAINT ringed_planet_ringed_planet_name_key UNIQUE (name);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

