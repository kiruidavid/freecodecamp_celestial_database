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
    name character varying(30),
    "position" integer,
    distance numeric(4,1),
    galaxy_name text NOT NULL,
    visible boolean
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
-- Name: galaxystar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxystar (
    galaxystar_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxystar OWNER TO freecodecamp;

--
-- Name: galaxystar_galaxy_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxystar_galaxy_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxystar_galaxy_star_id_seq OWNER TO freecodecamp;

--
-- Name: galaxystar_galaxy_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxystar_galaxy_star_id_seq OWNED BY public.galaxystar.galaxystar_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    "position" integer,
    distance numeric(4,1),
    moon_name text,
    visible boolean,
    planet_id integer NOT NULL
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
    "position" integer,
    distance numeric(4,1),
    planet_name text,
    visible boolean,
    star_id integer NOT NULL
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
    name character varying(30),
    "position" integer,
    distance numeric(4,1),
    star_name text,
    visible boolean,
    galaxy_id integer NOT NULL
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
-- Name: galaxystar galaxystar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxystar ALTER COLUMN galaxystar_id SET DEFAULT nextval('public.galaxystar_galaxy_star_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky-way', 160, 0.9, 'Sagitarius', true);
INSERT INTO public.galaxy VALUES (2, 'Magneallic-cloud', 200, 2.7, 'Dorado', false);
INSERT INTO public.galaxy VALUES (3, 'Bode-galaxy', 12, 6.9, 'Urusa', true);
INSERT INTO public.galaxy VALUES (4, 'Centarus', 14, 13.7, 'Centa', false);
INSERT INTO public.galaxy VALUES (5, 'Triangulam-galaxy', 7, 7.0, 'Triangulam', false);
INSERT INTO public.galaxy VALUES (6, 'Scuplator-galaxy', 6, 6.7, 'Scuplator', true);


--
-- Data for Name: galaxystar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxystar VALUES (1, 'Milky-way', 1, 3);
INSERT INTO public.galaxystar VALUES (2, 'Stellar', 2, 4);
INSERT INTO public.galaxystar VALUES (3, 'Centarus', 4, 5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Wolf Moon', 1, 1.2, 'Jan Moon', true, 5);
INSERT INTO public.moon VALUES (2, 'Snow Moon', 2, 2.3, 'Feb Moon', true, 7);
INSERT INTO public.moon VALUES (3, 'Worm Moon', 3, 3.4, 'March Moon', true, 3);
INSERT INTO public.moon VALUES (4, 'Pink Moon', 4, 4.5, 'April Moon', true, 9);
INSERT INTO public.moon VALUES (5, 'Flower Moon', 5, 5.5, 'May Moon', false, 10);
INSERT INTO public.moon VALUES (6, 'Strawberry Moon', 6, 6.5, 'June Moon', false, 11);
INSERT INTO public.moon VALUES (7, 'Buck Moon', 7, 7.7, 'July Moon', false, 1);
INSERT INTO public.moon VALUES (8, 'Sturgeon Moon', 8, 8.9, 'August Moon', true, 2);
INSERT INTO public.moon VALUES (9, 'Harvest Moon', 9, 9.5, 'September Moon', true, 3);
INSERT INTO public.moon VALUES (10, 'Full Corn Moon', 10, 10.2, 'October Moon', true, 4);
INSERT INTO public.moon VALUES (11, 'Hunter Moon', 11, 11.3, 'November Moon', false, 5);
INSERT INTO public.moon VALUES (12, 'Cold Moon', 12, 12.4, 'December Moon', true, 6);
INSERT INTO public.moon VALUES (13, 'new moon', 13, 13.4, 'New Moon', false, 7);
INSERT INTO public.moon VALUES (14, 'crescent moon', 14, 14.3, 'Crescent Moon', true, 8);
INSERT INTO public.moon VALUES (15, 'quarter moon', 15, 15.4, 'Quater Moon', false, 9);
INSERT INTO public.moon VALUES (16, 'gibbiuos moon', 16, 16.6, 'Gibbiuos Moon', true, 10);
INSERT INTO public.moon VALUES (17, 'lunar moon', 17, 17.5, 'Lunar', false, 11);
INSERT INTO public.moon VALUES (18, 'wanning moon', 18, 18.7, 'Wanning Moon', true, 12);
INSERT INTO public.moon VALUES (19, 'Last moon', 19, 19.5, 'Last Moon', false, 1);
INSERT INTO public.moon VALUES (20, 'Best moon', 20, 20.5, 'Best moon', true, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Sun', 1, 1.2, 'The Sun', true, 2);
INSERT INTO public.planet VALUES (2, 'Mercury', 2, 2.3, 'The Messanger', true, 4);
INSERT INTO public.planet VALUES (3, 'Venus', 3, 3.4, 'Beauty', true, 1);
INSERT INTO public.planet VALUES (4, 'Earth', 4, 4.5, 'Home', false, 3);
INSERT INTO public.planet VALUES (5, 'Mars', 5, 5.6, 'War', true, 2);
INSERT INTO public.planet VALUES (6, 'Asteroid-Belt', 6, 6.6, 'Asteroid', false, 5);
INSERT INTO public.planet VALUES (7, 'Jupiter', 7, 7.8, 'Eye', false, 6);
INSERT INTO public.planet VALUES (8, 'Sartun', 9, 8.9, 'Rings', false, 4);
INSERT INTO public.planet VALUES (9, 'Uranus', 9, 9.8, 'Myth', true, 2);
INSERT INTO public.planet VALUES (10, 'Neptune', 10, 10.5, 'Water', false, 4);
INSERT INTO public.planet VALUES (11, 'Pluto', 11, 11.7, 'Last', false, 6);
INSERT INTO public.planet VALUES (12, 'Trans-Neputine', 12, 12.3, 'Neptunian', false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Eridanus', 3, 9.4, 'Acamar', true, 1);
INSERT INTO public.star VALUES (2, 'Scorpius', 7, 7.9, 'Acarb', false, 2);
INSERT INTO public.star VALUES (3, 'Crux', 8, 7.8, 'Acrux', true, 3);
INSERT INTO public.star VALUES (4, 'Leo', 3, 3.5, 'Adhafera', false, 4);
INSERT INTO public.star VALUES (5, 'Lyra', 6, 6.5, 'Aldafar', true, 1);
INSERT INTO public.star VALUES (6, 'Cygnus', 5, 5.5, 'Albire', false, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxystar_galaxy_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxystar_galaxy_star_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxystar galaxystar_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxystar
    ADD CONSTRAINT galaxystar_name_key UNIQUE (name);


--
-- Name: galaxystar galaxystar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxystar
    ADD CONSTRAINT galaxystar_pkey PRIMARY KEY (galaxystar_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (moon_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (planet_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (star_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxystar galaxystar_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxystar
    ADD CONSTRAINT galaxystar_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxystar galaxystar_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxystar
    ADD CONSTRAINT galaxystar_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

