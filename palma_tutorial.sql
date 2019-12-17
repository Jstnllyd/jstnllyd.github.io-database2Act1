--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-3.pgdg16.04+1)
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-17 13:16:18

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

--
-- TOC entry 197 (class 1259 OID 22868708)
-- Name: table1; Type: TABLE; Schema: public; Owner: zcwjgmwbkbfuod
--

CREATE TABLE public.table1 (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.table1 OWNER TO zcwjgmwbkbfuod;

--
-- TOC entry 196 (class 1259 OID 22868706)
-- Name: table1_id_seq; Type: SEQUENCE; Schema: public; Owner: zcwjgmwbkbfuod
--

CREATE SEQUENCE public.table1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table1_id_seq OWNER TO zcwjgmwbkbfuod;

--
-- TOC entry 3834 (class 0 OID 0)
-- Dependencies: 196
-- Name: table1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zcwjgmwbkbfuod
--

ALTER SEQUENCE public.table1_id_seq OWNED BY public.table1.id;


--
-- TOC entry 198 (class 1259 OID 22868916)
-- Name: tutorial; Type: TABLE; Schema: public; Owner: zcwjgmwbkbfuod
--

CREATE TABLE public.tutorial (
    staffno character varying(50) NOT NULL,
    tutorname character varying(50) NOT NULL,
    tuteeno character varying(50) NOT NULL,
    tuteename character varying(50),
    date date NOT NULL,
    "time" numeric(4,2) NOT NULL,
    tutorialno character varying(50) NOT NULL
);


ALTER TABLE public.tutorial OWNER TO zcwjgmwbkbfuod;

--
-- TOC entry 3705 (class 2604 OID 22868711)
-- Name: table1 id; Type: DEFAULT; Schema: public; Owner: zcwjgmwbkbfuod
--

ALTER TABLE ONLY public.table1 ALTER COLUMN id SET DEFAULT nextval('public.table1_id_seq'::regclass);


--
-- TOC entry 3832 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: zcwjgmwbkbfuod
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO zcwjgmwbkbfuod;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 3833 (class 0 OID 0)
-- Dependencies: 598
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO zcwjgmwbkbfuod;


-- Completed on 2019-12-17 13:16:36

--
-- PostgreSQL database dump complete
--

