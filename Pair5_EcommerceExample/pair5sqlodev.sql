PGDMP     2    (            
    z            etiya-ecommerce-example    15.1    15.1 V    z           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            {           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            |           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            }           1262    16398    etiya-ecommerce-example    DATABASE     �   CREATE DATABASE "etiya-ecommerce-example" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1252';
 )   DROP DATABASE "etiya-ecommerce-example";
                postgres    false            �            1259    16530    Address    TABLE     �   CREATE TABLE public."Address" (
    "ID" integer NOT NULL,
    "AddressTitle_fk" integer NOT NULL,
    "Cities_fk" integer NOT NULL,
    "Street" character varying NOT NULL,
    "CustomerId_fk" integer NOT NULL
);
    DROP TABLE public."Address";
       public         heap    postgres    false            �            1259    16513    AddressTitle    TABLE     i   CREATE TABLE public."AddressTitle" (
    "ID" integer NOT NULL,
    "Name" character varying NOT NULL
);
 "   DROP TABLE public."AddressTitle";
       public         heap    postgres    false            �            1259    16512    AddressTitle_ID_seq    SEQUENCE     �   ALTER TABLE public."AddressTitle" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."AddressTitle_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            �            1259    16529    Address_ID_seq    SEQUENCE     �   ALTER TABLE public."Address" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Address_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233            �            1259    16571    Cargo    TABLE     b   CREATE TABLE public."Cargo" (
    "ID" integer NOT NULL,
    "Name" character varying NOT NULL
);
    DROP TABLE public."Cargo";
       public         heap    postgres    false            �            1259    16570    Cargo_ID_seq    SEQUENCE     �   ALTER TABLE public."Cargo" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Cargo_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    238            �            1259    16522    Cities    TABLE     c   CREATE TABLE public."Cities" (
    "ID" integer NOT NULL,
    "Name" character varying NOT NULL
);
    DROP TABLE public."Cities";
       public         heap    postgres    false            �            1259    16521    Cities_ID_seq    SEQUENCE     �   ALTER TABLE public."Cities" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Cities_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            �            1259    16421    colors    TABLE     e   CREATE TABLE public.colors (
    "ID" integer NOT NULL,
    "Name" character varying(20) NOT NULL
);
    DROP TABLE public.colors;
       public         heap    postgres    false            �            1259    16420    Colors_ID_seq    SEQUENCE     �   ALTER TABLE public.colors ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Colors_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    16560 	   MoneyType    TABLE     d   CREATE TABLE public."MoneyType" (
    "ID" integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public."MoneyType";
       public         heap    postgres    false            �            1259    16599    MoneyType_ID_seq    SEQUENCE     �   ALTER TABLE public."MoneyType" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."MoneyType_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    236            �            1259    16579    Orders    TABLE     �   CREATE TABLE public."Orders" (
    "ID" integer NOT NULL,
    "Date" date NOT NULL,
    "AdressId_fk" integer NOT NULL,
    "PaymentId_fk" integer NOT NULL,
    "CargoId_fk" integer NOT NULL
);
    DROP TABLE public."Orders";
       public         heap    postgres    false            �            1259    16578    Orders_ID_seq    SEQUENCE     �   ALTER TABLE public."Orders" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Orders_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    240            �            1259    16553    Payment    TABLE     d   CREATE TABLE public."Payment" (
    "ID" integer NOT NULL,
    "MoneyTypeId_fk" integer NOT NULL
);
    DROP TABLE public."Payment";
       public         heap    postgres    false            �            1259    16552    Payment_ID_seq    SEQUENCE     �   ALTER TABLE public."Payment" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Payment_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    235            �            1259    16427    size    TABLE     b   CREATE TABLE public.size (
    "ID" integer NOT NULL,
    "Name" character varying(4) NOT NULL
);
    DROP TABLE public.size;
       public         heap    postgres    false            �            1259    16426    Size_ID_seq    SEQUENCE     �   ALTER TABLE public.size ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Size_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    16486 
   categories    TABLE     e   CREATE TABLE public.categories (
    "ID" integer NOT NULL,
    "Name" character varying NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    16485    categories_ID_seq    SEQUENCE     �   ALTER TABLE public.categories ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."categories_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    16433    color_size_relations    TABLE     �   CREATE TABLE public.color_size_relations (
    id integer NOT NULL,
    colorsid integer NOT NULL,
    sizeid integer NOT NULL
);
 (   DROP TABLE public.color_size_relations;
       public         heap    postgres    false            �            1259    16432    color_size_relations_id_seq    SEQUENCE     �   ALTER TABLE public.color_size_relations ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.color_size_relations_id_seq
    START WITH 70
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    16504 	   customers    TABLE     �   CREATE TABLE public.customers (
    "ID" integer NOT NULL,
    "FirstName" character varying NOT NULL,
    "LastName" character varying NOT NULL,
    "PhoneNumber" integer NOT NULL
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    16511    customers_ID_seq    SEQUENCE     �   ALTER TABLE public.customers ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."customers_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            �            1259    16480    product_categories    TABLE     �   CREATE TABLE public.product_categories (
    "ID" integer NOT NULL,
    categoryid_fk integer NOT NULL,
    productid_fk integer NOT NULL
);
 &   DROP TABLE public.product_categories;
       public         heap    postgres    false            �            1259    16479    product_categories_ID_seq    SEQUENCE     �   ALTER TABLE public.product_categories ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."product_categories_ID_seq"
    START WITH 33
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    16449    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    "unitPrice" money NOT NULL,
    stock integer NOT NULL,
    colorsizeid integer NOT NULL,
    name character varying
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16448    products_id_seq    SEQUENCE     �   ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            o          0    16530    Address 
   TABLE DATA           d   COPY public."Address" ("ID", "AddressTitle_fk", "Cities_fk", "Street", "CustomerId_fk") FROM stdin;
    public          postgres    false    233   @a       k          0    16513    AddressTitle 
   TABLE DATA           6   COPY public."AddressTitle" ("ID", "Name") FROM stdin;
    public          postgres    false    229   �a       t          0    16571    Cargo 
   TABLE DATA           /   COPY public."Cargo" ("ID", "Name") FROM stdin;
    public          postgres    false    238   �a       m          0    16522    Cities 
   TABLE DATA           0   COPY public."Cities" ("ID", "Name") FROM stdin;
    public          postgres    false    231   b       r          0    16560 	   MoneyType 
   TABLE DATA           1   COPY public."MoneyType" ("ID", name) FROM stdin;
    public          postgres    false    236   wb       v          0    16579    Orders 
   TABLE DATA           ]   COPY public."Orders" ("ID", "Date", "AdressId_fk", "PaymentId_fk", "CargoId_fk") FROM stdin;
    public          postgres    false    240   �b       q          0    16553    Payment 
   TABLE DATA           ;   COPY public."Payment" ("ID", "MoneyTypeId_fk") FROM stdin;
    public          postgres    false    235   �b       g          0    16486 
   categories 
   TABLE DATA           2   COPY public.categories ("ID", "Name") FROM stdin;
    public          postgres    false    225   +c       a          0    16433    color_size_relations 
   TABLE DATA           D   COPY public.color_size_relations (id, colorsid, sizeid) FROM stdin;
    public          postgres    false    219   tc       ]          0    16421    colors 
   TABLE DATA           .   COPY public.colors ("ID", "Name") FROM stdin;
    public          postgres    false    215   �c       h          0    16504 	   customers 
   TABLE DATA           Q   COPY public.customers ("ID", "FirstName", "LastName", "PhoneNumber") FROM stdin;
    public          postgres    false    226   �c       e          0    16480    product_categories 
   TABLE DATA           O   COPY public.product_categories ("ID", categoryid_fk, productid_fk) FROM stdin;
    public          postgres    false    223   pd       c          0    16449    products 
   TABLE DATA           M   COPY public.products (id, "unitPrice", stock, colorsizeid, name) FROM stdin;
    public          postgres    false    221   �d       _          0    16427    size 
   TABLE DATA           ,   COPY public.size ("ID", "Name") FROM stdin;
    public          postgres    false    217   !e       ~           0    0    AddressTitle_ID_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."AddressTitle_ID_seq"', 3, true);
          public          postgres    false    228                       0    0    Address_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Address_ID_seq"', 4, true);
          public          postgres    false    232            �           0    0    Cargo_ID_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Cargo_ID_seq"', 5, true);
          public          postgres    false    237            �           0    0    Cities_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Cities_ID_seq"', 6, true);
          public          postgres    false    230            �           0    0    Colors_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Colors_ID_seq"', 3, true);
          public          postgres    false    214            �           0    0    MoneyType_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."MoneyType_ID_seq"', 4, true);
          public          postgres    false    241            �           0    0    Orders_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Orders_ID_seq"', 5, true);
          public          postgres    false    239            �           0    0    Payment_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Payment_ID_seq"', 5, true);
          public          postgres    false    234            �           0    0    Size_ID_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Size_ID_seq"', 4, true);
          public          postgres    false    216            �           0    0    categories_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."categories_ID_seq"', 4, true);
          public          postgres    false    224            �           0    0    color_size_relations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.color_size_relations_id_seq', 73, true);
          public          postgres    false    218            �           0    0    customers_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."customers_ID_seq"', 5, true);
          public          postgres    false    227            �           0    0    product_categories_ID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."product_categories_ID_seq"', 36, true);
          public          postgres    false    222            �           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 5, true);
          public          postgres    false    220            �           2606    16519    AddressTitle AddressTitle_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."AddressTitle"
    ADD CONSTRAINT "AddressTitle_pkey" PRIMARY KEY ("ID");
 L   ALTER TABLE ONLY public."AddressTitle" DROP CONSTRAINT "AddressTitle_pkey";
       public            postgres    false    229            �           2606    16536    Address Address_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "Address_pkey" PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "Address_pkey";
       public            postgres    false    233            �           2606    16577    Cargo Cargo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Cargo"
    ADD CONSTRAINT "Cargo_pkey" PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public."Cargo" DROP CONSTRAINT "Cargo_pkey";
       public            postgres    false    238            �           2606    16528    Cities Cities_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Cities"
    ADD CONSTRAINT "Cities_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public."Cities" DROP CONSTRAINT "Cities_pkey";
       public            postgres    false    231            �           2606    16425    colors Colors_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.colors
    ADD CONSTRAINT "Colors_pkey" PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public.colors DROP CONSTRAINT "Colors_pkey";
       public            postgres    false    215            �           2606    16564    MoneyType MoneyType_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."MoneyType"
    ADD CONSTRAINT "MoneyType_pkey" PRIMARY KEY ("ID");
 F   ALTER TABLE ONLY public."MoneyType" DROP CONSTRAINT "MoneyType_pkey";
       public            postgres    false    236            �           2606    16583    Orders Orders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_pkey";
       public            postgres    false    240            �           2606    16559    Payment Payment_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Payment"
    ADD CONSTRAINT "Payment_pkey" PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public."Payment" DROP CONSTRAINT "Payment_pkey";
       public            postgres    false    235            �           2606    16431    size Size_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.size
    ADD CONSTRAINT "Size_pkey" PRIMARY KEY ("ID");
 :   ALTER TABLE ONLY public.size DROP CONSTRAINT "Size_pkey";
       public            postgres    false    217            �           2606    16492    categories categories_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    225            �           2606    16447 .   color_size_relations color_size_relations_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.color_size_relations
    ADD CONSTRAINT color_size_relations_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.color_size_relations DROP CONSTRAINT color_size_relations_pkey;
       public            postgres    false    219            �           2606    16510    customers customers_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    226            �           2606    16484 *   product_categories product_categories_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_pkey PRIMARY KEY ("ID");
 T   ALTER TABLE ONLY public.product_categories DROP CONSTRAINT product_categories_pkey;
       public            postgres    false    223            �           2606    16455    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    221            �           2606    16584    Orders AddressId_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "AddressId_fk" FOREIGN KEY ("AdressId_fk") REFERENCES public."Address"("ID");
 A   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "AddressId_fk";
       public          postgres    false    240    233    3257            �           2606    16594    Orders CargoId_fk    FK CONSTRAINT     }   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "CargoId_fk" FOREIGN KEY ("CargoId_fk") REFERENCES public."Cargo"("ID");
 ?   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "CargoId_fk";
       public          postgres    false    240    238    3263            �           2606    16602    Payment MoneyTypeId_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Payment"
    ADD CONSTRAINT "MoneyTypeId_fk" FOREIGN KEY ("MoneyTypeId_fk") REFERENCES public."MoneyType"("ID") NOT VALID;
 D   ALTER TABLE ONLY public."Payment" DROP CONSTRAINT "MoneyTypeId_fk";
       public          postgres    false    236    235    3261            �           2606    16589    Orders PaymentId_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "PaymentId_fk" FOREIGN KEY ("PaymentId_fk") REFERENCES public."Payment"("ID");
 A   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "PaymentId_fk";
       public          postgres    false    3259    240    235            �           2606    16537    Address adressTitle_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "adressTitle_fk" FOREIGN KEY ("AddressTitle_fk") REFERENCES public."AddressTitle"("ID");
 D   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "adressTitle_fk";
       public          postgres    false    3253    233    229            �           2606    16493     product_categories categoryid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT categoryid_fk FOREIGN KEY (categoryid_fk) REFERENCES public.categories("ID");
 J   ALTER TABLE ONLY public.product_categories DROP CONSTRAINT categoryid_fk;
       public          postgres    false    3249    223    225            �           2606    16542    Address cities_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT cities_fk FOREIGN KEY ("Cities_fk") REFERENCES public."Cities"("ID");
 =   ALTER TABLE ONLY public."Address" DROP CONSTRAINT cities_fk;
       public          postgres    false    233    3255    231            �           2606    16456    products color_size_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT color_size_id_fk FOREIGN KEY (colorsizeid) REFERENCES public.color_size_relations(id);
 C   ALTER TABLE ONLY public.products DROP CONSTRAINT color_size_id_fk;
       public          postgres    false    221    219    3243            �           2606    16436    color_size_relations colors_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.color_size_relations
    ADD CONSTRAINT colors_fk FOREIGN KEY (colorsid) REFERENCES public.colors("ID");
 H   ALTER TABLE ONLY public.color_size_relations DROP CONSTRAINT colors_fk;
       public          postgres    false    219    215    3239            �           2606    16547    Address customerId_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "customerId_fk" FOREIGN KEY ("CustomerId_fk") REFERENCES public.customers("ID");
 C   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "customerId_fk";
       public          postgres    false    3251    226    233            �           2606    16498    product_categories productid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT productid_fk FOREIGN KEY (productid_fk) REFERENCES public.products(id);
 I   ALTER TABLE ONLY public.product_categories DROP CONSTRAINT productid_fk;
       public          postgres    false    3245    221    223            �           2606    16441    color_size_relations size_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public.color_size_relations
    ADD CONSTRAINT size_fk FOREIGN KEY (sizeid) REFERENCES public.size("ID");
 F   ALTER TABLE ONLY public.color_size_relations DROP CONSTRAINT size_fk;
       public          postgres    false    219    217    3241            o   N   x�3�4�4�<�~dc^b�1��g�雚��Z�Z�i�e�r���Ue:'f�&fsr� r:�'�%��b���� ��%      k   &   x�3����M�2��OK�LN�2�N��������� }<�      t   4   x�3�>��(��ˈ3 $�˘34 �˄3�(5/�2?�˔ӱ(��+F��� !��      m   O   x�3�<���$1/�4�ˈӱ��,3��(X��Y�e��}dcQvNbQjN&�)�kQUf^rb�gHjvfQJ��\1z\\\ �g�      r   &   x�3�	��2�v�2�t��2�ttu����� ^��      v   ?   x�E˱� C�Zڅ\$�"�d�90��;}��=��D��T�(M��lRA 8/����!� f      q      x�3�4�2�4�2�4�2�4�2�c���� '�      g   9   x�3��/(�2�t�/)��Up��/���K�2���+I-�2�.��M-������ z��      a   #   x�37�4�4�27�4�4�27�����1W� K�K      ]   $   x�3�JM�2�t/JM��2�L���/����� h�       h   �   x�-�K
�0@�3��	3�E�Z��[7;�`>��<��y��xk��M2��BK�LLh`�UZ7<|��Mm�_g6� ����L!u�6i���T���2ʨ���Ξ��B_ý�N%K�r9��zY!�'(n      e   &   x�36�4�4�26�4�4�26R@��!�1W� K�K      c   k   x�%�1
�@�zr�$�9�����Y>��_�@�ē�f�70øΜ���3,aڗ��$�VYTa��|�����ջ&�����;"S�˺�N9\+3G<�1>��l       _      x�3��2���2���2������� ',O     