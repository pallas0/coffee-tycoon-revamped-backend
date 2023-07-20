--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Homebrew)
-- Dumped by pg_dump version 14.7 (Homebrew)

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: ameliarisner
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO ameliarisner;

--
-- Name: customers; Type: TABLE; Schema: public; Owner: ameliarisner
--

CREATE TABLE public.customers (
    id bigint NOT NULL,
    name character varying,
    want_hot double precision,
    happy_saying character varying
);


ALTER TABLE public.customers OWNER TO ameliarisner;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: ameliarisner
--

CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO ameliarisner;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ameliarisner
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: items; Type: TABLE; Schema: public; Owner: ameliarisner
--

CREATE TABLE public.items (
    id bigint NOT NULL,
    name character varying,
    drink_type character varying,
    hot boolean,
    buy_price double precision
);


ALTER TABLE public.items OWNER TO ameliarisner;

--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: ameliarisner
--

CREATE SEQUENCE public.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.items_id_seq OWNER TO ameliarisner;

--
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ameliarisner
--

ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;


--
-- Name: menu_items; Type: TABLE; Schema: public; Owner: ameliarisner
--

CREATE TABLE public.menu_items (
    id bigint NOT NULL,
    item_id integer,
    store_id integer,
    quantity integer
);


ALTER TABLE public.menu_items OWNER TO ameliarisner;

--
-- Name: menu_items_id_seq; Type: SEQUENCE; Schema: public; Owner: ameliarisner
--

CREATE SEQUENCE public.menu_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_items_id_seq OWNER TO ameliarisner;

--
-- Name: menu_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ameliarisner
--

ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: ameliarisner
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    sell_price double precision,
    fulfilled boolean,
    menu_item_id integer,
    customer_id integer
);


ALTER TABLE public.orders OWNER TO ameliarisner;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: ameliarisner
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO ameliarisner;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ameliarisner
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: ameliarisner
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO ameliarisner;

--
-- Name: stores; Type: TABLE; Schema: public; Owner: ameliarisner
--

CREATE TABLE public.stores (
    id bigint NOT NULL,
    money double precision,
    popularity double precision
);


ALTER TABLE public.stores OWNER TO ameliarisner;

--
-- Name: stores_id_seq; Type: SEQUENCE; Schema: public; Owner: ameliarisner
--

CREATE SEQUENCE public.stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stores_id_seq OWNER TO ameliarisner;

--
-- Name: stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ameliarisner
--

ALTER SEQUENCE public.stores_id_seq OWNED BY public.stores.id;


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: ameliarisner
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: items id; Type: DEFAULT; Schema: public; Owner: ameliarisner
--

ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);


--
-- Name: menu_items id; Type: DEFAULT; Schema: public; Owner: ameliarisner
--

ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: ameliarisner
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: stores id; Type: DEFAULT; Schema: public; Owner: ameliarisner
--

ALTER TABLE ONLY public.stores ALTER COLUMN id SET DEFAULT nextval('public.stores_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: ameliarisner
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
schema_sha1	f56706d50bc5cca7fa26466daf12070a53ddf3f2	2023-07-18 21:54:34.188007	2023-07-18 21:54:34.188007
environment	test	2023-07-18 21:54:34.184915	2023-07-18 21:54:34.22203
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: ameliarisner
--

COPY public.customers (id, name, want_hot, happy_saying) FROM stdin;
1	Rep. Terence Koch	0.68	OMG, this place is totally kogi!😎
2	Romelia Donnelly	0.9	Dude, once that drink hit my lips, I was like, bitters!!!👌
3	Fr. Natividad Kris	0.56	Thundercats flexitarian quinoa!🤠
4	Coleman Auer	0.52	Dude, once that drink hit my lips, I was like, asymmetrical!!!👌
5	Shaun Sanford	0.54	OMG, this place is totally skateboard!😎
6	Tracy Monahan	0.44	OMG, this place is totally disrupt!😎
7	Garland Schmeler	0.85	OMG, this place is totally chartreuse!😎
8	Rev. Abe Ferry	0.97	Dude, once that drink hit my lips, I was like, goth!!!👌
9	Mrs. Aundrea Nicolas	0.49	This place is hella cornhole!☕
10	Monnie Heathcote	0.63	Wolf cronut aesthetic!🤠
11	Reinaldo Yundt	0.9	Letterpress phlogiston loko!🤠
12	Prof. Mark Jakubowski	0.46	This place is hella goth!☕
13	Myrta Bergstrom	0.55	Celiac humblebrag neutra!🤠
14	Miss Moshe Abernathy	0.26	I speak for the whole hipster community when I say, 90's.😍
15	Kory Deckow	0.43	I speak for the whole hipster community when I say, pinterest.😍
16	Dr. Janis Weissnat	0.19	Pug tilde phlogiston!🤠
17	Fr. Otto O'Keefe	0.25	Narwhal shabby chic williamsburg!🤠
18	The Hon. Nelle O'Conner	0.75	OMG, this place is totally church-key!😎
19	Jose Jerde	0.51	OMG, this place is totally celiac!😎
20	Rev. Malcom Pollich	0.83	This place is hella Godard!☕
21	Foster Smith Esq.	0.51	Dude, once that drink hit my lips, I was like, schlitz!!!👌
22	Mike Beahan	0.52	OMG, this place is totally VHS!😎
23	Porsche Schulist	0.16	I speak for the whole hipster community when I say, paleo.😍
24	Prince Volkman	0.95	Irony +1 vinegar!🤠
25	Rico Russel	0.17	I speak for the whole hipster community when I say, swag.😍
26	Rep. Earl Bruen	0.3	Dude, once that drink hit my lips, I was like, mixtape!!!👌
27	Ferdinand Bogan	0.13	Intelligentsia banh mi tilde!🤠
28	Ms. Wilda Mills	0.79	This place is hella pabst!☕
29	Adolfo Wilkinson	0.35	Actually kinfolk pour-over!🤠
30	Enrique Fritsch DO	0.21	OMG, this place is totally freegan!😎
31	Bret Walker	0.87	I speak for the whole hipster community when I say, post-ironic.😍
32	Ellyn Trantow I	0.02	Irony church-key lo-fi!🤠
33	Andre Mertz	0.56	I speak for the whole hipster community when I say, organic.😍
34	Darwin Durgan	0.57	Locavore schlitz cardigan!🤠
35	Bernardo O'Hara V	0.61	This place is hella viral!☕
36	Herman Little	0.34	Dude, once that drink hit my lips, I was like, aesthetic!!!👌
37	Janee Rosenbaum	0.76	OMG, this place is totally hella!😎
38	Lucienne Rosenbaum	0.1	I speak for the whole hipster community when I say, ramps.😍
39	Christel Legros	0.01	This place is hella vice!☕
40	Adam Weimann	0.81	OMG, this place is totally +1!😎
41	Byron Renner III	0.18	This place is hella pickled!☕
42	Lillie Effertz	0.06	I speak for the whole hipster community when I say, lomo.😍
43	Darin Schulist	0.8	This place is hella vegan!☕
44	Jean Runolfsdottir	0.98	This place is hella tumblr!☕
45	Hildegard Emard	0.02	This place is hella occupy!☕
46	Diedre Pacocha JD	0.31	OMG, this place is totally bespoke!😎
47	Mrs. Ezra Monahan	0.92	Dude, once that drink hit my lips, I was like, microdosing!!!👌
48	Ulysses Little	0.18	Freegan microdosing tofu!🤠
49	Alfred Leannon	0.65	I speak for the whole hipster community when I say, hella.😍
50	Mr. Andres Gerhold	0.59	OMG, this place is totally tacos!😎
51	Oren Hudson	0.47	Dude, once that drink hit my lips, I was like, church-key!!!👌
52	Brian Jerde	0.62	Readymade everyday food truck!🤠
53	Jody Bednar	0.28	This place is hella ennui!☕
54	Rev. Joel Bruen	0.93	This place is hella cleanse!☕
55	Prof. Laverne Schoen	0.16	Dude, once that drink hit my lips, I was like, paleo!!!👌
56	Odell Murray	0.92	This place is hella sartorial!☕
57	Merna Lockman	0.49	This place is hella pour-over!☕
58	Dorsey Bradtke	0.37	Dude, once that drink hit my lips, I was like, waistcoat!!!👌
59	Jan D'Amore	0.48	Dude, once that drink hit my lips, I was like, cronut!!!👌
60	Eddie Gorczany	0.78	I speak for the whole hipster community when I say, narwhal.😍
61	Sydney Kilback	0.76	Dude, once that drink hit my lips, I was like, authentic!!!👌
62	Amb. Ima Bosco	0.14	Dude, once that drink hit my lips, I was like, skateboard!!!👌
63	Rep. Brooks Monahan	0.63	OMG, this place is totally wolf!😎
64	Minh Hirthe	0.54	This place is hella brunch!☕
65	Emilio Deckow II	0.14	Dude, once that drink hit my lips, I was like, park!!!👌
66	Buck Smitham LLD	0.51	Chartreuse green juice letterpress!🤠
67	Jewell Fadel	0.3	OMG, this place is totally distillery!😎
68	Msgr. Juliette Toy	0.12	OMG, this place is totally brooklyn!😎
69	Jackie Rowe JD	0.01	I speak for the whole hipster community when I say, tattooed.😍
70	Luigi Steuber	0.91	Chicharrones craft beer tumblr!🤠
71	Amy Stokes	0.88	Kombucha offal church-key!🤠
72	Leora Kunze	0.5	This place is hella humblebrag!☕
73	Cierra Denesik	0.96	Dude, once that drink hit my lips, I was like, cold-pressed!!!👌
74	Edward Runolfsdottir	0.06	Dude, once that drink hit my lips, I was like, tumblr!!!👌
75	Sammy Goodwin	0.09	Dude, once that drink hit my lips, I was like, wolf!!!👌
76	Rep. Erich Carroll	0.12	This place is hella 90's!☕
77	Marc Conroy LLD	0.92	Dude, once that drink hit my lips, I was like, Godard!!!👌
78	Miss Kristin King	0.91	I speak for the whole hipster community when I say, wayfarers.😍
79	Chauncey Heathcote	0.67	I speak for the whole hipster community when I say, crucifix.😍
80	Barrett Stamm	0.88	I speak for the whole hipster community when I say, chicharrones.😍
81	Mrs. Regan Zieme	0.82	Farm-to-table yuccie kombucha!🤠
82	Tobias Corwin	0.7	Dude, once that drink hit my lips, I was like, seitan!!!👌
83	Vera Johns	0.03	OMG, this place is totally williamsburg!😎
84	Prof. Noel Walter	0.57	I speak for the whole hipster community when I say, slow-carb.😍
85	Michale Jenkins	0.61	I speak for the whole hipster community when I say, church-key.😍
86	Mr. Nickolas Schiller	0.77	Quinoa diy kombucha!🤠
87	Gilberto Gleason CPA	0.31	Dude, once that drink hit my lips, I was like, everyday!!!👌
88	The Hon. Woodrow Collier	0.41	OMG, this place is totally fingerstache!😎
89	Lincoln Pfannerstill MD	0.47	Cronut stumptown salvia!🤠
90	Lorriane Jaskolski	0.86	I speak for the whole hipster community when I say, neutra.😍
91	Geraldo Jast	0.61	OMG, this place is totally brunch!😎
92	Remedios Rutherford	0.92	This place is hella pinterest!☕
93	Venetta Langosh	0.21	This place is hella bitters!☕
94	Stevie Gorczany	0.08	Pop-up hashtag drinking!🤠
95	Frank Goyette	0.45	This place is hella irony!☕
96	Adella Goodwin	0.2	I speak for the whole hipster community when I say, wolf.😍
97	Lindsey Runolfsdottir	0.39	OMG, this place is totally health!😎
98	Sanford Buckridge MD	0.63	I speak for the whole hipster community when I say, leggings.😍
99	Tiffiny Cassin	0.94	I speak for the whole hipster community when I say, austin.😍
100	Msgr. Mark Dickinson	0.67	OMG, this place is totally gluten-free!😎
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: ameliarisner
--

COPY public.items (id, name, drink_type, hot, buy_price) FROM stdin;
1	Black Coffee	Coffee	t	1.75
2	Cappuccino	Coffee	t	2.5
3	Cortado	Coffee	t	2.25
4	Latte	Coffee	t	2.75
5	Iced Coffee	Coffee	f	2.5
6	Iced Latte	Coffee	f	3
7	Iced Frappuccino	Coffee	f	3.25
8	Assam Black	Tea	t	2
9	Jasmine Green	Tea	t	2
10	Silver Needles White	Tea	t	2.5
11	Matcha Latte	Tea	t	3.25
12	Iced Sencha Green	Tea	f	2
13	Iced Hibiscus	Tea	f	2.25
14	Iced Chai Latte	Tea	f	3
\.


--
-- Data for Name: menu_items; Type: TABLE DATA; Schema: public; Owner: ameliarisner
--

COPY public.menu_items (id, item_id, store_id, quantity) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: ameliarisner
--

COPY public.orders (id, sell_price, fulfilled, menu_item_id, customer_id) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: ameliarisner
--

COPY public.schema_migrations (version) FROM stdin;
20220307221959
20220307221856
20220307221927
20220307221933
20220307221947
\.


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: ameliarisner
--

COPY public.stores (id, money, popularity) FROM stdin;
1	40	0.5
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ameliarisner
--

SELECT pg_catalog.setval('public.customers_id_seq', 100, true);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ameliarisner
--

SELECT pg_catalog.setval('public.items_id_seq', 14, true);


--
-- Name: menu_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ameliarisner
--

SELECT pg_catalog.setval('public.menu_items_id_seq', 1, false);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ameliarisner
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ameliarisner
--

SELECT pg_catalog.setval('public.stores_id_seq', 1, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: ameliarisner
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: ameliarisner
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: ameliarisner
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- Name: menu_items menu_items_pkey; Type: CONSTRAINT; Schema: public; Owner: ameliarisner
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: ameliarisner
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ameliarisner
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: stores stores_pkey; Type: CONSTRAINT; Schema: public; Owner: ameliarisner
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);


--
-- Name: index_menu_items_on_item_id; Type: INDEX; Schema: public; Owner: ameliarisner
--

CREATE INDEX index_menu_items_on_item_id ON public.menu_items USING btree (item_id);


--
-- Name: index_menu_items_on_store_id; Type: INDEX; Schema: public; Owner: ameliarisner
--

CREATE INDEX index_menu_items_on_store_id ON public.menu_items USING btree (store_id);


--
-- Name: index_orders_on_customer_id; Type: INDEX; Schema: public; Owner: ameliarisner
--

CREATE INDEX index_orders_on_customer_id ON public.orders USING btree (customer_id);


--
-- Name: index_orders_on_menu_item_id; Type: INDEX; Schema: public; Owner: ameliarisner
--

CREATE INDEX index_orders_on_menu_item_id ON public.orders USING btree (menu_item_id);


--
-- PostgreSQL database dump complete
--

