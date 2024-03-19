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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    name character varying(30) NOT NULL,
    asteroid_id integer NOT NULL,
    composition character varying(30)
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    num_of_stars numeric,
    is_spherical boolean,
    galaxy_type character varying(20),
    temperature_in_c integer
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
    name character varying(40) NOT NULL,
    moon_id integer NOT NULL,
    has_life boolean,
    planet_name character varying(30),
    temperature_in_c integer
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
    planet_name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    age integer,
    diameter_in_km integer,
    has_life boolean,
    description text,
    star_name character varying(30),
    name character varying(10)
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
    star_name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    bright_color character varying(25),
    galaxy_id integer NOT NULL,
    temperature_in_c integer,
    name character varying(10)
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroids_asteroid_id_seq'::regclass);


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
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES ('ceres', 1, 'ice, gold, sodium');
INSERT INTO public.asteroid VALUES ('itokawa', 2, 'steel, carbon');
INSERT INTO public.asteroid VALUES ('faeton', 3, 'gold, ice');
INSERT INTO public.asteroid VALUES ('juno', 4, 'leaving a pink print');
INSERT INTO public.asteroid VALUES ('astraea', 5, 'breaking everything interposed');
INSERT INTO public.asteroid VALUES ('hebe', 6, 'titanium, coal');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 1500, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'milky way', 3000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'hat', 1890, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'bode', 5000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'NGC', 50000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'molinete', 4700, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('io', 1, false, 'jupiter', NULL);
INSERT INTO public.moon VALUES ('calisto', 2, false, 'jupiter', NULL);
INSERT INTO public.moon VALUES ('ganimedes', 3, true, 'jupiter', NULL);
INSERT INTO public.moon VALUES ('europa', 4, false, 'jupiter', NULL);
INSERT INTO public.moon VALUES ('deimos', 6, false, 'marte', NULL);
INSERT INTO public.moon VALUES ('phobos', 7, false, 'marte', NULL);
INSERT INTO public.moon VALUES ('thea', 5, false, 'Tierra', NULL);
INSERT INTO public.moon VALUES ('cyllene', 8, true, 'kepler', NULL);
INSERT INTO public.moon VALUES ('elara', 9, false, 'kepler', NULL);
INSERT INTO public.moon VALUES ('helike', 10, false, 'teegarden', NULL);
INSERT INTO public.moon VALUES ('atlas', 11, false, 'proxima centauri', NULL);
INSERT INTO public.moon VALUES ('besta', 12, false, 'pegasi b', NULL);
INSERT INTO public.moon VALUES ('calypso', 13, true, 'pegasi b', NULL);
INSERT INTO public.moon VALUES ('hyperion', 14, false, 'cancri b', NULL);
INSERT INTO public.moon VALUES ('fenrir', 15, false, 'cancri b', NULL);
INSERT INTO public.moon VALUES ('desdemona', 16, false, 'gliese b', NULL);
INSERT INTO public.moon VALUES ('umbriel', 17, false, 'wolf-61', NULL);
INSERT INTO public.moon VALUES ('proteus', 18, false, 'wolf-61', NULL);
INSERT INTO public.moon VALUES ('hydra', 19, false, 'pluton', NULL);
INSERT INTO public.moon VALUES ('triton', 20, false, 'kapteyn', NULL);
INSERT INTO public.moon VALUES ('titan', 21, true, 'kapteyn', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('jupiter', 2, 4603, 139882, false, 'the giant planet', 'Sol', NULL);
INSERT INTO public.planet VALUES ('marte', 3, 4603, 6779, false, 'the red planet', 'Sol', NULL);
INSERT INTO public.planet VALUES ('Tierra', 1, 4500, 12742, true, 'The paradise', 'Sol', NULL);
INSERT INTO public.planet VALUES ('kepler', 5, 6000, 15239, true, 'Similar to the earth, like a big brother', 'canopus', NULL);
INSERT INTO public.planet VALUES ('teegarden', 6, 7000, 25400, false, 'green and toxic planet', 'canopus', NULL);
INSERT INTO public.planet VALUES ('proxima centauri', 7, 3550, 190000, true, 'Colosal planet, high probability to find life there', 'sirio', NULL);
INSERT INTO public.planet VALUES ('pegasi b', 10, 8200, 22010, false, 'Cool planet, high probability to find gold there', 'sirio', NULL);
INSERT INTO public.planet VALUES ('cancri b', 11, 6000, 15239, true, 'Similar to the earth', 'polux', NULL);
INSERT INTO public.planet VALUES ('gliese b', 12, 7000, 25400, false, 'green and toxic planet', 'polux', NULL);
INSERT INTO public.planet VALUES ('wolf-61', 8, 7000, 16239, true, 'Similar to the mars', 'betelgeuse', NULL);
INSERT INTO public.planet VALUES ('pluton', 9, 4600, 2400, false, 'like a little diamond', 'betelgeuse', NULL);
INSERT INTO public.planet VALUES ('kapteyn', 13, 3550, 190000, true, 'death planet', 'antares', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sol', 6, 'yellow', 1, NULL, NULL);
INSERT INTO public.star VALUES ('canopus', 1, 'white', 2, NULL, NULL);
INSERT INTO public.star VALUES ('sirio', 4, 'white', 3, NULL, NULL);
INSERT INTO public.star VALUES ('polux', 5, 'red', 4, NULL, NULL);
INSERT INTO public.star VALUES ('betelgeuse', 2, 'red', 5, NULL, NULL);
INSERT INTO public.star VALUES ('antares', 3, 'orange', 6, NULL, NULL);


--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroid_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 7, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: asteroid pk_asteroid_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT pk_asteroid_id PRIMARY KEY (asteroid_id);


--
-- Name: galaxy pk_galaxy_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT pk_galaxy_galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: moon pk_moon_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT pk_moon_moon_id PRIMARY KEY (moon_id);


--
-- Name: planet pk_planet_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pk_planet_planet_id PRIMARY KEY (planet_id);


--
-- Name: star pk_start_start_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT pk_start_start_id PRIMARY KEY (star_id);


--
-- Name: asteroid unique_asteroid; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_asteroid UNIQUE (name);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (planet_name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (star_name);


--
-- Name: moon fk_in_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_in_planet FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet fk_star_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_name FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

