PGDMP  "                    {            mario_database    16.1    16.1 +               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24576    mario_database    DATABASE     p   CREATE DATABASE mario_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE mario_database;
                postgres    false                       0    0    DATABASE mario_database    COMMENT     6   COMMENT ON DATABASE mario_database IS 'Sono al 1440';
                   postgres    false    4888            �            1259    24629    actions    TABLE     l   CREATE TABLE public.actions (
    actions_id integer NOT NULL,
    action character varying(20) NOT NULL
);
    DROP TABLE public.actions;
       public         heap    postgres    false            �            1259    24628    actions_actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.actions_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.actions_actions_id_seq;
       public          postgres    false    222                       0    0    actions_actions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.actions_actions_id_seq OWNED BY public.actions.actions_id;
          public          postgres    false    221            �            1259    24578 
   characters    TABLE     �   CREATE TABLE public.characters (
    character_id integer NOT NULL,
    name character varying(50),
    homeland character varying(50),
    favorite_color character varying(50)
);
    DROP TABLE public.characters;
       public         heap    postgres    false            �            1259    24637    characters_actions    TABLE     n   CREATE TABLE public.characters_actions (
    character_id integer NOT NULL,
    action_id integer NOT NULL
);
 &   DROP TABLE public.characters_actions;
       public         heap    postgres    false            �            1259    24577    characters_character_id_seq    SEQUENCE     �   CREATE SEQUENCE public.characters_character_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.characters_character_id_seq;
       public          postgres    false    216                       0    0    characters_character_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.characters_character_id_seq OWNED BY public.characters.character_id;
          public          postgres    false    215            �            1259    24593 	   more_info    TABLE     �   CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    birthday date,
    height_in_cm integer,
    weight_in_kg numeric(4,1),
    character_id integer NOT NULL
);
    DROP TABLE public.more_info;
       public         heap    postgres    false            �            1259    24596    more_info_more_info_id_seq    SEQUENCE     �   CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.more_info_more_info_id_seq;
       public          postgres    false    217                       0    0    more_info_more_info_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;
          public          postgres    false    218            �            1259    24610    sounds    TABLE     �   CREATE TABLE public.sounds (
    sound_id integer NOT NULL,
    filename character varying(40) NOT NULL,
    character_id integer NOT NULL
);
    DROP TABLE public.sounds;
       public         heap    postgres    false            �            1259    24613    sounds_sound_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sounds_sound_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.sounds_sound_id_seq;
       public          postgres    false    219                       0    0    sounds_sound_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.sounds_sound_id_seq OWNED BY public.sounds.sound_id;
          public          postgres    false    220            f           2604    24632    actions actions_id    DEFAULT     x   ALTER TABLE ONLY public.actions ALTER COLUMN actions_id SET DEFAULT nextval('public.actions_actions_id_seq'::regclass);
 A   ALTER TABLE public.actions ALTER COLUMN actions_id DROP DEFAULT;
       public          postgres    false    222    221    222            c           2604    24581    characters character_id    DEFAULT     �   ALTER TABLE ONLY public.characters ALTER COLUMN character_id SET DEFAULT nextval('public.characters_character_id_seq'::regclass);
 F   ALTER TABLE public.characters ALTER COLUMN character_id DROP DEFAULT;
       public          postgres    false    216    215    216            d           2604    24597    more_info more_info_id    DEFAULT     �   ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);
 E   ALTER TABLE public.more_info ALTER COLUMN more_info_id DROP DEFAULT;
       public          postgres    false    218    217            e           2604    24614    sounds sound_id    DEFAULT     r   ALTER TABLE ONLY public.sounds ALTER COLUMN sound_id SET DEFAULT nextval('public.sounds_sound_id_seq'::regclass);
 >   ALTER TABLE public.sounds ALTER COLUMN sound_id DROP DEFAULT;
       public          postgres    false    220    219                      0    24629    actions 
   TABLE DATA           5   COPY public.actions (actions_id, action) FROM stdin;
    public          postgres    false    222   �1                 0    24578 
   characters 
   TABLE DATA           R   COPY public.characters (character_id, name, homeland, favorite_color) FROM stdin;
    public          postgres    false    216   �1                 0    24637    characters_actions 
   TABLE DATA           E   COPY public.characters_actions (character_id, action_id) FROM stdin;
    public          postgres    false    223   �2                 0    24593 	   more_info 
   TABLE DATA           e   COPY public.more_info (more_info_id, birthday, height_in_cm, weight_in_kg, character_id) FROM stdin;
    public          postgres    false    217   �2                 0    24610    sounds 
   TABLE DATA           B   COPY public.sounds (sound_id, filename, character_id) FROM stdin;
    public          postgres    false    219   H3                  0    0    actions_actions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.actions_actions_id_seq', 3, true);
          public          postgres    false    221                       0    0    characters_character_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.characters_character_id_seq', 1, false);
          public          postgres    false    215                        0    0    more_info_more_info_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 7, true);
          public          postgres    false    218            !           0    0    sounds_sound_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sounds_sound_id_seq', 7, true);
          public          postgres    false    220            r           2606    24636    actions actions_action_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.actions
    ADD CONSTRAINT actions_action_key UNIQUE (action);
 D   ALTER TABLE ONLY public.actions DROP CONSTRAINT actions_action_key;
       public            postgres    false    222            t           2606    24634    actions actions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.actions
    ADD CONSTRAINT actions_pkey PRIMARY KEY (actions_id);
 >   ALTER TABLE ONLY public.actions DROP CONSTRAINT actions_pkey;
       public            postgres    false    222            v           2606    24651 *   characters_actions characters_actions_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.characters_actions
    ADD CONSTRAINT characters_actions_pkey PRIMARY KEY (character_id, action_id);
 T   ALTER TABLE ONLY public.characters_actions DROP CONSTRAINT characters_actions_pkey;
       public            postgres    false    223    223            h           2606    24592    characters characters_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.characters
    ADD CONSTRAINT characters_pkey PRIMARY KEY (character_id);
 D   ALTER TABLE ONLY public.characters DROP CONSTRAINT characters_pkey;
       public            postgres    false    216            j           2606    24609 $   more_info more_info_character_id_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_character_id_key UNIQUE (character_id);
 N   ALTER TABLE ONLY public.more_info DROP CONSTRAINT more_info_character_id_key;
       public            postgres    false    217            l           2606    24602    more_info more_info_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);
 B   ALTER TABLE ONLY public.more_info DROP CONSTRAINT more_info_pkey;
       public            postgres    false    217            n           2606    24622    sounds sounds_filename_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.sounds
    ADD CONSTRAINT sounds_filename_key UNIQUE (filename);
 D   ALTER TABLE ONLY public.sounds DROP CONSTRAINT sounds_filename_key;
       public            postgres    false    219            p           2606    24616    sounds sounds_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.sounds
    ADD CONSTRAINT sounds_pkey PRIMARY KEY (sound_id);
 <   ALTER TABLE ONLY public.sounds DROP CONSTRAINT sounds_pkey;
       public            postgres    false    219            y           2606    24645 4   characters_actions characters_actions_action_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.characters_actions
    ADD CONSTRAINT characters_actions_action_id_fkey FOREIGN KEY (action_id) REFERENCES public.actions(actions_id);
 ^   ALTER TABLE ONLY public.characters_actions DROP CONSTRAINT characters_actions_action_id_fkey;
       public          postgres    false    222    223    4724            z           2606    24640 7   characters_actions characters_actions_character_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.characters_actions
    ADD CONSTRAINT characters_actions_character_id_fkey FOREIGN KEY (character_id) REFERENCES public.characters(character_id);
 a   ALTER TABLE ONLY public.characters_actions DROP CONSTRAINT characters_actions_character_id_fkey;
       public          postgres    false    4712    216    223            w           2606    24603 %   more_info more_info_character_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_character_id_fkey FOREIGN KEY (character_id) REFERENCES public.characters(character_id);
 O   ALTER TABLE ONLY public.more_info DROP CONSTRAINT more_info_character_id_fkey;
       public          postgres    false    4712    217    216            x           2606    24623    sounds sounds_character_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sounds
    ADD CONSTRAINT sounds_character_id_fkey FOREIGN KEY (character_id) REFERENCES public.characters(character_id);
 I   ALTER TABLE ONLY public.sounds DROP CONSTRAINT sounds_character_id_fkey;
       public          postgres    false    216    219    4712               !   x�3�,*��2��*�-�2�L)M������ WX0         �   x�e�=
�@@�z�9� ��!`���lw�nvd�%x{�f��6�e�}N���U+�;��d��00=���O<¨ih$j�lUG���4$�W2J�p6��q=�h����ܔ\iuȌ{�uIlЪ��o#���W��d�D�         8   x�ƹ  ��W��[���#͚k�"4|���͛/^<y����w���;�>�
�         p   x�%��0���. ��$,�	��U���zT��f�lKPb����~��dO�+_�li������J;H�T����.�[r�S�_��3w��m���sYF<���� }�P         T   x�3��,)�M��M�+O,�4�2��,(H�q�93u3�<c.���J0ۄ˔�<?_7#?�7������ͅj4*EH��qqq ��K     