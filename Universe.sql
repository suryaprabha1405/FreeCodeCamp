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
    name character varying(50) NOT NULL,
    galaxy_types character varying(40) NOT NULL,
    is_spherical boolean,
    has_life boolean,
    age_in_millions_of_the_years numeric,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    moon_types integer,
    is_spherical boolean,
    has_life boolean,
    age_in_millions_of_the_years numeric,
    descrition text,
    distance_form_earth integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: object_in_space; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.object_in_space (
    object_in_space_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer
);


ALTER TABLE public.object_in_space OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_types integer,
    is_spherical boolean,
    has_life boolean,
    age_in_millions_of_the_years numeric,
    descrition text,
    distance_form_earth integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    is_spherical boolean,
    has_life boolean,
    age_in_millions_of_the_years numeric,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', '1', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', '1', false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Canis Major', '2', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'VVirgo A', '2', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cygnus A', '2', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Magellanic Clouds', '3', false, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth moon', 3, true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Io', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Europa', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, 'Rhea', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'Titan', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (6, 'Mimas', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (7, 'Domino', NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (8, 'MakeMake', NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (9, 'Haumea', NULL, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Algebra', NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (11, 'Bustri', NULL, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (12, 'Klango', NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (13, 'Ceres', NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (14, 'Scooter', NULL, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (15, 'Mikasto', NULL, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (16, 'Bojana', NULL, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (17, 'Starbucks', NULL, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (18, 'Krisna', NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (19, 'Occhiali', NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (20, 'Storm', NULL, NULL, NULL, NULL, NULL, NULL, 10);


--
-- Data for Name: object_in_space; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.object_in_space VALUES (1, 'asteriods', 889);
INSERT INTO public.object_in_space VALUES (2, 'meteors', 777);
INSERT INTO public.object_in_space VALUES (3, 'comets', 990);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 3, true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'mars', 4, true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'venus', 2, true, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'jupiter', 5, true, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'saturn', 6, false, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'uranus', 7, true, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'neptun', 8, true, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (8, 'mercury', 1, true, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (9, 'Ceres', 12, true, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'Haumea', 11, true, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'Pluto', 9, true, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (12, 'MakeMake', 10, true, NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Aldebaran', true, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Arcturus', false, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (4, 'Sirius A', false, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (5, 'UY Scuti', true, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (6, 'Betelgeuse', true, NULL, NULL, NULL, 3);


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
-- Name: object_in_space object_in_space_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.object_in_space
    ADD CONSTRAINT object_in_space_name_key UNIQUE (name);


--
-- Name: object_in_space object_in_space_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.object_in_space
    ADD CONSTRAINT object_in_space_pkey PRIMARY KEY (object_in_space_id);


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
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

