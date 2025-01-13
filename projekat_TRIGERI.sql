--TRIGERI--

/*
	1. Napisati triger koji implementira poslovno pravilo da se pre izdavanja opravdanja na pregledu, 
	mora proveriti da li je pacijentu na pregledu dijagnostifikovana neka bolest, odnosno onemoguciti
	izdavanje opravdanja ukoliko je pacijent zdrav. Ukoliko je aktivnost onemogucena ispisati obavestenje.
	Takodje nemoguce je izdati opravdanje ukoliko u trenutku izdavanja predhodno opravdanje koje je izdato tom 
	pacijentu nije isteklo.
*/

IF OBJECT_ID('projekat.dozvolaZaOpravdanje','TR')is not null
drop trigger projekat.dozvolaZaOpravdanje;
GO

CREATE TRIGGER projekat.dozvolaZaOpravdanje
ON projekat.OPRAVDANJE
INSTEAD OF INSERT
AS
BEGIN
	DECLARE @idOpravdanja int,@vaziDo date, @razlog varchar(100),@pregledID int
	set @idOpravdanja=(SELECT id from inserted)
	set @vaziDo=(SELECT vaziDo from inserted)
	set @razlog=(SELECT razlog from inserted)
	set @pregledID=(SELECT pregledID from inserted)

	DECLARE @idPacijenta int
	set @idPacijenta=(SELECT kartonID from projekat.pregled where id=@pregledID)

	DECLARE @idDijagnoze int
	set @idDijagnoze=(select dijagnozaID from projekat.ODREDJUJE where pregledID=@pregledID)


	DECLARE @prosloOpravdanje int
	set @prosloOpravdanje =(select top 1 o.id from projekat.OPRAVDANJE o join projekat.PREGLED p on
	(o.pregledID=p.id) where p.kartonID=@idPacijenta order by o.id desc)

	DECLARE @datumProslogOpravdanja date

	DECLARE @datumPregleda date
	set @datumPregleda = (select datum from projekat.PREGLED where id=@pregledID)


	IF (@prosloOpravdanje IS NULL)
		BEGIN
			set @datumProslogOpravdanja = '2000-01-01'
		END
	ELSE 
		begin		
			set @datumProslogOpravdanja=(select vaziDo from projekat.OPRAVDANJE where id=@prosloOpravdanje)
		end

	IF (@idDijagnoze = (select id from projekat.DIJAGNOZA where latinskiNaziv='ZDRAV'))
			BEGIN
				 RAISERROR ('Opravdanje se može izdati samo ako je pacijentu na pregledu dijagnostifikovana bolest.', 16, 1);
			END
		ELSE 
			BEGIN
				IF(@datumProslogOpravdanja < @datumPregleda)
					begin
						INSERT INTO projekat.OPRAVDANJE(id,razlog,vaziDo,pregledID)
						VALUES (@idOpravdanja,@razlog,@vaziDo,@pregledID)
					end
				ELSE 
					BEGIN
						RAISERROR ('Opravdanje se može izdati samo ako je predhodno opravdanje isteklo!', 16, 1);
					END
			END
END
GO
--1.POZIV
INSERT INTO projekat.OPRAVDANJE (razlog, vaziDo, pregledID)
VALUES ('Izostanak iz škole', '2023-11-11', 18);
--ne upisuje se jer je na pregledu 18 dijagnoza 'ZDRAV'

select * from projekat.opravdanje

--2.POZIV
INSERT INTO projekat.OPRAVDANJE (razlog, vaziDo, pregledID)
VALUES ('Izostanak iz škole', '2023-10-10', 27);
--ne upisuje se, pacijent sa pregleda 27 ima opravdanje koju jos traje

select * from projekat.opravdanje

--3.POZIV
INSERT INTO projekat.OPRAVDANJE (razlog, vaziDo, pregledID)
VALUES ('Izostanak iz škole', '2023-10-10', 11);
--uspesno upisano

select * from projekat.opravdanje

/*
	2. Triger koji je potrebno aktivirati kada neko prilikom izdavanja bolovanja staratelju pacijenta
	za datum koji oznacava do kad vazi bolovanje unese datum manji od datuma kada je izvrsen pregled
	na kom je to bolovanje izdato. Ukoliko se to dogodi ispisuje se poruka: Nije moguce otvoriti bolovanje 
	staratelja, jer uneti datum nije odgovarajući. Ukoliko sve u redu, ispisuje se poruka: Bolovanje je otvoreno.
	Otvaranje bolovanja je moguce samo za staratelja navedenog u kartonu pacijenta koji je bio na pregledu.
*/

IF OBJECT_ID('projekat.validnoBolovanje','TR')is not null
drop trigger projekat.validnoBolovanje;
GO

CREATE TRIGGER projekat.validnoBolovanje
ON projekat.BOLOVANJE
INSTEAD OF INSERT,UPDATE
AS
BEGIN
	IF UPDATE(vaziDo)
	BEGIN

		DECLARE @id AS int
		DECLARE @vaziDo AS date
		DECLARE @pregledID AS int
		DECLARE @starateljID AS int

		set @id =(SELECT id from inserted)
		set @vaziDo =(SELECT vaziDo from inserted)
		set @pregledID =(SELECT pregledID from inserted)
		set @starateljID =(SELECT starateljID from inserted)

		declare @starateljPacijentaSaPregleda int
		set @starateljPacijentaSaPregleda =(select starateljID from projekat.pregled p 
		                                    join projekat.KARTON_PACIJENTA kp on (p.kartonID=kp.id) 
											where p.id=@pregledID)

		declare @datumPregleda date
		set @datumPregleda = (select datum from projekat.PREGLED where id=@pregledID)

		IF(@starateljPacijentaSaPregleda = @starateljID)
		BEGIN
				IF @vaziDo < @datumPregleda
			BEGIN
				PRINT 'Nije moguce otvoriti bolovanje 
					   staratelja, jer uneti datum nije odgovarajući.'
			END
			ELSE 
			BEGIN	
				INSERT INTO projekat.BOLOVANJE values(@id,@vaziDo,@pregledID,@starateljID)
				PRINT 'Bolovanje je otvoreno!'
			END
		END
		ELSE
		BEGIN
			print 'Nije moguce otvoriti bolovanje za staratelja sa id-jem:' + convert(varchar,@starateljID)
		END

	END
	
END


--1.POZIV
INSERT INTO projekat.BOLOVANJE(vaziDo,pregledID,starateljID) values('2023-07-01',10,10)
--NIJE MOGUCE JER DATUM NIJE ODGOVARAJUCI
SELECT * FROM projekat.BOLOVANJE
--2.POZIV
INSERT INTO projekat.BOLOVANJE(vaziDo,pregledID,starateljID) values('2023-07-01',10,11)
--NIJE MOGUCE JER STARATELJ NIJE ODGOVARAJUCI
SELECT * FROM projekat.BOLOVANJE
--3.POZIV
INSERT INTO projekat.BOLOVANJE(vaziDo,pregledID,starateljID) values('2023-10-01',10,10)
--USPESNO OTVARANJE BOLOVANJA
SELECT * FROM projekat.BOLOVANJE
--4.POZIV
UPDATE projekat.BOLOVANJE 
SET vaziDo = '2023-07-01'
where id=13

