--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER TABLE public.auth_group_id_seq OWNER TO seafile;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE public.auth_group (
    id integer DEFAULT nextval('public.auth_group_id_seq'::regclass) NOT NULL,
    name character varying(80) NOT NULL
);

ALTER TABLE public.auth_group OWNER TO seafile;
ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_id_pkey PRIMARY KEY (id);
CREATE UNIQUE INDEX auth_group_name ON public.auth_group USING btree (name);

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO seafile;

--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE public.auth_group_permissions (
    id integer DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass) NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO seafile;
ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_id_pkey PRIMARY KEY (id);
CREATE UNIQUE INDEX auth_group_permissions_group_id_permission_id ON public.auth_group_permissions USING btree (group_id, permission_id);
CREATE INDEX auth_group_permissions_permission_id ON public.auth_group_permissions USING btree (permission_id);
ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO seafile;

--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE public.auth_permission (
    id integer DEFAULT nextval('public.auth_permission_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO seafile;
ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_id_pkey PRIMARY KEY (id);
CREATE UNIQUE INDEX auth_permission_content_type_id_codename ON public.auth_permission USING btree (content_type_id, codename);
ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);



CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER TABLE public.auth_user_id_seq OWNER TO seafile;

--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--
CREATE TABLE public.auth_user (
    id integer DEFAULT nextval('public.auth_user_id_seq'::regclass) NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp without time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp without time zone NOT NULL
);

ALTER TABLE public.auth_user OWNER TO seafile;
ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_id_pkey PRIMARY KEY (id);
CREATE UNIQUE INDEX auth_user_username ON public.auth_user USING btree (username);


CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER TABLE public.auth_user_groups_id_seq OWNER TO seafile;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE public.auth_user_groups (
    id integer DEFAULT nextval('public.auth_user_groups_id_seq'::regclass) NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
ALTER TABLE public.auth_user_groups OWNER TO seafile;
ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_id_pkey PRIMARY KEY (id);
CREATE INDEX auth_user_groups_group_id ON public.auth_user_groups USING btree (group_id);
CREATE UNIQUE INDEX auth_user_groups_user_id_group_id ON public.auth_user_groups USING btree (user_id, group_id);
ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);
ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO seafile;

--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE public.auth_user_user_permissions (
    id integer DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass) NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
ALTER TABLE public.auth_user_user_permissions OWNER TO seafile;
ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_id_pkey PRIMARY KEY (id);
CREATE INDEX auth_user_user_permissions_permission_id ON public.auth_user_user_permissions USING btree (permission_id);
CREATE UNIQUE INDEX auth_user_user_permissions_user_id_permission_id ON public.auth_user_user_permissions USING btree (user_id, permission_id);
ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);
ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);



CREATE SEQUENCE public.wiki_wiki_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER TABLE public.wiki_wiki_id_seq OWNER TO seafile;

--
-- Name: wiki_wiki; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE public.wiki_wiki (
    id integer DEFAULT nextval('public.wiki_wiki_id_seq'::regclass) NOT NULL,
    username character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    repo_id character varying(36) NOT NULL,
    permission character varying(50) NOT NULL,
    created_at timestamp without time zone NOT NULL
);
ALTER TABLE public.wiki_wiki OWNER TO seafile;
ALTER TABLE ONLY public.wiki_wiki
    ADD CONSTRAINT wiki_wiki_id_pkey PRIMARY KEY (id);
CREATE INDEX wiki_wiki_created_at ON public.wiki_wiki USING btree (created_at);
CREATE UNIQUE INDEX wiki_wiki_slug ON public.wiki_wiki USING btree (slug);
CREATE UNIQUE INDEX wiki_wiki_username_repo_id ON public.wiki_wiki USING btree (username, repo_id);




CREATE INDEX notifications_notification_primary ON public.notifications_notification USING btree ("primary");

CREATE INDEX institutions_institutionadmin_user ON public.institutions_institutionadmin USING btree ("user");


