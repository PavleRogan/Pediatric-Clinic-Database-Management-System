--PROCEDURE--

/*
	1. Napisati proceduru koja ce za prosledjeni latinski naziv dijagnoze, upotrebom kursora
	ispisati podatke o pregledima na kojima je dijagnostifikovana ta bolest u sledecoj formi:
	Bolest: <latinski naziv> dijagnostifikovana je na sledecim pregledima:
	Pregled ID: <id>
	Datum: <datum>
	Simptomi: <simptomi>	
	Pacijent: <Ime i prezime> <lbo>
	Na kraju ispisati: Ukupan broj pregleda na kojima je dijagnostifikovana <latinskiNaziv>:<ukupanBroj>.
	Ukoliko nema pregleda na kojima je odredjena ta dijagnoza ispisati: Ni na jednom pregledu 
	nije dijagnostifikovana <latinskiNaziv>.

*/

IF OBJECT_ID('projekat.IspisiPregledeZaDijagnozu','P') IS NOT NULL
DROP PROC projekat.IspisiPregledeZaDijagnozu
go

CREATE PROCEDURE projekat.IspisiPregledeZaDijagnozu
    @latinskiNaziv varchar(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @pregledID int, @datum date, @simptomi varchar(200), @ime varchar(30), @prz varchar(35), @lbo varchar(10);
    DECLARE @brPregleda int,@dijagID int,@ukupanBr int
	set @dijagID=(select id from projekat.DIJAGNOZA where latinskiNaziv=@latinskiNaziv)
	set @brPregleda = (SELECT COUNT(*) FROM projekat.ODREDJUJE WHERE dijagnozaID=@dijagID)
    
	
	IF @brPregleda >0
	begin
			DECLARE curPregled CURSOR FOR
			SELECT p.id, p.datum, p.simptomi, k.ime, k.prz, k.lbo
			FROM projekat.PREGLED p
			JOIN projekat.KARTON_PACIJENTA k ON p.kartonID = k.id
			JOIN projekat.ODREDJUJE o ON p.id = o.pregledID
			JOIN projekat.DIJAGNOZA d ON o.dijagnozaID = d.id
			WHERE d.latinskiNaziv = @latinskiNaziv;
    
			PRINT 'Bolest '+ @latinskiNaziv + ' dijagnostifikovana je na sledecim pregledima:'
			PRINT '****************************************************************'
			
			OPEN curPregled;
    
			FETCH NEXT FROM curPregled INTO @pregledID, @datum, @simptomi, @ime, @prz, @lbo;
    
			WHILE @@FETCH_STATUS = 0
			BEGIN
				PRINT 'Pregled ID: ' + CAST(@pregledID AS varchar(10));
				PRINT 'Datum: ' + CAST(@datum AS varchar(20));
				PRINT 'Simptomi: ' + @simptomi;
				PRINT 'Pacijent: ' + @ime + ' ' + @prz + ' (LBO: ' + @lbo + ')';
				PRINT '------------------------------';
        
				FETCH NEXT FROM curPregled INTO @pregledID, @datum, @simptomi, @ime, @prz, @lbo;
			END;
    
			CLOSE curPregled;
			DEALLOCATE curPregled;

			set @ukupanBr=(select count(*) from projekat.ODREDJUJE where dijagnozaID=@dijagID)
			PRINT 'Ukupan broj pregleda na kojima je dijagnostifikovana ' + @latinskiNaziv + ':'+ convert(varchar,@ukupanBr)
	end;
	else 
	PRINT 'Ni na jednom pregledu nije dijagnostifikovana bolest:' + @latinskiNaziv
END;
GO
--1.POZIV
EXEC projekat.IspisiPregledeZaDijagnozu 'Influenza';
--2.POZIV
EXEC projekat.IspisiPregledeZaDijagnozu 'Hypertenzija';
--3.POZIV
EXEC projekat.IspisiPregledeZaDijagnozu 'Nepostojeca bolest';

/*
	2. Kreirati proceduru koja ce za prosledjeni id kartona pacijenta upotrebom kursora ispisati
	podatke o svim opravdanjima izdatim za tog pacijenta u sledecem formatu:
	Za pacijenta <Ime i prezime pacijenta> izdata su sledeca opravdanja:
	id opravdanja: <id>
	razlog: <razlog>
	vazi do: <datum do kad vazi>
	izdato datuma: <datum pregleda kad je izdato>.
	Na kraju ispisati ukupan broj opravdanja izdatih za pacijenta sa prosledjenim id-jem.
	Ukoliko za pacijenta sa prosledjenim id-jem nikada nisu izdavana opravdanja ispisati obavestenje o tome.
	Ukoliko pacijent sa prosledjenim id-jem ne postoji takodje prikazati  obavestenje.

*/
IF OBJECT_ID('projekat.IspisiOpravdanjaZaPacijenta','P') IS NOT NULL
DROP PROC projekat.IspisiOpravdanjaZaPacijenta
go


CREATE PROCEDURE projekat.IspisiOpravdanjaZaPacijenta
    @kartonID int
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @imePrezimePacijenta varchar(70);

    SELECT @imePrezimePacijenta = CONCAT(ime, ' ', prz)
    FROM projekat.KARTON_PACIJENTA
    WHERE id = @kartonID;

    IF @imePrezimePacijenta IS NULL
    BEGIN
        PRINT 'Pacijent sa prosleđenim ID-jem ne postoji.';
        RETURN;
    END;

    DECLARE @id_opravdanja int, @razlog varchar(100), @vaziDo date, @datumPregleda date;
    DECLARE @brojOpravdanja int = 0;

    
    DECLARE opravdanja_cursor CURSOR FOR
        SELECT O.id, razlog, vaziDo, P.datum
        FROM projekat.OPRAVDANJE O
		JOIN projekat.PREGLED P ON (O.pregledID=P.id)
        WHERE pregledID IN (SELECT id FROM projekat.PREGLED WHERE kartonID = @kartonID);

		PRINT 'Za pacijenta ' + @imePrezimePacijenta + ' izdata su sledeća opravdanja:';
 
    OPEN opravdanja_cursor;

    FETCH NEXT FROM opravdanja_cursor INTO @id_opravdanja, @razlog, @vaziDo, @datumPregleda;
    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @brojOpravdanja += 1;

        
        PRINT 'ID opravdanja: ' + CAST(@id_opravdanja AS varchar(10));
        PRINT 'Razlog: ' + @razlog;
        PRINT 'Važi do: ' + CONVERT(varchar, @vaziDo, 104);
        PRINT 'Izdato datuma: ' + CONVERT(varchar, @datumPregleda, 104);
        PRINT '';

        FETCH NEXT FROM opravdanja_cursor INTO @id_opravdanja, @razlog, @vaziDo, @datumPregleda;
    END;

    CLOSE opravdanja_cursor;
    DEALLOCATE opravdanja_cursor;

	IF @brojOpravdanja = 0 
	begin
		PRINT 'Ni jedno opravdanje nije izdato za ovog pacijenta'
	end
	else
	 PRINT 'Ukupan broj opravdanja izdatih za pacijenta sa ID-jem ' + CAST(@kartonID AS varchar(10)) + ': ' + CAST(@brojOpravdanja AS varchar(10));
END;
go

--1.POZIV
EXEC projekat.IspisiOpravdanjaZaPacijenta @kartonID = 1;
--2.POZIV
EXEC projekat.IspisiOpravdanjaZaPacijenta @kartonID = 99;
--3.POZIV
EXEC projekat.IspisiOpravdanjaZaPacijenta @kartonID = 13;


