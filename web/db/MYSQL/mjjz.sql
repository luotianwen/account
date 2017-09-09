DROP TABLE IF EXISTS Hl_yhdzd;
--
CREATE TABLE Hl_yhdzd (
    id int auto_increment NOT NULL ,
    version int NOT NULL ,
    yhRQ datetime  NOT NULL,
    yhZY nvarchar (30)  NULL,
    pjh nvarchar (30)  NULL,
    yhJFJE decimal (18,2)  NULL,
    yhDFJE decimal (18,2)  NULL,
    yhYE decimal (18,2)  NULL,
    ztai int   NULL,
    fjs int   NULL,
    yhm int  NULL,
    yhPZH nvarchar (30)  NULL,
    tick int   NULL,
    gsid int  NULL,
    creator int  NULL,
    primary key (id));
--

DROP TABLE IF EXISTS Hl_yhdzdmx;
--
CREATE TABLE Hl_yhdzdmx (
    id int auto_increment NOT NULL ,
    version int NOT NULL ,
    sfk int  NULL,
    yhje decimal (18,2)  NULL,
    fjs int   NULL,
    yhdzd int  NULL,
    wldw nvarchar (30)  NULL,
    biaos nvarchar (30)  NULL,
    gsid int  NULL,
    creator int  NULL,
    primary key (id));
--

DROP TABLE IF EXISTS Hl_sfk;
--
CREATE TABLE Hl_sfk (
    id int auto_increment NOT NULL ,
    version int NOT NULL ,
    name nvarchar (30)  NULL,
    biaos int   NULL,
    kmm int  NULL,
    gsid int  NULL,
    creator int  NULL,
    primary key (id));
--

