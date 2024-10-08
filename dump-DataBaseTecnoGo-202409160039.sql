PGDMP     +    '                 |            DataBaseTecnoGo %   14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)    15.3 D    =           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            >           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            @           1262    40960    DataBaseTecnoGo    DATABASE     y   CREATE DATABASE "DataBaseTecnoGo" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';
 !   DROP DATABASE "DataBaseTecnoGo";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            A           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    4            B           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    57344    categoria_id_seq    SEQUENCE     y   CREATE SEQUENCE public.categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.categoria_id_seq;
       public          postgres    false    4            �            1259    65569 
   categorias    TABLE     n   CREATE TABLE public.categorias (
    categoria_id integer NOT NULL,
    nombre_categoria character varying
);
    DROP TABLE public.categorias;
       public         heap    postgres    false    4            �            1259    65568    categorias_categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.categorias_categoria_id_seq;
       public          postgres    false    220    4            C           0    0    categorias_categoria_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.categorias_categoria_id_seq OWNED BY public.categorias.categoria_id;
          public          postgres    false    219            �            1259    57351    celular_id_seq    SEQUENCE     w   CREATE SEQUENCE public.celular_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.celular_id_seq;
       public          postgres    false    4            �            1259    65550 	   celulares    TABLE     �   CREATE TABLE public.celulares (
    id integer NOT NULL,
    marca character varying(100) NOT NULL,
    modelo character varying(50) NOT NULL,
    precio numeric NOT NULL,
    descripcion character varying,
    imagen character varying
);
    DROP TABLE public.celulares;
       public         heap    postgres    false    4            �            1259    65549    celulares_celular_id_seq    SEQUENCE     �   CREATE SEQUENCE public.celulares_celular_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.celulares_celular_id_seq;
       public          postgres    false    4    216            D           0    0    celulares_celular_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.celulares_celular_id_seq OWNED BY public.celulares.id;
          public          postgres    false    215            �            1259    40962    celulares_prueba    TABLE     �   CREATE TABLE public.celulares_prueba (
    celulares_id integer NOT NULL,
    marca character varying(50) NOT NULL,
    modelo character varying(100) NOT NULL,
    precio numeric(10,2) NOT NULL,
    descripcion text,
    imagen_url text
);
 $   DROP TABLE public.celulares_prueba;
       public         heap    postgres    false    4            �            1259    40961    celulares_id_seq    SEQUENCE     �   CREATE SEQUENCE public.celulares_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.celulares_id_seq;
       public          postgres    false    210    4            E           0    0    celulares_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public.celulares_id_seq OWNED BY public.celulares_prueba.celulares_id;
          public          postgres    false    209            �            1259    57360    computador_id_seq    SEQUENCE     z   CREATE SEQUENCE public.computador_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.computador_id_seq;
       public          postgres    false    4            �            1259    65560    computadoras    TABLE     �   CREATE TABLE public.computadoras (
    id integer NOT NULL,
    marca character varying(100) NOT NULL,
    modelo character varying(50) NOT NULL,
    precio numeric NOT NULL,
    descripcion character varying,
    imagen character varying
);
     DROP TABLE public.computadoras;
       public         heap    postgres    false    4            �            1259    65559    computadoras_celular_id_seq    SEQUENCE     �   CREATE SEQUENCE public.computadoras_celular_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.computadoras_celular_id_seq;
       public          postgres    false    218    4            F           0    0    computadoras_celular_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.computadoras_celular_id_seq OWNED BY public.computadoras.id;
          public          postgres    false    217            �            1259    57369    marca_id_seq    SEQUENCE     u   CREATE SEQUENCE public.marca_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.marca_id_seq;
       public          postgres    false    4            �            1259    65578    marcas    TABLE     i   CREATE TABLE public.marcas (
    marca_id integer NOT NULL,
    marca character varying(100) NOT NULL
);
    DROP TABLE public.marcas;
       public         heap    postgres    false    4            �            1259    65577    marcas_marca_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marcas_marca_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.marcas_marca_id_seq;
       public          postgres    false    222    4            G           0    0    marcas_marca_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.marcas_marca_id_seq OWNED BY public.marcas.marca_id;
          public          postgres    false    221            �            1259    81921    roles    TABLE     V   CREATE TABLE public.roles (
    rol_id integer NOT NULL,
    rol character varying
);
    DROP TABLE public.roles;
       public         heap    postgres    false    4            �            1259    81920    roles_rol_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.roles_rol_id_seq;
       public          postgres    false    226    4            H           0    0    roles_rol_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.roles_rol_id_seq OWNED BY public.roles.rol_id;
          public          postgres    false    225            �            1259    73729    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    correo character varying(50) NOT NULL,
    clave character varying(100) NOT NULL,
    rol character varying
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false    4            �            1259    73728    usuarios_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_usuario_id_seq;
       public          postgres    false    4    224            I           0    0    usuarios_usuario_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.usuarios_usuario_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    223            �           2604    65572    categorias categoria_id    DEFAULT     �   ALTER TABLE ONLY public.categorias ALTER COLUMN categoria_id SET DEFAULT nextval('public.categorias_categoria_id_seq'::regclass);
 F   ALTER TABLE public.categorias ALTER COLUMN categoria_id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    65553    celulares id    DEFAULT     t   ALTER TABLE ONLY public.celulares ALTER COLUMN id SET DEFAULT nextval('public.celulares_celular_id_seq'::regclass);
 ;   ALTER TABLE public.celulares ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    65563    computadoras id    DEFAULT     z   ALTER TABLE ONLY public.computadoras ALTER COLUMN id SET DEFAULT nextval('public.computadoras_celular_id_seq'::regclass);
 >   ALTER TABLE public.computadoras ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    65581    marcas marca_id    DEFAULT     r   ALTER TABLE ONLY public.marcas ALTER COLUMN marca_id SET DEFAULT nextval('public.marcas_marca_id_seq'::regclass);
 >   ALTER TABLE public.marcas ALTER COLUMN marca_id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    81924    roles rol_id    DEFAULT     l   ALTER TABLE ONLY public.roles ALTER COLUMN rol_id SET DEFAULT nextval('public.roles_rol_id_seq'::regclass);
 ;   ALTER TABLE public.roles ALTER COLUMN rol_id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    73732    usuarios id    DEFAULT     r   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_usuario_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            4          0    65569 
   categorias 
   TABLE DATA           D   COPY public.categorias (categoria_id, nombre_categoria) FROM stdin;
    public          postgres    false    220   J       0          0    65550 	   celulares 
   TABLE DATA           S   COPY public.celulares (id, marca, modelo, precio, descripcion, imagen) FROM stdin;
    public          postgres    false    216   WJ       *          0    40962    celulares_prueba 
   TABLE DATA           h   COPY public.celulares_prueba (celulares_id, marca, modelo, precio, descripcion, imagen_url) FROM stdin;
    public          postgres    false    210   �K       2          0    65560    computadoras 
   TABLE DATA           V   COPY public.computadoras (id, marca, modelo, precio, descripcion, imagen) FROM stdin;
    public          postgres    false    218   �L       6          0    65578    marcas 
   TABLE DATA           1   COPY public.marcas (marca_id, marca) FROM stdin;
    public          postgres    false    222   �M       :          0    81921    roles 
   TABLE DATA           ,   COPY public.roles (rol_id, rol) FROM stdin;
    public          postgres    false    226   �M       8          0    73729    usuarios 
   TABLE DATA           B   COPY public.usuarios (id, nombre, correo, clave, rol) FROM stdin;
    public          postgres    false    224   N       J           0    0    categoria_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categoria_id_seq', 1, false);
          public          postgres    false    211            K           0    0    categorias_categoria_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.categorias_categoria_id_seq', 5, true);
          public          postgres    false    219            L           0    0    celular_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.celular_id_seq', 1, false);
          public          postgres    false    212            M           0    0    celulares_celular_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.celulares_celular_id_seq', 30, true);
          public          postgres    false    215            N           0    0    celulares_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.celulares_id_seq', 1, false);
          public          postgres    false    209            O           0    0    computador_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.computador_id_seq', 1, false);
          public          postgres    false    213            P           0    0    computadoras_celular_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.computadoras_celular_id_seq', 46, true);
          public          postgres    false    217            Q           0    0    marca_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.marca_id_seq', 8, true);
          public          postgres    false    214            R           0    0    marcas_marca_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.marcas_marca_id_seq', 10, true);
          public          postgres    false    221            S           0    0    roles_rol_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.roles_rol_id_seq', 2, true);
          public          postgres    false    225            T           0    0    usuarios_usuario_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.usuarios_usuario_id_seq', 18, true);
          public          postgres    false    223            �           2606    65576    categorias categorias_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (categoria_id);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public            postgres    false    220            �           2606    40969    celulares_prueba celulares_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.celulares_prueba
    ADD CONSTRAINT celulares_pkey PRIMARY KEY (celulares_id);
 I   ALTER TABLE ONLY public.celulares_prueba DROP CONSTRAINT celulares_pkey;
       public            postgres    false    210            �           2606    65557    celulares celulares_pkey2 
   CONSTRAINT     W   ALTER TABLE ONLY public.celulares
    ADD CONSTRAINT celulares_pkey2 PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.celulares DROP CONSTRAINT celulares_pkey2;
       public            postgres    false    216            �           2606    65567    computadoras computadoras_pkey1 
   CONSTRAINT     ]   ALTER TABLE ONLY public.computadoras
    ADD CONSTRAINT computadoras_pkey1 PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.computadoras DROP CONSTRAINT computadoras_pkey1;
       public            postgres    false    218            �           2606    65585    marcas marcas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT marcas_pkey PRIMARY KEY (marca_id);
 <   ALTER TABLE ONLY public.marcas DROP CONSTRAINT marcas_pkey;
       public            postgres    false    222            �           2606    81928    roles roles_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (rol_id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    226            �           2606    65591    marcas unique_marca 
   CONSTRAINT     O   ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT unique_marca UNIQUE (marca);
 =   ALTER TABLE ONLY public.marcas DROP CONSTRAINT unique_marca;
       public            postgres    false    222            �           2606    81932    roles unique_rol 
   CONSTRAINT     J   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT unique_rol UNIQUE (rol);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT unique_rol;
       public            postgres    false    226            �           2606    73734    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    224            �           2606    65602    celulares fk_celulares_marcas    FK CONSTRAINT     ~   ALTER TABLE ONLY public.celulares
    ADD CONSTRAINT fk_celulares_marcas FOREIGN KEY (marca) REFERENCES public.marcas(marca);
 G   ALTER TABLE ONLY public.celulares DROP CONSTRAINT fk_celulares_marcas;
       public          postgres    false    3220    222    216            �           2606    65607 #   computadoras fk_computadoras_marcas    FK CONSTRAINT     �   ALTER TABLE ONLY public.computadoras
    ADD CONSTRAINT fk_computadoras_marcas FOREIGN KEY (marca) REFERENCES public.marcas(marca);
 M   ALTER TABLE ONLY public.computadoras DROP CONSTRAINT fk_computadoras_marcas;
       public          postgres    false    3220    222    218            �           2606    81933    usuarios fk_rol    FK CONSTRAINT     k   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_rol FOREIGN KEY (rol) REFERENCES public.roles(rol);
 9   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT fk_rol;
       public          postgres    false    224    226    3226            4   (   x�3�LN�)�I,J-�2�L��-(-IL�/J,����� �\
      0   S  x��RKn�0\?N�	���,YU�J�J#uэc���Q#��#�b}�@���Y��f�}���~��m�8�i!��Uy�uG^"�$����G��C��Jdy�ڑ:�m��<@��/ᓏ�t����8�Atx~F\�뀈k^�%O�϶�s�H+f��f�iY�+�JTT2��d��k�)����d>{�!tJ�N	6�U��.�L�A?B8!�krvnYw��l)��}~��hy�x7$��N�#�%��E����E���h���H����Ջ��.0쟺�PVm|d&_;(�=ok{�V{�s�8o��.oڠ�iN\�Y
L�y��;4�͗�,��n�Y      *   �   x�����0 �s�|���/*����9΀3c>�B�`/M�צep(��T�װKrN}ĔBg*՚��˶��n�\��H�
G��v!��_��.�9��3�S�3Q�zi���	��Q+"݉F=�A�i�	[^����d�%ɿ$��d�h�p��Sg�i�dU����@�g+���F.1!���]�      2   �   x��PKn�0]?N�	P�M ��E�H��n�� ";&�P��#�b�@FU��w~�y�8�!D��R
��?�/mqu}&v��'x<��D�d�D��q<�'��������*��J,�1&qmb%G����A�u	�׋s7����0Ӥ5��fDSC�I������+mr�
�as=��O�O��`��6����+��Z��{���c\zެ\��o�C덝G��������:�E�e_WǓ      6   Q   x��I
�0�s�c�}94`�!�����êo4��nɟ|p@ҭ��8�{'�ʪ��R�g�
�ǹ��PٵH�5$*%      :   '   x�3�LL����,.)JL�/�2�L��L�+I����� ��	�      8     x�}�K��L������FAܵrE�&d6Zܥ@.�~��۞t2����J����9
XG����z��"(�!~_h"����_t����J�*�n�,���MP�uc=˳.���Q�jacQ�\.�6xc2Dr��'l��e�WiIʍ��ݰ��3M[��_2��2}ّ.�0��AQ�0CQ�D/�E��5(��J"�%A����ݣ�H��FZ-���5��;��x�F;��e��i���~�X� ��:��`	���=h��aՓ$E�R �΂*I�xh�e��j�{���گA9B|M�F��'c�4�i��>a��h�6ZG�EYz�Uv6��#��׌n�/��_h�K��ZiM���B�w���xG�*�];֋�e�DY�����S-v��'����wt^I�I^r�hz��v�ؕd�*J{s����1�+ÞE�d����Ϗ[��WB�'�M��h��-|0�_�v-��	IZ?S]�5��vE��*���D_XjNTQ�S,0�Wx�dX�p���>K��0A|0�~����Qsr�l�܎h�iwu~^�8s]�Z��S��F� ����@��	��`��pR���d�:Õ�~CZ�����J�u�ݥKm&;��x7s7�S�&*��(D�_"LY�5�f�Ga��2�y �yu�g��
Kb��O=c�@���g)���,�����|g�cb2��A�F�����Yw����,���8 ��N�m*v����S!Qt-?�𣼣���jiΙ��Ƴ��͒7"��c��ei�aymuјy�/�gf(��`�)3��?4�9��L���p��g�(�+���hJ��̫�.�q;*� 7�F����凄"�tv!I$7to�m��N�����z��:��4�k7������f�V�@>|Z�?����=��.��9�Ѵ-��s��Y�3�౪z���)/� o,����~�x"iA����t�h�8�y�+��hJ�J�t��Rܙ<�;E���"s��i�o����t�     