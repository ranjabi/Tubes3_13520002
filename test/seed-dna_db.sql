PGDMP     #    .    	            z            d85gcsh9u91r2i     14.2 (Ubuntu 14.2-1.pgdg20.04+1)    14.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    10941826    d85gcsh9u91r2i    DATABASE     c   CREATE DATABASE d85gcsh9u91r2i WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE d85gcsh9u91r2i;
                bzflpdkajwjyui    false            �           0    0    DATABASE d85gcsh9u91r2i    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE d85gcsh9u91r2i FROM PUBLIC;
                   bzflpdkajwjyui    false    4316            �           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO bzflpdkajwjyui;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   bzflpdkajwjyui    false    5            �           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO bzflpdkajwjyui;
                   postgres    false    831            �            1259    10991673    diseases    TABLE     �   CREATE TABLE public.diseases (
    id integer NOT NULL,
    disease_name text DEFAULT NULL::character varying,
    dna_sequence text DEFAULT NULL::character varying
);
    DROP TABLE public.diseases;
       public         heap    bzflpdkajwjyui    false            �            1259    10991670    diseases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.diseases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.diseases_id_seq;
       public          bzflpdkajwjyui    false    210            �           0    0    diseases_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.diseases_id_seq OWNED BY public.diseases.id;
          public          bzflpdkajwjyui    false    209            �            1259    12114068    test_result    TABLE     7  CREATE TABLE public.test_result (
    id integer NOT NULL,
    dates text,
    username text DEFAULT NULL::character varying,
    disease text DEFAULT NULL::character varying,
    dna_sequence text DEFAULT NULL::character varying,
    similarity text DEFAULT NULL::character varying,
    isinfected smallint
);
    DROP TABLE public.test_result;
       public         heap    bzflpdkajwjyui    false            �            1259    12114060    test_result_id_seq    SEQUENCE     �   CREATE SEQUENCE public.test_result_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.test_result_id_seq;
       public          bzflpdkajwjyui    false    212            �           0    0    test_result_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.test_result_id_seq OWNED BY public.test_result.id;
          public          bzflpdkajwjyui    false    211            >           2604    21168247    diseases id    DEFAULT     j   ALTER TABLE ONLY public.diseases ALTER COLUMN id SET DEFAULT nextval('public.diseases_id_seq'::regclass);
 :   ALTER TABLE public.diseases ALTER COLUMN id DROP DEFAULT;
       public          bzflpdkajwjyui    false    209    210    210            C           2604    21168232    test_result id    DEFAULT     p   ALTER TABLE ONLY public.test_result ALTER COLUMN id SET DEFAULT nextval('public.test_result_id_seq'::regclass);
 =   ALTER TABLE public.test_result ALTER COLUMN id DROP DEFAULT;
       public          bzflpdkajwjyui    false    212    211    212            �          0    10991673    diseases 
   TABLE DATA           B   COPY public.diseases (id, disease_name, dna_sequence) FROM stdin;
    public          bzflpdkajwjyui    false    210   a       �          0    12114068    test_result 
   TABLE DATA           i   COPY public.test_result (id, dates, username, disease, dna_sequence, similarity, isinfected) FROM stdin;
    public          bzflpdkajwjyui    false    212   �       �           0    0    diseases_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.diseases_id_seq', 17, true);
          public          bzflpdkajwjyui    false    209            �           0    0    test_result_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.test_result_id_seq', 16, true);
          public          bzflpdkajwjyui    false    211            E           2606    10991684    diseases diseases_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.diseases
    ADD CONSTRAINT diseases_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.diseases DROP CONSTRAINT diseases_pkey;
       public            bzflpdkajwjyui    false    210            G           2606    12114162    test_result test_result_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.test_result
    ADD CONSTRAINT test_result_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.test_result DROP CONSTRAINT test_result_pkey;
       public            bzflpdkajwjyui    false    212            �      x�U�Ar� E��)r�NI��]2,� �n�8Ll��HNߏI�)3���G)r��y���ѓ��X휳�i���|b_b/�Pmm�ZJ/y���_[���;�[�}/��%\�{�pΰ8��>$������׼�au$ʄ^�`f�XQ������1V�[v>��0�ɴ����Nr����ZFĳ���.%�pƘg8�{��Yn֨��T>�}��Љ:|u8�HW?��P�ڭ�j��I�4��V$Ԫ`��|7҂��2��)I|�}c�퍿ߘ�Rh��      �   �  x���͎�0�ϝ���p��s�|��{�q/������h����.���6��R]](��R���jUU���CK�=�ɷ_L�Xm���hg�6Z�p��㴥��NU5���H|
��Z[МvN˧qX�����:�\��������2��<��Z���$-��]��PVE�QN|>3��}ɡ'��@Zo��@c�E�L� 
��'�Ia�m�K�eU3� �f���4,&aB�H"v�����i�ON=F\w�I�J�lv	���,��0��� !���C�ЃKN�%��&�iww1
�߸�����K�/\�oI�J�9o�	�(2B�R�{�=\;r����ٞ���Ϣ��T��w�&ı�ڦ%��'��\������鿡^3^��O>��GZ2�'{������t��ǯ���_KY�TK�&�짣�[CG�v3��%�K���+]����Sjӽ�|��(�_�8:B     