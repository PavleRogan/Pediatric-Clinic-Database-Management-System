
--SMENA
INSERT INTO projekat.SMENA (vremeOd, vremeDo) VALUES ('08:00', '16:00');
INSERT INTO projekat.SMENA (vremeOd, vremeDo) VALUES ('16:00', '00:00');
INSERT INTO projekat.SMENA (vremeOd, vremeDo) VALUES ('00:00', '08:00');



--TERMIN

INSERT INTO projekat.TERMIN (vremePocetka, vremeZavrsetka, rbr_smena)
VALUES ('00:00:00', '01:00:00', 3);

INSERT INTO projekat.TERMIN (vremePocetka, vremeZavrsetka, rbr_smena)
VALUES ('01:00:00', '02:00:00', 3);

INSERT INTO projekat.TERMIN (vremePocetka, vremeZavrsetka, rbr_smena)
VALUES ('02:00:00', '03:00:00', 3);

INSERT INTO projekat.TERMIN (vremePocetka, vremeZavrsetka, rbr_smena)
VALUES ('08:00:00', '09:00:00', 1);

INSERT INTO projekat.TERMIN (vremePocetka, vremeZavrsetka, rbr_smena)
VALUES ('09:00:00', '10:00:00', 1);

INSERT INTO projekat.TERMIN (vremePocetka, vremeZavrsetka, rbr_smena)
VALUES ('10:00:00', '11:00:00', 1);

INSERT INTO projekat.TERMIN (vremePocetka, vremeZavrsetka, rbr_smena)
VALUES ('11:00:00', '12:00:00', 1);

INSERT INTO projekat.TERMIN (vremePocetka, vremeZavrsetka, rbr_smena)
VALUES ('12:00:00', '13:00:00', 1);

INSERT INTO projekat.TERMIN (vremePocetka, vremeZavrsetka, rbr_smena)
VALUES ('13:00:00', '14:00:00', 1);



INSERT INTO projekat.TERMIN (vremePocetka, vremeZavrsetka, rbr_smena)
VALUES ('14:00:00', '15:00:00', 1);
INSERT INTO projekat.TERMIN (vremePocetka, vremeZavrsetka, rbr_smena)
VALUES ('15:00:00', '16:00:00', 1);
INSERT INTO projekat.TERMIN (vremePocetka, vremeZavrsetka, rbr_smena)
VALUES ('16:00:00', '17:00:00', 2);
INSERT INTO projekat.TERMIN (vremePocetka, vremeZavrsetka, rbr_smena)
VALUES ('17:00:00', '18:00:00', 2);



--RADNI KALENDAR
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (1, '2023-09-01');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (2, '2023-09-02');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (3, '2023-09-03');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (4, '2023-09-04');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (5, '2023-09-05');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (6, '2023-09-06');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (7, '2023-09-07');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (8, '2023-09-08');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (9, '2023-09-09');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (10, '2023-09-10');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (11, '2023-09-11');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (12, '2023-09-12');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (13, '2023-09-13');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (14, '2023-09-14');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (15, '2023-09-15');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (16, '2023-09-16');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (17, '2023-09-17');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (18, '2023-09-18');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (19, '2023-09-19');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (20, '2023-09-20');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (21, '2023-09-21');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (22, '2023-09-22');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (23, '2023-09-23');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (24, '2023-09-24');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (25, '2023-09-25');
INSERT INTO projekat.RADNI_KALENDAR (id_radniKalendar, datum) VALUES (26, '2023-09-26');



--PRIPADA_DANU

INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES (4, 1);
INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES (5, 1);
INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES (6, 1);
INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES ( 7, 4);
INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES ( 8, 5);
INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES (9, 6);
INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES (10, 7);
INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES (11, 8);
INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES (12, 9);
INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES ( 13, 10);
INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES ( 1, 11);
INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES ( 2, 12);
INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES ( 3, 13);

INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES (7, 1);
INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES (8, 1);
INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES (9, 1);
INSERT INTO projekat.PRIPADA_DANU (id_termin, id_radniKalendar) VALUES (10, 1);




--LEKAR
INSERT INTO projekat.LEKAR (br_ordinacije, ime, prz)
VALUES (1, 'Ana', 'Milic');

INSERT INTO projekat.LEKAR (br_ordinacije, ime, prz)
VALUES (2, 'Marko', 'Jovanovic');

INSERT INTO projekat.LEKAR (br_ordinacije, ime, prz)
VALUES (3, 'Milena', 'Nikolic');

INSERT INTO projekat.LEKAR (br_ordinacije, ime, prz)
VALUES (4, 'Nikola', 'Petrović');

INSERT INTO projekat.LEKAR (br_ordinacije, ime, prz)
VALUES (5, 'Jovana', 'Đorđević');

INSERT INTO projekat.LEKAR (br_ordinacije, ime, prz)
VALUES (6, 'Stefan', 'Popović');

INSERT INTO projekat.LEKAR (br_ordinacije, ime, prz)
VALUES (7, 'Milica', 'Stojanović');

INSERT INTO projekat.LEKAR (br_ordinacije, ime, prz)
VALUES (8, 'Luka', 'Simić');

INSERT INTO projekat.LEKAR (br_ordinacije, ime, prz)
VALUES (9, 'Jelena', 'Kovačević');

INSERT INTO projekat.LEKAR (br_ordinacije, ime, prz)
VALUES (10, 'Đorđe', 'Marković');

--STARATELJ

INSERT INTO projekat.STARATELJ (jmbg, ime, prz, kontakt, nazMestaZap)
VALUES ('1234567890123', 'Milica', 'Ilić', '+381697836009', 'Elektrokom');

INSERT INTO projekat.STARATELJ (jmbg, ime, prz, kontakt, nazMestaZap)
VALUES ('2345678901234', 'Marko', 'Jovanović', '+3816978116789', 'Metalka');

INSERT INTO projekat.STARATELJ (jmbg, ime, prz, kontakt, nazMestaZap)
VALUES ('3456789012345', 'Jovana', 'Nikolić', '+381697855589', 'Građevinac');

INSERT INTO projekat.STARATELJ (jmbg, ime, prz, kontakt, nazMestaZap)
VALUES ('4567890123456', 'Nikola', 'Petrović', '+381633336789', 'AutoMoto');

INSERT INTO projekat.STARATELJ (jmbg, ime, prz, kontakt, nazMestaZap)
VALUES ('5678901234567', 'Milena', 'Đorđević', '+381657878789', 'AgroKomerc');

INSERT INTO projekat.STARATELJ (jmbg, ime, prz, kontakt, nazMestaZap)
VALUES ('6789012345678', 'Stefan', 'Popović', '+381657855789', 'Informatika');

INSERT INTO projekat.STARATELJ (jmbg, ime, prz, kontakt, nazMestaZap)
VALUES ('7890123456789', 'Jelena', 'Stojanović', '+381637822729', 'Energoprojekt');

INSERT INTO projekat.STARATELJ (jmbg, ime, prz, kontakt, nazMestaZap)
VALUES ('8901234567890', 'Luka', 'Simić', '+381637812721', 'Farmakom');

INSERT INTO projekat.STARATELJ (jmbg, ime, prz, kontakt, nazMestaZap)
VALUES ('9012345678901', 'Ana', 'Kovačević', '+381647331710', 'Metalac');

INSERT INTO projekat.STARATELJ (jmbg, ime, prz, kontakt, nazMestaZap)
VALUES ('0123456789012', 'Milan', 'Marković', '+381692123789', 'Hemofarm');

INSERT INTO projekat.STARATELJ (jmbg, ime, prz, kontakt, nazMestaZap)
VALUES ('9876543210123', 'Jasna', 'Ivanović', '+381634566789', 'Merkur');

INSERT INTO projekat.STARATELJ (jmbg, ime, prz, kontakt, nazMestaZap)
VALUES ('8765432101234', 'Darko', 'Pavlović', '+381697836789', 'Delta');

INSERT INTO projekat.STARATELJ (jmbg, ime, prz, kontakt, nazMestaZap)
VALUES ('7654321092345', 'Marija', 'Lukić', '+381691111119', 'SrbijaGas');

INSERT INTO projekat.STARATELJ (jmbg, ime, prz, kontakt, nazMestaZap)
VALUES ('6543210983456', 'Bojan', 'Vuković', '+381692344444', 'NIS');

INSERT INTO projekat.STARATELJ (jmbg, ime, prz, kontakt, nazMestaZap)
VALUES ('5432109874567', 'Sara', 'Milić', '+381697830001', 'Imlek');


--KARTON PACIJENTA
INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('1230567890', '1234007890123', 'Jovana', 'Ilić', '2010-01-01', 'F', 1, 1);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('2345678901', '2345678901234', 'Predrag', 'Jovanović', '2010-02-02', 'M', 2, 2);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('3456789012', '3456789012345', 'Jelena', 'Nikolić', '2010-03-03', 'F', 3, 3);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('4567890123', '4567890123456', 'Stefan', 'Petrović', '2010-04-04', 'M', 4, 4);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('5678901234', '5678901234567', 'Mila', 'Đorđević', '2010-05-05', 'F', 5, 5);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('6789012345', '6789012345678', 'Strahinja', 'Popović', '2010-06-06', 'M', 6, 6);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('7890123456', '7890123456789', 'Jelica', 'Stojanović', '2010-07-07', 'F', 7, 7);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('8901234567', '8901234567890', 'Djordje', 'Simić', '2010-08-08', 'M', 8, 8);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('9012345678', '9012345678901', 'Marija', 'Kovačević', '2015-09-09', 'F', 9, 9);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('1114567890', '0123456789012', 'Miladin', 'Marković', '2015-10-10', 'M', 10, 10);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('1125678901', '9876543210123', 'Jana', 'Ivanović', '2015-11-11', 'F', 11, 1);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('1156789012', '8765432101234', 'Danijel', 'Pavlović', '2020-12-12', 'M', 12, 2);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('4522890123', '7654321092345', 'Marijana', 'Lukić', '2011-01-01', 'F', 13, 3);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('5670901234', '6543210983456', 'Boris', 'Vuković', '2011-02-02', 'M', 14, 4);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('6700012345', '5432109874567', 'Olja', 'Milić', '2011-03-03', 'F', 15, 5);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('1232567220', '1004567890123', 'Milica', 'Ilić', '2010-01-01', 'F', 1, 1);

INSERT INTO projekat.KARTON_PACIJENTA (lbo, jmbg, ime, prz, datumRodnjenja, pol, starateljID, lekarID)
VALUES ('1231117890', '1234507890103', 'Ivana', 'Ilić', '2010-01-01', 'F', 1, 1);



--PREGLED
INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (35, 1, 'Bol u grlu, curenje iz nosa', 1, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 1), 'HITAN', '2023-09-01');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 2, 'Kašalj, visoka temperatura', 2, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 2), 'ZAKAZAN', '2023-09-01');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (50, 3, 'Mučnina, glavobolja', 3, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 3), 'HITAN', '2023-09-01');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 4, 'Osip po koži, svrab', 4, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 4), 'ZAKAZAN', '2023-09-01');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 5, 'Bolovi u stomaku, dijareja', 5, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 5), 'HITAN', '2023-09-01');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (50, 6, 'Bol u leđima, ukočenost', 6, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 6), 'ZAKAZAN', '2023-09-01');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 7, 'Vrtoglavica, malaksalost', 7, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 7), 'HITAN', '2023-09-01');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 8, 'Gubitak apetita, umor', 8, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 8), 'ZAKAZAN', '2023-09-01');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (60, 9, 'Problemi sa disanjem, kašalj', 9, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 9), 'HITAN', '2023-09-02');


INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 10, 'Bol u zglobovima, oticanje', 10, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 10), 'ZAKAZAN', '2023-09-02');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 11, 'Gorušica, želudačne tegobe', 11, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 11), 'HITAN', '2023-09-02');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 12, 'Bol u grudima, otežano disanje', 12, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 12), 'ZAKAZAN', '2023-09-02');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 13, 'Glavobolja, vrtoglavica', 13, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 13), 'HITAN', '2023-09-02');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 14, 'Povišen krvni pritisak, umor', 14, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 14), 'ZAKAZAN', '2023-09-03');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 15, 'Problemi sa vidom, crvenilo očiju', 15, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 15), 'HITAN', '2023-09-03');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (40, 1, 'Bolovi u stomaku, mučnina', 1, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 1), 'ZAKAZAN', '2023-09-03');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (20, 2, 'Kijavica, svrab u nosu', 2, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 2), 'HITAN', '2023-09-03');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (45, 3, 'Bolovi u leđima, osećaj trnjenja', 3, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 3), 'ZAKAZAN', '2023-09-03');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 4, 'Gubitak sluha, zvonjava u ušima', 4, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 4), 'HITAN', '2023-09-03');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 5, 'Umor, nedostatak energije', 5, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 5), 'ZAKAZAN', '2023-09-03');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 1, 'Temperatura, kasalj', 1, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 1), 'ZAKAZAN', '2023-09-09');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 5, 'Grcevi u stomaku, dijareja', 5, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 5), 'ZAKAZAN', '2023-09-09');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 5, 'Pacijent se subjektivno oseca dobro', 5, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 5), 'ZAKAZAN', '2023-09-19');


INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 11, 'Bol u stomaku', 11, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 11), 'ZAKAZAN', '2023-09-09');


INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 11, 'Povisena temperatura, kasalj', 11, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 11), 'ZAKAZAN', '2023-09-19');


INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (30, 11, 'Gorušica, želudačne tegobe', 11, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 11), 'HITAN', '2023-10-01');


INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (35, 1, 'Bol u grlu, curenje iz nosa, kasalj', 2, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 2), 'ZAKAZAN', '2023-09-01');

INSERT INTO projekat.PREGLED (trajanje, brSobe, simptomi, kartonID, lekarID, tip_pregleda,datum)
VALUES (50, 9, 'Problemi sa disanjem, kašalj', 9, (SELECT lekarID FROM projekat.KARTON_PACIJENTA WHERE id = 9), 'HITAN', '2023-09-03');


--HITAN_PREGLED
INSERT INTO projekat.HITAN_PREGLED (id, ocenaHitnosti)
VALUES (1, 'VISOK');

INSERT INTO projekat.HITAN_PREGLED (id, ocenaHitnosti)
VALUES (3, 'VISOK');

INSERT INTO projekat.HITAN_PREGLED (id, ocenaHitnosti)
VALUES (5, 'VISOK');

INSERT INTO projekat.HITAN_PREGLED (id, ocenaHitnosti)
VALUES (7, 'NIZAK');

INSERT INTO projekat.HITAN_PREGLED (id, ocenaHitnosti)
VALUES (9, 'VISOK');

INSERT INTO projekat.HITAN_PREGLED (id, ocenaHitnosti)
VALUES (11, 'VISOK');

INSERT INTO projekat.HITAN_PREGLED (id, ocenaHitnosti)
VALUES (13, 'NIZAK');

INSERT INTO projekat.HITAN_PREGLED (id, ocenaHitnosti)
VALUES (15, 'SREDNJI');

INSERT INTO projekat.HITAN_PREGLED (id, ocenaHitnosti)
VALUES (17, 'VISOK');

INSERT INTO projekat.HITAN_PREGLED (id, ocenaHitnosti)
VALUES (19, 'NIZAK');
INSERT INTO projekat.HITAN_PREGLED (id, ocenaHitnosti)
VALUES (28, 'VISOK');



--ZAKAZAN PREGLED
INSERT INTO projekat.ZAKAZAN_PREGLED (id, tip, dodatanMaterijal)
VALUES (2, 'KONTROLA', 'Analiza urina');

INSERT INTO projekat.ZAKAZAN_PREGLED (id, tip, dodatanMaterijal)
VALUES (4, 'PRVA POSETA', 'Analiza krvi');

INSERT INTO projekat.ZAKAZAN_PREGLED (id, tip, dodatanMaterijal)
VALUES (6, 'KONTROLA', 'Izveštaj specijaliste');

INSERT INTO projekat.ZAKAZAN_PREGLED (id, tip, dodatanMaterijal)
VALUES (8, 'PRVA POSETA', 'Sistematski pregled');

INSERT INTO projekat.ZAKAZAN_PREGLED (id, tip)
VALUES (10, 'KONTROLA');

INSERT INTO projekat.ZAKAZAN_PREGLED (id, tip, dodatanMaterijal)
VALUES (12, 'PRVA POSETA', 'Snimak pluca');

INSERT INTO projekat.ZAKAZAN_PREGLED (id, tip, dodatanMaterijal)
VALUES (14, 'KONTROLA', 'Ultrazvuk abdomena');

INSERT INTO projekat.ZAKAZAN_PREGLED (id, tip)
VALUES (16, 'PRVA POSETA');

INSERT INTO projekat.ZAKAZAN_PREGLED (id, tip, dodatanMaterijal)
VALUES (18, 'KONTROLA', 'Oftalmološki pregled');

INSERT INTO projekat.ZAKAZAN_PREGLED (id, tip)
VALUES (20, 'PRVA POSETA');


--DIJAGNOZA
INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Influenza', 'Respiratorne bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Gastritis', 'Gastroenterološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Hypertenzija', 'Kardiovaskularne bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Artritis', 'Reumatske bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Dijabetes mellitus', 'Endokrinološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Migrena', 'Neurološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Bronhitis', 'Respiratorne bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Dermatitis', 'Dermatološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Gastric ulkus', 'Gastroenterološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Alergija', 'Imunološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Hipotireoza', 'Endokrinološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Epilepsija', 'Neurološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Pneumonija', 'Respiratorne bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Psorijaza', 'Dermatološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Kamen u bubregu', 'Urološke bolesti');
INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Fibrodysplasia ossificans progressiva', 'Genetske bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Paraneoplastic pemphigus', 'Dermatološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Aphantasia', 'Neurološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Harlequin ichthyosis', 'Dermatološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Alice in Wonderland syndrome', 'Neurološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Epidermodysplasia verruciformis', 'Dermatološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Cataplexy', 'Neurološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Ehlers-Danlos syndrome', 'Genetske bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Pantothenate kinase neurodegeneration', 'Neurološke bolesti');

INSERT INTO projekat.DIJAGNOZA (latinskiNaziv, grupaBolesti)
VALUES ('Stiff person syndrome', 'Neurološke bolesti');

INSERT INTO projekat.DIJAGNOZA (id,latinskiNaziv, grupaBolesti)
VALUES (999,'ZDRAV', 'ZDRAV');


--ODREDNJUJE

INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (1,1)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (2,1)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (3,2)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (4,8)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (5,9)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (6,1)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (7,3)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (8,11)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (9,7)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (10,13)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (11,9)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (12,13)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (13,6)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (14,3)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (15,10)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (16,2)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (17,10)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (18,999)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (19,3)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (20,5)
INSERT INTO projekat.ODREDJUJE(pregledID,dijagnozaID) 
VALUES (27,1)


--OPRAVDANJE
INSERT INTO projekat.OPRAVDANJE (razlog, vaziDo, pregledID)
VALUES ('Izostanak iz škole', '2023-09-12', 1);

INSERT INTO projekat.OPRAVDANJE (razlog, vaziDo, pregledID)
VALUES ('Izostanak sa treninga', '2023-09-15', 2);

INSERT INTO projekat.OPRAVDANJE (razlog, vaziDo, pregledID)
VALUES ('Izostanak iz škole', '2023-09-18', 3);

INSERT INTO projekat.OPRAVDANJE (razlog, vaziDo, pregledID)
VALUES ('Izostanak sa treninga', '2023-09-21', 4);

INSERT INTO projekat.OPRAVDANJE (razlog, vaziDo, pregledID)
VALUES ('Izostanak iz škole', '2023-09-24', 5);

INSERT INTO projekat.OPRAVDANJE (razlog, vaziDo, pregledID)
VALUES ('Izostanak sa treninga', '2023-09-27', 6);

INSERT INTO projekat.OPRAVDANJE (razlog, vaziDo, pregledID)
VALUES ('Izostanak iz škole', '2023-09-30', 7);

INSERT INTO projekat.OPRAVDANJE (razlog, vaziDo, pregledID)
VALUES ('Izostanak sa treninga', '2023-10-03', 8);

INSERT INTO projekat.OPRAVDANJE (razlog, vaziDo, pregledID)
VALUES ('Izostanak iz škole', '2023-10-06', 9);

INSERT INTO projekat.OPRAVDANJE (razlog, vaziDo, pregledID)
VALUES ('Izostanak sa treninga', '2023-10-09', 10);


--BOLOVANJE

INSERT INTO projekat.BOLOVANJE (vaziDo, pregledID, starateljID)
VALUES ('2023-09-15', 10, (SELECT starateljID FROM projekat.KARTON_PACIJENTA WHERE id = (SELECT kartonID FROM projekat.PREGLED WHERE id = 10)));

INSERT INTO projekat.BOLOVANJE (vaziDo, pregledID, starateljID)
VALUES ('2023-09-18', 11, (SELECT starateljID FROM projekat.KARTON_PACIJENTA WHERE id = (SELECT kartonID FROM projekat.PREGLED WHERE id = 11)));

INSERT INTO projekat.BOLOVANJE (vaziDo, pregledID, starateljID)
VALUES ('2023-09-21', 12, (SELECT starateljID FROM projekat.KARTON_PACIJENTA WHERE id = (SELECT kartonID FROM projekat.PREGLED WHERE id = 12)));

INSERT INTO projekat.BOLOVANJE (vaziDo, pregledID, starateljID)
VALUES ('2023-09-24', 13, (SELECT starateljID FROM projekat.KARTON_PACIJENTA WHERE id = (SELECT kartonID FROM projekat.PREGLED WHERE id = 13)));

INSERT INTO projekat.BOLOVANJE (vaziDo, pregledID, starateljID)
VALUES ('2023-09-27', 14, (SELECT starateljID FROM projekat.KARTON_PACIJENTA WHERE id = (SELECT kartonID FROM projekat.PREGLED WHERE id = 14)));

INSERT INTO projekat.BOLOVANJE (vaziDo, pregledID, starateljID)
VALUES ('2023-09-30', 15, (SELECT starateljID FROM projekat.KARTON_PACIJENTA WHERE id = (SELECT kartonID FROM projekat.PREGLED WHERE id = 15)));

INSERT INTO projekat.BOLOVANJE (vaziDo, pregledID, starateljID)
VALUES ('2023-10-03', 16, (SELECT starateljID FROM projekat.KARTON_PACIJENTA WHERE id = (SELECT kartonID FROM projekat.PREGLED WHERE id = 16)));

INSERT INTO projekat.BOLOVANJE (vaziDo, pregledID, starateljID)
VALUES ('2023-10-06', 17, (SELECT starateljID FROM projekat.KARTON_PACIJENTA WHERE id = (SELECT kartonID FROM projekat.PREGLED WHERE id = 17)));

INSERT INTO projekat.BOLOVANJE (vaziDo, pregledID, starateljID)
VALUES ('2023-10-09', 18, (SELECT starateljID FROM projekat.KARTON_PACIJENTA WHERE id = (SELECT kartonID FROM projekat.PREGLED WHERE id = 18)));

INSERT INTO projekat.BOLOVANJE (vaziDo, pregledID, starateljID)
VALUES ('2023-10-12', 19, (SELECT starateljID FROM projekat.KARTON_PACIJENTA WHERE id = (SELECT kartonID FROM projekat.PREGLED WHERE id = 19)));

--RADI TOKOM

INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (4,1,1,1)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (5,1,1,11)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (6,1,1,16)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (7,4,1,17)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (8,5,1,NULL)

INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo)
VALUES (4,1,2,2)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (5,1,2,12)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (6,1,2,NULL)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo)
VALUES (7,4,2,NULL)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (8,5,2,NULL)

INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (9,6,2,NULL)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo)
VALUES (10,7,2,NULL)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo)
VALUES (11,8,2,NULL)


INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (4,1,3,3)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (5,1,3,13)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (6,1,3,NULL)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (7,4,3,NULL)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (8,5,3,NULL)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (7,1,3,NULL)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (8,1,3,NULL)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (9,1,3,NULL)


INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (4,1,4,4)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (5,1,4,14)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (6,1,4,NULL)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (9,1,4,NULL)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (8,1,4,NULL)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (7,1,4,NULL)




INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (4,1,5,15)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (5,1,5,15)
INSERT INTO projekat.RADI_TOKOM(id_termin,id_radniKalendar,lekarID,zauzeo) 
VALUES (6,1,5,NULL)





