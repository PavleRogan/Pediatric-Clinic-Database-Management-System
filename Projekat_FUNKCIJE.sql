----FUNKCIJE----

/* 
	1. Kreirati funkciju koja za prosledjeni pol pacijenta vraca ime,prezime, licni broj osiguranika,
	ime i prezime staratelja kao 'Staratelj' svih pacijenata kao i broj pregleda 
	na kojima su bili ti pacijenti sa registrovanim kartonom.
*/

IF OBJECT_ID('projekat.pacijentiPola','IF') IS NOT NULL
DROP FUNCTION projekat.pacijentiPola
go

CREATE FUNCTION projekat.pacijentiPola
(
	@pol CHAR(1)
)
RETURNS TABLE
AS
RETURN
(
    SELECT
        K.ime,
        K.prz,
        K.lbo,
        S.ime + ' ' + S.prz AS Staratelj,
		count(p.id) as brPregleda
    FROM
        projekat.KARTON_PACIJENTA K
        INNER JOIN projekat.STARATELJ S ON K.starateljID = S.id
		LEFT join projekat.pregled p on (K.id=p.kartonID)
    WHERE
        K.pol = @pol
	GROUP BY 
		K.ime,
        K.prz,
        K.lbo,
        S.ime + ' ' + S.prz 
);
GO
--1.POZIV
SELECT *
FROM projekat.pacijentiPola('M');
--2.POZIV
SELECT *
FROM projekat.pacijentiPola('F');

/*
	2. Na osnovu prosledjenog id-ja lekara, prikazati ukupan broj pregleda koje je 
	taj lekar izvrsio pre datuma koji je prosledjen funkciji, i na kojima je dijagnostifikovao 
	bolest sa prosledjenim nazivom.
*/

if OBJECT_ID ('projekat.brojPregleda', 'FN') is not null
	drop function projekat.brojPregleda
go

CREATE FUNCTION projekat.brojPregleda
(
	@lekarID as int,
	@datum as date,
	@nazivBolest as varchar(50)
)
RETURNS INT
AS
BEGIN
	declare @brPregleda int
	set @brPregleda=(SELECT COUNT(*) 
				FROM projekat.ODREDJUJE o
				JOIN projekat.PREGLED p on o.pregledID=p.id
				JOIN projekat.DIJAGNOZA d ON o.dijagnozaID = d.id
				WHERE p.lekarID = @lekarID
				  AND d.latinskiNaziv = @nazivBolest
				  AND p.datum < @datum
				)
		RETURN @brPregleda;
END

--1.POZIV
select projekat.brojPregleda(1,'2024-01-01','Influenza') as BrojPregleda
--2.POZIV
select projekat.brojPregleda(2,'2024-02-01','Alergija') as BrojPregleda
--3.POZIV
select projekat.brojPregleda(4,'2024-01-01','Hypertenzija') as BrojPregleda

