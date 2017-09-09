DROP TABLE IF EXISTS Kjkm;
--
CREATE TABLE Kjkm (
    id int auto_increment NOT NULL ,
    version int NOT NULL ,
    kmbh nvarchar (30) NOT NULL,
    kmmc nvarchar (30) NOT NULL,
    kmfx int   NULL,
    kmjc nvarchar (30)  NULL,
    kmlx int  NOT NULL,
    kmwz nvarchar (30)  NULL,
    kmmx int  NOT NULL,
    flkjkm int  NULL,
    wbhs int   NULL,
    sljehs int   NULL,
    csh int   NULL,
    fzhs int  NULL,
    orgs int  NULL,
    creator int  NULL,
    primary key (id));
--

DROP TABLE IF EXISTS Hl_oldkmyeb;
--
CREATE TABLE Hl_oldkmyeb (
    id int auto_increment NOT NULL ,
    version int NOT NULL ,
    att_attachment int  NULL,
    orgs int  NULL,
    creator int  NULL,
    primary key (id));
--

