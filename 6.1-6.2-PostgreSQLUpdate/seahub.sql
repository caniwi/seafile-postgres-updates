--
-- Name: revision_tag_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE revision_tag_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.revision_tag_tags_id_seq OWNER TO seafile;

--
-- Name: revision_tag_tags; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE revision_tag_tags (
    id integer DEFAULT nextval('revision_tag_tags_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.revision_tag_tags OWNER TO seafile;

--
-- Name: revision_tag_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: seafile
--

SELECT pg_catalog.setval('revision_tag_tags_id_seq', 1, true);

--
-- Name: revision_tag_tags_name; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE UNIQUE INDEX revision_tag_tags_name ON revision_tag_tags USING btree (name);

--
-- Name: revision_tag_tags_id_pkey; Type: CONSTRAINT; Schema: public; Owner: seafile; Tablespace: 
--

ALTER TABLE ONLY revision_tag_tags
    ADD CONSTRAINT revision_tag_tags_id_pkey PRIMARY KEY (id);


--
-- Name: revision_tag_revisiontags_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE revision_tag_revisiontags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.revision_tag_revisiontags_id_seq OWNER TO seafile;

--
-- Name: revision_tag_revisiontags; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE revision_tag_revisiontags (
    id integer DEFAULT nextval('revision_tag_revisiontags_id_seq'::regclass) NOT NULL,
    repo_id character varying(36) NOT NULL,
    path text NOT NULL,
    revision_id character varying(255) NOT NULL,
    tag_id integer NOT NULL,
    username character varying(255) NOT NULL
);


ALTER TABLE public.revision_tag_revisiontags OWNER TO seafile;
--
-- Name: revision_tag_revisiontags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: seafile
--

SELECT pg_catalog.setval('revision_tag_revisiontags_id_seq', 1, true);
--
-- Name: revision_tag_revisiontags_id_pkey; Type: CONSTRAINT; Schema: public; Owner: seafile; Tablespace:
--

ALTER TABLE ONLY revision_tag_revisiontags
    ADD CONSTRAINT revision_tag_revisiontags_id_pkey PRIMARY KEY (id);
--
-- Name: revision_tag_revisiontags_repo_id; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE INDEX revision_tag_revisiontags_repo_id ON revision_tag_revisiontags USING btree (repo_id);
--
-- Name: revision_tag_revisiontags_revision_id; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE INDEX revision_tag_revisiontags_revision_id ON revision_tag_revisiontags USING btree (revision_id);
--
-- Name: revision_tag_revisiontags_tag_id; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE INDEX revision_tag_revisiontags_tag_id ON revision_tag_revisiontags USING btree (tag_id);


--
-- Name: revision_tag_revisiontags_username; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE INDEX revision_tag_revisiontags_username ON revision_tag_revisiontags USING btree (username);

-- Name: share_extrasharepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE share_extrasharepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.share_extrasharepermission_id_seq OWNER TO seafile;

--
-- Name: share_extrasharepermission; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE share_extrasharepermission (
    id integer DEFAULT nextval('share_extrasharepermission_id_seq'::regclass) NOT NULL,
    repo_id character varying(36) NOT NULL,
    share_to character varying(255) NOT NULL,
    permission character varying(30) NOT NULL
);


ALTER TABLE public.share_extrasharepermission OWNER TO seafile;
--
-- Name: share_extrasharepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: seafile
--

SELECT pg_catalog.setval('share_extrasharepermission_id_seq', 1, true);
--
-- Name: share_extrasharepermission_id_pkey; Type: CONSTRAINT; Schema: public; Owner: seafile; Tablespace:
--

ALTER TABLE ONLY share_extrasharepermission
    ADD CONSTRAINT share_extrasharepermission_id_pkey PRIMARY KEY (id);
--
-- Name: share_extrasharepermission_repo_id; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE INDEX share_extrasharepermission_repo_id ON share_extrasharepermission USING btree (repo_id);
--
-- Name: share_extrasharepermission_share_to; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE INDEX share_extrasharepermission_share_to ON share_extrasharepermission USING btree (share_to);


--
-- Name: share_extragroupssharepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE share_extragroupssharepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.share_extragroupssharepermission_id_seq OWNER TO seafile;

--
-- Name: share_extragroupssharepermission; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE share_extragroupssharepermission (
    id integer DEFAULT nextval('share_extragroupssharepermission_id_seq'::regclass) NOT NULL,
    repo_id character varying(36) NOT NULL,
    group_id integer NOT NULL,
    permission character varying(30) NOT NULL
);


ALTER TABLE public.share_extragroupssharepermission OWNER TO seafile;
--
-- Name: share_extragroupssharepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: seafile
--

SELECT pg_catalog.setval('share_extragroupssharepermission_id_seq', 1, true);
--
-- Name: share_extragroupssharepermission_id_pkey; Type: CONSTRAINT; Schema: public; Owner: seafile; Tablespace:
--

ALTER TABLE ONLY share_extragroupssharepermission
    ADD CONSTRAINT share_extragroupssharepermission_id_pkey PRIMARY KEY (id);
--
-- Name: share_extragroupssharepermission_group_id; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE INDEX share_extragroupssharepermission_group_id ON share_extragroupssharepermission USING btree (group_id);
--
-- Name: share_extragroupssharepermission_repo_id; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE INDEX share_extragroupssharepermission_repo_id ON share_extragroupssharepermission USING btree (repo_id);


--
-- Name: tags_fileuuidmap; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE tags_fileuuidmap (
    uuid character(32) NOT NULL,
    repo_id character varying(36) NOT NULL,
    repo_id_parent_path_md5 character varying(100) NOT NULL,
    parent_path text NOT NULL,
    filename character varying(1024) NOT NULL,
    is_dir boolean NOT NULL
);

ALTER TABLE public.tags_fileuuidmap OWNER TO seafile;
--
-- Name: tags_fileuuidmap_uuid_pkey; Type: CONSTRAINT; Schema: public; Owner: seafile; Tablespace:
--

ALTER TABLE ONLY tags_fileuuidmap
    ADD CONSTRAINT tags_fileuuidmap_uuid_pkey PRIMARY KEY (uuid);
--
-- Name: tags_fileuuidmap_repo_id; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE INDEX tags_fileuuidmap_repo_id ON tags_fileuuidmap USING btree (repo_id);
--
-- Name: tags_fileuuidmap_repo_id_parent_path_md5; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE INDEX tags_fileuuidmap_repo_id_parent_path_md5 ON tags_fileuuidmap USING btree (repo_id_parent_path_md5);

--
-- Name: tags_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE tags_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_tags_id_seq OWNER TO seafile;

--
-- Name: tags_tags; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE tags_tags (
    id integer DEFAULT nextval('tags_tags_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.tags_tags OWNER TO seafile;
--
-- Name: tags_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: seafile
--

SELECT pg_catalog.setval('tags_tags_id_seq', 1, true);
--
-- Name: tags_tags_id_pkey; Type: CONSTRAINT; Schema: public; Owner: seafile; Tablespace:
--

ALTER TABLE ONLY tags_tags
    ADD CONSTRAINT tags_tags_id_pkey PRIMARY KEY (id);
--
-- Name: tags_tags_name; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE UNIQUE INDEX tags_tags_name ON tags_tags USING btree (name);

--
-- Name: tags_filetag_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE tags_filetag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_filetag_id_seq OWNER TO seafile;

--
-- Name: tags_filetag; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE tags_filetag (
    id integer DEFAULT nextval('tags_filetag_id_seq'::regclass) NOT NULL,
    uuid_id character(32) NOT NULL,
    tag_id integer NOT NULL,
    username character varying(255) NOT NULL
);


ALTER TABLE public.tags_filetag OWNER TO seafile;
--
-- Name: tags_filetag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: seafile
--

SELECT pg_catalog.setval('tags_filetag_id_seq', 1, true);
--
-- Name: tags_filetag_id_pkey; Type: CONSTRAINT; Schema: public; Owner: seafile; Tablespace:
--

ALTER TABLE ONLY tags_filetag
    ADD CONSTRAINT tags_filetag_id_pkey PRIMARY KEY (id);
--
-- Name: tags_filetag_tag_id; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE INDEX tags_filetag_tag_id ON tags_filetag USING btree (tag_id);


--
-- Name: tags_filetag_uuid_id; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE INDEX tags_filetag_uuid_id ON tags_filetag USING btree (uuid_id);

--
-- Name: role_permissions_adminrole_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE role_permissions_adminrole_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_permissions_adminrole_id_seq OWNER TO seafile;

--
-- Name: role_permissions_adminrole; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE role_permissions_adminrole (
    id integer DEFAULT nextval('role_permissions_adminrole_id_seq'::regclass) NOT NULL,
    email character varying(254) NOT NULL,
    role character varying(255) NOT NULL
);


ALTER TABLE public.role_permissions_adminrole OWNER TO seafile;
--
-- Name: role_permissions_adminrole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: seafile
--

SELECT pg_catalog.setval('role_permissions_adminrole_id_seq', 1, true);
--
-- Name: role_permissions_adminrole_id_pkey; Type: CONSTRAINT; Schema: public; Owner: seafile; Tablespace:
--

ALTER TABLE ONLY role_permissions_adminrole
    ADD CONSTRAINT role_permissions_adminrole_id_pkey PRIMARY KEY (id);
--
-- Name: role_permissions_adminrole_email; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE UNIQUE INDEX role_permissions_adminrole_email ON role_permissions_adminrole USING btree (email);


ALTER TABLE "sysadmin_extra_userloginlog" ADD COLUMN "login_success" boolean DEFAULT true NOT NULL;
ALTER TABLE "profile_profile" ADD COLUMN "list_in_address_book" boolean DEFAULT false NOT NULL;
--
-- Name: profile_profile_list_in_address_book; Type: INDEX; Schema: public; Owner: seafile; Tablespace:
--

CREATE INDEX profile_profile_list_in_address_book ON profile_profile USING btree (list_in_address_book);

--
-- Name: revision_tag_revisiontags_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: seafile
--

ALTER TABLE ONLY revision_tag_revisiontags
    ADD CONSTRAINT revision_tag_revisiontags_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES revision_tag_tags(id);

--
-- Name: tags_filetag_uuid_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: seafile
--

ALTER TABLE ONLY tags_filetag
    ADD CONSTRAINT tags_filetag_uuid_id_fkey FOREIGN KEY (uuid_id) REFERENCES tags_fileuuidmap(uuid);

--
-- Name: tags_filetag_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: seafile
--

ALTER TABLE ONLY tags_filetag
    ADD CONSTRAINT tags_filetag_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES tags_tags(id);

