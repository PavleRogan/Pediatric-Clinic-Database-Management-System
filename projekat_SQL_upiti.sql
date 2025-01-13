--------SQL UPITI--------


/* 
	1. Izlistaj licne brojeve,imena i prezimena pacijenata kao "Ime i prezime" iz kartona pacijenta 
	koji su imali vise od dva pregleda kod lekara sa prosledjenim imenom i prezimenom(Ana Milic),
	rezultat sortirati opadajuce po imenu.
	
*/
	SELECT k.lbo,CONCAT(k.ime,' ', k.prz) as "Ime i prezime", COUNT(p.id) AS broj_pregleda
	FROM projekat.KARTON_PACIJENTA k
	JOIN projekat.PREGLED p ON k.id = p.kartonID
	JOIN projekat.LEKAR l ON p.lekarID = l.id
	WHERE l.ime = 'Ana' AND l.prz = 'Milic'
	GROUP BY k.lbo, k.ime, k.prz
	HAVING COUNT(p.id) > 2
	ORDER BY k.ime desc;

/*
	2. Prikazi prosecno vreme trajanja pregleda kao "prosecno_vreme" muskih i zenskih pacijenata u zavisnosti od tipa
	izvrsenog pregleda. Rezultate prikazati po rastucoj vrednosti prosecnog 
	vremena trajanja pregleda.
*/
	
	SELECT K.pol, IIF(Z.tip IS NULL, 'HITAN', Z.tip) AS tip , AVG(P.trajanje) AS prosecno_vreme
	FROM projekat.KARTON_PACIJENTA K
	JOIN projekat.PREGLED P ON K.id = P.kartonID
	left JOIN projekat.ZAKAZAN_PREGLED Z ON P.id = Z.id
	left JOIN projekat.HITAN_PREGLED H ON P.id = H.id
	GROUP BY K.pol, Z.tip
	ORDER BY prosecno_vreme asc


/*
	3. Prikazi Ime kao 'ImeDoktora', prezime kao 'PrezimeDoktora' koji
	su u periodu od 01.09.2023. do 10.09.2023. imali bar dve hitne intervencije
	koja su imale visoku ocenu hitnosti, na osnovu opadajuceg broja izvrsenih takvih intervencija.
*/

SELECT
    L.ime AS ImeDoktora,
    L.prz AS PrezimeDoktora,
    P.tip_pregleda,
    HP.ocenaHitnosti AS NivoHitnosti,
	COUNT(HP.id) AS BrojIntervencija
FROM
    projekat.LEKAR L
    JOIN projekat.PREGLED P ON L.id = P.lekarID
    JOIN projekat.HITAN_PREGLED HP ON P.id = HP.id
WHERE
    P.datum >= '2023-09-01' AND P.datum <= '2023-09-10' and ocenaHitnosti='VISOK'
GROUP BY
    L.ime,
    L.prz,
    P.tip_pregleda,
    HP.ocenaHitnosti
HAVING
	COUNT(HP.id)>1
ORDER BY BrojIntervencija desc
    

/*
	4.	Prikazati dva lekara koja rade i imaju najveci broj slobodnih termina u prvoj smeni 01.09.2023.
		Za svakog prikazati: id kao 'idLekara',
		ime i prezime kao 'Ime i prezime' i broj ordinacije kao 'ordinacija' i
		broj preostalih slobodnih termina u prvoj smeni u toku kojih niko nije zakazao pregled.
		Prikazani lekari moraju da imaju vise od 2 slobodna termina da bi se nasli u rezultatu upita.		
*/

	SELECT  top 2 L.ID AS idLekara,CONCAT(ime,' ', prz) as 'Ime i prezime',br_ordinacije as 'Ordinacija',
	COUNT(RT.lekarID) as BrSlobodnihTermina
	FROM projekat.LEKAR L 
	JOIN projekat.RADI_TOKOM RT on (L.id=RT.lekarID)
	JOIN projekat.TERMIN t on (t.id_termin=RT.id_termin)
	WHERE RT.zauzeo IS NULL and
	RT.id_radniKalendar =(select id_radniKalendar from projekat.RADNI_KALENDAR 
															WHERE datum='2023-09-01') 
	AND t.rbr_smena=1
	GROUP BY L.id,ime,prz,br_ordinacije
	HAVING COUNT(RT.lekarID)>2
	ORDER BY BrSlobodnihTermina desc



/*
	5. Prikazi imena,prezimena kao 'prezime' i  kontakte svih staratelja pacijenata muskog pola koji imaju vise od
		5 godina i kojima je bar na jednom pregledu izvrsenom od pocetka prosle skolske godine
		dijagnostifikovana bolest sa latinskim nazivom 'Influenza'. Ispisati rezultat sortiran na 
		osnovu imena staratelja.
*/


	SELECT s.ime, s.prz as prezime, s.kontakt
	FROM projekat.STARATELJ s
	JOIN projekat.KARTON_PACIJENTA k ON s.id = k.starateljID
	JOIN projekat.PREGLED p ON k.id = p.kartonID
	JOIN projekat.ODREDJUJE o ON p.id = o.pregledID
	JOIN projekat.DIJAGNOZA d ON o.dijagnozaID = d.id
	WHERE k.pol = 'M'
		AND DATEDIFF(YEAR, k.datumRodnjenja, GETDATE()) > 5
		AND d.latinskiNaziv = 'Influenza'
		AND p.datum >= DATEFROMPARTS(YEAR(GETDATE()) - 1, 9, 1)
	ORDER BY s.ime desc;
	









