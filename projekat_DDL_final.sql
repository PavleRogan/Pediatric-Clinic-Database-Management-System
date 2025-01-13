-----------------DDL SKRIPTA----------------

---DROPOVI---

---tabele

IF OBJECT_ID('projekat.RADI_TOKOM','U') is not null
drop table projekat.RADI_TOKOM
GO


IF OBJECT_ID('projekat.BOLOVANJE','U') is not null
drop table projekat.BOLOVANJE
GO


IF OBJECT_ID('projekat.OPRAVDANJE','U') is not null
drop table projekat.OPRAVDANJE
GO

IF OBJECT_ID('projekat.ODREDJUJE','U') is not null
drop table projekat.ODREDJUJE
GO


IF OBJECT_ID('projekat.ZAKAZAN_PREGLED','U') is not null
drop table projekat.ZAKAZAN_PREGLED
GO

IF OBJECT_ID('projekat.HITAN_PREGLED','U') is not null
drop table projekat.HITAN_PREGLED
GO

IF OBJECT_ID('projekat.PREGLED','U') is not null
drop table projekat.PREGLED
GO

IF OBJECT_ID('projekat.DIJAGNOZA','U') is not null
drop table projekat.DIJAGNOZA
GO



IF OBJECT_ID('projekat.KARTON_PACIJENTA','U') is not null
drop table projekat.KARTON_PACIJENTA
GO

IF OBJECT_ID('projekat.STARATELJ','U') is not null
drop table projekat.STARATELJ
GO


IF OBJECT_ID('projekat.LEKAR','U') is not null
drop table projekat.LEKAR
GO

IF OBJECT_ID('projekat.PRIPADA_DANU','U') is not null
drop table projekat.PRIPADA_DANU
GO

IF OBJECT_ID('projekat.RADNI_KALENDAR','U') is not null
drop table projekat.RADNI_KALENDAR
GO

IF OBJECT_ID('projekat.TERMIN','U') is not null
drop table projekat.TERMIN
GO

IF OBJECT_ID('projekat.smena','U') is not null
drop table projekat.smena
go

--sekvence
if exists (select * from sys.sequences where name = 'seq_smena')
	drop sequence projekat.seq_smena;
go
if exists (select * from sys.sequences where name = 'seq_termin')
	drop sequence projekat.seq_termin;
go
IF EXISTS (SELECT * FROM sys.sequences WHERE name = 'seq_lekar')
    DROP SEQUENCE projekat.seq_lekar;
go
IF EXISTS (SELECT * FROM sys.sequences WHERE name = 'seq_staratelj')
    DROP SEQUENCE projekat.seq_staratelj;
go

IF EXISTS (SELECT * FROM sys.sequences WHERE name = 'seq_karton_pacijenta')
    DROP SEQUENCE projekat.seq_karton_pacijenta;
go

IF EXISTS (SELECT * FROM sys.sequences WHERE name = 'seq_pregled')
    DROP SEQUENCE projekat.seq_pregled;
go
IF EXISTS (SELECT * FROM sys.sequences WHERE name = 'seq_dijagnoza')
    DROP SEQUENCE projekat.seq_dijagnoza;
go
IF EXISTS (SELECT * FROM sys.sequences WHERE name = 'seq_odredjuje')
    DROP SEQUENCE projekat.seq_odredjuje;
go
IF EXISTS (SELECT * FROM sys.sequences WHERE name = 'seq_opravdanje')
    DROP SEQUENCE projekat.seq_opravdanje;
go

IF EXISTS (SELECT * FROM sys.sequences WHERE name = 'seq_bolovanje')
    DROP SEQUENCE projekat.seq_bolovanje;
go
IF EXISTS (SELECT * FROM sys.sequences WHERE name = 'seq_radi_tokom')
    DROP SEQUENCE projekat.seq_radi_tokom;
go







--schema
if exists (select * from sys.schemas where name = 'projekat')
	drop schema projekat;
go




------------------------------------------------------------------------

--- SCHEMA----
 
CREATE SCHEMA projekat
GO

---SEKVENCE---

create sequence projekat.seq_smena as int
start with 1
minvalue 1
increment by 1
no cycle;

create sequence projekat.seq_termin as int
start with 1
minvalue 1
increment by 1
no cycle;

CREATE SEQUENCE projekat.seq_lekar AS INT
  START WITH 1
  MINVALUE 1
  INCREMENT BY 1
  NO CYCLE;

  CREATE SEQUENCE projekat.seq_staratelj AS INT
  START WITH 1
  MINVALUE 1
  INCREMENT BY 1
  NO CYCLE;

  CREATE SEQUENCE projekat.seq_bolovanje AS INT
  START WITH 1
  MINVALUE 1
  INCREMENT BY 1
  NO CYCLE;

  CREATE SEQUENCE projekat.seq_karton_pacijenta AS INT
  START WITH 1
  MINVALUE 1
  INCREMENT BY 1
  NO CYCLE;

  CREATE SEQUENCE projekat.seq_pregled AS INT
  START WITH 1
  MINVALUE 1
  INCREMENT BY 1
  NO CYCLE;


    CREATE SEQUENCE projekat.seq_dijagnoza AS INT
  START WITH 1
  MINVALUE 1
  INCREMENT BY 1
  NO CYCLE;

    CREATE SEQUENCE projekat.seq_odredjuje AS INT
  START WITH 1
  MINVALUE 1
  INCREMENT BY 1
  NO CYCLE;

   CREATE SEQUENCE projekat.seq_opravdanje AS INT
  START WITH 1
  MINVALUE 1
  INCREMENT BY 1
  NO CYCLE;

   CREATE SEQUENCE projekat.seq_radi_tokom AS INT
  START WITH 1
  MINVALUE 1
  INCREMENT BY 1
  NO CYCLE;

  


-------  TABELE  -------

---1.SMENA
CREATE TABLE projekat.SMENA
(
    rbr_smena int NOT NULL DEFAULT NEXT VALUE FOR projekat.seq_smena,
    vremeOd TIME NOT NULL,
    vremeDo TIME NOT NULL,
	CONSTRAINT PK_SMENA PRIMARY KEY (rbr_smena),
	CONSTRAINT CHK_SMENADOMEN CHECK(rbr_smena  >  0),


);

---2.TERMIN

CREATE TABLE projekat.TERMIN
(
    id_termin int NOT NULL DEFAULT NEXT VALUE FOR projekat.seq_termin,
    vremePocetka TIME NOT NULL,
    vremeZavrsetka TIME NOT NULL,
	rbr_smena int not null,
	CONSTRAINT PK_TERMIN PRIMARY KEY (id_termin),
	CONSTRAINT CHK_vremeP_vremeZ check(vremePocetka < vremeZavrsetka),
	CONSTRAINT FK_TERMIN_RBR_SMENA FOREIGN KEY (rbr_smena)REFERENCES projekat.SMENA (rbr_smena)
);

--3.RADNI KALENDAR

CREATE TABLE projekat.RADNI_KALENDAR
(
	id_radniKalendar int NOT NULL,
	datum DATE NOT NULL,
	CONSTRAINT PK_RADKAL PRIMARY KEY (id_radniKalendar),
	CONSTRAINT CHK_RADKALID CHECK(id_radniKalendar>0)
);

---4.PRIPADA DANU

CREATE TABLE projekat.PRIPADA_DANU
(
   
	id_termin int NOT NULL,
    id_radniKalendar int NOT NULL,
	CONSTRAINT PK_PDANU PRIMARY KEY (id_termin,id_radniKalendar),
	CONSTRAINT FK_PDANU_TERMIN FOREIGN KEY (id_termin)REFERENCES projekat.TERMIN (id_termin),
	CONSTRAINT FK_PDANU_RADKAL FOREIGN KEY (id_radniKalendar) REFERENCES projekat.RADNI_KALENDAR(id_radniKalendar)
);

---5.LEKAR
CREATE TABLE projekat.LEKAR
(
    id int NOT NULL DEFAULT NEXT VALUE FOR projekat.seq_lekar,
	br_ordinacije int NOT NULL,
	ime varchar(30) NOT NULL,
    prz varchar(35) NOT NULL,
	CONSTRAINT PK_LEKAR PRIMARY KEY (id),
	CONSTRAINT CHK_LEKARIDdomen CHECK(id>0),
	CONSTRAINT CHK_BRord CHECK(br_ordinacije>0),

	
);


---6.STARATELJ

CREATE TABLE projekat.STARATELJ
(
	id int NOT NULL DEFAULT NEXT VALUE FOR projekat.seq_staratelj,
    jmbg VARCHAR(13) not null,
    ime varchar(30) NOT NULL,
    prz varchar(35) NOT NULL,
	kontakt varchar(14) NOT NULL unique,
	nazMestaZap varchar(50),
	CONSTRAINT PK_staratelj PRIMARY KEY (id),
	CONSTRAINT CHK_STARDOMENID CHECK(id>0)
	
);

---7.KARTON PACIJENTA
CREATE TABLE projekat.KARTON_PACIJENTA
(
	id int NOT NULL DEFAULT NEXT VALUE FOR projekat.seq_karton_pacijenta,
    lbo VARCHAR(10) NOT NULL unique,
	jmbg VARCHAR(13) NOT NULL unique,
    ime varchar(30) NOT NULL,
    prz varchar(35) NOT NULL,
	datumRodnjenja DATE NOT NULL,
	pol char(1) not null,
	starateljID int not null, 
	lekarID int not null,
	CONSTRAINT PK_karton PRIMARY KEY (id),
	CONSTRAINT FK_KARTON_STARATELJ FOREIGN KEY(starateljID) REFERENCES projekat.STARATELJ(id),
	CONSTRAINT FK_KARTON_LEKAR FOREIGN KEY(lekarID) REFERENCES projekat.LEKAR(id),
	constraint CK_KARTON_z_pol check (pol = 'F' or pol = 'M'),
	constraint chk_karton_domenid CHECK(id>0)
	

);

--8.PREGLED
CREATE TABLE projekat.PREGLED
(
    id int NOT NULL DEFAULT NEXT VALUE FOR projekat.seq_pregled,
	trajanje int DEFAULT 30,
	brSobe int not null,
    simptomi varchar(200) NOT NULL,
	kartonID int not null,
	lekarID int not null,
	tip_pregleda varchar(30) NOT NULL,
	datum date not null,
	CONSTRAINT PK_pregled PRIMARY KEY (id),
	CONSTRAINT FK_PREGLED_LEKAR FOREIGN KEY(lekarID) REFERENCES projekat.LEKAR(id),
	CONSTRAINT FK_PREGLED_KARTON FOREIGN KEY(kartonID) REFERENCES projekat.KARTON_PACIJENTA(id),
	CONSTRAINT CHK_IDDOMEN CHECK(id>0),
	CONSTRAINT CHK_TIPPREGLEDA CHECK(tip_pregleda='HITAN' OR tip_pregleda='ZAKAZAN'),
	CONSTRAINT CHK_BRSOBE CHECK(brSobe>0)
	
);

--9.HITAN PREGLED
CREATE TABLE projekat.HITAN_PREGLED
(
    id int NOT NULL,
    ocenaHitnosti varchar(30) ,
	CONSTRAINT PK_hitan_pregled PRIMARY KEY (id),
	CONSTRAINT FK_PREGLED_hitan FOREIGN KEY(id) REFERENCES projekat.PREGLED(id),
	constraint CK_ocenahitnosti check (ocenaHitnosti = 'NIZAK' or ocenaHitnosti = 'SREDNJI' OR ocenaHitnosti = 'VISOK')
	
);

--10.ZAKAZAN PREGLED
CREATE TABLE projekat.ZAKAZAN_PREGLED
(
    id int NOT NULL,
	tip varchar(20) not null,
	dodatanMaterijal varchar(50), --tipa izvestaj oftamologa/analiza urina/krvi...
	CONSTRAINT PK_zakazan_pregled PRIMARY KEY (id),
	CONSTRAINT FK_PREGLED_zakazan FOREIGN KEY(id) REFERENCES projekat.PREGLED(id),
	constraint CK_tipZakazan check (tip = 'KONTROLA' or tip = 'PRVA POSETA')
	
);



--11.DIJAGNOZA
CREATE TABLE projekat.DIJAGNOZA
(
    id int NOT NULL DEFAULT NEXT VALUE FOR projekat.seq_dijagnoza,
	latinskiNaziv varchar(50) not null,
	grupaBolesti varchar(30) not null,
	CONSTRAINT PK_dijagnoza PRIMARY KEY (id),
	CONSTRAINT CHK_DIJDOMENID CHECK(id>0)
);

--12.ODREDJUJE
CREATE TABLE projekat.ODREDJUJE
(
    
	pregledID int not null,
	dijagnozaID int not null,
	CONSTRAINT PK_odredjuje PRIMARY KEY (pregledID,dijagnozaID),
	CONSTRAINT FK_ODREDJUJE_PREGLED FOREIGN KEY(pregledID) references projekat.PREGLED(id),
	CONSTRAINT FK_ODREDJUJE_dijagnoza FOREIGN KEY(dijagnozaID) references projekat.DIJAGNOZA(id),

);

--13.OPRAVDANJE
CREATE TABLE projekat.OPRAVDANJE
(
    id int NOT NULL DEFAULT NEXT VALUE FOR projekat.seq_opravdanje,
	razlog varchar(100) not null,
	vaziDo date not null,
	pregledID int not null,
	CONSTRAINT PK_opravdanje PRIMARY KEY (id),
	CONSTRAINT FK_OPRAVDANJE_pregled FOREIGN KEY(pregledID) REFERENCES projekat.PREGLED(id),
	CONSTRAINT CHK_OPRAVDANJEID CHECK(id>0)

);

--14.BOLOVANJE
CREATE TABLE projekat.BOLOVANJE
(
    id int NOT NULL DEFAULT NEXT VALUE FOR projekat.seq_bolovanje,
	vaziDo date not null,
	pregledID int not null,
	starateljID int not null,
	CONSTRAINT PK_bolovanje PRIMARY KEY (id),
	CONSTRAINT FK_bolovanje_pregled FOREIGN KEY(pregledID) REFERENCES projekat.PREGLED(id),
	CONSTRAINT FK_bolovanje_staratelj FOREIGN KEY(starateljID) REFERENCES projekat.STARATELJ(id),
);

--15.RADI TOKOM
CREATE TABLE projekat.RADI_TOKOM
(
    
	id_termin int NOT NULL,
    id_radniKalendar int NOT NULL,
	lekarID int not null,
	zauzeo INT,
	CONSTRAINT PK_RADITOKOM PRIMARY KEY (lekarID,id_termin,id_radniKalendar),
	CONSTRAINT FK_raditokom_lekar FOREIGN KEY(lekarID) REFERENCES projekat.LEKAR(id),
	CONSTRAINT FK_raditokom_terminudanu FOREIGN KEY(id_termin,id_radniKalendar) REFERENCES projekat.PRIPADA_DANU(id_termin,id_radniKalendar),
	CONSTRAINT FK_raditokom_ZAUZEOkarton FOREIGN KEY(zauzeo) REFERENCES projekat.KARTON_PACIJENTA(id),
	CONSTRAINT CHK_RTZAUZEODOMEN CHECK(zauzeo>0)
);



