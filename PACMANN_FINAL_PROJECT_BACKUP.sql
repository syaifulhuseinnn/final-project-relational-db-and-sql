toc.dat                                                                                             0000600 0004000 0002000 00000016265 14452326265 0014462 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       %    $        	        {            PACMANN_FINAL_PROJECT    15.2    15.2     %           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         '           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         (           1262    16598    PACMANN_FINAL_PROJECT    DATABASE     y   CREATE DATABASE "PACMANN_FINAL_PROJECT" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
 '   DROP DATABASE "PACMANN_FINAL_PROJECT";
                postgres    false         U           1247    16653 
   bid_status    TYPE     F   CREATE TYPE public.bid_status AS ENUM (
    'Not Sent',
    'Sent'
);
    DROP TYPE public.bid_status;
       public          postgres    false         �            1259    16628    advertisement    TABLE     �   CREATE TABLE public.advertisement (
    ad_id integer NOT NULL,
    car_id integer,
    user_id integer,
    title character varying(255)
);
 !   DROP TABLE public.advertisement;
       public         heap    postgres    false         �            1259    16657    bid    TABLE     �   CREATE TABLE public.bid (
    bid_id integer NOT NULL,
    car_id integer NOT NULL,
    user_id integer NOT NULL,
    date_bid date NOT NULL,
    bid_price integer NOT NULL,
    bid_status public.bid_status NOT NULL
);
    DROP TABLE public.bid;
       public         heap    postgres    false    853         �            1259    16616    car    TABLE     �   CREATE TABLE public.car (
    car_id integer NOT NULL,
    brand character varying(255),
    model character varying(255),
    body_type character varying(255),
    car_type character varying(255),
    year integer,
    price integer
);
    DROP TABLE public.car;
       public         heap    postgres    false         �            1259    16606    location    TABLE     �   CREATE TABLE public.location (
    location_id integer NOT NULL,
    city_name character varying(255),
    longitude double precision,
    latitude double precision
);
    DROP TABLE public.location;
       public         heap    postgres    false         �            1259    16599    user_account    TABLE     �   CREATE TABLE public.user_account (
    user_id integer NOT NULL,
    name character varying(255),
    contact character varying(255),
    location_id integer
);
     DROP TABLE public.user_account;
       public         heap    postgres    false         !          0    16628    advertisement 
   TABLE DATA           F   COPY public.advertisement (ad_id, car_id, user_id, title) FROM stdin;
    public          postgres    false    217       3617.dat "          0    16657    bid 
   TABLE DATA           W   COPY public.bid (bid_id, car_id, user_id, date_bid, bid_price, bid_status) FROM stdin;
    public          postgres    false    218       3618.dat            0    16616    car 
   TABLE DATA           U   COPY public.car (car_id, brand, model, body_type, car_type, year, price) FROM stdin;
    public          postgres    false    216       3616.dat           0    16606    location 
   TABLE DATA           O   COPY public.location (location_id, city_name, longitude, latitude) FROM stdin;
    public          postgres    false    215       3615.dat           0    16599    user_account 
   TABLE DATA           K   COPY public.user_account (user_id, name, contact, location_id) FROM stdin;
    public          postgres    false    214       3614.dat �           2606    16632     advertisement advertisement_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_pkey PRIMARY KEY (ad_id);
 J   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT advertisement_pkey;
       public            postgres    false    217         �           2606    16661    bid bid_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_pkey PRIMARY KEY (bid_id);
 6   ALTER TABLE ONLY public.bid DROP CONSTRAINT bid_pkey;
       public            postgres    false    218         �           2606    16622    car car_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (car_id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    216         �           2606    16610    location location_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (location_id);
 @   ALTER TABLE ONLY public.location DROP CONSTRAINT location_pkey;
       public            postgres    false    215         �           2606    16605    user_account user_account_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (user_id);
 H   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_account_pkey;
       public            postgres    false    214         �           2606    16633 '   advertisement advertisement_car_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.car(car_id);
 Q   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT advertisement_car_id_fkey;
       public          postgres    false    216    3462    217         �           2606    16638 (   advertisement advertisement_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);
 R   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT advertisement_user_id_fkey;
       public          postgres    false    3458    217    214         �           2606    16662    bid bid_car_id_fkey    FK CONSTRAINT     s   ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.car(car_id);
 =   ALTER TABLE ONLY public.bid DROP CONSTRAINT bid_car_id_fkey;
       public          postgres    false    216    3462    218         �           2606    16667    bid bid_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);
 >   ALTER TABLE ONLY public.bid DROP CONSTRAINT bid_user_id_fkey;
       public          postgres    false    214    3458    218         �           2606    16643    user_account location_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT location_id FOREIGN KEY (location_id) REFERENCES public.location(location_id);
 B   ALTER TABLE ONLY public.user_account DROP CONSTRAINT location_id;
       public          postgres    false    214    215    3460                                                                                                                                                                                                                                                                                                                                                   3617.dat                                                                                            0000600 0004000 0002000 00000005566 14452326265 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	56	Dijual Toyota Agya transmisi Automatic tahun 2016
2	2	19	Dijual Honda CR-V transmisi Manual tahun 2009
3	3	41	Dijual Daihatsu Xenia transmisi Manual tahun 2017
4	4	2	Dijual Toyota Agya transmisi Automatic tahun 2022
5	5	47	Dijual Toyota Yaris transmisi Automatic tahun 2016
6	6	14	Dijual Suzuki Ertiga transmisi Automatic tahun 2018
7	7	67	Dijual Toyota Yaris transmisi Automatic tahun 2012
8	8	100	Dijual Daihatsu Terios transmisi Automatic tahun 2018
9	9	35	Dijual Honda Civic transmisi Automatic tahun 2013
10	10	50	Dijual Toyota Agya transmisi Automatic tahun 2022
11	11	24	Dijual Suzuki Ertiga transmisi Manual tahun 2015
12	12	50	Dijual Suzuki Ertiga transmisi Manual tahun 2012
13	13	29	Dijual Honda Civic transmisi Automatic tahun 2013
14	14	30	Dijual Suzuki Ertiga transmisi Manual tahun 2016
15	15	35	Dijual Honda CR-V transmisi Automatic tahun 2016
16	16	85	Dijual Toyota Calya transmisi Automatic tahun 2019
17	17	5	Dijual Daihatsu Ayla transmisi Manual tahun 2019
18	18	5	Dijual Toyota Yaris transmisi Automatic tahun 2020
19	19	99	Dijual Daihatsu Terios transmisi Automatic tahun 2022
20	20	23	Dijual Suzuki Ertiga transmisi Manual tahun 2016
21	21	55	Dijual Honda Civic transmisi Automatic tahun 2010
22	22	88	Dijual Daihatsu Terios transmisi Automatic tahun 2018
23	23	64	Dijual Suzuki Ertiga transmisi Manual tahun 2012
24	24	73	Dijual Toyota Calya transmisi Manual tahun 2017
25	25	89	Dijual Toyota Agya transmisi Automatic tahun 2016
26	26	64	Dijual Toyota Agya transmisi Automatic tahun 2016
27	27	66	Dijual Toyota Calya transmisi Manual tahun 2016
28	28	53	Dijual Daihatsu Terios transmisi Automatic tahun 2018
29	29	15	Dijual Toyota Yaris transmisi Automatic tahun 2012
30	30	40	Dijual Suzuki Ertiga transmisi Automatic tahun 2018
31	31	10	Dijual Honda CR-V transmisi Automatic tahun 2016
32	32	11	Dijual Daihatsu Terios transmisi Automatic tahun 2019
33	33	99	Dijual Toyota Calya transmisi Manual tahun 2016
34	34	50	Dijual Daihatsu Xenia transmisi Manual tahun 2018
35	35	75	Dijual Daihatsu Xenia transmisi Manual tahun 2017
36	36	30	Dijual Honda Jazz transmisi Manual tahun 2018
37	37	22	Dijual Suzuki Ertiga transmisi Automatic tahun 2018
38	38	13	Dijual Honda CR-V transmisi Manual tahun 2009
39	39	22	Dijual Suzuki Ertiga transmisi Automatic tahun 2018
40	40	13	Dijual Toyota Yaris transmisi Automatic tahun 2020
41	41	59	Dijual Suzuki Ertiga transmisi Manual tahun 2016
42	42	82	Dijual Honda Civic transmisi Automatic tahun 2013
43	43	39	Dijual Honda Jazz transmisi Manual tahun 2013
44	44	20	Dijual Toyota Agya transmisi Automatic tahun 2017
45	45	3	Dijual Toyota Agya transmisi Automatic tahun 2019
46	46	55	Dijual Honda CR-V transmisi Manual tahun 2017
47	47	75	Dijual Toyota Agya transmisi Automatic tahun 2014
48	48	1	Dijual Toyota Yaris transmisi Automatic tahun 2016
49	49	53	Dijual Toyota Yaris transmisi Automatic tahun 2020
50	50	23	Dijual Daihatsu Xenia transmisi Manual tahun 2019
\.


                                                                                                                                          3618.dat                                                                                            0000600 0004000 0002000 00000000005 14452326265 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3616.dat                                                                                            0000600 0004000 0002000 00000005170 14452326265 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Toyota	Toyota Yaris	Hatchback	Automatic	2016	175000000
2	Toyota	Toyota Yaris	Hatchback	Automatic	2018	215000000
3	Toyota	Toyota Yaris	Hatchback	Automatic	2014	162000000
4	Toyota	Toyota Yaris	Hatchback	Automatic	2020	220000000
5	Toyota	Toyota Yaris	Hatchback	Automatic	2012	124000000
6	Toyota	Toyota Agya	Hatchback	Automatic	2019	114000000
7	Toyota	Toyota Agya	Hatchback	Automatic	2014	97000000
8	Toyota	Toyota Agya	Hatchback	Automatic	2016	110000000
9	Toyota	Toyota Agya	Hatchback	Automatic	2022	155500000
10	Toyota	Toyota Agya	Hatchback	Automatic	2017	115500000
11	Toyota	Toyota Calya	Wagon	Automatic	2019	130000000
12	Toyota	Toyota Calya	Wagon	Manual	2019	137000000
13	Toyota	Toyota Calya	Wagon	Manual	2017	115500000
14	Toyota	Toyota Calya	Wagon	Manual	2016	104000000
15	Toyota	Toyota Calya	Wagon	Manual	2016	107000000
16	Daihatsu	Daihatsu Ayla	Hatchback	Manual	2016	83000000
17	Daihatsu	Daihatsu Ayla	Hatchback	Manual	2019	120000000
18	Daihatsu	Daihatsu Ayla	Hatchback	Manual	2015	96000000
19	Daihatsu	Daihatsu Ayla	Hatchback	Manual	2017	115000000
20	Daihatsu	Daihatsu Ayla	Hatchback	Manual	2017	113000000
21	Daihatsu	Daihatsu Terios	SUV	Automatic	2018	190000000
22	Daihatsu	Daihatsu Terios	SUV	Automatic	2022	223000000
23	Daihatsu	Daihatsu Terios	SUV	Automatic	2019	189900000
24	Daihatsu	Daihatsu Terios	SUV	Automatic	2017	166000000
25	Daihatsu	Daihatsu Terios	SUV	Automatic	2018	201000000
26	Daihatsu	Daihatsu Xenia	MPV	Manual	2019	170000000
27	Daihatsu	Daihatsu Xenia	MPV	Manual	2022	220500000
28	Daihatsu	Daihatsu Xenia	MPV	Manual	2017	135000000
29	Daihatsu	Daihatsu Xenia	MPV	Manual	2014	100000000
30	Daihatsu	Daihatsu Xenia	MPV	Manual	2018	159000000
31	Honda	Honda Jazz	Hatchback	Manual	2018	236000000
32	Honda	Honda Jazz	Hatchback	Manual	2019	250000000
33	Honda	Honda Jazz	Hatchback	Manual	2018	216000000
34	Honda	Honda Jazz	Hatchback	Manual	2015	192000000
35	Honda	Honda Jazz	Hatchback	Manual	2013	178000000
36	Honda	Honda CR-V	SUV	Manual	2018	415000000
37	Honda	Honda CR-V	SUV	Manual	2017	345000000
38	Honda	Honda CR-V	SUV	Manual	2009	116000000
39	Honda	Honda CR-V	SUV	Automatic	2016	269000000
40	Honda	Honda CR-V	SUV	Automatic	2018	398500000
41	Honda	Honda Civic	Hatchback	Automatic	2018	350000000
42	Honda	Honda Civic	Sedan	Automatic	2010	165000000
43	Honda	Honda Civic	Sedan	Automatic	2013	186000000
44	Honda	Honda Civic	Sedan	Automatic	2013	179000000
45	Honda	Honda Civic	Hatchback	Manual	2019	397500000
46	Suzuki	Suzuki Ertiga	MPV	Manual	2015	125000000
47	Suzuki	Suzuki Ertiga	MPV	Manual	2018	178000000
48	Suzuki	Suzuki Ertiga	MPV	Manual	2016	168000000
49	Suzuki	Suzuki Ertiga	MPV	Manual	2012	100000000
50	Suzuki	Suzuki Ertiga	MPV	Automatic	2018	167000000
\.


                                                                                                                                                                                                                                                                                                                                                                                                        3615.dat                                                                                            0000600 0004000 0002000 00000001175 14452326265 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3171	Kota Jakarta Pusat	106.834091	-6.186486
3172	Kota Jakarta Utara	106.774124	-6.121435
3173	Kota Jakarta Barat	106.813301	-6.1352
3174	Kota Jakarta Selatan	106.814095	-6.300641
3175	Kota Jakarta Timur	106.895859	-6.264451
3573	Kota Malang	112.626503	-7.981894
3578	Kota Surabaya	112.734398	-7.289166
3471	Kota Yogyakarta	110.368797	-7.797224
3273	Kota Bandung	107.6098111	-6.9147444
1371	Kota Padang	100.3530556	-0.95
1375	Kota Bukittinggi	100.3691667	-0.3055556
6471	Kota Balikpapan	116.8278833	-1.2635389
6472	Kota Samarinda	117.153801	-0.502183
7371	Kota Makassar	119.4166667	-5.1333333
5171	Kota Denpasar	115.222099	-8.65629
\.


                                                                                                                                                                                                                                                                                                                                                                                                   3614.dat                                                                                            0000600 0004000 0002000 00000007644 14452326265 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Restu Latupono, S.E.	8622206723777	3578
2	Anita Puspita	2992574725855	3173
3	Betania Kurniawan, M.Ak	8436865831062	3175
4	Puji Mangunsong	0997222890097	6472
5	Emin Thamrin	7073732596832	3171
6	Liman Anggraini, M.Farm	3342499370379	6472
7	Asirwanda Hidayat	2808043539479	3172
8	Mahmud Fujiati, S.Pt	8063796875088	3273
9	Kezia Hardiansyah	0103251359294	1371
10	Paris Zulkarnain	4636452822469	3172
11	Sutan Alambana Pradipta, M.Ak	1791479481519	1371
12	Cinthia Habibi	3256848987562	3173
13	Hasta Gunawan	8293560553919	6472
14	Endah Anggriawan	8356328602007	3578
15	Victoria Waluyo	9691145304708	3578
16	Tira Purwanti	7305362498610	3273
17	Ciaobella Thamrin	3067337319994	3174
18	Ida Kurniawan	6466442022897	3172
19	Among Napitupulu	0493383898263	3578
20	Paiman Pangestu	9579490038960	1375
21	Gilang Kusmawati	5994959331925	3573
22	KH. Dariati Hutapea	2929332668894	5171
23	Maya Putra	1094824889003	6471
24	Yuliana Anggraini	6422307346208	6472
25	Jindra Lestari, S.IP	9701629453811	5171
26	Jefri Dongoran	4915715736753	1371
27	Hj. Salwa Purwanti, M.Pd	1601770405638	3471
28	Ghaliyati Lazuardi	6290606461520	1375
29	Gada Prakasa	9455533268208	3175
30	Devi Anggriawan	0690580622560	7371
31	Laswi Rahimah	6861059054866	3471
32	Ir. Lembah Pranowo, M.TI.	1846936769818	3173
33	Kamila Astuti	6017749576483	6472
34	Rafid Permadi	1836926855359	3171
35	Hasna Marbun, M.Kom.	5109745336682	6471
36	Hesti Yuniar	0913364393918	3171
37	Arsipatra Permadi	1197009220866	3172
38	Viktor Agustina, S.Ked	9065017322360	3578
39	Sutan Luwes Irawan	5562288550710	3171
40	Salimah Prakasa	3070085349491	6472
41	Lamar Yolanda	9531978264947	1375
42	Elon Firmansyah, M.Pd	5421838063140	3273
43	Yulia Siregar	2842564801076	3273
44	Agnes Hutagalung	6620917279452	6471
45	KH. Ozy Tamba	4593480566507	3471
46	Belinda Andriani	3802398667477	3175
47	Darman Widodo, M.M.	3803457069931	1371
48	Amelia Firmansyah, S.E.I	8104501248091	1371
49	Drs. Pangestu Permadi, S.Farm	2904130866785	3578
50	Tugiman Zulkarnain	2062211877895	3172
51	Alika Wibowo	2933335369367	1375
52	Cut Salsabila Permata	4881637525743	1371
53	Ratna Kuswoyo	6636170899098	3273
54	R.M. Wahyu Rahmawati	7017417989329	3172
55	Fitria Manullang	0734747666164	3173
56	R.M. Abyasa Permata	6625053607163	3471
57	Jaya Saefullah, S.Pt	7862627256038	7371
58	Respati Wulandari	8300523569886	5171
59	Kenes Manullang	9305902437288	3173
60	Janet Mangunsong, S.E.I	4161588907321	3273
61	KH. Mahdi Suryatmi, M.TI.	8330283376958	6471
62	Drs. Olivia Mulyani, S.Farm	1124400630001	7371
63	H. Hartaka Tarihoran, S.Farm	3756267955564	3171
64	Tgk. Karman Aryani	0243728286394	3573
65	Panji Yuniar	7146549792487	7371
66	Vicky Sihombing	9266080465002	3171
67	dr. Kartika Saragih	5824782024357	7371
68	Indah Hutasoit	3267021265637	3578
69	Lala Hutapea	7357247286911	3578
70	Mumpuni Santoso	9811001046630	6472
71	Nyana Zulaika	7034690725345	7371
72	Cakrabirawa Ramadan	2989719917392	3471
73	Hardana Lestari	2127306783119	3273
74	Ajimin Kusumo	4056339648539	3174
75	Kamidin Marpaung	8576934546540	3175
76	Septi Wahyuni	2507035293179	3175
77	Marsito Pudjiastuti	0300108927576	3172
78	Almira Namaga	6084342457193	5171
79	Padmi Namaga	2454072238159	3471
80	R. Amalia Budiman	7893908010296	3273
81	Ikin Zulaika, S.Pt	2611291854370	3471
82	Ulva Namaga	2930504490789	6472
83	R. Cawisadi Situmorang	5488651029109	3175
84	Jati Anggriawan	9459131388566	6471
85	Titi Novitasari	0179290192437	3578
86	Gilda Mayasari, S.Sos	3666161189527	1375
87	Gandi Iswahyudi	3429535667314	1375
88	dr. Galih Farida	9558247754355	3171
89	Ella Saefullah	3926334922872	6471
90	Tgk. Elma Fujiati	7763743439717	3273
91	Tasdik Aryani	7086808371370	1375
92	Xanana Sitorus	8465692247294	6472
93	Bakidin Permata	4354691175803	6472
94	Heru Permata, S.Psi	7136723622608	1371
95	Dt. Rangga Hutapea, S.Ked	2182123342068	3578
96	H. Bakiono Astuti	1245534424181	3173
97	Dr. Asirwanda Najmudin	3220755160044	1371
98	Mutia Purnawati, S.I.Kom	1371454114668	3175
99	Mahdi Utami	1754140365433	6472
100	Puti Sari Nainggolan	7198325954454	3573
\.


                                                                                            restore.sql                                                                                         0000600 0004000 0002000 00000014532 14452326265 0015402 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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

DROP DATABASE "PACMANN_FINAL_PROJECT";
--
-- Name: PACMANN_FINAL_PROJECT; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "PACMANN_FINAL_PROJECT" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE "PACMANN_FINAL_PROJECT" OWNER TO postgres;

\connect "PACMANN_FINAL_PROJECT"

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
-- Name: bid_status; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.bid_status AS ENUM (
    'Not Sent',
    'Sent'
);


ALTER TYPE public.bid_status OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: advertisement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.advertisement (
    ad_id integer NOT NULL,
    car_id integer,
    user_id integer,
    title character varying(255)
);


ALTER TABLE public.advertisement OWNER TO postgres;

--
-- Name: bid; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bid (
    bid_id integer NOT NULL,
    car_id integer NOT NULL,
    user_id integer NOT NULL,
    date_bid date NOT NULL,
    bid_price integer NOT NULL,
    bid_status public.bid_status NOT NULL
);


ALTER TABLE public.bid OWNER TO postgres;

--
-- Name: car; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.car (
    car_id integer NOT NULL,
    brand character varying(255),
    model character varying(255),
    body_type character varying(255),
    car_type character varying(255),
    year integer,
    price integer
);


ALTER TABLE public.car OWNER TO postgres;

--
-- Name: location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.location (
    location_id integer NOT NULL,
    city_name character varying(255),
    longitude double precision,
    latitude double precision
);


ALTER TABLE public.location OWNER TO postgres;

--
-- Name: user_account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_account (
    user_id integer NOT NULL,
    name character varying(255),
    contact character varying(255),
    location_id integer
);


ALTER TABLE public.user_account OWNER TO postgres;

--
-- Data for Name: advertisement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.advertisement (ad_id, car_id, user_id, title) FROM stdin;
\.
COPY public.advertisement (ad_id, car_id, user_id, title) FROM '$$PATH$$/3617.dat';

--
-- Data for Name: bid; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bid (bid_id, car_id, user_id, date_bid, bid_price, bid_status) FROM stdin;
\.
COPY public.bid (bid_id, car_id, user_id, date_bid, bid_price, bid_status) FROM '$$PATH$$/3618.dat';

--
-- Data for Name: car; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.car (car_id, brand, model, body_type, car_type, year, price) FROM stdin;
\.
COPY public.car (car_id, brand, model, body_type, car_type, year, price) FROM '$$PATH$$/3616.dat';

--
-- Data for Name: location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.location (location_id, city_name, longitude, latitude) FROM stdin;
\.
COPY public.location (location_id, city_name, longitude, latitude) FROM '$$PATH$$/3615.dat';

--
-- Data for Name: user_account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_account (user_id, name, contact, location_id) FROM stdin;
\.
COPY public.user_account (user_id, name, contact, location_id) FROM '$$PATH$$/3614.dat';

--
-- Name: advertisement advertisement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_pkey PRIMARY KEY (ad_id);


--
-- Name: bid bid_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_pkey PRIMARY KEY (bid_id);


--
-- Name: car car_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (car_id);


--
-- Name: location location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (location_id);


--
-- Name: user_account user_account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (user_id);


--
-- Name: advertisement advertisement_car_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.car(car_id);


--
-- Name: advertisement advertisement_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);


--
-- Name: bid bid_car_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.car(car_id);


--
-- Name: bid bid_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);


--
-- Name: user_account location_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT location_id FOREIGN KEY (location_id) REFERENCES public.location(location_id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      