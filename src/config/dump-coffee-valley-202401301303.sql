--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2024-01-30 13:03:43

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

--
-- TOC entry 4871 (class 1262 OID 32933)
-- Name: coffee-valley; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "coffee-valley" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';


ALTER DATABASE "coffee-valley" OWNER TO postgres;

\connect -reuse-previous=on "dbname='coffee-valley'"

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 4872 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 32944)
-- Name: bean; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bean (
    id integer NOT NULL,
    bean character varying(255),
    description character varying,
    sale_price character varying(255)
);


ALTER TABLE public.bean OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 32943)
-- Name: bean_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bean_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bean_id_seq OWNER TO postgres;

--
-- TOC entry 4873 (class 0 OID 0)
-- Dependencies: 215
-- Name: bean_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bean_id_seq OWNED BY public.bean.id;


--
-- TOC entry 222 (class 1259 OID 32989)
-- Name: distributor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.distributor (
    id integer NOT NULL,
    distributor_name character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    phone character varying(255),
    email character varying(255),
    create_date timestamp without time zone,
    update_date timestamp without time zone
);


ALTER TABLE public.distributor OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 32988)
-- Name: distributor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.distributor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.distributor_id_seq OWNER TO postgres;

--
-- TOC entry 4874 (class 0 OID 0)
-- Dependencies: 221
-- Name: distributor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.distributor_id_seq OWNED BY public.distributor.id;


--
-- TOC entry 218 (class 1259 OID 32971)
-- Name: upload; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload (
    id integer NOT NULL,
    title character varying(255),
    upload character varying(255),
    nama_upload character varying(255),
    author character varying(255)
);


ALTER TABLE public.upload OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 32970)
-- Name: upload_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_id_seq OWNER TO postgres;

--
-- TOC entry 4875 (class 0 OID 0)
-- Dependencies: 217
-- Name: upload_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_id_seq OWNED BY public.upload.id;


--
-- TOC entry 220 (class 1259 OID 32980)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    userid character varying(255),
    password character varying(255)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 32979)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4876 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4703 (class 2604 OID 32947)
-- Name: bean id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bean ALTER COLUMN id SET DEFAULT nextval('public.bean_id_seq'::regclass);


--
-- TOC entry 4706 (class 2604 OID 32992)
-- Name: distributor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.distributor ALTER COLUMN id SET DEFAULT nextval('public.distributor_id_seq'::regclass);


--
-- TOC entry 4704 (class 2604 OID 32974)
-- Name: upload id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload ALTER COLUMN id SET DEFAULT nextval('public.upload_id_seq'::regclass);


--
-- TOC entry 4705 (class 2604 OID 32983)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4859 (class 0 OID 32944)
-- Dependencies: 216
-- Data for Name: bean; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.bean VALUES (1, 'Cubita', 'Cubitia Coffe is sun dried and hand sorted. It orginates from an elevation from an elevation of over 2000 meters in the andes Mountains of Ecuador, which is located closest to the sun on the Equator. Superb aroma and rich Flavour', '$12.00');


--
-- TOC entry 4865 (class 0 OID 32989)
-- Dependencies: 222
-- Data for Name: distributor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.distributor VALUES (2, 'The Buzz', 'Munich', 'Munich', 'Singapore', '081234563789', 'buzz@gmail.com', '2024-01-30 12:34:13.79516', '2024-01-30 12:34:13.79516');
INSERT INTO public.distributor VALUES (4, 'Coffee 2000', 'Munich', 'Munich', 'Malaysia', '081234567829', 'coffee@gmail.com', '2024-01-30 12:39:16.184006', NULL);
INSERT INTO public.distributor VALUES (3, 'Perk Plus', 'Salem', 'Salem', 'Thailand', '08123746383', 'salem@gmail.com', '2024-01-30 12:34:13.795', NULL);
INSERT INTO public.distributor VALUES (1, 'Beans R Us', 'Brisbane', 'Brisbane', 'Malaysia', '08123456713', 'brean@gmail.com', '2024-01-30 12:33:41.620921', '2024-01-30 12:40:34.885422');


--
-- TOC entry 4861 (class 0 OID 32971)
-- Dependencies: 218
-- Data for Name: upload; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4863 (class 0 OID 32980)
-- Dependencies: 220
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (1, 'khairina', '123456');


--
-- TOC entry 4877 (class 0 OID 0)
-- Dependencies: 215
-- Name: bean_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bean_id_seq', 1, false);


--
-- TOC entry 4878 (class 0 OID 0)
-- Dependencies: 221
-- Name: distributor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.distributor_id_seq', 4, true);


--
-- TOC entry 4879 (class 0 OID 0)
-- Dependencies: 217
-- Name: upload_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_id_seq', 1, false);


--
-- TOC entry 4880 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 4708 (class 2606 OID 32951)
-- Name: bean bean_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bean
    ADD CONSTRAINT bean_pkey PRIMARY KEY (id);


--
-- TOC entry 4714 (class 2606 OID 32998)
-- Name: distributor distributor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.distributor
    ADD CONSTRAINT distributor_pkey PRIMARY KEY (id);


--
-- TOC entry 4710 (class 2606 OID 32978)
-- Name: upload upload_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload
    ADD CONSTRAINT upload_pkey PRIMARY KEY (id);


--
-- TOC entry 4712 (class 2606 OID 32987)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


-- Completed on 2024-01-30 13:03:43

--
-- PostgreSQL database dump complete
--

