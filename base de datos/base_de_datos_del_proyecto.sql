PGDMP  +                    |            gestion_clientes_spring_boot2    16.3    16.3 r    0           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            1           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            2           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            3           1262    16609    gestion_clientes_spring_boot2    DATABASE     �   CREATE DATABASE gestion_clientes_spring_boot2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Latin America.1252';
 -   DROP DATABASE gestion_clientes_spring_boot2;
                postgres    false            �            1259    16610    carrito    TABLE     W   CREATE TABLE public.carrito (
    idcarrito bigint NOT NULL,
    idproductos bigint
);
    DROP TABLE public.carrito;
       public         heap    postgres    false            �            1259    16613    carrito_idcarrito_seq    SEQUENCE     ~   CREATE SEQUENCE public.carrito_idcarrito_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.carrito_idcarrito_seq;
       public          postgres    false    215            4           0    0    carrito_idcarrito_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.carrito_idcarrito_seq OWNED BY public.carrito.idcarrito;
          public          postgres    false    216            �            1259    16614 
   categorias    TABLE     �   CREATE TABLE public.categorias (
    idcategoria bigint NOT NULL,
    descripcion character varying(255),
    nombre character varying(255)
);
    DROP TABLE public.categorias;
       public         heap    postgres    false            �            1259    16619    categorias_idcategoria_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_idcategoria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categorias_idcategoria_seq;
       public          postgres    false    217            5           0    0    categorias_idcategoria_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categorias_idcategoria_seq OWNED BY public.categorias.idcategoria;
          public          postgres    false    218            �            1259    16620    detalle    TABLE     �   CREATE TABLE public.detalle (
    id bigint NOT NULL,
    cantidad integer,
    precio_unitario integer,
    idpedido bigint,
    idproductos bigint,
    idpedidos bigint,
    id_detalle_pedido bigint NOT NULL
);
    DROP TABLE public.detalle;
       public         heap    postgres    false            �            1259    16623    detalle_id_detalle_pedido_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_id_detalle_pedido_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.detalle_id_detalle_pedido_seq;
       public          postgres    false    219            6           0    0    detalle_id_detalle_pedido_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.detalle_id_detalle_pedido_seq OWNED BY public.detalle.id_detalle_pedido;
          public          postgres    false    220            �            1259    16624    detalle_id_seq    SEQUENCE     w   CREATE SEQUENCE public.detalle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.detalle_id_seq;
       public          postgres    false    219            7           0    0    detalle_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.detalle_id_seq OWNED BY public.detalle.id;
          public          postgres    false    221            �            1259    16625    detalle_producto    TABLE     �   CREATE TABLE public.detalle_producto (
    id_detalle_pedido bigint NOT NULL,
    cantidad integer,
    precio_unitario integer,
    idproductos bigint,
    idpedidos bigint,
    total integer
);
 $   DROP TABLE public.detalle_producto;
       public         heap    postgres    false            �            1259    16628 &   detalle_producto_id_detalle_pedido_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_producto_id_detalle_pedido_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.detalle_producto_id_detalle_pedido_seq;
       public          postgres    false    222            8           0    0 &   detalle_producto_id_detalle_pedido_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.detalle_producto_id_detalle_pedido_seq OWNED BY public.detalle_producto.id_detalle_pedido;
          public          postgres    false    223            �            1259    16629 
   inventario    TABLE     �   CREATE TABLE public.inventario (
    id bigint NOT NULL,
    cantidad_disponible integer,
    descripcion character varying(255),
    ultima_actualizacion character varying(255),
    idproductos bigint,
    idinventario bigint NOT NULL
);
    DROP TABLE public.inventario;
       public         heap    postgres    false            �            1259    16634    inventario_id_seq    SEQUENCE     z   CREATE SEQUENCE public.inventario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.inventario_id_seq;
       public          postgres    false    224            9           0    0    inventario_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.inventario_id_seq OWNED BY public.inventario.id;
          public          postgres    false    225            �            1259    16635    inventario_idinventario_seq    SEQUENCE     �   CREATE SEQUENCE public.inventario_idinventario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.inventario_idinventario_seq;
       public          postgres    false    224            :           0    0    inventario_idinventario_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.inventario_idinventario_seq OWNED BY public.inventario.idinventario;
          public          postgres    false    226            �            1259    16881 
   metodopago    TABLE     �   CREATE TABLE public.metodopago (
    idmetodo bigint NOT NULL,
    descripcion character varying(255),
    metodo character varying(255)
);
    DROP TABLE public.metodopago;
       public         heap    postgres    false            �            1259    16880    metodopago_idmetodo_seq    SEQUENCE     �   CREATE SEQUENCE public.metodopago_idmetodo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.metodopago_idmetodo_seq;
       public          postgres    false    237            ;           0    0    metodopago_idmetodo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.metodopago_idmetodo_seq OWNED BY public.metodopago.idmetodo;
          public          postgres    false    236            �            1259    16890    pago    TABLE     �   CREATE TABLE public.pago (
    id_pago bigint NOT NULL,
    fecha character varying(255),
    monto real,
    pedido character varying(255),
    idmetodo bigint
);
    DROP TABLE public.pago;
       public         heap    postgres    false            �            1259    16889    pago_id_pago_seq    SEQUENCE     y   CREATE SEQUENCE public.pago_id_pago_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pago_id_pago_seq;
       public          postgres    false    239            <           0    0    pago_id_pago_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pago_id_pago_seq OWNED BY public.pago.id_pago;
          public          postgres    false    238            �            1259    16636    pedidos    TABLE     �   CREATE TABLE public.pedidos (
    id bigint NOT NULL,
    estado character varying(255),
    fecha_pedido character varying(255),
    total integer,
    idpedidos bigint NOT NULL,
    id_detalle_producto bigint
);
    DROP TABLE public.pedidos;
       public         heap    postgres    false            �            1259    16641    pedidos_id_seq    SEQUENCE     w   CREATE SEQUENCE public.pedidos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pedidos_id_seq;
       public          postgres    false    227            =           0    0    pedidos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pedidos_id_seq OWNED BY public.pedidos.id;
          public          postgres    false    228            �            1259    16642    pedidos_idpedidos_seq    SEQUENCE     ~   CREATE SEQUENCE public.pedidos_idpedidos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pedidos_idpedidos_seq;
       public          postgres    false    227            >           0    0    pedidos_idpedidos_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pedidos_idpedidos_seq OWNED BY public.pedidos.idpedidos;
          public          postgres    false    229            �            1259    16643 	   productos    TABLE       CREATE TABLE public.productos (
    id bigint NOT NULL,
    descripcion character varying(255),
    imagen character varying(255),
    nombre character varying(255),
    precio double precision,
    idcategoria bigint,
    idpromociones bigint,
    idproductos bigint NOT NULL
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    16648    productos_id_seq    SEQUENCE     y   CREATE SEQUENCE public.productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.productos_id_seq;
       public          postgres    false    230            ?           0    0    productos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;
          public          postgres    false    231            �            1259    16649    productos_idproductos_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_idproductos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.productos_idproductos_seq;
       public          postgres    false    230            @           0    0    productos_idproductos_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.productos_idproductos_seq OWNED BY public.productos.idproductos;
          public          postgres    false    232            �            1259    16650    promociones    TABLE       CREATE TABLE public.promociones (
    id bigint NOT NULL,
    descripcion character varying(255),
    descuento integer,
    fecha_fin character varying(255),
    fecha_inicio character varying(255),
    idproductos bigint,
    idpromociones bigint NOT NULL
);
    DROP TABLE public.promociones;
       public         heap    postgres    false            �            1259    16655    promociones_id_seq    SEQUENCE     {   CREATE SEQUENCE public.promociones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.promociones_id_seq;
       public          postgres    false    233            A           0    0    promociones_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.promociones_id_seq OWNED BY public.promociones.id;
          public          postgres    false    234            �            1259    16656    promociones_idpromociones_seq    SEQUENCE     �   CREATE SEQUENCE public.promociones_idpromociones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.promociones_idpromociones_seq;
       public          postgres    false    233            B           0    0    promociones_idpromociones_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.promociones_idpromociones_seq OWNED BY public.promociones.idpromociones;
          public          postgres    false    235            �            1259    16899    usuarios    TABLE     $  CREATE TABLE public.usuarios (
    id bigint NOT NULL,
    apellidos character varying(255),
    direccion character varying(255),
    email character varying(255),
    nombre character varying(255),
    password character varying(255),
    saldo real,
    telefono character varying(255)
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16898    usuarios_id_seq    SEQUENCE     x   CREATE SEQUENCE public.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    241            C           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    240            Q           2604    16657    carrito idcarrito    DEFAULT     v   ALTER TABLE ONLY public.carrito ALTER COLUMN idcarrito SET DEFAULT nextval('public.carrito_idcarrito_seq'::regclass);
 @   ALTER TABLE public.carrito ALTER COLUMN idcarrito DROP DEFAULT;
       public          postgres    false    216    215            R           2604    16658    categorias idcategoria    DEFAULT     �   ALTER TABLE ONLY public.categorias ALTER COLUMN idcategoria SET DEFAULT nextval('public.categorias_idcategoria_seq'::regclass);
 E   ALTER TABLE public.categorias ALTER COLUMN idcategoria DROP DEFAULT;
       public          postgres    false    218    217            S           2604    16659 
   detalle id    DEFAULT     h   ALTER TABLE ONLY public.detalle ALTER COLUMN id SET DEFAULT nextval('public.detalle_id_seq'::regclass);
 9   ALTER TABLE public.detalle ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    219            T           2604    16660    detalle id_detalle_pedido    DEFAULT     �   ALTER TABLE ONLY public.detalle ALTER COLUMN id_detalle_pedido SET DEFAULT nextval('public.detalle_id_detalle_pedido_seq'::regclass);
 H   ALTER TABLE public.detalle ALTER COLUMN id_detalle_pedido DROP DEFAULT;
       public          postgres    false    220    219            U           2604    16661 "   detalle_producto id_detalle_pedido    DEFAULT     �   ALTER TABLE ONLY public.detalle_producto ALTER COLUMN id_detalle_pedido SET DEFAULT nextval('public.detalle_producto_id_detalle_pedido_seq'::regclass);
 Q   ALTER TABLE public.detalle_producto ALTER COLUMN id_detalle_pedido DROP DEFAULT;
       public          postgres    false    223    222            V           2604    16662    inventario id    DEFAULT     n   ALTER TABLE ONLY public.inventario ALTER COLUMN id SET DEFAULT nextval('public.inventario_id_seq'::regclass);
 <   ALTER TABLE public.inventario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            W           2604    16663    inventario idinventario    DEFAULT     �   ALTER TABLE ONLY public.inventario ALTER COLUMN idinventario SET DEFAULT nextval('public.inventario_idinventario_seq'::regclass);
 F   ALTER TABLE public.inventario ALTER COLUMN idinventario DROP DEFAULT;
       public          postgres    false    226    224            ^           2604    16884    metodopago idmetodo    DEFAULT     z   ALTER TABLE ONLY public.metodopago ALTER COLUMN idmetodo SET DEFAULT nextval('public.metodopago_idmetodo_seq'::regclass);
 B   ALTER TABLE public.metodopago ALTER COLUMN idmetodo DROP DEFAULT;
       public          postgres    false    237    236    237            _           2604    16893    pago id_pago    DEFAULT     l   ALTER TABLE ONLY public.pago ALTER COLUMN id_pago SET DEFAULT nextval('public.pago_id_pago_seq'::regclass);
 ;   ALTER TABLE public.pago ALTER COLUMN id_pago DROP DEFAULT;
       public          postgres    false    239    238    239            X           2604    16664 
   pedidos id    DEFAULT     h   ALTER TABLE ONLY public.pedidos ALTER COLUMN id SET DEFAULT nextval('public.pedidos_id_seq'::regclass);
 9   ALTER TABLE public.pedidos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            Y           2604    16665    pedidos idpedidos    DEFAULT     v   ALTER TABLE ONLY public.pedidos ALTER COLUMN idpedidos SET DEFAULT nextval('public.pedidos_idpedidos_seq'::regclass);
 @   ALTER TABLE public.pedidos ALTER COLUMN idpedidos DROP DEFAULT;
       public          postgres    false    229    227            Z           2604    16666    productos id    DEFAULT     l   ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            [           2604    16667    productos idproductos    DEFAULT     ~   ALTER TABLE ONLY public.productos ALTER COLUMN idproductos SET DEFAULT nextval('public.productos_idproductos_seq'::regclass);
 D   ALTER TABLE public.productos ALTER COLUMN idproductos DROP DEFAULT;
       public          postgres    false    232    230            \           2604    16668    promociones id    DEFAULT     p   ALTER TABLE ONLY public.promociones ALTER COLUMN id SET DEFAULT nextval('public.promociones_id_seq'::regclass);
 =   ALTER TABLE public.promociones ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            ]           2604    16669    promociones idpromociones    DEFAULT     �   ALTER TABLE ONLY public.promociones ALTER COLUMN idpromociones SET DEFAULT nextval('public.promociones_idpromociones_seq'::regclass);
 H   ALTER TABLE public.promociones ALTER COLUMN idpromociones DROP DEFAULT;
       public          postgres    false    235    233            `           2604    16902    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241                      0    16610    carrito 
   TABLE DATA           9   COPY public.carrito (idcarrito, idproductos) FROM stdin;
    public          postgres    false    215   ��                 0    16614 
   categorias 
   TABLE DATA           F   COPY public.categorias (idcategoria, descripcion, nombre) FROM stdin;
    public          postgres    false    217   ��                 0    16620    detalle 
   TABLE DATA           u   COPY public.detalle (id, cantidad, precio_unitario, idpedido, idproductos, idpedidos, id_detalle_pedido) FROM stdin;
    public          postgres    false    219   Q�                 0    16625    detalle_producto 
   TABLE DATA           w   COPY public.detalle_producto (id_detalle_pedido, cantidad, precio_unitario, idproductos, idpedidos, total) FROM stdin;
    public          postgres    false    222   ��                 0    16629 
   inventario 
   TABLE DATA           {   COPY public.inventario (id, cantidad_disponible, descripcion, ultima_actualizacion, idproductos, idinventario) FROM stdin;
    public          postgres    false    224   �       )          0    16881 
   metodopago 
   TABLE DATA           C   COPY public.metodopago (idmetodo, descripcion, metodo) FROM stdin;
    public          postgres    false    237   7�       +          0    16890    pago 
   TABLE DATA           G   COPY public.pago (id_pago, fecha, monto, pedido, idmetodo) FROM stdin;
    public          postgres    false    239   $�                 0    16636    pedidos 
   TABLE DATA           b   COPY public.pedidos (id, estado, fecha_pedido, total, idpedidos, id_detalle_producto) FROM stdin;
    public          postgres    false    227   ��       "          0    16643 	   productos 
   TABLE DATA           u   COPY public.productos (id, descripcion, imagen, nombre, precio, idcategoria, idpromociones, idproductos) FROM stdin;
    public          postgres    false    230   މ       %          0    16650    promociones 
   TABLE DATA           v   COPY public.promociones (id, descripcion, descuento, fecha_fin, fecha_inicio, idproductos, idpromociones) FROM stdin;
    public          postgres    false    233   X�       -          0    16899    usuarios 
   TABLE DATA           f   COPY public.usuarios (id, apellidos, direccion, email, nombre, password, saldo, telefono) FROM stdin;
    public          postgres    false    241   @�       D           0    0    carrito_idcarrito_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.carrito_idcarrito_seq', 1, false);
          public          postgres    false    216            E           0    0    categorias_idcategoria_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categorias_idcategoria_seq', 9, true);
          public          postgres    false    218            F           0    0    detalle_id_detalle_pedido_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.detalle_id_detalle_pedido_seq', 38, true);
          public          postgres    false    220            G           0    0    detalle_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.detalle_id_seq', 41, true);
          public          postgres    false    221            H           0    0 &   detalle_producto_id_detalle_pedido_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.detalle_producto_id_detalle_pedido_seq', 29, true);
          public          postgres    false    223            I           0    0    inventario_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.inventario_id_seq', 16, true);
          public          postgres    false    225            J           0    0    inventario_idinventario_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.inventario_idinventario_seq', 1, true);
          public          postgres    false    226            K           0    0    metodopago_idmetodo_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.metodopago_idmetodo_seq', 1, false);
          public          postgres    false    236            L           0    0    pago_id_pago_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pago_id_pago_seq', 1, false);
          public          postgres    false    238            M           0    0    pedidos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pedidos_id_seq', 25, true);
          public          postgres    false    228            N           0    0    pedidos_idpedidos_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pedidos_idpedidos_seq', 25, true);
          public          postgres    false    229            O           0    0    productos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.productos_id_seq', 43, true);
          public          postgres    false    231            P           0    0    productos_idproductos_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.productos_idproductos_seq', 43, true);
          public          postgres    false    232            Q           0    0    promociones_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.promociones_id_seq', 20, true);
          public          postgres    false    234            R           0    0    promociones_idpromociones_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.promociones_idpromociones_seq', 20, true);
          public          postgres    false    235            S           0    0    usuarios_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuarios_id_seq', 3, true);
          public          postgres    false    240            b           2606    16671    carrito carrito_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.carrito
    ADD CONSTRAINT carrito_pkey PRIMARY KEY (idcarrito);
 >   ALTER TABLE ONLY public.carrito DROP CONSTRAINT carrito_pkey;
       public            postgres    false    215            d           2606    16673    categorias categorias_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (idcategoria);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public            postgres    false    217            f           2606    16675    detalle detalle_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.detalle
    ADD CONSTRAINT detalle_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.detalle DROP CONSTRAINT detalle_pkey;
       public            postgres    false    219            h           2606    16677 &   detalle_producto detalle_producto_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.detalle_producto
    ADD CONSTRAINT detalle_producto_pkey PRIMARY KEY (id_detalle_pedido);
 P   ALTER TABLE ONLY public.detalle_producto DROP CONSTRAINT detalle_producto_pkey;
       public            postgres    false    222            j           2606    16679    inventario inventario_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_pkey;
       public            postgres    false    224            r           2606    16888    metodopago metodopago_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.metodopago
    ADD CONSTRAINT metodopago_pkey PRIMARY KEY (idmetodo);
 D   ALTER TABLE ONLY public.metodopago DROP CONSTRAINT metodopago_pkey;
       public            postgres    false    237            t           2606    16897    pago pago_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_pkey PRIMARY KEY (id_pago);
 8   ALTER TABLE ONLY public.pago DROP CONSTRAINT pago_pkey;
       public            postgres    false    239            l           2606    16681    pedidos pedidos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_pkey;
       public            postgres    false    227            n           2606    16683    productos productos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    230            p           2606    16685    promociones promociones_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.promociones
    ADD CONSTRAINT promociones_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.promociones DROP CONSTRAINT promociones_pkey;
       public            postgres    false    233            v           2606    16906    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    241            {           2606    16686 ,   detalle_producto fk2jlsqqt42epritycbe4xwchgt    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_producto
    ADD CONSTRAINT fk2jlsqqt42epritycbe4xwchgt FOREIGN KEY (idpedidos) REFERENCES public.pedidos(id);
 V   ALTER TABLE ONLY public.detalle_producto DROP CONSTRAINT fk2jlsqqt42epritycbe4xwchgt;
       public          postgres    false    4716    222    227            �           2606    16691 '   promociones fk526w471e2yrqwimijey4tqghs    FK CONSTRAINT     �   ALTER TABLE ONLY public.promociones
    ADD CONSTRAINT fk526w471e2yrqwimijey4tqghs FOREIGN KEY (idproductos) REFERENCES public.productos(id);
 Q   ALTER TABLE ONLY public.promociones DROP CONSTRAINT fk526w471e2yrqwimijey4tqghs;
       public          postgres    false    233    4718    230            }           2606    16696 &   inventario fk6kev31uhpxncmiwdq4ybtcudi    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk6kev31uhpxncmiwdq4ybtcudi FOREIGN KEY (idproductos) REFERENCES public.productos(id);
 P   ALTER TABLE ONLY public.inventario DROP CONSTRAINT fk6kev31uhpxncmiwdq4ybtcudi;
       public          postgres    false    4718    230    224            �           2606    16701 %   productos fk9l0ne47hxyjttveacwaia5a0v    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk9l0ne47hxyjttveacwaia5a0v FOREIGN KEY (idcategoria) REFERENCES public.categorias(idcategoria);
 O   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk9l0ne47hxyjttveacwaia5a0v;
       public          postgres    false    217    230    4708                       2606    16706 "   pedidos fk9v1fwtpo8j4b6phviiuln6ww    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk9v1fwtpo8j4b6phviiuln6ww FOREIGN KEY (id_detalle_producto) REFERENCES public.detalle(id);
 L   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk9v1fwtpo8j4b6phviiuln6ww;
       public          postgres    false    219    4710    227            �           2606    16907     pago fkc0en0f11k20qh96h52uim3ji9    FK CONSTRAINT     �   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT fkc0en0f11k20qh96h52uim3ji9 FOREIGN KEY (idmetodo) REFERENCES public.metodopago(idmetodo);
 J   ALTER TABLE ONLY public.pago DROP CONSTRAINT fkc0en0f11k20qh96h52uim3ji9;
       public          postgres    false    239    4722    237            x           2606    16711 #   detalle fkdalfny9c57b21jn4uds4ioey4    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle
    ADD CONSTRAINT fkdalfny9c57b21jn4uds4ioey4 FOREIGN KEY (idpedidos) REFERENCES public.pedidos(id);
 M   ALTER TABLE ONLY public.detalle DROP CONSTRAINT fkdalfny9c57b21jn4uds4ioey4;
       public          postgres    false    227    219    4716            y           2606    16716 #   detalle fkdrd9jk81mxosxq4bd94lcwaqk    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle
    ADD CONSTRAINT fkdrd9jk81mxosxq4bd94lcwaqk FOREIGN KEY (idpedido) REFERENCES public.pedidos(id);
 M   ALTER TABLE ONLY public.detalle DROP CONSTRAINT fkdrd9jk81mxosxq4bd94lcwaqk;
       public          postgres    false    227    4716    219            w           2606    16721 #   carrito fkfyuqv8ebom93isvta7ppa57x2    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrito
    ADD CONSTRAINT fkfyuqv8ebom93isvta7ppa57x2 FOREIGN KEY (idproductos) REFERENCES public.productos(id);
 M   ALTER TABLE ONLY public.carrito DROP CONSTRAINT fkfyuqv8ebom93isvta7ppa57x2;
       public          postgres    false    215    4718    230            ~           2606    16726 &   inventario fkmp2fu3i0bi8tgme1rsyuw17mp    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fkmp2fu3i0bi8tgme1rsyuw17mp FOREIGN KEY (idproductos) REFERENCES public.categorias(idcategoria);
 P   ALTER TABLE ONLY public.inventario DROP CONSTRAINT fkmp2fu3i0bi8tgme1rsyuw17mp;
       public          postgres    false    217    224    4708            |           2606    16731 ,   detalle_producto fkmwd0p02t3qlvem9etx8l13qm0    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_producto
    ADD CONSTRAINT fkmwd0p02t3qlvem9etx8l13qm0 FOREIGN KEY (idproductos) REFERENCES public.productos(id);
 V   ALTER TABLE ONLY public.detalle_producto DROP CONSTRAINT fkmwd0p02t3qlvem9etx8l13qm0;
       public          postgres    false    222    230    4718            z           2606    16736 #   detalle fko2icsqfrfrb960tscolycfjd9    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle
    ADD CONSTRAINT fko2icsqfrfrb960tscolycfjd9 FOREIGN KEY (idproductos) REFERENCES public.productos(id);
 M   ALTER TABLE ONLY public.detalle DROP CONSTRAINT fko2icsqfrfrb960tscolycfjd9;
       public          postgres    false    219    4718    230            �           2606    16741 %   productos fkr7jr1gw5ooeuadjm8npst2d2x    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fkr7jr1gw5ooeuadjm8npst2d2x FOREIGN KEY (idpromociones) REFERENCES public.promociones(id);
 O   ALTER TABLE ONLY public.productos DROP CONSTRAINT fkr7jr1gw5ooeuadjm8npst2d2x;
       public          postgres    false    233    4720    230                  x������ � �         �   x����1F��� �(�Z�����#,q��"1Ս����H.��~���ٔ?��ʐ�s�(%��~�_N|D�y�
�YFN��]�z�UlY���G=l�O��X�m��v��������^�"�F5��cC�c�$�� ����         W   x�]���0C�x�*Đ�� ���@�rAz�F���O��
�(�۩��?�`���@MG�g/h�2p��������r&�ܳ��X���         :   x�32�4�4�4�44��".#s����%�L�$`i�i��11�4�
��qqq �\�         %   x�34�44���46�50�5202�4�4����� K��      )   �   x�m�MR�0���)|�B��B��L�K6�-Z3�e�L��5G��08ę�J�'�I���=k�^G�W��-i#Co]d�+�\��b��9�x���N�w/$�Cݠ7()�N�D<k?�mX�C�����wߚ5�jlU�*�q!�=Y�T5��fKJZ����*��/�ۢ�a޷?�TI�<�0����Z�Bb�/u�aq9��@o朗Mn���I�e��1x� �/�@��      +   q   x�E�A!D�u�]ڀ��]���e�f��*E�n��G����7�Op���w9I���z.�����s�O���(hOW�ɑ����7�[��M�o:9��	��H� �(�         )   x�3�L-*�/�4202�50�54�442�4������� �3�      "      x��[�r�H�]_����C �7I��"%��(�)Ɏ�p@@�� i<�
/j10�5��ꈉ�Ͳ�'�?2�& @R.�;&������<y����2�Y򆌒 %4]�^���m�-�7��Q;�~���}bq�c�~����;�b2�����O��'��ԭO���<3Z���%K�d�?gA���a�8�W<��G�=r=�Q e$br�|J4���ô?Q������7Z��{R����/����!G�C��`�m��Å�)y��t�<M���2�3�3K�Y�խ�f.��]2:~�/f���$M�ә�ɖD��_ק��_� F
��iB�[��� �I�i�䀅�]����y�;��l�x|Nf��Q����Ք�.��ˌ-�<�7$���6+��i��;a�)�<��,U�2aMqe҄�{��%�����/����-�+��/�d2 {$s����%<��w��lK�)��!]��J��c᳓UtG�i��4:t�AvZ �sD�,��>(�s�oXBə���!����I��������ywsx���}�9����k�'c�\G�"�=�ݳ
��#�t��`}�BR1�x����0X����ا��0��9����_ܘČ���&D��<�X$��͂���=�5�/ߏ.��p?L�B#�1e�g�%#����: �C�N]k[Ղ|��oMU�4�|Q������,lp��e�]�Bx&,o��r��P6��3��}J4���*�i��ܕ���R�.�m�,~C8+�NK3,k�#_��ś�i�e���t@�Z/ Y�ԃ0���Ԡ������B�=��  yv1��dD�X�\Y�JF���n �($��]�#if�ܓf0`�r��*��n٣uP�{o�o�t@i�_ �� �80~>�b����?��!�͠_(��
o�M���`j&!���T�P�i�^-��t�:�	� �����?w�����"���̂_F�½2I먒�0ٲV��fðpM�%�&R�78��W�wB���c>���?��`ٚ���$�?��A���2�V�X5��iEخ�LȺ��%��{����K}����"U ���Tak�������6�r����D䌃��E@���YB�D^(f_F�����D.8�"b�V�e��i����; �E��3�	������P��"%n]�X�_�v[A���-����Q��ο�o��h���?���a�9�
0���W���f�RP�lw�1��?��u3�m�:��߫00E�]Lx ��Y�lZS"�o���@�2��5hF�dh�֓5u�m8��2*[�w��[��x����q��
�)+~W/Sj���Z�"h0dxHah9^Bi�P��ɩ�^yd���	0\+��%uL`��j� �c���@�$��	}\�>&TrI�=7�핞X�5MZ���S#=VKӍ3cW�g��K4��dZ�>&F AN�Z�~O#��f��F�b�CN�ȌpU=5�Q��Z���P3��X]Q�����2X�o�������*QʗI��J�4M��-��X{��)�;☝�{'�ݦ#��_��6�\�I>��F��� ��{�\B5|�/�'�Z���.kF����	�Pp�ή��Z�!di���vvs��i��!����B(��y��x]慆��[Y��6V,�I�$�OJe��q*�?V���L��QV<��3�A̶Z x��J(�;�w��ռux�3�:R���5��ҬE��c/wN�K��_@Q/��Ԝ{�v�AY���l�a�꼩�8�󶒴.��w�a�p0e�yizWĖ)�6�k6>�1�:�Q�>]��qF�fv��G�)�_
��Bʬf.�A1�]�f��e�Xu/,�]B4��B�,!y�UH��L�
k�CD�du�v	�%k��J�4q��f�,Mݍ`���?��Ǖ������?�����Rx@n��͹�&j��a+l��̐ʆC o�* �?��X!�m����:%di���~�Sh`�;���7<~]�:�֭�.��FlS4PvT�3���ѭ-	�Y��o���k���}��\TȪ˳��S0� �i�Xv�֕hD#� �>y�
�v=#������ue�V\ז
ٵ�c�j��Z�u��l�5��d�+�P���Y�s����4��\�J���P9#2�y7ȶ
z�ִ�avK��f`P�k�@F>�������<:-�-�O��:�La�*İŎ^+v�u�D��V�(�9������o܌7�� ݿ�����J���"+�^*�������z���DW� ݱO��4����Ӈ��p6���>j�pP��̨2�G3�(M]��S�W��bW�w�,�V�Il3��`���z
@?�wZoNq��M
�S�%^}0+5� K�u�w�v��'N�j��QI��=���B�����U�_,oY��%!σ��𑜱 ���GC,
�ik�ɓ��O��p��}���P��X�JǄ|�@�eqʰ�Z��H ���	D/mr�uY7~@����=|�t?��8ݤV�ԙ]|.��_�N��)� cC�Gw��Ird_ʮ!���1�#X��_o�~�����+����n�#�Rr��A������2�ą5 }�s� �[�\2˥0d��,�����	����ʰ��\����W%����u�k�*o���'n�$L��bꦬ��Ԩ$Ɂ�|�q@��� <���&iO��p����������J�@�-)�I�&3�Y�	5E�D8����0+�.� DȂE^����n]? ��6�,�.W3Ţ���j�8̳+�m=��hY�����^��[�==�qf8۶�����f7�^~�P�a�Q�(\�`0�ޚjW��(t ���_�Y���)fi�zg�,Fn���D���mW���?��M2������c��\.|D�'�|իс_�XXͦNe�&��jQ��k��A���>oe❳��C�$a��q��H@�]"Ցu0�,�r�F��1�/�� <�vl�\O�����8�`��{���&�A�r�}Q ��-���9�6w>H�E?��R�RS� hF�) �/7>�2��A�Q��˕�\��W�D	�HS�lK�QW��u1���J�ʽ����H�ܛ�%#
���u ���ܳ�?4��|<=qNy`ew���=����? B�m�!�?m0����>ju,&W �" 3TA��'̧!���O�����j�����cc��nǪ�'vU5r76��L�hz�j�F3YY��kG]V�@�U������{8x���LU-\���FmR�x��0��]m�������|0-Ud�/�@�[2�i���{��H�0'g�V���Ѷ9t#�Up�Ą2�(�x} ������5�?X��W�l��}�t��&��`�F�F��ki���Vu������L8X��.n����N���S�k���j�������x�ex�mi�cn=1_檹��9x���9�����]e	��]L��aU�o��zS�����F{U�� h���~ܘ��Up1��]�oد%�[-�.�8���j2>��VP䈅��Ҽ2yw��0�f��S|���B�@�u���~�y�N�,L�R�??O�+�N`�_W�|����	��$� h7��{%3��O����]Ei��Rf��R�$�r��$#�P��El���\��� 1dìģ��B(΋�*�����כ�v˪�P���]�}��0��U7���oTC,�)�Ì�v��h��7�ah9�
kX}#Yz��)��YfY�h(,~T��n��`�!S�mq�5��i�*���T�޴j�b;d��
���餌�I[�<���2M�ߟ\m�/�[�D�{����N�������${"�	K \|���o���|+ր�t��p�T��O�s\?��׿	�՚��4_G?k���/l�� ��BX���^�x��N�ל;�%xZ���7��3Mn�׊)-Df�\���\	F�Ɓ8��/��k���9E%Nr��iJ]<�+���i/`��, e  E����k�]��<�����Z�����ih3c�)�nUQ?9Ǻ�[�� 9���@mn���:[�XU��V��EgC���q���k��ll�Xm��h_��ڛ��#�����C����p��Y	�oho�C|�c��U���Z*SG6������?�����7�p�A�Y��{�פ�L�-��A��n�e�G��ǖ��	��-�&�x7�f�ˎ�͇��?_���
��@����춝�ӕ"��������ʜ������F�b*ň�4B�Lԟ7�������'��.w�Ӎ���0H)n1�d���_�2ݵ������n�3�~����d����pY+�6?>J��ܘ�R;v۫���Z
�__�Ó�����]���$�ГMUj�B�y?
[G˾��ǋq�Y1���<�=K�/g��q�LGR�F�u��áVʲħؼJ�#����m��.q�(��)jBnL���;*Np�yY!�
|LU65	_>���,����y&�1&%�?7�`?(�=͟x����Uq�c��dp�{�0�h���EQ��-���y0��A�Q'FZc��^�I����h�*~��K�� ���3
e�!��dS�N�}��WK3n0j����啥�i�GO���.Ҕ�ch2b���сxT���P��%�ig�e
"aeWm���N`�ϰ���b�.����)[�j9
�=�;�f��M
�1'��,�[Vl]��6�LF[ؓ^b���6�(���
���˽���
LP��6���ו{����3&�&WZ)�;�%ԯ��U{���D#\6O�|�<!�:��5�v3n�>�}���D�J�#J��5�-h�Vt#�[U˒�c�j˲��b�<�      %   �   x���1n1k�+�KIw�Wp�ƅ��A� �[�0��X�F"9+��z��>��.�ߟ����âǁ~�n��r�0Ryh�X��G٬�����P�jC � �=��z�b�!�6�����r#��}�.fKS����g�T�k&�@��Y��*�%� T�+$�_@��������_!-_��
@�и!T ʐ�wt���JM��      -   x   x���K
�0еt���r>Nv9H7�1�Z�;�E��V��y�$���T��Vw_��Osb�Ư	�뒁l��%
�G�8�����F��!x����+�
�:=%8�D�� �A     