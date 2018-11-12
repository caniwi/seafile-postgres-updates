

ALTER TABLE Repo DROP CONSTRAINT Repo_pkey;
--
-- Name: repo_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.repo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repo_id_seq OWNER TO seafile;
ALTER TABLE Repo ADD COLUMN id integer DEFAULT nextval('public.repo_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.Repo
    ADD CONSTRAINT "Repo_id_pkey" PRIMARY KEY (id);
CREATE UNIQUE INDEX "Repo_repo_id" ON public.Repo USING btree (repo_id);


ALTER TABLE RepoOwner DROP CONSTRAINT repoowner_pkey;
--
-- Name: repoowner_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.repoowner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repoowner_id_seq OWNER TO seafile;
ALTER TABLE RepoOwner ADD COLUMN id integer DEFAULT nextval('public.repoowner_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.RepoOwner
    ADD CONSTRAINT "RepoOwner_id_pkey" PRIMARY KEY (id);
CREATE UNIQUE INDEX "RepoOwner_repo_id" ON public.RepoOwner USING btree (repo_id);


--
-- Name: repogroup_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.repogroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repogroup_id_seq OWNER TO seafile;
ALTER TABLE RepoGroup ADD COLUMN id integer DEFAULT nextval('public.repogroup_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.RepoGroup
    ADD CONSTRAINT "RepoGroup_id_pkey" PRIMARY KEY (id);




ALTER TABLE InnerPubRepo DROP CONSTRAINT innerpubrepo_pkey;
--
-- Name: innerpubrepo_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.innerpubrepo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.innerpubrepo_id_seq OWNER TO seafile;
ALTER TABLE InnerPubRepo ADD COLUMN id integer DEFAULT nextval('public.innerpubrepo_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.InnerPubRepo
    ADD CONSTRAINT "InnerPubRepo_id_pkey" PRIMARY KEY (id);
CREATE UNIQUE INDEX "InnerPubRepo_repo_id" ON public.InnerPubRepo USING btree (repo_id);


--
-- Name: repousertoken_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.repousertoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repousertoken_id_seq OWNER TO seafile;
ALTER TABLE RepoUserToken ADD COLUMN id integer DEFAULT nextval('public.repousertoken_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.RepoUserToken
    ADD CONSTRAINT "RepoUserToken_id_pkey" PRIMARY KEY (id);



ALTER TABLE RepoTokenPeerInfo DROP CONSTRAINT repotokenpeerinfo_pkey;
--
-- Name: repotokenpeerinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.repotokenpeerinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repotokenpeerinfo_id_seq OWNER TO seafile;
ALTER TABLE RepoTokenPeerInfo ADD COLUMN id integer DEFAULT nextval('public.repotokenpeerinfo_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.RepoTokenPeerInfo
    ADD CONSTRAINT "RepoTokenPeerInfo_id_pkey" PRIMARY KEY (id);
CREATE UNIQUE INDEX "RepoTokenPeerInfo_token" ON public.RepoTokenPeerInfo USING btree (token);



ALTER TABLE RepoHead DROP CONSTRAINT repohead_pkey;
--
-- Name: repohead_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.repohead_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repohead_id_seq OWNER TO seafile;
ALTER TABLE RepoHead ADD COLUMN id integer DEFAULT nextval('public.repohead_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.RepoHead
    ADD CONSTRAINT "RepoHead_id_pkey" PRIMARY KEY (id);
CREATE UNIQUE INDEX "RepoHead_repo_id" ON public.RepoHead USING btree (repo_id);


ALTER TABLE RepoSize ADD UNIQUE (repo_id);

ALTER TABLE RepoSize DROP CONSTRAINT reposize_pkey;
--
-- Name: reposize_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.reposize_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reposize_id_seq OWNER TO seafile;
ALTER TABLE RepoSize ADD COLUMN id integer DEFAULT nextval('public.reposize_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.RepoSize
    ADD CONSTRAINT "RepoSize_id_pkey" PRIMARY KEY (id);
CREATE UNIQUE INDEX "RepoSize_repo_id" ON public.RepoSize USING btree (repo_id);



ALTER TABLE RepoHistoryLimit DROP CONSTRAINT repohistorylimit_pkey;
--
-- Name: repohistorylimit_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.repohistorylimit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repohistorylimit_id_seq OWNER TO seafile;
ALTER TABLE RepoHistoryLimit ADD COLUMN id integer DEFAULT nextval('public.repohistorylimit_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.RepoHistoryLimit
    ADD CONSTRAINT "RepoHistoryLimit_id_pkey" PRIMARY KEY (id);
CREATE UNIQUE INDEX "RepoHistoryLimit_repo_id" ON public.RepoHistoryLimit USING btree (repo_id);



ALTER TABLE RepoValidSince DROP CONSTRAINT repovalidsince_pkey;
--
-- Name: repovalidsince_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.repovalidsince_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER TABLE public.repovalidsince_id_seq OWNER TO seafile;
ALTER TABLE RepoValidSince ADD COLUMN id integer DEFAULT nextval('public.repovalidsince_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.RepoValidSince
    ADD CONSTRAINT "RepoValidSince_id_pkey" PRIMARY KEY (id);
CREATE UNIQUE INDEX "RepoValidSince_repo_id" ON public.RepoValidSince USING btree (repo_id);



ALTER TABLE WebAP DROP CONSTRAINT webap_pkey;
--
-- Name: webap_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.webap_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER TABLE public.webap_id_seq OWNER TO seafile;
ALTER TABLE WebAP ADD COLUMN id integer DEFAULT nextval('public.webap_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.WebAP
    ADD CONSTRAINT "WebAP_id_pkey" PRIMARY KEY (id);
CREATE UNIQUE INDEX "WebAP_repo_id" ON public.WebAP USING btree (repo_id);



ALTER TABLE VirtualRepo DROP CONSTRAINT virtualrepo_pkey;
--
-- Name: virtualrepo_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.virtualrepo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER TABLE public.virtualrepo_id_seq OWNER TO seafile;
ALTER TABLE VirtualRepo ADD COLUMN id integer DEFAULT nextval('public.virtualrepo_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.VirtualRepo
    ADD CONSTRAINT "VirtualRepo_id_pkey" PRIMARY KEY (id);
CREATE UNIQUE INDEX "VirtualRepo_repo_id" ON public.VirtualRepo USING btree (repo_id);




ALTER TABLE GarbageRepos DROP CONSTRAINT garbagerepos_pkey;
--
-- Name: garbagerepos_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.garbagerepos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER TABLE public.garbagerepos_id_seq OWNER TO seafile;
ALTER TABLE GarbageRepos ADD COLUMN id integer DEFAULT nextval('public.garbagerepos_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.GarbageRepos
    ADD CONSTRAINT "GarbageRepos_id_pkey" PRIMARY KEY (id);
CREATE UNIQUE INDEX "GarbageRepos_repo_id" ON public.GarbageRepos USING btree (repo_id);



ALTER TABLE RepoTrash DROP CONSTRAINT repotrash_pkey;
--
-- Name: repotrash_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.repotrash_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER TABLE public.repotrash_id_seq OWNER TO seafile;
ALTER TABLE RepoTrash ADD COLUMN id integer DEFAULT nextval('public.repotrash_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.RepoTrash
    ADD CONSTRAINT "RepoTrash_id_pkey" PRIMARY KEY (id);
CREATE UNIQUE INDEX "RepoTrash_repo_id" ON public.RepoTrash USING btree (repo_id);

