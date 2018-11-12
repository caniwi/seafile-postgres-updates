--
-- Name: ldapconfig_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.ldapconfig_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ldapconfig_id_seq OWNER TO seafile;

--
-- Name: LDAPConfig; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE public."LDAPConfig" (
    id integer DEFAULT nextval('public.ldapconfig_id_seq'::regclass) NOT NULL,
    cfg_group character varying(255) NOT NULL,
    cfg_key character varying(255) NOT NULL,
    value character varying(255),
    property integer
);


ALTER TABLE public."LDAPConfig" OWNER TO seafile;

--
-- Name: LDAPConfig_id_pkey; Type: CONSTRAINT; Schema: public; Owner: seafile; Tablespace:
--

ALTER TABLE ONLY public."LDAPConfig"
    ADD CONSTRAINT "LDAPConfig_id_pkey" PRIMARY KEY (id);


--
-- Name: groupstructure_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.groupstructure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groupstructure_id_seq OWNER TO seafile;

--
-- Name: GroupStructure; Type: TABLE; Schema: public; Owner: seafile; Tablespace:
--

CREATE TABLE public."GroupStructure" (
    id integer DEFAULT nextval('public.groupstructure_id_seq'::regclass) NOT NULL,
    group_id integer,
    path character varying(1024)
);


ALTER TABLE public."GroupStructure" OWNER TO seafile;

--
-- Name: GroupStructure_id_pkey; Type: CONSTRAINT; Schema: public; Owner: seafile; Tablespace:
--

ALTER TABLE ONLY public."GroupStructure"
    ADD CONSTRAINT "GroupStructure_id_pkey" PRIMARY KEY (id);


ALTER TABLE "Group" ADD COLUMN parent_group_id INTEGER;
ALTER TABLE "Group" ALTER COLUMN parent_group_id SET DEFAULT 0;


--
-- Name: binding_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.binding_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.binding_id_seq OWNER TO seafile;

SET default_tablespace = '';

SET default_with_oids = false;
ALTER TABLE Binding ADD COLUMN id integer DEFAULT nextval('public.binding_id_seq'::regclass) NOT NULL;
--
-- Name: Binding_id_pkey; Type: CONSTRAINT; Schema: public; Owner: seafile; Tablespace:
--

ALTER TABLE ONLY public.Binding
    ADD CONSTRAINT "Binding_id_pkey" PRIMARY KEY (id);



--
-- Name: ldapconfig_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.ldapconfig_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ldapconfig_id_seq OWNER TO seafile;

ALTER TABLE LDAPConfig ADD COLUMN id integer DEFAULT nextval('public.ldapconfig_id_seq'::regclass) NOT NULL;


--
-- Name: orguser_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.orguser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orguser_id_seq OWNER TO seafile;
ALTER TABLE OrgUser ADD COLUMN id integer DEFAULT nextval('public.orguser_id_seq'::regclass) NOT NULL;
--
-- Name: OrgUser_id_pkey; Type: CONSTRAINT; Schema: public; Owner: seafile; Tablespace:
--

ALTER TABLE ONLY public.OrgUser
    ADD CONSTRAINT "OrgUser_id_pkey" PRIMARY KEY (id);


--
-- Name: orggroup_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.orggroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orggroup_id_seq OWNER TO seafile;
ALTER TABLE OrgGroup ADD COLUMN id integer DEFAULT nextval('public.orggroup_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.OrgGroup
    ADD CONSTRAINT "OrgGroup_id_pkey" PRIMARY KEY (id);


--
-- Name: groupuser_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.groupuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groupuser_id_seq OWNER TO seafile;
ALTER TABLE GroupUser ADD COLUMN id integer DEFAULT nextval('public.groupuser_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.GroupUser
    ADD CONSTRAINT "GroupUser_id_pkey" PRIMARY KEY (id);


--
-- Name: groupdnpair_id_seq; Type: SEQUENCE; Schema: public; Owner: seafile
--

CREATE SEQUENCE public.groupdnpair_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groupdnpair_id_seq OWNER TO seafile;
ALTER TABLE GroupDNPair ADD COLUMN id integer DEFAULT nextval('public.groupdnpair_id_seq'::regclass) NOT NULL;
ALTER TABLE ONLY public.GroupDNPair
    ADD CONSTRAINT "GroupDNPair_id_pkey" PRIMARY KEY (id);
