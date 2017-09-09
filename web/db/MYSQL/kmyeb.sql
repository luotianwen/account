DROP TABLE IF EXISTS Kmyeb;
--
CREATE TABLE Kmyeb (
    id int auto_increment NOT NULL ,
    version int NOT NULL ,
    bnljjf nvarchar (30)  NULL,
    bnljdf nvarchar (30)  NULL,
    bnljjfbwb nvarchar (30)  NULL,
    bnljdfbwb nvarchar (30)  NULL,
    jffse nvarchar (30)  NULL,
    dffse nvarchar (30)  NULL,
    qcyefx nvarchar (30)  NULL,
    qmyefx nvarchar (30)  NULL,
    qmye nvarchar (30)  NULL,
    ncsl nvarchar (30)  NULL,
    ncye nvarchar (30)  NULL,
    ncyebwb nvarchar (30)  NULL,
    sljffsesl nvarchar (30)  NULL,
    sldffsesl nvarchar (30)  NULL,
    slbnljjfsl nvarchar (30)  NULL,
    slbnljdfsl nvarchar (30)  NULL,
    slqcyesl nvarchar (30)  NULL,
    slqcyedj nvarchar (30)  NULL,
    slqmyesl nvarchar (30)  NULL,
    slqmyedj nvarchar (30)  NULL,
    fzhs nvarchar (30)  NULL,
    kjqj nvarchar (30)  NULL,
    jldw nvarchar (30)  NULL,
    qcye nvarchar (30)  NULL,
    cshbwb nvarchar (30)  NULL,
    wbqmye nvarchar (30)  NULL,
    qcbnjf nvarchar (30)  NULL,
    qcbndf nvarchar (30)  NULL,
    qcbnjfbwb nvarchar (30)  NULL,
    qcbndfbwb nvarchar (30)  NULL,
    jzqyeljs nvarchar (30)  NULL,
    jzqyebqs nvarchar (30)  NULL,
    kmmclookup int  NULL,
    gsid int  NULL,
    bzname nvarchar (30)  NULL,
    fzhsnr nvarchar (30)  NULL,
    orgs int  NULL,
    creator int  NULL,
    primary key (id));
--

DROP TABLE IF EXISTS Ckyetjb;
--
CREATE TABLE Ckyetjb (
    id int auto_increment NOT NULL ,
    version int NOT NULL ,
    bzname nvarchar (30)  NULL,
    qeckrj nvarchar (30)  NULL,
    yhname nvarchar (30)  NULL,
    kjqj nvarchar (30)  NULL,
    yhdzd nvarchar (30)  NULL,
    yhysr nvarchar (30)  NULL,
    yhyfr nvarchar (30)  NULL,
    qeysr nvarchar (30)  NULL,
    qeyfr nvarchar (30)  NULL,
    qyye nvarchar (30)  NULL,
    yhye nvarchar (30)  NULL,
    ryname nvarchar (30)  NULL,
    orgs int  NULL,
    creator int  NULL,
    primary key (id));
--

DROP TABLE IF EXISTS Bzhl;
--
CREATE TABLE Bzhl (
    id int auto_increment NOT NULL ,
    version int NOT NULL ,
    bzname nvarchar (30)  NULL,
    qchl nvarchar (30)  NULL,
    qmhl nvarchar (30)  NULL,
    kjqj nvarchar (30)  NULL,
    flg nvarchar (30)  NULL,
    flg2 nvarchar (30)  NULL,
    orgs int  NULL,
    creator int  NULL,
    primary key (id));
--

