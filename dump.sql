PGDMP                         x            employee_assignment    11.5    11.5 )    0           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            1           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            2           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            3           1262    24883    employee_assignment    DATABASE     �   CREATE DATABASE employee_assignment WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 #   DROP DATABASE employee_assignment;
             postgres    false            �            1259    24902    commission_employee    TABLE     �   CREATE TABLE public.commission_employee (
    id integer NOT NULL,
    name character varying(255),
    age integer,
    percentage_from_sales double precision
);
 '   DROP TABLE public.commission_employee;
       public         postgres    false            �            1259    24900    commission_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.commission_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.commission_employee_id_seq;
       public       postgres    false    201            4           0    0    commission_employee_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.commission_employee_id_seq OWNED BY public.commission_employee.id;
            public       postgres    false    200            �            1259    24924    commission_employee_sales    TABLE     |   CREATE TABLE public.commission_employee_sales (
    week_id integer,
    employee_id integer,
    sales double precision
);
 -   DROP TABLE public.commission_employee_sales;
       public         postgres    false            �            1259    24894    hourly_employee    TABLE     �   CREATE TABLE public.hourly_employee (
    id integer NOT NULL,
    name character varying(255),
    age integer,
    payment_per_hour double precision,
    overtime_coefficient double precision
);
 #   DROP TABLE public.hourly_employee;
       public         postgres    false            �            1259    24892    hourly_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hourly_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.hourly_employee_id_seq;
       public       postgres    false    199            5           0    0    hourly_employee_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.hourly_employee_id_seq OWNED BY public.hourly_employee.id;
            public       postgres    false    198            �            1259    24916    hourly_employee_schedule    TABLE     r   CREATE TABLE public.hourly_employee_schedule (
    week_id integer,
    employee_id integer,
    hours integer
);
 ,   DROP TABLE public.hourly_employee_schedule;
       public         postgres    false            �            1259    24910    salaried_commission_employee    TABLE     �   CREATE TABLE public.salaried_commission_employee (
    id integer NOT NULL,
    name character varying(255),
    age integer,
    percentage_from_sales double precision,
    base_salary double precision
);
 0   DROP TABLE public.salaried_commission_employee;
       public         postgres    false            �            1259    24908 #   salaried_commission_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.salaried_commission_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.salaried_commission_employee_id_seq;
       public       postgres    false    203            6           0    0 #   salaried_commission_employee_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.salaried_commission_employee_id_seq OWNED BY public.salaried_commission_employee.id;
            public       postgres    false    202            �            1259    24932 "   salaried_commission_employee_sales    TABLE     �   CREATE TABLE public.salaried_commission_employee_sales (
    week_id integer,
    employee_id integer,
    sales double precision
);
 6   DROP TABLE public.salaried_commission_employee_sales;
       public         postgres    false            �            1259    24886    salaried_employee    TABLE     �   CREATE TABLE public.salaried_employee (
    id integer NOT NULL,
    name character varying(255),
    age integer,
    salary double precision
);
 %   DROP TABLE public.salaried_employee;
       public         postgres    false            �            1259    24884    salaried_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.salaried_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.salaried_employee_id_seq;
       public       postgres    false    197            7           0    0    salaried_employee_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.salaried_employee_id_seq OWNED BY public.salaried_employee.id;
            public       postgres    false    196            �
           2604    24905    commission_employee id    DEFAULT     �   ALTER TABLE ONLY public.commission_employee ALTER COLUMN id SET DEFAULT nextval('public.commission_employee_id_seq'::regclass);
 E   ALTER TABLE public.commission_employee ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    24897    hourly_employee id    DEFAULT     x   ALTER TABLE ONLY public.hourly_employee ALTER COLUMN id SET DEFAULT nextval('public.hourly_employee_id_seq'::regclass);
 A   ALTER TABLE public.hourly_employee ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    24913    salaried_commission_employee id    DEFAULT     �   ALTER TABLE ONLY public.salaried_commission_employee ALTER COLUMN id SET DEFAULT nextval('public.salaried_commission_employee_id_seq'::regclass);
 N   ALTER TABLE public.salaried_commission_employee ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    24889    salaried_employee id    DEFAULT     |   ALTER TABLE ONLY public.salaried_employee ALTER COLUMN id SET DEFAULT nextval('public.salaried_employee_id_seq'::regclass);
 C   ALTER TABLE public.salaried_employee ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            (          0    24902    commission_employee 
   TABLE DATA               S   COPY public.commission_employee (id, name, age, percentage_from_sales) FROM stdin;
    public       postgres    false    201   �1       ,          0    24924    commission_employee_sales 
   TABLE DATA               P   COPY public.commission_employee_sales (week_id, employee_id, sales) FROM stdin;
    public       postgres    false    205   �1       &          0    24894    hourly_employee 
   TABLE DATA               `   COPY public.hourly_employee (id, name, age, payment_per_hour, overtime_coefficient) FROM stdin;
    public       postgres    false    199   �1       +          0    24916    hourly_employee_schedule 
   TABLE DATA               O   COPY public.hourly_employee_schedule (week_id, employee_id, hours) FROM stdin;
    public       postgres    false    204   ,2       *          0    24910    salaried_commission_employee 
   TABLE DATA               i   COPY public.salaried_commission_employee (id, name, age, percentage_from_sales, base_salary) FROM stdin;
    public       postgres    false    203   P2       -          0    24932 "   salaried_commission_employee_sales 
   TABLE DATA               Y   COPY public.salaried_commission_employee_sales (week_id, employee_id, sales) FROM stdin;
    public       postgres    false    206   �2       $          0    24886    salaried_employee 
   TABLE DATA               B   COPY public.salaried_employee (id, name, age, salary) FROM stdin;
    public       postgres    false    197   �2       8           0    0    commission_employee_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.commission_employee_id_seq', 1, true);
            public       postgres    false    200            9           0    0    hourly_employee_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.hourly_employee_id_seq', 1, true);
            public       postgres    false    198            :           0    0 #   salaried_commission_employee_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.salaried_commission_employee_id_seq', 1, true);
            public       postgres    false    202            ;           0    0    salaried_employee_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.salaried_employee_id_seq', 1, true);
            public       postgres    false    196            �
           2606    24907 ,   commission_employee commission_employee_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.commission_employee
    ADD CONSTRAINT commission_employee_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.commission_employee DROP CONSTRAINT commission_employee_pkey;
       public         postgres    false    201            �
           2606    24899 $   hourly_employee hourly_employee_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.hourly_employee
    ADD CONSTRAINT hourly_employee_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.hourly_employee DROP CONSTRAINT hourly_employee_pkey;
       public         postgres    false    199            �
           2606    24915 >   salaried_commission_employee salaried_commission_employee_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.salaried_commission_employee
    ADD CONSTRAINT salaried_commission_employee_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.salaried_commission_employee DROP CONSTRAINT salaried_commission_employee_pkey;
       public         postgres    false    203            �
           2606    24891 (   salaried_employee salaried_employee_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.salaried_employee
    ADD CONSTRAINT salaried_employee_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.salaried_employee DROP CONSTRAINT salaried_employee_pkey;
       public         postgres    false    197            �
           2606    24927 D   commission_employee_sales commission_employee_sales_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.commission_employee_sales
    ADD CONSTRAINT commission_employee_sales_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.commission_employee(id);
 n   ALTER TABLE ONLY public.commission_employee_sales DROP CONSTRAINT commission_employee_sales_employee_id_fkey;
       public       postgres    false    201    2724    205            �
           2606    24919 B   hourly_employee_schedule hourly_employee_schedule_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hourly_employee_schedule
    ADD CONSTRAINT hourly_employee_schedule_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.hourly_employee(id);
 l   ALTER TABLE ONLY public.hourly_employee_schedule DROP CONSTRAINT hourly_employee_schedule_employee_id_fkey;
       public       postgres    false    2722    204    199            �
           2606    24935 V   salaried_commission_employee_sales salaried_commission_employee_sales_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.salaried_commission_employee_sales
    ADD CONSTRAINT salaried_commission_employee_sales_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.salaried_commission_employee(id);
 �   ALTER TABLE ONLY public.salaried_commission_employee_sales DROP CONSTRAINT salaried_commission_employee_sales_employee_id_fkey;
       public       postgres    false    203    206    2726            (      x�3�����L�46�44����� 4�8      ,      x�3�4�0 �=... �O      &   "   x�3�����˫�42�4500�4�3����� S�>      +      x�3�4�4������� �      *   #   x�3�N-JO��4��44�442400������ Y!k      -      x�3�4�47 �=... �N      $      x�3�t��,�42 "������ 5     