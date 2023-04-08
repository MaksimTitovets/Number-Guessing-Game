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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.info (
    username character varying(22) NOT NULL,
    games integer,
    best_game integer
);


ALTER TABLE public.info OWNER TO freecodecamp;

--
-- Data for Name: info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.info VALUES ('user_1680915811586', 0, 0);
INSERT INTO public.info VALUES ('user_1680915811585', 0, 0);
INSERT INTO public.info VALUES ('user_1680917766511', 0, 0);
INSERT INTO public.info VALUES ('user_1680917766510', 0, 0);
INSERT INTO public.info VALUES ('user_1680921489382', 0, 0);
INSERT INTO public.info VALUES ('user_1680921489381', 0, 0);
INSERT INTO public.info VALUES ('user_1680921524396', 0, 0);
INSERT INTO public.info VALUES ('user_1680921524395', 0, 0);
INSERT INTO public.info VALUES ('user_1680921955801', 0, 0);
INSERT INTO public.info VALUES ('user_1680921955800', 0, 0);
INSERT INTO public.info VALUES ('user_1680921959563', 0, 0);
INSERT INTO public.info VALUES ('user_1680921959562', 0, 0);
INSERT INTO public.info VALUES ('user_1680921963639', 0, 0);
INSERT INTO public.info VALUES ('user_1680921963638', 0, 0);
INSERT INTO public.info VALUES ('user_1680921983661', 0, 0);
INSERT INTO public.info VALUES ('user_1680921983660', 0, 0);
INSERT INTO public.info VALUES ('user_1680921992360', 0, 0);
INSERT INTO public.info VALUES ('user_1680921992359', 0, 0);
INSERT INTO public.info VALUES ('user_1680922193724', 0, 0);
INSERT INTO public.info VALUES ('user_1680922193723', 0, 0);
INSERT INTO public.info VALUES ('user_1680922214924', 0, 0);
INSERT INTO public.info VALUES ('user_1680922214923', 0, 0);
INSERT INTO public.info VALUES ('user_1680922218937', 0, 0);
INSERT INTO public.info VALUES ('user_1680922218936', 0, 0);
INSERT INTO public.info VALUES ('user_1680922251938', 0, 0);
INSERT INTO public.info VALUES ('user_1680922251937', 0, 0);
INSERT INTO public.info VALUES ('user_1680922266567', 0, 0);
INSERT INTO public.info VALUES ('user_1680922266566', 0, 0);
INSERT INTO public.info VALUES ('user_1680922270417', 0, 0);
INSERT INTO public.info VALUES ('user_1680922270416', 0, 0);
INSERT INTO public.info VALUES ('user_1680922308706', 0, 0);
INSERT INTO public.info VALUES ('user_1680922308705', 0, 0);
INSERT INTO public.info VALUES ('user_1680922316225', 0, 0);
INSERT INTO public.info VALUES ('user_1680922316224', 0, 0);
INSERT INTO public.info VALUES ('user_1680922410829', 0, 0);
INSERT INTO public.info VALUES ('user_1680922410828', 0, 0);
INSERT INTO public.info VALUES ('user_1680922470010', 0, 0);
INSERT INTO public.info VALUES ('user_1680922470009', 0, 0);
INSERT INTO public.info VALUES ('user_1680926819025', 2, 147);
INSERT INTO public.info VALUES ('user_1680922974808', 1, 0);
INSERT INTO public.info VALUES ('user_1680922974809', 1, 0);
INSERT INTO public.info VALUES ('user_1680926532757', 2, 179);
INSERT INTO public.info VALUES ('user_1680922987546', 1, 0);
INSERT INTO public.info VALUES ('user_1680926771080', 2, 475);
INSERT INTO public.info VALUES ('user_1680926014866', 2, 414);
INSERT INTO public.info VALUES ('user_1680922987547', 1, 0);
INSERT INTO public.info VALUES ('user_1680926532758', 5, 236);
INSERT INTO public.info VALUES ('user_1680923002249', 1, 0);
INSERT INTO public.info VALUES ('user_1680926014867', 4, 447);
INSERT INTO public.info VALUES ('user_1680923002250', 1, 0);
INSERT INTO public.info VALUES ('user_1680926819026', 5, 37);
INSERT INTO public.info VALUES ('user_1680923006228', 1, 0);
INSERT INTO public.info VALUES ('user_1680923006229', 1, 0);
INSERT INTO public.info VALUES ('user_1680926771081', 4, 66);
INSERT INTO public.info VALUES ('user_1680926027957', 2, 428);
INSERT INTO public.info VALUES ('user_1680926547524', 2, 390);
INSERT INTO public.info VALUES ('user_1680926027958', 5, 142);
INSERT INTO public.info VALUES ('user_1680926547525', 4, 441);
INSERT INTO public.info VALUES ('user_1680926786761', 2, 74);
INSERT INTO public.info VALUES ('Max', 1, 2);
INSERT INTO public.info VALUES ('user_1680926560424', 2, 106);
INSERT INTO public.info VALUES ('user_1680926786762', 4, 202);
INSERT INTO public.info VALUES ('user_1680926235973', 2, 297);
INSERT INTO public.info VALUES ('user_1680926560425', 4, 118);
INSERT INTO public.info VALUES ('user_1680926235974', 5, 230);
INSERT INTO public.info VALUES ('a', 4, 1);
INSERT INTO public.info VALUES ('N', 1, 1);
INSERT INTO public.info VALUES ('user_1680926325660', 2, 774);
INSERT INTO public.info VALUES ('user_1680926796807', 2, 181);
INSERT INTO public.info VALUES ('user_1680926585490', 2, 285);
INSERT INTO public.info VALUES ('user_1680926325661', 5, 681);
INSERT INTO public.info VALUES ('user_1680926585491', 5, 187);
INSERT INTO public.info VALUES ('Q', 4, 1);
INSERT INTO public.info VALUES ('user_1680926796808', 5, 5);
INSERT INTO public.info VALUES ('user_1680926520876', 2, 544);
INSERT INTO public.info VALUES ('user_1680926520877', 5, 43);
INSERT INTO public.info VALUES ('user_1680926684383', 2, 644);
INSERT INTO public.info VALUES ('user_1680926807156', 2, 38);
INSERT INTO public.info VALUES ('user_1680926684384', 5, 316);
INSERT INTO public.info VALUES ('user_1680926807157', 4, 47);


--
-- Name: info info_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

