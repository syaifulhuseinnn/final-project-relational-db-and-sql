PGDMP     	    1        
        {            RELATIONAL_DB_SQL_PROJECT    15.2    15.2 ,    1           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            2           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            3           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            4           1262    16844    RELATIONAL_DB_SQL_PROJECT    DATABASE     }   CREATE DATABASE "RELATIONAL_DB_SQL_PROJECT" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
 +   DROP DATABASE "RELATIONAL_DB_SQL_PROJECT";
                postgres    false            �            1259    16879    advertisement    TABLE     �   CREATE TABLE public.advertisement (
    ad_id integer NOT NULL,
    car_id integer NOT NULL,
    user_id integer NOT NULL,
    title character varying(255) NOT NULL,
    date_post date
);
 !   DROP TABLE public.advertisement;
       public         heap    postgres    false            �            1259    16878    advertisement_ad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.advertisement_ad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.advertisement_ad_id_seq;
       public          postgres    false    221            5           0    0    advertisement_ad_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.advertisement_ad_id_seq OWNED BY public.advertisement.ad_id;
          public          postgres    false    220            �            1259    16896    bid    TABLE     �   CREATE TABLE public.bid (
    bid_id integer NOT NULL,
    car_id integer NOT NULL,
    user_id integer NOT NULL,
    date_bid date NOT NULL,
    bid_price integer NOT NULL,
    bid_status character varying(25) NOT NULL
);
    DROP TABLE public.bid;
       public         heap    postgres    false            �            1259    16895    bid_bid_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bid_bid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.bid_bid_id_seq;
       public          postgres    false    223            6           0    0    bid_bid_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.bid_bid_id_seq OWNED BY public.bid.bid_id;
          public          postgres    false    222            �            1259    16860    car    TABLE     !  CREATE TABLE public.car (
    car_id integer NOT NULL,
    brand character varying(100) NOT NULL,
    model character varying(255) NOT NULL,
    body_type character varying(25) NOT NULL,
    car_type character varying(25) NOT NULL,
    year integer NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.car;
       public         heap    postgres    false            �            1259    16859    car_car_id_seq    SEQUENCE     �   CREATE SEQUENCE public.car_car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.car_car_id_seq;
       public          postgres    false    217            7           0    0    car_car_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.car_car_id_seq OWNED BY public.car.car_id;
          public          postgres    false    216            �            1259    16853    location    TABLE     �   CREATE TABLE public.location (
    location_id integer NOT NULL,
    city_name character varying(50) NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL
);
    DROP TABLE public.location;
       public         heap    postgres    false            �            1259    16852    location_location_id_seq    SEQUENCE     �   CREATE SEQUENCE public.location_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.location_location_id_seq;
       public          postgres    false    215            8           0    0    location_location_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.location_location_id_seq OWNED BY public.location.location_id;
          public          postgres    false    214            �            1259    16867    user_account    TABLE     �   CREATE TABLE public.user_account (
    user_id integer NOT NULL,
    name character varying(255) NOT NULL,
    contact character varying(15) NOT NULL,
    location_id integer NOT NULL
);
     DROP TABLE public.user_account;
       public         heap    postgres    false            �            1259    16866    user_account_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_account_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.user_account_user_id_seq;
       public          postgres    false    219            9           0    0    user_account_user_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.user_account_user_id_seq OWNED BY public.user_account.user_id;
          public          postgres    false    218            �           2604    16882    advertisement ad_id    DEFAULT     z   ALTER TABLE ONLY public.advertisement ALTER COLUMN ad_id SET DEFAULT nextval('public.advertisement_ad_id_seq'::regclass);
 B   ALTER TABLE public.advertisement ALTER COLUMN ad_id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16899 
   bid bid_id    DEFAULT     h   ALTER TABLE ONLY public.bid ALTER COLUMN bid_id SET DEFAULT nextval('public.bid_bid_id_seq'::regclass);
 9   ALTER TABLE public.bid ALTER COLUMN bid_id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16863 
   car car_id    DEFAULT     h   ALTER TABLE ONLY public.car ALTER COLUMN car_id SET DEFAULT nextval('public.car_car_id_seq'::regclass);
 9   ALTER TABLE public.car ALTER COLUMN car_id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16856    location location_id    DEFAULT     |   ALTER TABLE ONLY public.location ALTER COLUMN location_id SET DEFAULT nextval('public.location_location_id_seq'::regclass);
 C   ALTER TABLE public.location ALTER COLUMN location_id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16870    user_account user_id    DEFAULT     |   ALTER TABLE ONLY public.user_account ALTER COLUMN user_id SET DEFAULT nextval('public.user_account_user_id_seq'::regclass);
 C   ALTER TABLE public.user_account ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    218    219    219            ,          0    16879    advertisement 
   TABLE DATA           Q   COPY public.advertisement (ad_id, car_id, user_id, title, date_post) FROM stdin;
    public          postgres    false    221   �2       .          0    16896    bid 
   TABLE DATA           W   COPY public.bid (bid_id, car_id, user_id, date_bid, bid_price, bid_status) FROM stdin;
    public          postgres    false    223   8       (          0    16860    car 
   TABLE DATA           U   COPY public.car (car_id, brand, model, body_type, car_type, year, price) FROM stdin;
    public          postgres    false    217   @       &          0    16853    location 
   TABLE DATA           O   COPY public.location (location_id, city_name, latitude, longitude) FROM stdin;
    public          postgres    false    215   EB       *          0    16867    user_account 
   TABLE DATA           K   COPY public.user_account (user_id, name, contact, location_id) FROM stdin;
    public          postgres    false    219   �C       :           0    0    advertisement_ad_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.advertisement_ad_id_seq', 1, false);
          public          postgres    false    220            ;           0    0    bid_bid_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.bid_bid_id_seq', 54, true);
          public          postgres    false    222            <           0    0    car_car_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.car_car_id_seq', 1, false);
          public          postgres    false    216            =           0    0    location_location_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.location_location_id_seq', 1, false);
          public          postgres    false    214            >           0    0    user_account_user_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.user_account_user_id_seq', 1, false);
          public          postgres    false    218            �           2606    16884     advertisement advertisement_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_pkey PRIMARY KEY (ad_id);
 J   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT advertisement_pkey;
       public            postgres    false    221            �           2606    16901    bid bid_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_pkey PRIMARY KEY (bid_id);
 6   ALTER TABLE ONLY public.bid DROP CONSTRAINT bid_pkey;
       public            postgres    false    223            �           2606    16865    car car_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (car_id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    217            �           2606    16858    location location_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (location_id);
 @   ALTER TABLE ONLY public.location DROP CONSTRAINT location_pkey;
       public            postgres    false    215            �           2606    16872    user_account user_account_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (user_id);
 H   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_account_pkey;
       public            postgres    false    219            �           2606    16885 '   advertisement advertisement_car_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.car(car_id);
 Q   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT advertisement_car_id_fkey;
       public          postgres    false    217    221    3467            �           2606    16890 (   advertisement advertisement_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);
 R   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT advertisement_user_id_fkey;
       public          postgres    false    219    221    3469            �           2606    16902    bid bid_car_id_fkey    FK CONSTRAINT     s   ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.car(car_id);
 =   ALTER TABLE ONLY public.bid DROP CONSTRAINT bid_car_id_fkey;
       public          postgres    false    217    223    3467            �           2606    16907    bid bid_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);
 >   ALTER TABLE ONLY public.bid DROP CONSTRAINT bid_user_id_fkey;
       public          postgres    false    223    3469    219            �           2606    16873 *   user_account user_account_location_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_location_id_fkey FOREIGN KEY (location_id) REFERENCES public.location(location_id);
 T   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_account_location_id_fkey;
       public          postgres    false    219    3465    215            ,     x��Y�j$G<W~��@�z?�»�|�c�/��춭�i� }�#�5]�n�tW-�EJ�2##"s��J'��\��Ç������������������r>}�������x�RE��֝�v����_c�zy��;�?����,�����<�p�t�w:�&��H����>���FD_���%'�>��S��|#���vR��,R}5�Y8~J(M4� OO�3���O���_��:)
#������K~�~�tn�SK��$�sX�{��lkF��$�Թ��rR�ˡZ������Og� ���NYB�b��Kw�_e�Fg��/�a�/޵��HH��R�%@�s	S]dfם�������f�ʈ�"��.l�x#�4�U��I�8��˾�U���Tm�X�I+a,�����ؐ�B'�R5Pli1h�0܌o�DAI,�fIj�^��@ l1�2I�+�<�V�1xQ�\W]O�v����QB}]��XFB` �R�v`DA�Ѡ7X�㧇�����'�4`���Z�m4���j~���b�1�'ȷ��8Ш�e�*�[IP�0dD�M5NťX�,�S�{�ω��pY��N{5��� ܁�5z�@�BO0kI��K��aF֚�M0E�4��#������ֱ��6Mݍ���]��P�%����=Q�:f�X/��$l���30��[�����9�q8/��Z|9l�͌�ە��� +0��<C�H���u��ǀ�"d�T��+�-?�)N%U78L�8-m�P+��c��usvZ��i<�@�ؘJ�	Fy����-=��`nf�Vm�#� ؛T��Dĩj�K&�\b��2�;��8��0� &���ΥtT.Ck����N�I:�㼇�T[���C��T%�r���L؎ڦ�3�G������ ��u-=���P�`�ܪ��O����!��V����M���רŨŘ]hq��Z|����AHW0ٍz�6IA��`7.�,�~&�ׯڲ�j�6&`Ո3le��-Z��v�(cVy��s��(sI�xS����-EZ�קf�7�����߰�h� h>P5�1Q��P��uќ@��Y��~"`�)��Fi�����v�����$���?A+�Q��s��ϴo	�����A�Ĝ��םr��Z��F��W��|�Q�$�ZÎb���S$����U@-0/&��6U}�}��(�/vզ��\�H�l*��r����D��xH��SO�w�녮ߕR�,41���h�cχ}˺5;��Q-����)jQ����$%�#�zc�}��������y��      .     x�eX��$9�s��/ķ�箻�Z��q�R���"z�)�D� ?��Ã�gL�=�"aI������#�\�3��I�d�|�xLv���Q���o�=���!?�� �P~#�Qz��4�~x<�y:Z� 6|G�/a�4�Ȋ�~�R�����@��v�Ê��\�� zV����xD���r�s�`3�[r�{q���=2�eNݐ�g�ɺ�=|'�|8�9n.u�A*�����l4�6�?6�,�7{G��R�����d6��;���	�U�D��A� ��-� 7w�����\��)�6d�y����IA���܀l���H��+�K�����"�t٧���[P�",��_o�W}Tېx��ʻ-8
��}�\YtX�m6�~�ֹ� U���H�D��
Z�����S�����?<����B@R�/��~��g�m��o�%`�3�T�.2S���j:l�Nx����Z����I�hI����,Lp4�S��xp��	
� �}7X)��r ��Km�*�M����2��-��%�R�ZHqc9�_�)ƒ��|w�<���׌*yB��%E��z�{�۠*9��(�ҝjLs�ܨ����L�%G{E���Ӻ�htQA4�T�K�T=��TJ��d:��'k^>�����Y�1��%$sP��\��_T �������1Tw�� �Ւ3[-�V-�<|��B�e��X��)OQ2��[�1�hG���D e��z"�+�5�06��}�^Rܠ$�j*-��j��RP�)��Q�#v^��S����N�f����T@b�ިa.�JyՏ�� "�=6���TR9M��s��z��RZɦDc�f�y'�q>fږ� Z���
�o�}�-���)((3�vHU�yz��C�P��/�w#���<�E�������nχ~�i�",�p��ژ~d�1��l6E���8�9@�;�<����~��l�(q�(f
N�_������"���qy[�i4�/�걏�蒃tj��^q,�ƳzhG��%�̆�"HB��(����U$�<�C��lWHi��>NH�_��8�7�  _�PW!٩�����J�sW6Ɗw�3r��u�a�P|~�3����+[����7�����6�0��d�L�	lQ����C�[�22Q<ly�a�_
��c3e.�z�vG)R&�-�3�EHW��?�K��[���Ⱦ������(�Ɲ�����r� С�#��11.{l��v�A!e�3m���%����6,ZI�}�,|qü��#��$hu�[,Zc���F���[c� �9�#���o�`�Hr/�t�cJ̨���C5=8���ph�6�e<>�.�g̡H��&����y��JجW9*2�&��L�0�:ľַ�$�B��$Z��刺�ym�S�i�1�Yw-��2\���c��w��PHe��yR���3�r�0C��q���vԯ%�	���;eZ�+7��	�F�eZ(wcW%�J�b`Ǽ��ޖ×��a�i����ޗθq�+��뷋�{���jܻ&��8i�3���,\��DM���V�y7㨷c	ȇ����IܶBQ�Q0��^��ݎkGεg4�`W\Of��btJ;�x��e��ͫ�T�c[�^��F� a']�5/�K
zr��w��e]a�ƐӢo�����p���������]`
�i�:AH$�x��rb%A����`��� ����T�ި�:����3[H�!����6�u��@��Ԅt���V��j��ʞ�e���r�b�yA�`_;�ZO��jó�
bTuH��'��S6�`���'�(�������`l���s͐�>�����M��q4�a�:T�׮TN!��M>���v�wC)JN��i�7i��;�M�s���h��|c�:���\�Z���|J���Qf{�u̪�#��2��P2]��w=��v5���a�;^�̵I~��&�H�����N7��u���\��S��-(�G�F�?��ϟ?�����      (   !  x���ώ�0���S�@����*H+��]
H\L��F[�M�ڧg�fLj\��!�a~��o>{"�Cw��0�f�¡=��Я�~��3�}�3���	����@�e��00���`�x�k2�F�$�|{
�8τ �Vp�y;b��Q�ϗs��i�2�F���FP$�"�����U$�)R�L���RD�f�#W��6�#��q�� ��X�a�B�������T�)�$��D-���U��yC��/Z��$�	"C>lmwd�ϫ�v��D��3ʊ����~U�=�tU�� 0g���}������m&g�t���r��e¾d�z�/9/gN�ɜUr[{�������9��笳P<I�K(c<���yḌ���%u#q��s�,>�Y]�3�J�]���hˤ���h�gkŎ}>:�;`h|� �I�F;��y/�_s�A��)�p��cH���I�+Y��,)�T1c���=M)�%![��_����ݦG��[B����+!p��H�&�^��Dz�ڝ��6M��4 _      &   `  x�U��j�@��)�:���f���%PH{X؋��`����y�Jv�/!�˯4&(н~O��u�Ϸ��S�"��*$��rj
>�IG]0B&^p)0;�g�1�&�Di���t�y�Iǔ�d�q�������_��%g��ƕ[ ����I�C�Rb�P[� 0

'rUW��G��Wu�����
ej5P������NwYZA��I�}������� ��ͥ%Y� t�|��R0�更(��,Nn���~���p����V,^�yT��?���{[���fm7Xj%r{�Н~��{�XN�L�����(��C_.j�f���1�b��>�/���ᬋ�QX�GsD��Z�C?�@��      *   �  x�UW�n����b��/�^��q�^j�����D�%��4����Or�6����|���}M��<N��Ȃ�V��>0%�YIv��ĉ8b��Zm�Q2�rB����oΆM���3i���;Q�9��J��6���<҉�g�:���Vj�k�S+����!6wq<����y\~gB��7��>p�4.��l<槖��	��Z9#t�α۹K�_=��D&��R	c�8!q³�us����*�#��o޴��*����fF���.��y�<�89%\�Bqe��� V������1�t���Y���R�`��Y�n�1��y��K���4^�:!�yܧ��5��m����_kǭ���zX��x�Cs_��������MP�#���29����w�x�x�1�P�e�2��{\9NCb6������\	˾�)�cs?Į��S}��pd��78�5�~�J8v9��/�7��|Hq�c���c��D`#t�KzM# �ׁ��5�;���Jԣ�ݝ�2���6i�0 ��ec�c�C�-Э����� ťB)��us�o��Kܝ�M�ו�� �R�J�R����=�ݻ��qA`dK��Ե+�r��O��K�����[GǄ]*K ��M�́]����ѕ0�H`�YM�x\�L���+�ig� B�Iˮ_����+\.�?�*Q��!5O��Ǻ�	A�U����fخ��!6(�8`�
�*<�ܢ�x��pFɃ������ i�43�u(Ik����n㰥_��31k��R6��V 灐5Sa�4O�����gx��y��]*�.� ���l��8�qoV���)����>Ө�s�m9��HS�]���u�r?$�8���H��쉎\�W`�^�Z3,֪� s*���턵e2�`Ls!�#�EO�ʳ?Sh�r��a���B/]@+A�2t���v�n��C6��v=`A<�#s��@��Ar ����E���A<�dei��sRZ��UiѢ> ���7Z~��	��%D���Ҵ�3��;f1Oq�����a���ӊ=����a��w�m�L�����ab��|#�BI!-dZ��R�a�	+"4���5y��;�L٩��`m@�<?�1�zE5x����c�O��M��!0�&�����3���}������ɑ�=:��xL����6x	V��1�,V���ߊd5�3����s�s�C����/��{�s��mi��k�E�+΍,{�+#�Pw�g�UEk/ ���uS�1��~8���m��V:�^P'��>�!5ϊOr!IMx ���_\x��Z\���A=q�z j���q;c�H�q���~��c�[h(&U�s��؝�p��Jr�S�E��A���+F!Ŝ�*'�,BA@��;��vK��#H-$�J���s��>j��
�������S�����d�B ,Z��\����7�^,>-6�F�#�1��;�O�)K-(�[�"�H/���;��T��\��6�)�5�	"wSNBO�<Ur��J.���@ޓ����"��|Uٚu�;�%v�M�qp��[ϊ�<Δp�"�h���.��{O-5PLq��KZ'�j�xѶ�s`JU�P@��b����z[7Y�1��f����<��Z"��ұ#��]����ۑ��@�g	�[�P�8N�uʼ@��#Kkojxu�=e]�ۯsǜ��#19������Ŝ�8Z�u�&��]�5�8D�*|���k�;���=3
��A=Z*��r���m�=I�l���i_���}Pia��Kh.1Z�:B��O��7q�����������n~1"ˡY�/G1s�l
����A�"�/�:޴�d��8�B��{�/�-���JŞ��v�נ<����ѥ#����>5WC��
�HdV�N^�7�9�?,�O���ղ��J���5���llA��|%�B�:����
�!���c�Dy���lȓ�L��<�����~�[湩��?Wx:QFm[H;�]�y�"p�5����Mŝ�m��P�R �>�(4{h���B�
6�j�d�����=oHS������K���p1(�́���k�/,� ��U�e	��+/h�D`�� �d"��Ig��`���T�?�_a C���_Z�*���4�s��������Oz-$����;�&�0MMB#d����bE�B9>A8� ���f��}���esB}��MJ]+���~sȀڃKx�p���e^��׫���m�     