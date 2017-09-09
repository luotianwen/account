DROP TABLE IF EXISTS Sz_fzhs;
--
CREATE TABLE Sz_fzhs (
    id int auto_increment NOT NULL ,
    version int NOT NULL ,
    code nvarchar (30)  NULL,
    name nvarchar (30) NOT NULL,
    lxr nvarchar (30)  NULL,
    lxdh nvarchar (30)  NULL,
    czh nvarchar (30)  NULL,
    addr nvarchar (30)  NULL,
    qdrq datetime   NULL,
    jsrq datetime   NULL,
    wlhsxz int   NULL,
    chxz int   NULL,
    ggxh nvarchar (30)  NULL,
    jldw nvarchar (30)  NULL,
    sex int   NULL,
    fzhslx int   NULL,
    myselef int  NULL,
    orgs int  NULL,
    creator int  NULL,
    primary key (id));
--

