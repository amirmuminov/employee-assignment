PGDMP     )                    x            employee_assignment    11.5    11.5     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    24883    employee_assignment    DATABASE     �   CREATE DATABASE employee_assignment WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 #   DROP DATABASE employee_assignment;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            �            1259    25176 	   employees    TABLE       CREATE TABLE public.employees (
    id bigint NOT NULL,
    comm_rate real NOT NULL,
    empl_type character varying(255),
    fixed_salary double precision NOT NULL,
    hour_rate double precision NOT NULL,
    hours_worked integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.employees;
       public         postgres    false    3            �            1259    25174    employees_id_seq    SEQUENCE     y   CREATE SEQUENCE public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employees_id_seq;
       public       postgres    false    3    197                       0    0    employees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;
            public       postgres    false    196            ~
           2604    25179    employees id    DEFAULT     l   ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);
 ;   ALTER TABLE public.employees ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            �
          0    25176 	   employees 
   TABLE DATA               j   COPY public.employees (id, comm_rate, empl_type, fixed_salary, hour_rate, hours_worked, name) FROM stdin;
    public       postgres    false    197   �                  0    0    employees_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.employees_id_seq', 3, true);
            public       postgres    false    196            �
           2606    25184    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public         postgres    false    197            �
   k   x�3�44�v�q�tu�42 0�il�镟��W�e�ih W���������iljlfi�g�L,���Ӏ�Ā�17��ˈ���6#CK3�P�)�[NjW� h��     