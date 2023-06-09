PGDMP     2    ;                {            RentACarCamp    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    RentACarCamp    DATABASE     �   CREATE DATABASE "RentACarCamp" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "RentACarCamp";
                postgres    false            �            1259    16400    brands    TABLE     Y   CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.brands;
       public         heap    postgres    false            �            1259    16399    brands_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.brands_id_seq;
       public          postgres    false    215                       0    0    brands_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;
          public          postgres    false    214            �            1259    16439    cars    TABLE     �   CREATE TABLE public.cars (
    id integer NOT NULL,
    daily_price double precision,
    model_year integer,
    plate character varying(255),
    state integer,
    model_id integer
);
    DROP TABLE public.cars;
       public         heap    postgres    false            �            1259    16438    cars_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cars_id_seq;
       public          postgres    false    219                       0    0    cars_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.cars_id_seq OWNED BY public.cars.id;
          public          postgres    false    218            �            1259    16427    models    TABLE     o   CREATE TABLE public.models (
    id integer NOT NULL,
    name character varying(255),
    brand_id integer
);
    DROP TABLE public.models;
       public         heap    postgres    false            �            1259    16426    models_id_seq    SEQUENCE     �   CREATE SEQUENCE public.models_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.models_id_seq;
       public          postgres    false    217                       0    0    models_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.models_id_seq OWNED BY public.models.id;
          public          postgres    false    216            o           2604    16403 	   brands id    DEFAULT     f   ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);
 8   ALTER TABLE public.brands ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            q           2604    16442    cars id    DEFAULT     b   ALTER TABLE ONLY public.cars ALTER COLUMN id SET DEFAULT nextval('public.cars_id_seq'::regclass);
 6   ALTER TABLE public.cars ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            p           2604    16430 	   models id    DEFAULT     f   ALTER TABLE ONLY public.models ALTER COLUMN id SET DEFAULT nextval('public.models_id_seq'::regclass);
 8   ALTER TABLE public.models ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217                      0    16400    brands 
   TABLE DATA           *   COPY public.brands (id, name) FROM stdin;
    public          postgres    false    215   �                 0    16439    cars 
   TABLE DATA           S   COPY public.cars (id, daily_price, model_year, plate, state, model_id) FROM stdin;
    public          postgres    false    219                    0    16427    models 
   TABLE DATA           4   COPY public.models (id, name, brand_id) FROM stdin;
    public          postgres    false    217   <                  0    0    brands_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.brands_id_seq', 5, true);
          public          postgres    false    214                       0    0    cars_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.cars_id_seq', 1, false);
          public          postgres    false    218                       0    0    models_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.models_id_seq', 1, true);
          public          postgres    false    216            s           2606    16405    brands brands_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_pkey;
       public            postgres    false    215            w           2606    16444    cars cars_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cars DROP CONSTRAINT cars_pkey;
       public            postgres    false    219            u           2606    16432    models models_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.models
    ADD CONSTRAINT models_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.models DROP CONSTRAINT models_pkey;
       public            postgres    false    217            y           2606    16446 !   cars uk_h47vv10sihuuf1d7ea6ehgvh9 
   CONSTRAINT     ]   ALTER TABLE ONLY public.cars
    ADD CONSTRAINT uk_h47vv10sihuuf1d7ea6ehgvh9 UNIQUE (plate);
 K   ALTER TABLE ONLY public.cars DROP CONSTRAINT uk_h47vv10sihuuf1d7ea6ehgvh9;
       public            postgres    false    219            z           2606    16433 "   models fk95s72g5hnsl3o0bqeuhnokdxu    FK CONSTRAINT     �   ALTER TABLE ONLY public.models
    ADD CONSTRAINT fk95s72g5hnsl3o0bqeuhnokdxu FOREIGN KEY (brand_id) REFERENCES public.brands(id);
 L   ALTER TABLE ONLY public.models DROP CONSTRAINT fk95s72g5hnsl3o0bqeuhnokdxu;
       public          postgres    false    3187    217    215            {           2606    16447     cars fkrwe6b2vd08hb4gnst223xsna4    FK CONSTRAINT     �   ALTER TABLE ONLY public.cars
    ADD CONSTRAINT fkrwe6b2vd08hb4gnst223xsna4 FOREIGN KEY (model_id) REFERENCES public.models(id);
 J   ALTER TABLE ONLY public.cars DROP CONSTRAINT fkrwe6b2vd08hb4gnst223xsna4;
       public          postgres    false    219    3189    217               .   x�3�t��2�H-MO�/�2�t�IKT��M��2�t����� �P	X            x������ � �            x�3�N-�L-V0�4����� ,%�     