DROP TABLE IF EXISTS Company;
--
CREATE TABLE Company (
    id int NOT NULL ,
    gsmc nvarchar (30) NOT NULL,
    swdjh nvarchar (30)  NULL,
    jsjdm nvarchar (30)  NULL,
    zzslx int   NULL,
    yyzhbh nvarchar (30)  NULL,
    zzjgdm nvarchar (30)  NULL,
    zclx int   NULL,
    zczj nvarchar (30)  NULL,
    sshy nvarchar (30)  NULL,
    frdb nvarchar (30)  NULL,
    lxdh nvarchar (30)  NULL,
    lxcz nvarchar (30)  NULL,
    dzyx nvarchar (30)  NULL,
    lxr nvarchar (30)  NULL,
    lxrdh nvarchar (30)  NULL,
    lxrdzyx nvarchar (30)  NULL,
    lxrcz nvarchar (30)  NULL,
    zcdz nvarchar (30)  NULL,
    jydz nvarchar (30)  NULL,
    txdz nvarchar (30)  NULL,
    yzbm nvarchar (30)  NULL,
    gsdm nvarchar (30)  NULL,
    qysj nvarchar (30)  NULL,
    dqqj nvarchar (30)  NULL,
    cshzt nvarchar (30)  NULL,
    kjqj nvarchar (30)  NULL,
    pzsize int   NULL,
    yhsize int   NULL,
    ndtzjzy int   NULL,
    orgs int  NULL,
    creator int  NULL,
    primary key (id));
--

DROP TABLE IF EXISTS Bzsz;
--
CREATE TABLE Bzsz (
    id int auto_increment NOT NULL ,
    version int NOT NULL ,
    b_name nvarchar (30) NOT NULL,
    b_huilv decimal (18,4)  NULL,
    flg int   NULL,
    orgs int  NULL,
    creator int  NULL,
    primary key (id));
--

DROP TABLE IF EXISTS Pzzl;
--
CREATE TABLE Pzzl (
    id int auto_increment NOT NULL ,
    version int NOT NULL ,
    name nvarchar (30) NOT NULL,
    sname nvarchar (30)  NULL,
    scode nvarchar (30)  NULL,
    orgs int  NULL,
    creator int  NULL,
    primary key (id));
--

DROP TABLE IF EXISTS Yhsz;
--
CREATE TABLE Yhsz (
    id int auto_increment NOT NULL ,
    version int NOT NULL ,
    yhmc nvarchar (30) NOT NULL,
    zhh nvarchar (30) NOT NULL,
    zhxz int   NULL,
    ckbz int  NULL,
    lxr nvarchar (30)  NULL,
    lxdh nvarchar (30)  NULL,
    orgs int  NULL,
    creator int  NULL,
    primary key (id));
--

