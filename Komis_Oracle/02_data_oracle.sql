-- inserty danych

-- KOMIS
-- upewnij się, że tabela jest pusta
TRUNCATE TABLE komis;

INSERT INTO komis
  (nip, nazwa, panstwo, miasto, ulica, nr_budynku, nr_lokalu, kod_pocztowy, telefon, e_mail)
SELECT 1234567801, 'AutoKomis Alfa',     'Polska', 'Warszawa',  'Marszałkowska',           10, '1A',   '00-001', '123-456-001', 'kontakt1@autokomis.pl'   FROM dual
UNION ALL SELECT 1234567802, 'AutoKomis Beta',     'Polska', 'Kraków',    'Floriańska',              12, '2B',   '30-002', '123-456-002', 'kontakt2@autokomis.pl'   FROM dual
UNION ALL SELECT 1234567803, 'AutoKomis Gamma',    'Polska', 'Gdańsk',    'Długa',                    5, '3C',   '80-003', '123-456-003', 'kontakt3@autokomis.pl'   FROM dual
UNION ALL SELECT 1234567804, 'AutoKomis Delta',    'Polska', 'Łódź',      'Piotrkowska',             15, '4D',   '90-004', '123-456-004', 'kontakt4@autokomis.pl'   FROM dual
UNION ALL SELECT 1234567805, 'AutoKomis Epsilon',  'Polska', 'Poznań',    'Stary Rynek',             20, '5E',   '60-005', '123-456-005', 'kontakt5@autokomis.pl'   FROM dual
UNION ALL SELECT 1234567806, 'AutoKomis Zeta',     'Polska', 'Wrocław',   'Świdnicka',                7, '6F',   '50-006', '123-456-006', 'kontakt6@autokomis.pl'   FROM dual
UNION ALL SELECT 1234567807, 'AutoKomis Eta',      'Polska', 'Szczecin',  'Księcia Bogusława',        9, '7G',   '70-007', '123-456-007', 'kontakt7@autokomis.pl'   FROM dual
UNION ALL SELECT 1234567808, 'AutoKomis Theta',    'Polska', 'Lublin',    'Krakowskie Przedmieście', 11, '8H',   '20-008', '123-456-008', 'kontakt8@autokomis.pl'   FROM dual
UNION ALL SELECT 1234567809, 'AutoKomis Iota',     'Polska', 'Bydgoszcz', 'Mostowa',                  6, '9I',   '85-009', '123-456-009', 'kontakt9@autokomis.pl'   FROM dual
UNION ALL SELECT 1234567810, 'AutoKomis Kappa',    'Polska', 'Katowice',  'Dąbrowskiego',             8, '10J',  '40-010', '123-456-010', 'kontakt10@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567811, 'AutoKomis Lambda',   'Polska', 'Toruń',     'Rynek Staromiejski',      14, '11K',  '87-011', '123-456-011', 'kontakt11@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567812, 'AutoKomis Mu',       'Polska', 'Częstochowa','Aleja NMP',              13, '12L',  '42-012', '123-456-012', 'kontakt12@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567813, 'AutoKomis Nu',       'Polska', 'Radom',     'Żeromskiego',             16, '13M',  '26-013', '123-456-013', 'kontakt13@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567814, 'AutoKomis Xi',       'Polska', 'Rzeszów',   '3 Maja',                  18, '14N',  '35-014', '123-456-014', 'kontakt14@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567815, 'AutoKomis Omicron',  'Polska', 'Kielce',    'Sienkiewicza',             4, '15O',  '25-015', '123-456-015', 'kontakt15@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567816, 'AutoKomis Pi',       'Polska', 'Opole',     'Plac Wolności',           17, '16P',  '45-016', '123-456-016', 'kontakt16@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567817, 'AutoKomis Rho',      'Polska', 'Białystok', 'Lipowa',                  19, '17Q',  '15-017', '123-456-017', 'kontakt17@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567818, 'AutoKomis Sigma',    'Polska', 'Gorzów Wlkp.','Chrobrego',              3, '18R',  '66-018', '123-456-018', 'kontakt18@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567819, 'AutoKomis Tau',      'Polska', 'Elbląg',    'Stary Rynek',              2, '19S',  '82-019', '123-456-019', 'kontakt19@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567820, 'AutoKomis Upsilon',  'Polska', 'Płock',     'Tumska',                  21, '20T',  '09-020', '123-456-020', 'kontakt20@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567821, 'AutoKomis Phi',      'Polska', 'Siedlce',   'Kościuszki',              22, '21U',  '08-021', '123-456-021', 'kontakt21@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567822, 'AutoKomis Chi',      'Polska', 'Olsztyn',   'Wyspiańskiego',           23, '22V',  '10-022', '123-456-022', 'kontakt22@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567823, 'AutoKomis Psi',      'Polska', 'Koszalin',  'Morska',                  24, '23W',  '75-023', '123-456-023', 'kontakt23@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567824, 'AutoKomis Omega',    'Polska', 'Zielona Góra','Podgórna',              25, '24X',  '65-024', '123-456-024', 'kontakt24@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567825, 'AutoKomis Alpha2',   'Polska', 'Tarnów',    'Wałowa',                  26, '25Y',  '33-025', '123-456-025', 'kontakt25@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567826, 'AutoKomis Beta2',    'Polska', 'Gliwice',   'Zwycięstwa',              27, '26Z',  '44-026', '123-456-026', 'kontakt26@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567827, 'AutoKomis Gamma2',   'Polska', 'Bytom',     'Rymera',                  28, '27A',  '41-027', '123-456-027', 'kontakt27@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567828, 'AutoKomis Delta2',   'Polska', 'Radom',     'Kilińskiego',             29, '28B',  '26-028', '123-456-028', 'kontakt28@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567829, 'AutoKomis Epsilon2', 'Polska', 'Rybnik',    'Piłsudskiego',            30, '29C',  '44-029', '123-456-029', 'kontakt29@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567830, 'AutoKomis Zeta2',    'Polska', 'Ciechanów', 'Pułtuska',                31, '30D',  '06-030', '123-456-030', 'kontakt30@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567831, 'AutoKomis Eta2',     'Polska', 'Kędzierzyn-Koźle','Mostowa',           32, '31E',  '47-031', '123-456-031', 'kontakt31@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567832, 'AutoKomis Theta2',   'Polska', 'Legnica',   'Rynek',                   33, '32F',  '59-032', '123-456-032', 'kontakt32@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567833, 'AutoKomis Iota2',    'Polska', 'Jelenia Góra','Kilińskiego',           34, '33G',  '58-033', '123-456-033', 'kontakt33@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567834, 'AutoKomis Kappa2',   'Polska', 'Tychy',     'Bielska',                 35, '34H',  '43-034', '123-456-034', 'kontakt34@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567835, 'AutoKomis Lambda2',  'Polska', 'Wałbrzych', 'Sienkiewicza',            36, '35I',  '58-035', '123-456-035', 'kontakt35@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567836, 'AutoKomis Mu2',      'Polska', 'Elbląg',    'Stary Rynek',             37, '36J',  '82-036', '123-456-036', 'kontakt36@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567837, 'AutoKomis Nu2',      'Polska', 'Pabianice', 'Kilińskiego',             38, '37K',  '95-037', '123-456-037', 'kontakt37@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567838, 'AutoKomis Xi2',      'Polska', 'Nowy Sącz', 'Piłsudskiego',            39, '38L',  '33-038', '123-456-038', 'kontakt38@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567839, 'AutoKomis Omicron2', 'Polska', 'Kalisz',    'Łazienna',                40, '39M',  '62-039', '123-456-039', 'kontakt39@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567840, 'AutoKomis Pi2',      'Polska', 'Konin',     'Plac Wolności',           41, '40N',  '62-040', '123-456-040', 'kontakt40@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567841, 'AutoKomis Rho2',     'Polska', 'Słupsk',    'Staromiejska',            42, '41O',  '76-041', '123-456-041', 'kontakt41@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567842, 'AutoKomis Sigma2',   'Polska', 'Ostrołęka', 'Mostowa',                 43, '42P',  '07-042', '123-456-042', 'kontakt42@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567843, 'AutoKomis Tau2',     'Polska', 'Płock',     'Tumska',                  44, '43Q',  '09-043', '123-456-043', 'kontakt43@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567844, 'AutoKomis Upsilon2', 'Polska', 'Inowrocław','Rynek',                   45, '44R',  '88-044', '123-456-044', 'kontakt44@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567845, 'AutoKomis Phi2',     'Polska', 'Chorzów',   'Rynek',                   46, '45S',  '41-045', '123-456-045', 'kontakt45@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567846, 'AutoKomis Chi2',     'Polska', 'Stargard',  'Grunwaldzka',             47, '46T',  '73-046', '123-456-046', 'kontakt46@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567847, 'AutoKomis Psi2',     'Polska', 'Świnoujście','Wojska Polskiego',       48, '47U',  '72-047', '123-456-047', 'kontakt47@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567848, 'AutoKomis Omega2',   'Polska', 'Krosno',    'Piłsudskiego',            49, '48V',  '38-048', '123-456-048', 'kontakt48@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567849, 'AutoKomis Alpha3',   'Polska', 'Sopot',     'Haffnera',                50, '49W',  '81-049', '123-456-049', 'kontakt49@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567850, 'AutoKomis Beta3',    'Polska', 'Gniezno',   'Kościuszki',              51, '50X',  '62-050', '123-456-050', 'kontakt50@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567851, 'AutoKomis Gamma3',   'Polska', 'Świdnica',  'Rynek',                   52, '51Y',  '58-051', '123-456-051', 'kontakt51@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567852, 'AutoKomis Delta3',   'Polska', 'Zamość',    'Ormiańska',               53, '52Z',  '22-052', '123-456-052', 'kontakt52@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567853, 'AutoKomis Epsilon3', 'Polska', 'Ostrów Wlkp.','Rynek',                 54, '53A',  '63-053', '123-456-053', 'kontakt53@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567854, 'AutoKomis Zeta3',    'Polska', 'Tarnobrzeg','Sienkiewicza',            55, '54B',  '39-054', '123-456-054', 'kontakt54@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567855, 'AutoKomis Eta3',     'Polska', 'Przemyśl',  'Rynek',                   56, '55C',  '37-055', '123-456-055', 'kontakt55@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567856, 'AutoKomis Theta3',   'Polska', 'Stalowa Wola','Poniatowskiego',        57, '56D',  '37-056', '123-456-056', 'kontakt56@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567857, 'AutoKomis Iota3',    'Polska', 'Oświęcim',  'Kościuszki',              58, '57E',  '32-057', '123-456-057', 'kontakt57@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567858, 'AutoKomis Kappa3',   'Polska', 'Nowy Targ', 'Rynek',                   59, '58F',  '34-058', '123-456-058', 'kontakt58@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567859, 'AutoKomis Lambda3',  'Polska', 'Płońsk',    'Warszawska',              60, '59G',  '09-059', '123-456-059', 'kontakt59@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567860, 'AutoKomis Mu3',      'Polska', 'Międzyrzecz','Kościuszki',             61, '60H',  '66-060', '123-456-060', 'kontakt60@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567861, 'AutoKomis Nu3',      'Polska', 'Racibórz',  'Rynek',                   62, '61I',  '47-061', '123-456-061', 'kontakt61@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567862, 'AutoKomis Xi3',      'Polska', 'Szczecinek','Kościuszki',              63, '62J',  '78-062', '123-456-062', 'kontakt62@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567863, 'AutoKomis Omicron3', 'Polska', 'Śrem',      'Rynek',                   64, '63K',  '63-063', '123-456-063', 'kontakt63@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567864, 'AutoKomis Pi3',      'Polska', 'Węgrów',    'Warszawska',              65, '64L',  '07-064', '123-456-064', 'kontakt64@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567865, 'AutoKomis Rho3',     'Polska', 'Skierniewice','Rynek',                 66, '65M',  '96-065', '123-456-065', 'kontakt65@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567866, 'AutoKomis Sigma3',   'Polska', 'Kępno',     'Kościuszki',              67, '66N',  '63-066', '123-456-066', 'kontakt66@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567867, 'AutoKomis Tau3',     'Polska', 'Kołobrzeg', 'Rynek',                   68, '67O',  '78-067', '123-456-067', 'kontakt67@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567868, 'AutoKomis Upsilon3', 'Polska', 'Oleśnica',  'Rynek',                   69, '68P',  '56-068', '123-456-068', 'kontakt68@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567869, 'AutoKomis Phi3',     'Polska', 'Tczew',     'Staromiejska',            70, '69Q',  '83-069', '123-456-069', 'kontakt69@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567870, 'AutoKomis Chi3',     'Polska', 'Żary',      'Rynek',                   71, '70R',  '68-070', '123-456-070', 'kontakt70@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567871, 'AutoKomis Psi3',     'Polska', 'Mielec',    'Rynek',                   72, '71S',  '39-071', '123-456-071', 'kontakt71@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567872, 'AutoKomis Omega3',   'Polska', 'Piotrków Trybunalski','Rynek',         73, '72T',  '97-072', '123-456-072', 'kontakt72@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567873, 'AutoKomis Alpha4',   'Polska', 'Otwock',    'Rynek',                   74, '73U',  '05-073', '123-456-073', 'kontakt73@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567874, 'AutoKomis Beta4',    'Polska', 'Pszczyna',  'Rynek',                   75, '74V',  '43-074', '123-456-074', 'kontakt74@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567875, 'AutoKomis Gamma4',   'Polska', 'Łomża',     'Rynek',                   76, '75W',  '18-075', '123-456-075', 'kontakt75@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567876, 'AutoKomis Delta4',   'Polska', 'Kościan',   'Rynek',                   77, '76X',  '64-076', '123-456-076', 'kontakt76@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567877, 'AutoKomis Epsilon4', 'Polska', 'Sandomierz','Rynek',                   78, '77Y',  '27-077', '123-456-077', 'kontakt77@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567878, 'AutoKomis Zeta4',    'Polska', 'Lębork',    'Rynek',                   79, '78Z',  '84-078', '123-456-078', 'kontakt78@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567879, 'AutoKomis Eta4',     'Polska', 'Głogów',    'Rynek',                   80, '79A',  '67-079', '123-456-079', 'kontakt79@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567880, 'AutoKomis Theta4',   'Polska', 'Kętrzyn',   'Rynek',                   81, '80B',  '11-080', '123-456-080', 'kontakt80@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567881, 'AutoKomis Iota4',    'Polska', 'Zawiercie', 'Rynek',                   82, '81C',  '42-081', '123-456-081', 'kontakt81@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567882, 'AutoKomis Kappa4',   'Polska', 'Świdnik',   'Rynek',                   83, '82D',  '21-082', '123-456-082', 'kontakt82@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567883, 'AutoKomis Lambda4',  'Polska', 'Malbork',   'Rynek',                   84, '83E',  '82-083', '123-456-083', 'kontakt83@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567884, 'AutoKomis Mu4',      'Polska', 'Sieradz',   'Rynek',                   85, '84F',  '98-084', '123-456-084', 'kontakt84@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567885, 'AutoKomis Nu4',      'Polska', 'Koło',      'Rynek',                   86, '85G',  '62-085', '123-456-085', 'kontakt85@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567886, 'AutoKomis Xi4',      'Polska', 'Środa Wlkp.','Rynek',                  87, '86H',  '63-086', '123-456-086', 'kontakt86@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567887, 'AutoKomis Omicron4', 'Polska', 'Wodzisław Śląski','Rynek',             88, '87I',  '44-087', '123-456-087', 'kontakt87@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567888, 'AutoKomis Pi4',      'Polska', 'Żywiec',    'Rynek',                   89, '88J',  '34-088', '123-456-088', 'kontakt88@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567889, 'AutoKomis Rho4',     'Polska', 'Lubin',     'Rynek',                   90, '89K',  '59-089', '123-456-089', 'kontakt89@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567890, 'AutoKomis Sigma4',   'Polska', 'Pruszków',  'Rynek',                   91, '90L',  '05-090', '123-456-090', 'kontakt90@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567891, 'AutoKomis Tau4',     'Polska', 'Rawa Mazowiecka','Rynek',              92, '91M',  '96-091', '123-456-091', 'kontakt91@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567892, 'AutoKomis Upsilon4', 'Polska', 'Szczytno',  'Rynek',                   93, '92N',  '12-092', '123-456-092', 'kontakt92@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567893, 'AutoKomis Phi4',     'Polska', 'Chojnice',  'Rynek',                   94, '93O',  '89-093', '123-456-093', 'kontakt93@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567894, 'AutoKomis Chi4',     'Polska', 'Ostrołęka', 'Rynek',                   95, '94P',  '07-094', '123-456-094', 'kontakt94@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567895, 'AutoKomis Psi4',     'Polska', 'Chełm',     'Rynek',                   96, '95Q',  '22-095', '123-456-095', 'kontakt95@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567896, 'AutoKomis Omega4',   'Polska', 'Świdwin',   'Rynek',                   97, '96R',  '78-096', '123-456-096', 'kontakt96@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567897, 'AutoKomis Alpha5',   'Polska', 'Końskie',   'Rynek',                   98, '97S',  '26-097', '123-456-097', 'kontakt97@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567898, 'AutoKomis Beta5',    'Polska', 'Brzeg',     'Rynek',                   99, '98T',  '49-098', '123-456-098', 'kontakt98@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567899, 'AutoKomis Gamma5',   'Polska', 'Mława',     'Rynek',                  100, '99U',  '06-099', '123-456-099', 'kontakt99@autokomis.pl'  FROM dual
UNION ALL SELECT 1234567900, 'AutoKomis Delta5',   'Polska', 'Puck',      'Rynek',                  101, '100V', '84-100', '123-456-100', 'kontakt100@autokomis.pl' FROM dual;

COMMIT;

SELECT COUNT(*) AS ile FROM komis;
SELECT MIN(id_komis) AS min_id, MAX(id_komis) AS max_id FROM komis;


-- PLAC
TRUNCATE TABLE plac;

INSERT INTO plac (kraj, miejscowosc, ulica, nr_dzialki, id_komis)
SELECT 'Polska', 'Warszawa',  'Marszałkowska',            '10',   1  FROM dual
UNION ALL SELECT 'Polska', 'Kraków',    'Floriańska',              '12',   2  FROM dual
UNION ALL SELECT 'Polska', 'Łódź',      'Piotrkowska',             '15',   3  FROM dual
UNION ALL SELECT 'Polska', 'Wrocław',   'Świdnicka',               '20',   4  FROM dual
UNION ALL SELECT 'Polska', 'Gdańsk',    'Długa',                   '25',   5  FROM dual
UNION ALL SELECT 'Polska', 'Poznań',    'Święty Marcin',           '8',    6  FROM dual
UNION ALL SELECT 'Polska', 'Szczecin',  'Jagiellońska',            '7',    7  FROM dual
UNION ALL SELECT 'Polska', 'Lublin',    'Krakowskie Przedmieście', '11',   8  FROM dual
UNION ALL SELECT 'Polska', 'Bydgoszcz', 'Gdańska',                 '22',   9  FROM dual
UNION ALL SELECT 'Polska', 'Katowice',  '3 Maja',                  '9',   10  FROM dual
UNION ALL SELECT 'Polska', 'Białystok', 'Lipowa',                  '5',   11  FROM dual
UNION ALL SELECT 'Polska', 'Częstochowa','Dąbrowskiego',           '18',  12  FROM dual
UNION ALL SELECT 'Polska', 'Radom',     'Kilińskiego',             '13',  13  FROM dual
UNION ALL SELECT 'Polska', 'Tarnów',    'Wałowa',                  '16',  14  FROM dual
UNION ALL SELECT 'Polska', 'Rzeszów',   'Piłsudskiego',            '19',  15  FROM dual
UNION ALL SELECT 'Polska', 'Opole',     'Ozimska',                 '14',  16  FROM dual
UNION ALL SELECT 'Polska', 'Gorzów Wlkp.','Chrobrego',             '17',  17  FROM dual
UNION ALL SELECT 'Polska', 'Zielona Góra','Podgórna',              '21',  18  FROM dual
UNION ALL SELECT 'Polska', 'Elbląg',    'Stary Rynek',             '10',  19  FROM dual
UNION ALL SELECT 'Polska', 'Koszalin',  'Niepodległości',          '12',  20  FROM dual
UNION ALL SELECT 'Polska', 'Kalisz',    'Kościuszki',              '15',  21  FROM dual
UNION ALL SELECT 'Polska', 'Legnica',   'Piastowska',              '7',   22  FROM dual
UNION ALL SELECT 'Polska', 'Grudziądz', 'Wodna',                   '8',   23  FROM dual
UNION ALL SELECT 'Polska', 'Słupsk',    'Pomorska',                '9',   24  FROM dual
UNION ALL SELECT 'Polska', 'Jaworzno',  'Rynek',                   '6',   25  FROM dual
UNION ALL SELECT 'Polska', 'Nowy Sącz', 'Kilińskiego',             '5',   26  FROM dual
UNION ALL SELECT 'Polska', 'Jelenia Góra','1 Maja',                '4',   27  FROM dual
UNION ALL SELECT 'Polska', 'Ostrowiec Świętokrzyski','Sienkiewicza','11', 28  FROM dual
UNION ALL SELECT 'Polska', 'Tarnobrzeg','Kościuszki',              '12',  29  FROM dual
UNION ALL SELECT 'Polska', 'Płock',     'Piłsudskiego',            '13',  30  FROM dual
UNION ALL SELECT 'Polska', 'Konin',     'Wielkopolska',            '14',  31  FROM dual
UNION ALL SELECT 'Polska', 'Piła',      'Kolejowa',                '15',  32  FROM dual
UNION ALL SELECT 'Polska', 'Wałbrzych', 'Rynek',                   '16',  33  FROM dual
UNION ALL SELECT 'Polska', 'Tychy',     'Bielska',                 '17',  34  FROM dual
UNION ALL SELECT 'Polska', 'Kędzierzyn-Koźle','Kościuszki',        '18',  35  FROM dual
UNION ALL SELECT 'Polska', 'Gliwice',   'Zwycięstwa',              '19',  36  FROM dual
UNION ALL SELECT 'Polska', 'Elbląg',    'Stary Rynek',             '20',  37  FROM dual
UNION ALL SELECT 'Polska', 'Gniezno',   'Katedralna',              '21',  38  FROM dual
UNION ALL SELECT 'Polska', 'Olsztyn',   'Plac Jana Pawła',         '22',  39  FROM dual
UNION ALL SELECT 'Polska', 'Chełm',     'Lubelska',                '23',  40  FROM dual
UNION ALL SELECT 'Polska', 'Tarnów',    'Wałowa',                  '24',  41  FROM dual
UNION ALL SELECT 'Polska', 'Rzeszów',   'Piłsudskiego',            '25',  42  FROM dual
UNION ALL SELECT 'Polska', 'Zamość',    'Ormiańska',               '26',  43  FROM dual
UNION ALL SELECT 'Polska', 'Legnica',   'Rynek',                   '27',  44  FROM dual
UNION ALL SELECT 'Polska', 'Siedlce',   'Piłsudskiego',            '28',  45  FROM dual
UNION ALL SELECT 'Polska', 'Koszalin',  'Niepodległości',          '29',  46  FROM dual
UNION ALL SELECT 'Polska', 'Kalisz',    'Kościuszki',              '30',  47  FROM dual
UNION ALL SELECT 'Polska', 'Opole',     'Ozimska',                 '31',  48  FROM dual
UNION ALL SELECT 'Polska', 'Gorzów Wlkp.','Chrobrego',             '32',  49  FROM dual
UNION ALL SELECT 'Polska', 'Zielona Góra','Podgórna',              '33',  50  FROM dual
UNION ALL SELECT 'Polska', 'Warszawa',  'Nowowiejska',             '34',  51  FROM dual
UNION ALL SELECT 'Polska', 'Kraków',    'Basztowa',                '35',  52  FROM dual
UNION ALL SELECT 'Polska', 'Łódź',      'Piotrkowska',             '36',  53  FROM dual
UNION ALL SELECT 'Polska', 'Wrocław',   'Oławska',                 '37',  54  FROM dual
UNION ALL SELECT 'Polska', 'Gdańsk',    'Długi Targ',              '38',  55  FROM dual
UNION ALL SELECT 'Polska', 'Poznań',    'Gwarna',                  '39',  56  FROM dual
UNION ALL SELECT 'Polska', 'Szczecin',  'Wojska Polskiego',        '40',  57  FROM dual
UNION ALL SELECT 'Polska', 'Lublin',    'Lubartowska',             '41',  58  FROM dual
UNION ALL SELECT 'Polska', 'Bydgoszcz', 'Dworcowa',                '42',  59  FROM dual
UNION ALL SELECT 'Polska', 'Katowice',  'Korfantego',              '43',  60  FROM dual
UNION ALL SELECT 'Polska', 'Białystok', 'Sienkiewicza',            '44',  61  FROM dual
UNION ALL SELECT 'Polska', 'Częstochowa','8 Marca',                '45',  62  FROM dual
UNION ALL SELECT 'Polska', 'Radom',     'Żeromskiego',             '46',  63  FROM dual
UNION ALL SELECT 'Polska', 'Tarnów',    'Wałowa',                  '47',  64  FROM dual
UNION ALL SELECT 'Polska', 'Rzeszów',   'Kościuszki',              '48',  65  FROM dual
UNION ALL SELECT 'Polska', 'Opole',     'Ozimska',                 '49',  66  FROM dual
UNION ALL SELECT 'Polska', 'Gorzów Wlkp.','Chrobrego',             '50',  67  FROM dual
UNION ALL SELECT 'Polska', 'Zielona Góra','Podgórna',              '51',  68  FROM dual
UNION ALL SELECT 'Polska', 'Elbląg',    'Stary Rynek',             '52',  69  FROM dual
UNION ALL SELECT 'Polska', 'Koszalin',  'Niepodległości',          '53',  70  FROM dual
UNION ALL SELECT 'Polska', 'Kalisz',    'Kościuszki',              '54',  71  FROM dual
UNION ALL SELECT 'Polska', 'Legnica',   'Piastowska',              '55',  72  FROM dual
UNION ALL SELECT 'Polska', 'Grudziądz', 'Wodna',                   '56',  73  FROM dual
UNION ALL SELECT 'Polska', 'Słupsk',    'Pomorska',                '57',  74  FROM dual
UNION ALL SELECT 'Polska', 'Jaworzno',  'Rynek',                   '58',  75  FROM dual
UNION ALL SELECT 'Polska', 'Nowy Sącz', 'Kilińskiego',             '59',  76  FROM dual
UNION ALL SELECT 'Polska', 'Jelenia Góra','1 Maja',                '60',  77  FROM dual
UNION ALL SELECT 'Polska', 'Ostrowiec Świętokrzyski','Sienkiewicza','61', 78  FROM dual
UNION ALL SELECT 'Polska', 'Tarnobrzeg','Kościuszki',              '62',  79  FROM dual
UNION ALL SELECT 'Polska', 'Płock',     'Piłsudskiego',            '63',  80  FROM dual
UNION ALL SELECT 'Polska', 'Konin',     'Wielkopolska',            '64',  81  FROM dual
UNION ALL SELECT 'Polska', 'Piła',      'Kolejowa',                '65',  82  FROM dual
UNION ALL SELECT 'Polska', 'Wałbrzych', 'Rynek',                   '66',  83  FROM dual
UNION ALL SELECT 'Polska', 'Tychy',     'Bielska',                 '67',  84  FROM dual
UNION ALL SELECT 'Polska', 'Kędzierzyn-Koźle','Kościuszki',        '68',  85  FROM dual
UNION ALL SELECT 'Polska', 'Gliwice',   'Zwycięstwa',              '69',  86  FROM dual
UNION ALL SELECT 'Polska', 'Gniezno',   'Katedralna',              '70',  87  FROM dual
UNION ALL SELECT 'Polska', 'Olsztyn',   'Plac Jana Pawła',         '71',  88  FROM dual
UNION ALL SELECT 'Polska', 'Chełm',     'Lubelska',                '72',  89  FROM dual
UNION ALL SELECT 'Polska', 'Zamość',    'Ormiańska',               '73',  90  FROM dual
UNION ALL SELECT 'Polska', 'Siedlce',   'Piłsudskiego',            '74',  91  FROM dual
UNION ALL SELECT 'Polska', 'Warszawa',  'Nowowiejska',             '75',  92  FROM dual
UNION ALL SELECT 'Polska', 'Kraków',    'Basztowa',                '76',  93  FROM dual
UNION ALL SELECT 'Polska', 'Łódź',      'Piotrkowska',             '77',  94  FROM dual
UNION ALL SELECT 'Polska', 'Wrocław',   'Oławska',                 '78',  95  FROM dual
UNION ALL SELECT 'Polska', 'Gdańsk',    'Długi Targ',              '79',  96  FROM dual
UNION ALL SELECT 'Polska', 'Poznań',    'Gwarna',                  '80',  97  FROM dual
UNION ALL SELECT 'Polska', 'Szczecin',  'Wojska Polskiego',        '81',  98  FROM dual
UNION ALL SELECT 'Polska', 'Lublin',    'Lubartowska',             '82',  99  FROM dual
UNION ALL SELECT 'Polska', 'Bydgoszcz', 'Dworcowa',                '83', 100  FROM dual;

COMMIT;

SELECT COUNT(*) AS ile FROM plac;


-- SAMOCHOD
-- upewnij się, że tabela jest pusta
TRUNCATE TABLE samochod;

INSERT INTO samochod
  (nr_rejestracyjny, nr_vin, marka, model, rocznik, przebieg, silnik, paliwo, moc, kolor, rodzaj_pojazdu, ladownosc, gotowy_do_sprzedazy, cena, opis)
SELECT 'ABC1234', '1HGCM82633A123456', 'Toyota', 'Corolla', 2015, 80000, 1.8, 'Benzyna', 140, 'Czarny', 'Sedan', 5.0, 1, 15000.00, 'Polski salon' FROM dual
UNION ALL SELECT 'DEF5678', '2HGCM82633A654321', 'Honda', 'Civic', 2018, 60000, 2.0, 'Benzyna', 158, 'Biały', 'Sedan', 4.5, 0, 145999.00, 'Dodatkowy komplet opon' FROM dual
UNION ALL SELECT 'GHI9101', '3HGCM82633A987654', 'Ford', 'Focus', 2020, 30000, 1.5, 'Diesel', 120, 'Niebieski', 'Hatchback', 4.0, 1, 65000.00, 'Brak drugiego kluczyka' FROM dual
UNION ALL SELECT 'POL2345', '4HGCM82633A456789', 'Volkswagen', 'Golf', 2016, 90000, 1.6, 'Benzyna', 110, 'Srebrny', 'Hatchback', 4.3, 0, 90500.00, NULL FROM dual
UNION ALL SELECT 'MNO6789', '5HGCM82633A112233', 'BMW', '3 Series', 2017, 70000, 2.0, 'Diesel', 190, 'Czerwony', 'Sedan', 4.8, 1, 25000.00, NULL FROM dual
UNION ALL SELECT 'PQR1122', '6HGCM82633A332211', 'Audi', 'A4', 2019, 50000, 2.0, 'Benzyna', 200, 'Czarny', 'Sedan', 4.7, 0, 25000.00, 'Dodatkowy komplet opon' FROM dual
UNION ALL SELECT 'STU3344', '7HGCM82633A223344', 'Mercedes', 'C-Class', 2018, 65000, 2.0, 'Diesel', 180, 'Biały', 'Sedan', 4.6, 1, 12000.00, NULL FROM dual
UNION ALL SELECT 'VWX5566', '8HGCM82633A445566', 'Skoda', 'Octavia', 2021, 20000, 1.4, 'Benzyna', 150, 'Zielony', 'Hatchback', 4.2, 0, 15000.00, 'Dodatkowo CB radio' FROM dual
UNION ALL SELECT 'YZA7788', '9HGCM82633A667788', 'Volvo', 'S60', 2016, 85000, 2.0, 'Diesel', 190, 'Srebrny', 'Sedan', 4.9, 1, 10000.00, NULL FROM dual
UNION ALL SELECT 'POD9900', '0HGCM82633A889900', 'Mazda', '6', 2017, 75000, 2.2, 'Diesel', 175, 'Niebieski', 'Sedan', 4.5, 0, 115000.00, NULL FROM dual
UNION ALL SELECT 'EFG1235', '1HGCM82633B112233', 'Opel', 'Astra', 2020, 25000, 1.6, 'Benzyna', 130, 'Czerwony', 'Hatchback', 4.1, 1, 17000.00, NULL FROM dual
UNION ALL SELECT 'HIJ4567', '2HGCM82633B445566', 'Renault', 'Megane', 2019, 40000, 1.5, 'Diesel', 115, 'Biały', 'Hatchback', 4.0, 0, 20000.00, NULL FROM dual
UNION ALL SELECT 'KLM7890', '3HGCM82633B778899', 'Peugeot', '308', 2018, 55000, 1.2, 'Benzyna', 130, 'Czarny', 'Hatchback', 4.2, 1, 15000.00, 'Brak drugiego kluczyka' FROM dual
UNION ALL SELECT 'POP1123', '4HGCM82633C112233', 'Hyundai', 'Elantra', 2021, 15000, 1.8, 'Benzyna', 147, 'Srebrny', 'Sedan', 4.5, 0, 45000.00, 'Dodatkowy komplet opon' FROM dual
UNION ALL SELECT 'QRC4456', '5HGCM82633C445566', 'Kia', 'Ceed', 2017, 70000, 1.6, 'Diesel', 136, 'Niebieski', 'Hatchback', 4.3, 1, 70000.00, 'Polski salon' FROM dual
UNION ALL SELECT 'RST7789', '6HGCM82633C778899', 'Fiat', 'Tipo', 2019, 35000, 1.4, 'Benzyna', 95, 'Biały', 'Sedan', 4.2, 1, 52000.00, NULL FROM dual
UNION ALL SELECT 'UVW9901', '7HGCM82633C990011', 'Seat', 'Leon', 2020, 27000, 1.5, 'Benzyna', 150, 'Czerwony', 'Hatchback', 4.3, 0, 81000.00, NULL FROM dual
UNION ALL SELECT 'XYZ2233', '8HGCM82633D223344', 'Toyota', 'Yaris', 2021, 10000, 1.3, 'Benzyna', 100, 'Srebrny', 'Hatchback', 4.0, 1, 90000.00, 'Nowy model 2021' FROM dual
UNION ALL SELECT 'AAA4455', '9HGCM82633D445566', 'Honda', 'Jazz', 2018, 50000, 1.4, 'Benzyna', 110, 'Zielony', 'Hatchback', 4.1, 0, 45000.00, NULL FROM dual
UNION ALL SELECT 'BBB6677', '0HGCM82633D667788', 'Volkswagen', 'Passat', 2016, 95000, 2.0, 'Diesel', 190, 'Granatowy', 'Sedan', 5.0, 1, 87000.00, 'Pełen serwis ASO' FROM dual
UNION ALL SELECT 'CCC8899', '1HGCM82633D889900', 'BMW', '5 Series', 2019, 40000, 2.0, 'Diesel', 210, 'Biały', 'Sedan', 5.0, 0, 130000.00, 'Skóra i nawigacja' FROM dual
UNION ALL SELECT 'DDD1112', '2HGCM82633E111222', 'Audi', 'A6', 2020, 25000, 2.0, 'Diesel', 204, 'Czarny', 'Sedan', 5.0, 1, 190000.00, NULL FROM dual
UNION ALL SELECT 'EEE3334', '3HGCM82633E333444', 'Mercedes', 'E-Class', 2018, 60000, 2.0, 'Benzyna', 184, 'Srebrny', 'Sedan', 5.0, 0, 175000.00, NULL FROM dual
UNION ALL SELECT 'FFF5556', '4HGCM82633E555666', 'Skoda', 'Superb', 2017, 75000, 2.0, 'Diesel', 170, 'Szary', 'Sedan', 5.0, 1, 88000.00, NULL FROM dual
UNION ALL SELECT 'GGG7778', '5HGCM82633E777888', 'Volvo', 'V60', 2019, 45000, 2.0, 'Diesel', 190, 'Czerwony', 'Kombi', 5.2, 1, 135000.00, NULL FROM dual
UNION ALL SELECT 'HHH9990', '6HGCM82633E999000', 'Mazda', 'CX-5', 2020, 30000, 2.2, 'Diesel', 184, 'Biały', 'SUV', 5.3, 0, 170000.00, 'Pełne wyposażenie' FROM dual
UNION ALL SELECT 'III1113', '7HGCM82633F111333', 'Toyota', 'RAV4', 2021, 15000, 2.5, 'Hybryda', 222, 'Zielony', 'SUV', 5.4, 1, 210000.00, NULL FROM dual
UNION ALL SELECT 'JJJ3335', '8HGCM82633F333555', 'Honda', 'CR-V', 2019, 42000, 1.5, 'Benzyna', 193, 'Czarny', 'SUV', 5.5, 0, 165000.00, NULL FROM dual
UNION ALL SELECT 'KKK5557', '9HGCM82633F555777', 'Ford', 'Kuga', 2018, 60000, 2.0, 'Diesel', 180, 'Niebieski', 'SUV', 5.4, 1, 120000.00, 'Nowe opony zimowe' FROM dual
UNION ALL SELECT 'LLL7779', '0HGCM82633F777999', 'Hyundai', 'Tucson', 2020, 27000, 1.6, 'Benzyna', 150, 'Srebrny', 'SUV', 5.3, 0, 135000.00, NULL FROM dual
UNION ALL SELECT 'MMM9991', '1HGCM82633G999111', 'Kia', 'Sportage', 2019, 38000, 1.6, 'Benzyna', 177, 'Czerwony', 'SUV', 5.3, 1, 140000.00, NULL FROM dual
UNION ALL SELECT 'NNN1114', '2HGCM82633G111444', 'Nissan', 'Qashqai', 2018, 55000, 1.6, 'Diesel', 130, 'Biały', 'SUV', 5.2, 0, 115000.00, NULL FROM dual
UNION ALL SELECT 'OOO3336', '3HGCM82633G333666', 'Peugeot', '3008', 2020, 25000, 1.5, 'Diesel', 130, 'Szary', 'SUV', 5.3, 1, 150000.00, NULL FROM dual
UNION ALL SELECT 'PPP5558', '4HGCM82633G555888', 'Citroen', 'C5 Aircross', 2021, 12000, 1.6, 'Benzyna', 180, 'Czarny', 'SUV', 5.4, 0, 160000.00, 'Salon PL' FROM dual
UNION ALL SELECT 'QQQ7780', '5HGCM82633G778000', 'Opel', 'Mokka', 2020, 20000, 1.2, 'Benzyna', 130, 'Czerwony', 'SUV', 5.3, 1, 128000.00, NULL FROM dual
UNION ALL SELECT 'RRR9902', '6HGCM82633H990222', 'Volkswagen', 'Tiguan', 2019, 40000, 2.0, 'Diesel', 190, 'Srebrny', 'SUV', 5.5, 0, 175000.00, NULL FROM dual
UNION ALL SELECT 'SSS1124', '7HGCM82633H112444', 'BMW', 'X3', 2021, 18000, 2.0, 'Diesel', 190, 'Biały', 'SUV', 5.4, 1, 230000.00, NULL FROM dual
UNION ALL SELECT 'TTT3346', '8HGCM82633H334666', 'Audi', 'Q5', 2020, 25000, 2.0, 'Diesel', 204, 'Czarny', 'SUV', 5.5, 1, 225000.00, 'Pełen pakiet S-Line' FROM dual
UNION ALL SELECT 'UUU5568', '9HGCM82633H556888', 'Mercedes', 'GLC', 2020, 28000, 2.0, 'Diesel', 194, 'Srebrny', 'SUV', 5.6, 0, 240000.00, NULL FROM dual
UNION ALL SELECT 'VVV7781', '0HGCM82633H778111', 'Skoda', 'Kodiaq', 2019, 42000, 2.0, 'Diesel', 190, 'Szary', 'SUV', 5.5, 1, 185000.00, NULL FROM dual
UNION ALL SELECT 'WWW9903', '1HGCM82633H990333', 'Volvo', 'XC60', 2021, 17000, 2.0, 'Diesel', 197, 'Biały', 'SUV', 5.5, 1, 260000.00, 'Salon Polska' FROM dual
UNION ALL SELECT 'XXX1125', '2HGCM82633J112555', 'Mazda', 'CX-30', 2020, 22000, 2.0, 'Benzyna', 186, 'Czerwony', 'SUV', 5.4, 0, 150000.00, NULL FROM dual
UNION ALL SELECT 'YYY3347', '3HGCM82633J334777', 'Toyota', 'C-HR', 2021, 12000, 1.8, 'Hybryda', 122, 'Szary', 'SUV', 5.2, 1, 160000.00, NULL FROM dual
UNION ALL SELECT 'ZZZ5569', '4HGCM82633J556999', 'Honda', 'HR-V', 2019, 45000, 1.5, 'Benzyna', 130, 'Srebrny', 'SUV', 5.3, 1, 110000.00, NULL FROM dual
UNION ALL SELECT 'AAA7792', '5HGCM82633J779222', 'Hyundai', 'Kona', 2020, 25000, 1.6, 'Benzyna', 177, 'Biały', 'SUV', 5.3, 0, 125000.00, NULL FROM dual
UNION ALL SELECT 'BBB9914', '6HGCM82633J991444', 'Kia', 'XCeed', 2021, 18000, 1.5, 'Benzyna', 160, 'Czarny', 'SUV', 5.3, 1, 135000.00, NULL FROM dual
UNION ALL SELECT 'CCC1136', '7HGCM82633K113666', 'Peugeot', '2008', 2020, 23000, 1.2, 'Benzyna', 130, 'Zielony', 'SUV', 5.2, 0, 120000.00, NULL FROM dual
UNION ALL SELECT 'DDD3358', '8HGCM82633K335888', 'Renault', 'Captur', 2019, 40000, 1.3, 'Benzyna', 140, 'Pomarańczowy', 'SUV', 5.2, 1, 115000.00, NULL FROM dual
UNION ALL SELECT 'EEE5579', '9HGCM82633K557999', 'Nissan', 'Juke', 2020, 26000, 1.0, 'Benzyna', 117, 'Żółty', 'SUV', 5.1, 1, 105000.00, NULL FROM dual
UNION ALL SELECT 'FFF7793', '0HGCM82633K779333', 'Volkswagen', 'T-Roc', 2021, 14000, 1.5, 'Benzyna', 150, 'Srebrny', 'SUV', 5.3, 0, 150000.00, NULL FROM dual
UNION ALL SELECT 'GGG9915', '1HGCM82633K991555', 'Ford', 'Puma', 2020, 22000, 1.0, 'Benzyna', 125, 'Czerwony', 'SUV', 5.2, 1, 125000.00, NULL FROM dual
UNION ALL SELECT 'HHH1137', '2HGCM82633L113777', 'Opel', 'Crossland', 2019, 37000, 1.2, 'Benzyna', 110, 'Niebieski', 'SUV', 5.1, 1, 99000.00, NULL FROM dual
UNION ALL SELECT 'III3359', '3HGCM82633L335999', 'Citroen', 'C3 Aircross', 2020, 21000, 1.2, 'Benzyna', 130, 'Biały', 'SUV', 5.2, 0, 108000.00, NULL FROM dual
UNION ALL SELECT 'JJJ5580', '4HGCM82633L558000', 'Seat', 'Arona', 2021, 15000, 1.0, 'Benzyna', 115, 'Czarny', 'SUV', 5.1, 1, 112000.00, NULL FROM dual
UNION ALL SELECT 'KKK7801', '5HGCM82633L780111', 'Skoda', 'Kamiq', 2020, 24000, 1.0, 'Benzyna', 110, 'Srebrny', 'SUV', 5.1, 0, 109000.00, NULL FROM dual
UNION ALL SELECT 'LLL9922', '6HGCM82633L992222', 'Toyota', 'RAV4 Hybrid', 2021, 12000, 2.5, 'Hybryda', 218, 'Zielony', 'SUV', 5.5, 1, 230000.00, 'Salon Polska' FROM dual
UNION ALL SELECT 'MMM1144', '7HGCM82633M114444', 'Hyundai', 'Santa Fe', 2020, 32000, 2.2, 'Diesel', 200, 'Srebrny', 'SUV', 5.5, 1, 190000.00, 'Salon Polska' FROM dual
UNION ALL SELECT 'NNN3355', '8HGCM82633M335555', 'Kia', 'Sorento', 2021, 18000, 2.2, 'Diesel', 202, 'Czarny', 'SUV', 5.7, 0, 210000.00, NULL FROM dual
UNION ALL SELECT 'OOO5566', '9HGCM82633M556666', 'Mazda', 'CX-9', 2019, 40000, 2.5, 'Benzyna', 230, 'Granatowy', 'SUV', 5.8, 1, 240000.00, 'Pełen serwis ASO' FROM dual
UNION ALL SELECT 'PPP7788', '0HGCM82633M778888', 'Toyota', 'Highlander', 2021, 15000, 3.5, 'Hybryda', 248, 'Srebrny', 'SUV', 6.0, 0, 280000.00, 'Salon PL' FROM dual
UNION ALL SELECT 'QQQ9900', '1HGCM82633M990000', 'Honda', 'Pilot', 2020, 30000, 3.0, 'Benzyna', 260, 'Czarny', 'SUV', 5.9, 1, 260000.00, NULL FROM dual
UNION ALL SELECT 'RRR1122', '2HGCM82633N112222', 'Nissan', 'X-Trail', 2019, 42000, 2.0, 'Diesel', 177, 'Biały', 'SUV', 5.6, 0, 150000.00, NULL FROM dual
UNION ALL SELECT 'SSS3344', '3HGCM82633N334444', 'Peugeot', '5008', 2020, 28000, 1.6, 'Diesel', 130, 'Szary', 'SUV', 5.7, 1, 170000.00, NULL FROM dual
UNION ALL SELECT 'TTT5566', '4HGCM82633N556666', 'Citroen', 'C4 Picasso', 2018, 50000, 1.6, 'Diesel', 120, 'Czerwony', 'Minivan', 5.8, 1, 125000.00, NULL FROM dual
UNION ALL SELECT 'UUU7788', '5HGCM82633N778888', 'Volkswagen', 'Touran', 2019, 37000, 1.4, 'Benzyna', 150, 'Srebrny', 'Minivan', 5.7, 0, 135000.00, NULL FROM dual
UNION ALL SELECT 'VVV9901', '6HGCM82633N990111', 'Renault', 'Scenic', 2020, 29000, 1.3, 'Benzyna', 140, 'Biały', 'Minivan', 5.6, 1, 130000.00, NULL FROM dual
UNION ALL SELECT 'WWW1123', '7HGCM82633P112333', 'Opel', 'Zafira', 2018, 48000, 1.6, 'Diesel', 136, 'Czarny', 'Minivan', 5.8, 0, 110000.00, NULL FROM dual
UNION ALL SELECT 'XXX3345', '8HGCM82633P334555', 'Ford', 'S-Max', 2020, 26000, 2.0, 'Diesel', 190, 'Granatowy', 'Minivan', 5.8, 1, 160000.00, 'Pełny pakiet Titanium' FROM dual
UNION ALL SELECT 'YYY5567', '9HGCM82633P556777', 'Seat', 'Alhambra', 2019, 39000, 2.0, 'Diesel', 184, 'Srebrny', 'Minivan', 5.9, 0, 155000.00, NULL FROM dual
UNION ALL SELECT 'ZZZ7789', '0HGCM82633P778999', 'Skoda', 'Roomster', 2017, 75000, 1.4, 'Benzyna', 125, 'Czerwony', 'Minivan', 5.4, 1, 80000.00, NULL FROM dual
UNION ALL SELECT 'AAA9911', '1HGCM82633P991111', 'Fiat', '500X', 2021, 12000, 1.3, 'Benzyna', 150, 'Żółty', 'SUV', 5.2, 0, 115000.00, 'Nowy model 2021' FROM dual
UNION ALL SELECT 'BBB1133', '2HGCM82633Q113333', 'Jeep', 'Renegade', 2020, 22000, 1.3, 'Benzyna', 180, 'Pomarańczowy', 'SUV', 5.4, 1, 145000.00, NULL FROM dual
UNION ALL SELECT 'CCC3355', '3HGCM82633Q335555', 'Suzuki', 'Vitara', 2019, 34000, 1.4, 'Benzyna', 140, 'Zielony', 'SUV', 5.3, 0, 115000.00, NULL FROM dual
UNION ALL SELECT 'DDD5577', '4HGCM82633Q557777', 'Subaru', 'Forester', 2020, 27000, 2.0, 'Benzyna', 156, 'Srebrny', 'SUV', 5.6, 1, 185000.00, 'Napęd 4x4' FROM dual
UNION ALL SELECT 'EEE7799', '5HGCM82633Q779999', 'Mitsubishi', 'Outlander', 2019, 38000, 2.4, 'Benzyna', 170, 'Czarny', 'SUV', 5.6, 1, 170000.00, NULL FROM dual
UNION ALL SELECT 'FFF9902', '6HGCM82633Q990222', 'Dacia', 'Duster', 2021, 10000, 1.3, 'Benzyna', 130, 'Srebrny', 'SUV', 5.3, 0, 95000.00, NULL FROM dual
UNION ALL SELECT 'GGG1124', '7HGCM82633R112444', 'Hyundai', 'i30', 2020, 23000, 1.5, 'Benzyna', 160, 'Biały', 'Hatchback', 4.3, 1, 98000.00, 'Pełen pakiet multimedialny' FROM dual
UNION ALL SELECT 'HHH3346', '8HGCM82633R334666', 'Kia', 'Rio', 2019, 42000, 1.2, 'Benzyna', 85, 'Niebieski', 'Hatchback', 4.2, 0, 75000.00, NULL FROM dual
UNION ALL SELECT 'III5568', '9HGCM82633R556888', 'Toyota', 'Aygo', 2020, 20000, 1.0, 'Benzyna', 72, 'Czerwony', 'Hatchback', 4.1, 1, 68000.00, NULL FROM dual
UNION ALL SELECT 'JJJ7780', '0HGCM82633R778000', 'Volkswagen', 'Polo', 2021, 15000, 1.0, 'Benzyna', 95, 'Srebrny', 'Hatchback', 4.2, 1, 82000.00, 'Salon PL' FROM dual
UNION ALL SELECT 'KKK9903', '1HGCM82633R990333', 'Ford', 'Fiesta', 2020, 22000, 1.0, 'Benzyna', 100, 'Czarny', 'Hatchback', 4.2, 0, 79000.00, NULL FROM dual
UNION ALL SELECT 'LLL1125', '2HGCM82633S112555', 'Opel', 'Corsa', 2019, 36000, 1.2, 'Benzyna', 110, 'Żółty', 'Hatchback', 4.1, 1, 83000.00, NULL FROM dual
UNION ALL SELECT 'MMM3347', '3HGCM82633S334777', 'Renault', 'Clio', 2020, 18000, 1.0, 'Benzyna', 90, 'Niebieski', 'Hatchback', 4.1, 1, 82000.00, NULL FROM dual
UNION ALL SELECT 'NNN5569', '4HGCM82633S556999', 'Peugeot', '208', 2021, 12000, 1.2, 'Benzyna', 100, 'Srebrny', 'Hatchback', 4.1, 0, 85000.00, NULL FROM dual
UNION ALL SELECT 'OOO7792', '5HGCM82633S779222', 'Fiat', 'Punto', 2018, 55000, 1.4, 'Benzyna', 77, 'Czerwony', 'Hatchback', 4.1, 1, 59000.00, NULL FROM dual
UNION ALL SELECT 'PPP9914', '6HGCM82633S991444', 'Citroen', 'C3', 2019, 30000, 1.2, 'Benzyna', 110, 'Zielony', 'Hatchback', 4.2, 0, 72000.00, NULL FROM dual
UNION ALL SELECT 'QQQ1136', '7HGCM82633T113666', 'Hyundai', 'i20', 2020, 24000, 1.2, 'Benzyna', 84, 'Biały', 'Hatchback', 4.2, 1, 81000.00, NULL FROM dual
UNION ALL SELECT 'RRR3358', '8HGCM82633T335888', 'Kia', 'Picanto', 2021, 9000, 1.0, 'Benzyna', 67, 'Żółty', 'Hatchback', 4.0, 1, 65000.00, NULL FROM dual
UNION ALL SELECT 'SSS5579', '9HGCM82633T557999', 'Toyota', 'Auris', 2019, 37000, 1.6, 'Benzyna', 132, 'Srebrny', 'Hatchback', 4.3, 0, 89000.00, NULL FROM dual
UNION ALL SELECT 'TTT7793', '0HGCM82633T779333', 'Mazda', '3', 2020, 21000, 2.0, 'Benzyna', 165, 'Czerwony', 'Hatchback', 4.3, 1, 98000.00, NULL FROM dual
UNION ALL SELECT 'UUU9915', '1HGCM82633T991555', 'Volkswagen', 'Golf', 2021, 15000, 1.5, 'Benzyna', 150, 'Biały', 'Hatchback', 4.4, 0, 105000.00, NULL FROM dual
UNION ALL SELECT 'VVV1137', '2HGCM82633U113777', 'BMW', '1 Series', 2020, 25000, 2.0, 'Diesel', 150, 'Czarny', 'Hatchback', 4.4, 1, 120000.00, 'Pakiet M' FROM dual
UNION ALL SELECT 'WWW3359', '3HGCM82633U335999', 'Audi', 'A3', 2021, 14000, 1.5, 'Benzyna', 150, 'Srebrny', 'Hatchback', 4.3, 0, 115000.00, NULL FROM dual
UNION ALL SELECT 'XXX5580', '4HGCM82633U558000', 'Mercedes', 'A-Class', 2020, 18000, 1.3, 'Benzyna', 163, 'Czerwony', 'Hatchback', 4.3, 1, 125000.00, NULL FROM dual
UNION ALL SELECT 'YYY7801', '5HGCM82633U780111', 'Skoda', 'Scala', 2021, 12000, 1.0, 'Benzyna', 110, 'Srebrny', 'Hatchback', 4.2, 0, 89000.00, NULL FROM dual
UNION ALL SELECT 'ZZZ9922', '6HGCM82633U992222', 'Seat', 'Ibiza', 2020, 20000, 1.0, 'Benzyna', 95, 'Czerwony', 'Hatchback', 4.1, 1, 83000.00, NULL FROM dual
UNION ALL SELECT 'AAA1001', '7HGCM82633V100111', 'Honda', 'Accord', 2020, 23000, 1.5, 'Benzyna', 182, 'Czarny', 'Sedan', 4.8, 1, 145000.00, 'Pełen pakiet bezpieczeństwa' FROM dual
UNION ALL SELECT 'BBB2002', '8HGCM82633V200222', 'Toyota', 'Camry', 2021, 15000, 2.5, 'Hybryda', 218, 'Srebrny', 'Sedan', 5.0, 0, 175000.00, 'Salon Polska' FROM dual
UNION ALL SELECT 'CCC3003', '9HGCM82633V300333', 'Mazda', 'CX-60', 2022, 8000, 3.3, 'Diesel', 284, 'Biały', 'SUV', 5.8, 1, 280000.00, 'Nowy model 2022' FROM dual
UNION ALL SELECT 'DDD4004', '0HGCM82633V400444', 'Tesla', 'Model 3', 2021, 12000, 0.0, 'Elektryk', 283, 'Czerwony', 'Sedan', 5.0, 1, 220000.00, 'Napęd elektryczny, autopilot' FROM dual;

COMMIT;

-- kontrola
SELECT COUNT(*) AS ile FROM samochod;
SELECT MIN(id_samochod) AS min_id, MAX(id_samochod) AS max_id FROM samochod;


-- DOSTAWA
TRUNCATE TABLE dostawa;

INSERT INTO dostawa
  (data_dostawy, kraj_pochodzenia, czy_zarejestrowany, czy_uszkodzony, id_plac, id_samochod)
SELECT v.data_dostawy,
       v.kraj_pochodzenia,
       v.czy_zarejestrowany,
       v.czy_uszkodzony,
       v.id_plac,
       v.id_samochod
FROM (
  SELECT TO_DATE('2022-01-05','YYYY-MM-DD') AS data_dostawy, 'Polska'    AS kraj_pochodzenia, 1 AS czy_zarejestrowany, 0 AS czy_uszkodzony,  1 AS id_plac,   1 AS id_samochod FROM dual
  UNION ALL SELECT TO_DATE('2022-02-12','YYYY-MM-DD'), 'Niemcy',    0, 1,  2,   2 FROM dual
  UNION ALL SELECT TO_DATE('2022-03-20','YYYY-MM-DD'), 'Polska',    1, 0,  3,   3 FROM dual
  UNION ALL SELECT TO_DATE('2022-04-15','YYYY-MM-DD'), 'Francja',   0, 1,  4,   4 FROM dual
  UNION ALL SELECT TO_DATE('2022-05-10','YYYY-MM-DD'), 'Polska',    1, 0,  5,   5 FROM dual
  UNION ALL SELECT TO_DATE('2022-06-25','YYYY-MM-DD'), 'Włochy',    0, 1,  6,   6 FROM dual
  UNION ALL SELECT TO_DATE('2022-07-08','YYYY-MM-DD'), 'Polska',    1, 0,  7,   7 FROM dual
  UNION ALL SELECT TO_DATE('2022-08-19','YYYY-MM-DD'), 'Hiszpania', 0, 1,  8,   8 FROM dual
  UNION ALL SELECT TO_DATE('2022-09-21','YYYY-MM-DD'), 'Polska',    1, 0,  9,   9 FROM dual
  UNION ALL SELECT TO_DATE('2022-10-03','YYYY-MM-DD'), 'Holandia',  0, 1, 10,  10 FROM dual
  UNION ALL SELECT TO_DATE('2022-11-14','YYYY-MM-DD'), 'Polska',    1, 0, 11,  11 FROM dual
  UNION ALL SELECT TO_DATE('2022-12-30','YYYY-MM-DD'), 'Belgia',    0, 1, 12,  12 FROM dual
  UNION ALL SELECT TO_DATE('2023-01-08','YYYY-MM-DD'), 'Polska',    1, 0, 13,  13 FROM dual
  UNION ALL SELECT TO_DATE('2023-02-17','YYYY-MM-DD'), 'Austria',   0, 1, 14,  14 FROM dual
  UNION ALL SELECT TO_DATE('2023-03-22','YYYY-MM-DD'), 'Polska',    1, 0, 15,  15 FROM dual
  UNION ALL SELECT TO_DATE('2023-04-05','YYYY-MM-DD'), 'Niemcy',    0, 1, 16,  16 FROM dual
  UNION ALL SELECT TO_DATE('2023-04-18','YYYY-MM-DD'), 'Polska',    1, 0, 17,  17 FROM dual
  UNION ALL SELECT TO_DATE('2023-05-02','YYYY-MM-DD'), 'Francja',   0, 1, 18,  18 FROM dual
  UNION ALL SELECT TO_DATE('2023-05-16','YYYY-MM-DD'), 'Polska',    1, 0, 19,  19 FROM dual
  UNION ALL SELECT TO_DATE('2023-05-29','YYYY-MM-DD'), 'Włochy',    0, 1, 20,  20 FROM dual
  UNION ALL SELECT TO_DATE('2023-06-11','YYYY-MM-DD'), 'Polska',    1, 0, 21,  21 FROM dual
  UNION ALL SELECT TO_DATE('2023-06-24','YYYY-MM-DD'), 'Hiszpania', 0, 1, 22,  22 FROM dual
  UNION ALL SELECT TO_DATE('2023-07-07','YYYY-MM-DD'), 'Polska',    1, 0, 23,  23 FROM dual
  UNION ALL SELECT TO_DATE('2023-07-20','YYYY-MM-DD'), 'Holandia',  0, 1, 24,  24 FROM dual
  UNION ALL SELECT TO_DATE('2023-08-02','YYYY-MM-DD'), 'Polska',    1, 0, 25,  25 FROM dual
  UNION ALL SELECT TO_DATE('2023-08-15','YYYY-MM-DD'), 'Belgia',    0, 1, 26,  26 FROM dual
  UNION ALL SELECT TO_DATE('2023-08-28','YYYY-MM-DD'), 'Polska',    1, 0, 27,  27 FROM dual
  UNION ALL SELECT TO_DATE('2023-09-10','YYYY-MM-DD'), 'Austria',   0, 1, 28,  28 FROM dual
  UNION ALL SELECT TO_DATE('2023-09-23','YYYY-MM-DD'), 'Polska',    1, 0, 29,  29 FROM dual
  UNION ALL SELECT TO_DATE('2023-10-06','YYYY-MM-DD'), 'Niemcy',    0, 1, 30,  30 FROM dual
  UNION ALL SELECT TO_DATE('2023-10-19','YYYY-MM-DD'), 'Polska',    1, 0, 31,  31 FROM dual
  UNION ALL SELECT TO_DATE('2023-11-01','YYYY-MM-DD'), 'Francja',   0, 1, 32,  32 FROM dual
  UNION ALL SELECT TO_DATE('2023-11-14','YYYY-MM-DD'), 'Polska',    1, 0, 33,  33 FROM dual
  UNION ALL SELECT TO_DATE('2023-11-27','YYYY-MM-DD'), 'Włochy',    0, 1, 34,  34 FROM dual
  UNION ALL SELECT TO_DATE('2023-12-10','YYYY-MM-DD'), 'Polska',    1, 0, 35,  35 FROM dual
  UNION ALL SELECT TO_DATE('2023-12-23','YYYY-MM-DD'), 'Hiszpania', 0, 1, 36,  36 FROM dual
  UNION ALL SELECT TO_DATE('2024-01-05','YYYY-MM-DD'), 'Polska',    1, 0, 37,  37 FROM dual
  UNION ALL SELECT TO_DATE('2024-01-18','YYYY-MM-DD'), 'Holandia',  0, 1, 38,  38 FROM dual
  UNION ALL SELECT TO_DATE('2024-02-01','YYYY-MM-DD'), 'Polska',    1, 0, 39,  39 FROM dual
  UNION ALL SELECT TO_DATE('2024-02-14','YYYY-MM-DD'), 'Belgia',    0, 1, 40,  40 FROM dual
  UNION ALL SELECT TO_DATE('2024-02-27','YYYY-MM-DD'), 'Polska',    1, 0, 41,  41 FROM dual
  UNION ALL SELECT TO_DATE('2024-03-11','YYYY-MM-DD'), 'Austria',   0, 1, 42,  42 FROM dual
  UNION ALL SELECT TO_DATE('2024-03-24','YYYY-MM-DD'), 'Polska',    1, 0, 43,  43 FROM dual
  UNION ALL SELECT TO_DATE('2024-04-06','YYYY-MM-DD'), 'Niemcy',    0, 1, 44,  44 FROM dual
  UNION ALL SELECT TO_DATE('2024-04-19','YYYY-MM-DD'), 'Polska',    1, 0, 45,  45 FROM dual
  UNION ALL SELECT TO_DATE('2024-05-02','YYYY-MM-DD'), 'Francja',   0, 1, 46,  46 FROM dual
  UNION ALL SELECT TO_DATE('2024-05-15','YYYY-MM-DD'), 'Polska',    1, 0, 47,  47 FROM dual
  UNION ALL SELECT TO_DATE('2024-05-28','YYYY-MM-DD'), 'Włochy',    0, 1, 48,  48 FROM dual
  UNION ALL SELECT TO_DATE('2024-06-10','YYYY-MM-DD'), 'Polska',    1, 0, 49,  49 FROM dual
  UNION ALL SELECT TO_DATE('2024-06-23','YYYY-MM-DD'), 'Hiszpania', 0, 1, 50,  50 FROM dual
  UNION ALL SELECT TO_DATE('2024-07-06','YYYY-MM-DD'), 'Polska',    1, 0, 51,  51 FROM dual
  UNION ALL SELECT TO_DATE('2024-07-19','YYYY-MM-DD'), 'Holandia',  0, 1, 52,  52 FROM dual
  UNION ALL SELECT TO_DATE('2024-08-01','YYYY-MM-DD'), 'Polska',    1, 0, 53,  53 FROM dual
  UNION ALL SELECT TO_DATE('2024-08-14','YYYY-MM-DD'), 'Belgia',    0, 1, 54,  54 FROM dual
  UNION ALL SELECT TO_DATE('2024-08-27','YYYY-MM-DD'), 'Polska',    1, 0, 55,  55 FROM dual
  UNION ALL SELECT TO_DATE('2024-09-09','YYYY-MM-DD'), 'Austria',   0, 1, 56,  56 FROM dual
  UNION ALL SELECT TO_DATE('2024-09-22','YYYY-MM-DD'), 'Polska',    1, 0, 57,  57 FROM dual
  UNION ALL SELECT TO_DATE('2024-10-05','YYYY-MM-DD'), 'Niemcy',    0, 1, 58,  58 FROM dual
  UNION ALL SELECT TO_DATE('2024-10-18','YYYY-MM-DD'), 'Polska',    1, 0, 59,  59 FROM dual
  UNION ALL SELECT TO_DATE('2024-10-31','YYYY-MM-DD'), 'Francja',   0, 1, 60,  60 FROM dual
  UNION ALL SELECT TO_DATE('2024-11-13','YYYY-MM-DD'), 'Polska',    1, 0, 61,  61 FROM dual
  UNION ALL SELECT TO_DATE('2024-11-26','YYYY-MM-DD'), 'Włochy',    0, 1, 62,  62 FROM dual
  UNION ALL SELECT TO_DATE('2024-12-09','YYYY-MM-DD'), 'Polska',    1, 0, 63,  63 FROM dual
  UNION ALL SELECT TO_DATE('2024-12-22','YYYY-MM-DD'), 'Hiszpania', 0, 1, 64,  64 FROM dual
  UNION ALL SELECT TO_DATE('2025-01-04','YYYY-MM-DD'), 'Polska',    1, 0, 65,  65 FROM dual
  UNION ALL SELECT TO_DATE('2025-01-17','YYYY-MM-DD'), 'Holandia',  0, 1, 66,  66 FROM dual
  UNION ALL SELECT TO_DATE('2025-01-30','YYYY-MM-DD'), 'Polska',    1, 0, 67,  67 FROM dual
  UNION ALL SELECT TO_DATE('2025-02-12','YYYY-MM-DD'), 'Belgia',    0, 1, 68,  68 FROM dual
  UNION ALL SELECT TO_DATE('2025-02-25','YYYY-MM-DD'), 'Polska',    1, 0, 69,  69 FROM dual
  UNION ALL SELECT TO_DATE('2025-03-10','YYYY-MM-DD'), 'Austria',   0, 1, 70,  70 FROM dual
  UNION ALL SELECT TO_DATE('2025-03-23','YYYY-MM-DD'), 'Polska',    1, 0, 71,  71 FROM dual
  UNION ALL SELECT TO_DATE('2025-04-05','YYYY-MM-DD'), 'Niemcy',    0, 1, 72,  72 FROM dual
  UNION ALL SELECT TO_DATE('2025-04-18','YYYY-MM-DD'), 'Polska',    1, 0, 73,  73 FROM dual
  UNION ALL SELECT TO_DATE('2025-05-01','YYYY-MM-DD'), 'Francja',   0, 1, 74,  74 FROM dual
  UNION ALL SELECT TO_DATE('2025-05-14','YYYY-MM-DD'), 'Polska',    1, 0, 75,  75 FROM dual
  UNION ALL SELECT TO_DATE('2025-05-27','YYYY-MM-DD'), 'Włochy',    0, 1, 76,  76 FROM dual
  UNION ALL SELECT TO_DATE('2025-06-09','YYYY-MM-DD'), 'Polska',    1, 0, 77,  77 FROM dual
  UNION ALL SELECT TO_DATE('2025-06-22','YYYY-MM-DD'), 'Hiszpania', 0, 1, 78,  78 FROM dual
  UNION ALL SELECT TO_DATE('2025-07-05','YYYY-MM-DD'), 'Polska',    1, 0, 79,  79 FROM dual
  UNION ALL SELECT TO_DATE('2025-07-18','YYYY-MM-DD'), 'Holandia',  0, 1, 80,  80 FROM dual
  UNION ALL SELECT TO_DATE('2025-07-31','YYYY-MM-DD'), 'Polska',    1, 0, 81,  81 FROM dual
  UNION ALL SELECT TO_DATE('2025-08-13','YYYY-MM-DD'), 'Belgia',    0, 1, 82,  82 FROM dual
  UNION ALL SELECT TO_DATE('2025-08-26','YYYY-MM-DD'), 'Polska',    1, 0, 83,  83 FROM dual
  UNION ALL SELECT TO_DATE('2025-09-08','YYYY-MM-DD'), 'Austria',   0, 1, 84,  84 FROM dual
  UNION ALL SELECT TO_DATE('2025-09-21','YYYY-MM-DD'), 'Polska',    1, 0, 85,  85 FROM dual
  UNION ALL SELECT TO_DATE('2025-10-04','YYYY-MM-DD'), 'Niemcy',    0, 1, 86,  86 FROM dual
  UNION ALL SELECT TO_DATE('2025-10-17','YYYY-MM-DD'), 'Polska',    1, 0, 87,  87 FROM dual
  UNION ALL SELECT TO_DATE('2025-10-30','YYYY-MM-DD'), 'Francja',   0, 1, 88,  88 FROM dual
  UNION ALL SELECT TO_DATE('2025-11-12','YYYY-MM-DD'), 'Polska',    1, 0, 89,  89 FROM dual
  UNION ALL SELECT TO_DATE('2025-11-25','YYYY-MM-DD'), 'Włochy',    0, 1, 90,  90 FROM dual
  UNION ALL SELECT TO_DATE('2025-12-08','YYYY-MM-DD'), 'Polska',    1, 0, 91,  91 FROM dual
  UNION ALL SELECT TO_DATE('2025-12-21','YYYY-MM-DD'), 'Hiszpania', 0, 1, 92,  92 FROM dual
  UNION ALL SELECT TO_DATE('2026-01-03','YYYY-MM-DD'), 'Polska',    1, 0, 93,  93 FROM dual
  UNION ALL SELECT TO_DATE('2026-01-16','YYYY-MM-DD'), 'Holandia',  0, 1, 94,  94 FROM dual
  UNION ALL SELECT TO_DATE('2026-01-29','YYYY-MM-DD'), 'Polska',    1, 0, 95,  95 FROM dual
  UNION ALL SELECT TO_DATE('2026-02-11','YYYY-MM-DD'), 'Belgia',    0, 1, 96,  96 FROM dual
  UNION ALL SELECT TO_DATE('2026-02-24','YYYY-MM-DD'), 'Polska',    1, 0, 97,  97 FROM dual
  UNION ALL SELECT TO_DATE('2026-03-08','YYYY-MM-DD'), 'Austria',   0, 1, 98,  98 FROM dual
  UNION ALL SELECT TO_DATE('2026-03-21','YYYY-MM-DD'), 'Polska',    1, 0, 99,  99 FROM dual
  UNION ALL SELECT TO_DATE('2026-04-03','YYYY-MM-DD'), 'Niemcy',    0, 1, 100, 100 FROM dual
) v;


COMMIT;

-- kontrola
SELECT MIN(id_dostawa) min_id, MAX(id_dostawa) max_id, COUNT(*) ile FROM dostawa;


-- SPRZEDAWCA
TRUNCATE TABLE sprzedawca;

INSERT INTO sprzedawca
  (imie, nazwisko, nr_telefonu, e_mail, id_komis, id_plac)
SELECT v.imie,
       v.nazwisko,
       v.nr_telefonu,
       v.e_mail,
       v.id_komis,
       v.id_plac
FROM (
  SELECT 'Jan'       AS imie, 'Kowalski'    AS nazwisko, '123-456-001' AS nr_telefonu, 'jan.kowalski1@example.com'       AS e_mail, 1 AS id_komis, 1 AS id_plac FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-002',            'anna.nowak1@example.com',                    1,            1 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-003',            'piotr.wisniewski1@example.com',              1,            1 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-004',            'katarzyna.wojcik1@example.com',              1,            1 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-005',            'jan.kowalski2@example.com',                  1,            2 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-006',            'anna.nowak2@example.com',                    1,            2 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-007',            'piotr.wisniewski2@example.com',              1,            2 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-008',            'katarzyna.wojcik2@example.com',              1,            2 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-009',            'jan.kowalski3@example.com',                  1,            3 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-010',            'anna.nowak3@example.com',                    1,            3 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-011',            'piotr.wisniewski3@example.com',              1,            3 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-012',            'katarzyna.wojcik3@example.com',              1,            3 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-013',            'jan.kowalski4@example.com',                  1,            4 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-014',            'anna.nowak4@example.com',                    1,            4 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-015',            'piotr.wisniewski4@example.com',              1,            4 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-016',            'katarzyna.wojcik4@example.com',              1,            4 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-017',            'jan.kowalski5@example.com',                  1,            5 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-018',            'anna.nowak5@example.com',                    1,            5 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-019',            'piotr.wisniewski5@example.com',              1,            5 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-020',            'katarzyna.wojcik5@example.com',              1,            5 FROM dual


  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-021',            'jan.kowalski6@example.com',                  2,            1 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-022',            'anna.nowak6@example.com',                    2,            1 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-023',            'piotr.wisniewski6@example.com',              2,            1 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-024',            'katarzyna.wojcik6@example.com',              2,            1 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-025',            'jan.kowalski7@example.com',                  2,            2 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-026',            'anna.nowak7@example.com',                    2,            2 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-027',            'piotr.wisniewski7@example.com',              2,            2 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-028',            'katarzyna.wojcik7@example.com',              2,            2 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-029',            'jan.kowalski8@example.com',                  2,            3 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-030',            'anna.nowak8@example.com',                    2,            3 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-031',            'piotr.wisniewski8@example.com',              2,            3 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-032',            'katarzyna.wojcik8@example.com',              2,            3 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-033',            'jan.kowalski9@example.com',                  2,            4 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-034',            'anna.nowak9@example.com',                    2,            4 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-035',            'piotr.wisniewski9@example.com',              2,            4 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-036',            'katarzyna.wojcik9@example.com',              2,            4 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-037',            'jan.kowalski10@example.com',                 2,            5 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-038',            'anna.nowak10@example.com',                   2,            5 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-039',            'piotr.wisniewski10@example.com',             2,            5 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-040',            'katarzyna.wojcik10@example.com',             2,            5 FROM dual


  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-041',            'jan.kowalski11@example.com',                 3,            1 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-042',            'anna.nowak11@example.com',                   3,            1 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-043',            'piotr.wisniewski11@example.com',             3,            1 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-044',            'katarzyna.wojcik11@example.com',             3,            1 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-045',            'jan.kowalski12@example.com',                 3,            2 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-046',            'anna.nowak12@example.com',                   3,            2 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-047',            'piotr.wisniewski12@example.com',             3,            2 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-048',            'katarzyna.wojcik12@example.com',             3,            2 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-049',            'jan.kowalski13@example.com',                 3,            3 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-050',            'anna.nowak13@example.com',                   3,            3 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-051',            'piotr.wisniewski13@example.com',             3,            3 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-052',            'katarzyna.wojcik13@example.com',             3,            3 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-053',            'jan.kowalski14@example.com',                 3,            4 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-054',            'anna.nowak14@example.com',                   3,            4 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-055',            'piotr.wisniewski14@example.com',             3,            4 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-056',            'katarzyna.wojcik14@example.com',             3,            4 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-057',            'jan.kowalski15@example.com',                 3,            5 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-058',            'anna.nowak15@example.com',                   3,            5 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-059',            'piotr.wisniewski15@example.com',             3,            5 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-060',            'katarzyna.wojcik15@example.com',             3,            5 FROM dual


  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-061',            'jan.kowalski16@example.com',                 4,            1 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-062',            'anna.nowak16@example.com',                   4,            1 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-063',            'piotr.wisniewski16@example.com',             4,            1 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-064',            'katarzyna.wojcik16@example.com',             4,            1 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-065',            'jan.kowalski17@example.com',                 4,            2 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-066',            'anna.nowak17@example.com',                   4,            2 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-067',            'piotr.wisniewski17@example.com',             4,            2 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-068',            'katarzyna.wojcik17@example.com',             4,            2 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-069',            'jan.kowalski18@example.com',                 4,            3 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-070',            'anna.nowak18@example.com',                   4,            3 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-071',            'piotr.wisniewski18@example.com',             4,            3 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-072',            'katarzyna.wojcik18@example.com',             4,            3 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-073',            'jan.kowalski19@example.com',                 4,            4 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-074',            'anna.nowak19@example.com',                   4,            4 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-075',            'piotr.wisniewski19@example.com',             4,            4 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-076',            'katarzyna.wojcik19@example.com',             4,            4 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-077',            'jan.kowalski20@example.com',                 4,            5 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-078',            'anna.nowak20@example.com',                   4,            5 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-079',            'piotr.wisniewski20@example.com',             4,            5 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-080',            'katarzyna.wojcik20@example.com',             4,            5 FROM dual


  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-081',            'jan.kowalski21@example.com',                 5,            1 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-082',            'anna.nowak21@example.com',                   5,            1 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-083',            'piotr.wisniewski21@example.com',             5,            1 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-084',            'katarzyna.wojcik21@example.com',             5,            1 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-085',            'jan.kowalski22@example.com',                 5,            2 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-086',            'anna.nowak22@example.com',                   5,            2 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-087',            'piotr.wisniewski22@example.com',             5,            2 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-088',            'katarzyna.wojcik22@example.com',             5,            2 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-089',            'jan.kowalski23@example.com',                 5,            3 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-090',            'anna.nowak23@example.com',                   5,            3 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-091',            'piotr.wisniewski23@example.com',             5,            3 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-092',            'katarzyna.wojcik23@example.com',             5,            3 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-093',            'jan.kowalski24@example.com',                 5,            4 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-094',            'anna.nowak24@example.com',                   5,            4 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-095',            'piotr.wisniewski24@example.com',             5,            4 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-096',            'katarzyna.wojcik24@example.com',             5,            4 FROM dual

  UNION ALL SELECT 'Jan',       'Kowalski',     '123-456-097',            'jan.kowalski25@example.com',                 5,            5 FROM dual
  UNION ALL SELECT 'Anna',      'Nowak',        '123-456-098',            'anna.nowak25@example.com',                   5,            5 FROM dual
  UNION ALL SELECT 'Piotr',     'Wiśniewski',   '123-456-099',            'piotr.wisniewski25@example.com',             5,            5 FROM dual
  UNION ALL SELECT 'Katarzyna', 'Wójcik',       '123-456-100',            'katarzyna.wojcik25@example.com',             5,            5 FROM dual
) v;

COMMIT;

-- kontrola
SELECT MIN(id_sprzedawca) min_id,
       MAX(id_sprzedawca) max_id,
       COUNT(*) ile
FROM sprzedawca;


-- FAKTURA
TRUNCATE TABLE faktura;

INSERT INTO faktura
  (nr_faktury, rabat, sposob_zaplaty, czy_zaplacono)
SELECT v.nr_faktury,
       v.rabat,
       v.sposob_zaplaty,
       v.czy_zaplacono
FROM (
  SELECT 'F/2024/001' AS nr_faktury, 5    AS rabat, 'Przelew'       AS sposob_zaplaty, 1 AS czy_zaplacono FROM dual
  UNION ALL SELECT 'F/2024/002', NULL, 'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/003', 10,   'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/004', 5,    'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/005', 4,    'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/006', NULL, 'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/007', 9,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/008', 3,    'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/009', 4,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/010', 7,    'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/011', NULL, 'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/012', 6,    'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/013', 2,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/014', 8,    'Gotówka',        0 FROM dual
  UNION ALL SELECT 'F/2024/015', 5,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/016', 3,    'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/017', NULL, 'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/018', 4,    'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/019', 7,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/020', 6,    'Karta kredytowa',0 FROM dual
  UNION ALL SELECT 'F/2024/021', 5,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/022', 3,    'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/023', NULL, 'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/024', 2,    'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/025', 8,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/026', 4,    'Gotówka',        0 FROM dual
  UNION ALL SELECT 'F/2024/027', 6,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/028', NULL, 'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/029', 5,    'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/030', 7,    'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/031', 3,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/032', NULL, 'Karta kredytowa',0 FROM dual
  UNION ALL SELECT 'F/2024/033', 6,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/034', 2,    'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/035', 8,    'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/036', 5,    'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/037', NULL, 'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/038', 3,    'Gotówka',        0 FROM dual
  UNION ALL SELECT 'F/2024/039', 6,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/040', 4,    'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/041', 5,    'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/042', NULL, 'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/043', 7,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/044', 3,    'Karta kredytowa',0 FROM dual
  UNION ALL SELECT 'F/2024/045', 6,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/046', 2,    'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/047', 8,    'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/048', NULL, 'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/049', 4,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/050', 5,    'Gotówka',        0 FROM dual
  UNION ALL SELECT 'F/2024/051', 7,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/052', 3,    'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/053', NULL, 'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/054', 6,    'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/055', 2,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/056', 8,    'Karta kredytowa',0 FROM dual
  UNION ALL SELECT 'F/2024/057', 5,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/058', 3,    'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/059', NULL, 'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/060', 4,    'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/061', 6,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/062', 2,    'Gotówka',        0 FROM dual
  UNION ALL SELECT 'F/2024/063', 7,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/064', NULL, 'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/065', 5,    'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/066', 3,    'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/067', 6,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/068', 4,    'Karta kredytowa',0 FROM dual
  UNION ALL SELECT 'F/2024/069', NULL, 'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/070', 7,    'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/071', 5,    'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/072', 3,    'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/073', NULL, 'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/074', 6,    'Gotówka',        0 FROM dual
  UNION ALL SELECT 'F/2024/075', 2,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/076', 8,    'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/077', 5,    'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/078', 3,    'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/079', NULL, 'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/080', 4,    'Karta kredytowa',0 FROM dual
  UNION ALL SELECT 'F/2024/081', 6,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/082', 2,    'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/083', 7,    'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/084', NULL, 'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/085', 5,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/086', 3,    'Gotówka',        0 FROM dual
  UNION ALL SELECT 'F/2024/087', 6,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/088', 4,    'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/089', NULL, 'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/090', 7,    'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/091', 5,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/092', 3,    'Karta kredytowa',0 FROM dual
  UNION ALL SELECT 'F/2024/093', NULL, 'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/094', 6,    'Gotówka',        1 FROM dual
  UNION ALL SELECT 'F/2024/095', 2,    'Przelew',        0 FROM dual
  UNION ALL SELECT 'F/2024/096', 8,    'Karta kredytowa',1 FROM dual
  UNION ALL SELECT 'F/2024/097', 5,    'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/098', 3,    'Gotówka',        0 FROM dual
  UNION ALL SELECT 'F/2024/099', NULL, 'Przelew',        1 FROM dual
  UNION ALL SELECT 'F/2024/100', 4,    'Karta kredytowa',1 FROM dual
) v;

COMMIT;

-- kontrola
SELECT MIN(id_faktura) min_id,
       MAX(id_faktura) max_id,
       COUNT(*) ile
FROM faktura;

-- KLIENT
TRUNCATE TABLE klient;

INSERT INTO klient
  (imie, nazwisko, pesel, rodzaj_dokumentu, nr_dokumentu, panstwo, miasto, ulica, nr_domu, nr_mieszkania, kod, telefon)
SELECT v.imie,
       v.nazwisko,
       v.pesel,
       v.rodzaj_dokumentu,
       v.nr_dokumentu,
       v.panstwo,
       v.miasto,
       v.ulica,
       v.nr_domu,
       v.nr_mieszkania,
       v.kod,
       v.telefon
FROM (
  SELECT 'Jan' AS imie, 'Kowalski' AS nazwisko, '12345678901' AS pesel, 'Dowód osobisty' AS rodzaj_dokumentu, 'ABC123456' AS nr_dokumentu,
         'Polska' AS panstwo, 'Warszawa' AS miasto, 'Krakowska' AS ulica, 10 AS nr_domu, '2' AS nr_mieszkania, '00-001' AS kod, '123456789' AS telefon
  FROM dual
  UNION ALL SELECT 'Anna', 'Nowak', '98765432101', 'Dowód osobisty', 'DEF987654', 'Polska', 'Kraków', 'Piotrkowska', 5,  NULL, '30-002', '987654321' FROM dual
  UNION ALL SELECT 'Piotr', 'Wiśniewski', '34567890101', 'Paszport', 'GHI654321', 'Polska', 'Gdańsk', 'Słoneczna', 15, '4', '80-003', '654321987' FROM dual
  UNION ALL SELECT 'Maria', 'Dąbrowska', '67890123402', 'Dowód osobisty', 'JKL321654', 'Polska', 'Poznań', 'Leszczyńska', 20, NULL, '60-004', '456789012' FROM dual
  UNION ALL SELECT 'Adam', 'Lis', '01234567891', 'Paszport', 'MNO987654', 'Polska', 'Łódź', 'Wschodnia', 30, '7', '90-005', '789012345' FROM dual
  UNION ALL SELECT 'Ewa', 'Kamińska', '11223344556', 'Dowód osobisty', 'PQR456789', 'Polska', 'Wrocław', 'Polna', 25, '1', '50-006', '321654987' FROM dual
  UNION ALL SELECT 'Tomasz', 'Zieliński', '12345678909', 'Paszport', 'STU654321', 'Polska', 'Szczecin', 'Rybacka', 8, NULL, '70-007', '654987321' FROM dual
  UNION ALL SELECT 'Magdalena', 'Woźniak', '21314151617', 'Dowód osobisty', 'VWX123456', 'Polska', 'Katowice', 'Ogrodowa', 12, NULL, '40-008', '987321654' FROM dual
  UNION ALL SELECT 'Katarzyna', 'Jaworska', '56789012342', 'Dowód osobisty', 'YZA987654', 'Polska', 'Gdynia', 'Moraska', 18, '3', '20-009', '741852963' FROM dual
  UNION ALL SELECT 'Grzegorz', 'Kaczmarek', '67890123456', 'Dowód osobisty', 'BCD654321', 'Polska', 'Kraków', 'Długa', 7, NULL, '30-010', '852963741' FROM dual
  UNION ALL SELECT 'Aleksandra', 'Pawlak', '89012345671', 'Dowód osobisty', 'EFG123987', 'Polska', 'Warszawa', 'Nowowiejska', 11, '2', '00-011', '789654123' FROM dual
  UNION ALL SELECT 'Paweł', 'Michalski', '90123456782', 'Paszport', 'HIJ456321', 'Polska', 'Gdańsk', 'Jana Pawła II', 3, NULL, '80-012', '456123789' FROM dual
  UNION ALL SELECT 'Karolina', 'Wróbel', '11223344567', 'Dowód osobisty', 'KLM789654', 'Polska', 'Poznań', 'Dworcowa', 9, '1', '60-013', '963852741' FROM dual
  UNION ALL SELECT 'Marcin', 'Grabowski', '22334455678', 'Paszport', 'NOP321987', 'Polska', 'Łódź', 'Fabryczna', 21, '6', '90-014', '147258369' FROM dual
  UNION ALL SELECT 'Agnieszka', 'Król', '33445566789', 'Dowód osobisty', 'QRS654123', 'Polska', 'Wrocław', 'Kościuszki', 14, '2', '50-015', '258369147' FROM dual
  UNION ALL SELECT 'Michał', 'Wieczorek', '44556677890', 'Dowód osobisty', 'TUV987321', 'Polska', 'Lublin', 'Lipowa', 5, '4', '20-016', '369147258' FROM dual
  UNION ALL SELECT 'Natalia', 'Zając', '55667788901', 'Paszport', 'WXY321654', 'Polska', 'Katowice', 'Cicha', 8, NULL, '40-017', '741369258' FROM dual
  UNION ALL SELECT 'Kamil', 'Olszewski', '66778899012', 'Dowód osobisty', 'ZAB654987', 'Polska', 'Bydgoszcz', 'Leśna', 6, '1', '85-018', '963147852' FROM dual
  UNION ALL SELECT 'Dorota', 'Sokołowska', '77889900123', 'Paszport', 'CDE987123', 'Polska', 'Toruń', 'Kwiatowa', 10, '2', '87-019', '159357486' FROM dual
  UNION ALL SELECT 'Łukasz', 'Górski', '88990011234', 'Dowód osobisty', 'FGH123789', 'Polska', 'Rzeszów', 'Szeroka', 17, NULL, '35-020', '753159486' FROM dual
  UNION ALL SELECT 'Beata', 'Mazur', '99001122345', 'Dowód osobisty', 'IJK456987', 'Polska', 'Gdynia', 'Sopocka', 19, '3', '81-021', '951357486' FROM dual
  UNION ALL SELECT 'Rafał', 'Adamski', '10111213141', 'Paszport', 'LMN789123', 'Polska', 'Szczecin', 'Morska', 13, NULL, '70-022', '654789321' FROM dual
  UNION ALL SELECT 'Monika', 'Baran', '12131415161', 'Dowód osobisty', 'OPQ321456', 'Polska', 'Kraków', 'Śląska', 9, '1', '30-023', '789321456' FROM dual
  UNION ALL SELECT 'Krzysztof', 'Sikora', '13141516171', 'Dowód osobisty', 'RST654789', 'Polska', 'Warszawa', 'Mazowiecka', 5, '2', '00-024', '456987123' FROM dual
  UNION ALL SELECT 'Patrycja', 'Walczak', '14151617181', 'Paszport', 'UVW987654', 'Polska', 'Poznań', 'Krótka', 4, NULL, '60-025', '987456321' FROM dual
  UNION ALL SELECT 'Sebastian', 'Rutkowski', '15161718191', 'Dowód osobisty', 'XYZ123456', 'Polska', 'Łódź', 'Politechniczna', 7, '1', '90-026', '741852963' FROM dual
  UNION ALL SELECT 'Justyna', 'Michalak', '16171819201', 'Dowód osobisty', 'AAA654987', 'Polska', 'Wrocław', 'Różana', 11, '3', '50-027', '963258147' FROM dual
  UNION ALL SELECT 'Marek', 'Nowicki', '17181920311', 'Paszport', 'BBB987123', 'Polska', 'Kielce', 'Wesoła', 15, NULL, '25-028', '789654123' FROM dual
  UNION ALL SELECT 'Joanna', 'Witkowska', '18192031421', 'Dowód osobisty', 'CCC123789', 'Polska', 'Bydgoszcz', 'Dworcowa', 3, '2', '85-029', '852147963' FROM dual
  UNION ALL SELECT 'Damian', 'Kowalczyk', '19203142531', 'Dowód osobisty', 'DDD456321', 'Polska', 'Lublin', 'Krucza', 10, NULL, '20-030', '951258753' FROM dual
  UNION ALL SELECT 'Izabela', 'Marciniak', '20314253641', 'Paszport', 'EEE789654', 'Polska', 'Gdańsk', 'Zielona', 22, '4', '80-031', '654159357' FROM dual
  UNION ALL SELECT 'Filip', 'Jankowski', '21425364751', 'Dowód osobisty', 'FFF321987', 'Polska', 'Warszawa', 'Słoneczna', 14, '1', '00-032', '357159486' FROM dual
  UNION ALL SELECT 'Oliwia', 'Piotrowska', '22536475861', 'Dowód osobisty', 'GGG654321', 'Polska', 'Kraków', 'Mostowa', 18, '2', '30-033', '258963147' FROM dual
  UNION ALL SELECT 'Bartosz', 'Wróblewski', '23647586971', 'Paszport', 'HHH987456', 'Polska', 'Poznań', 'Kwiatowa', 7, NULL, '60-034', '369741852' FROM dual
  UNION ALL SELECT 'Wiktoria', 'Nowicka', '24758697081', 'Dowód osobisty', 'III123654', 'Polska', 'Łódź', 'Lipowa', 5, '3', '90-035', '654753159' FROM dual
  UNION ALL SELECT 'Mateusz', 'Majewski', '25869708191', 'Dowód osobisty', 'JJJ456987', 'Polska', 'Wrocław', 'Klonowa', 9, '2', '50-036', '741369852' FROM dual
  UNION ALL SELECT 'Julia', 'Stępień', '26970819201', 'Paszport', 'KKK789321', 'Polska', 'Katowice', 'Leśna', 20, NULL, '40-037', '963147258' FROM dual
  UNION ALL SELECT 'Patryk', 'Wieczorek', '27081920311', 'Dowód osobisty', 'LLL321789', 'Polska', 'Rzeszów', 'Kwiatowa', 8, '1', '35-038', '951753486' FROM dual
  UNION ALL SELECT 'Zuzanna', 'Duda', '28192031421', 'Dowód osobisty', 'MMM654123', 'Polska', 'Gdynia', 'Wiślana', 13, NULL, '81-039', '654789321' FROM dual
  UNION ALL SELECT 'Jakub', 'Pawłowski', '29203142531', 'Paszport', 'NNN987321', 'Polska', 'Kraków', 'Warszawska', 11, '4', '30-040', '456987753' FROM dual
  UNION ALL SELECT 'Klaudia', 'Włodarczyk', '30314253641', 'Dowód osobisty', 'OOO123654', 'Polska', 'Warszawa', 'Długa', 9, '2', '00-041', '987456123' FROM dual
  UNION ALL SELECT 'Mariusz', 'Borkowski', '31425364751', 'Dowód osobisty', 'PPP456987', 'Polska', 'Poznań', 'Nowa', 7, '1', '60-042', '741963258' FROM dual
  UNION ALL SELECT 'Dominika', 'Czarnecka', '32536475861', 'Paszport', 'QQQ789123', 'Polska', 'Łódź', 'Rzemieślnicza', 5, NULL, '90-043', '753852159' FROM dual
  UNION ALL SELECT 'Artur', 'Urbański', '33647586971', 'Dowód osobisty', 'RRR321654', 'Polska', 'Lublin', 'Parkowa', 12, '3', '20-044', '951654357' FROM dual
  UNION ALL SELECT 'Kinga', 'Kowal', '34758697081', 'Dowód osobisty', 'SSS654987', 'Polska', 'Bydgoszcz', 'Ogrodowa', 14, NULL, '85-045', '357951486' FROM dual
  UNION ALL SELECT 'Norbert', 'Tomaszewski', '35869708191', 'Paszport', 'TTT987321', 'Polska', 'Wrocław', 'Polna', 18, '2', '50-046', '753456789' FROM dual
  UNION ALL SELECT 'Sylwia', 'Wysocka', '36970819201', 'Dowód osobisty', 'UUU321987', 'Polska', 'Gdańsk', 'Zielona', 7, '3', '80-047', '654357951' FROM dual
  UNION ALL SELECT 'Oskar', 'Lis', '37081920311', 'Dowód osobisty', 'VVV654789', 'Polska', 'Katowice', 'Leśna', 10, NULL, '40-048', '951357486' FROM dual
  UNION ALL SELECT 'Kamila', 'Kubiak', '38192031421', 'Paszport', 'WWW987654', 'Polska', 'Warszawa', 'Szeroka', 19, '1', '00-049', '789951753' FROM dual
  UNION ALL SELECT 'Emil', 'Kozłowski', '39203142531', 'Dowód osobisty', 'XXX123456', 'Polska', 'Kraków', 'Cicha', 15, '2', '30-050', '741258963' FROM dual
  UNION ALL SELECT 'Alicja', 'Mazurkiewicz', '40214253641', 'Dowód osobisty', 'YYY654321', 'Polska', 'Poznań', 'Dworcowa', 12, NULL, '60-051', '987123654' FROM dual
  UNION ALL SELECT 'Damian', 'Lewandowski', '41325364751', 'Paszport', 'ZZZ987654', 'Polska', 'Łódź', 'Kwiatowa', 9, '4', '90-052', '654789951' FROM dual
  UNION ALL SELECT 'Natalia', 'Grabowska', '42436475861', 'Dowód osobisty', 'AAB321987', 'Polska', 'Gdynia', 'Lipowa', 7, '3', '81-053', '951654789' FROM dual
  UNION ALL SELECT 'Wojciech', 'Krupa', '43547586971', 'Dowód osobisty', 'BBC654123', 'Polska', 'Lublin', 'Parkowa', 20, '5', '20-054', '753951486' FROM dual
  UNION ALL SELECT 'Marta', 'Czerwińska', '44658697081', 'Paszport', 'CCD987321', 'Polska', 'Rzeszów', 'Morska', 10, NULL, '35-055', '951753159' FROM dual
  UNION ALL SELECT 'Radosław', 'Pawlak', '45769708191', 'Dowód osobisty', 'DDE123654', 'Polska', 'Bydgoszcz', 'Nowa', 8, '1', '85-056', '654357852' FROM dual
  UNION ALL SELECT 'Weronika', 'Szulc', '46870819201', 'Dowód osobisty', 'EEF456987', 'Polska', 'Szczecin', 'Długa', 15, '3', '70-057', '789654357' FROM dual
  UNION ALL SELECT 'Konrad', 'Mróz', '47981920311', 'Paszport', 'FFG789321', 'Polska', 'Kraków', 'Kwiatowa', 6, NULL, '30-058', '951357654' FROM dual
  UNION ALL SELECT 'Anita', 'Wilk', '48092031421', 'Dowód osobisty', 'GGH321789', 'Polska', 'Warszawa', 'Wiślana', 22, '2', '00-059', '654951357' FROM dual
  UNION ALL SELECT 'Hubert', 'Adamczyk', '49203142531', 'Dowód osobisty', 'HHI654123', 'Polska', 'Poznań', 'Słoneczna', 17, '4', '60-060', '951789654' FROM dual
  UNION ALL SELECT 'Klaudia', 'Nowakowska', '50314253641', 'Paszport', 'IIJ987321', 'Polska', 'Łódź', 'Mazowiecka', 9, NULL, '90-061', '789951654' FROM dual
  UNION ALL SELECT 'Jakub', 'Kucharski', '51425364751', 'Dowód osobisty', 'JJK123654', 'Polska', 'Wrocław', 'Polna', 5, '2', '50-062', '654357951' FROM dual
  UNION ALL SELECT 'Paulina', 'Sobczak', '52536475861', 'Dowód osobisty', 'KKL456987', 'Polska', 'Gdańsk', 'Leśna', 10, NULL, '80-063', '951654357' FROM dual
  UNION ALL SELECT 'Rafał', 'Przybylski', '53647586971', 'Paszport', 'LLM789123', 'Polska', 'Warszawa', 'Różana', 18, '3', '00-064', '753951654' FROM dual
  UNION ALL SELECT 'Karolina', 'Kołodziej', '54758697081', 'Dowód osobisty', 'MMN321654', 'Polska', 'Kraków', 'Dworcowa', 12, '1', '30-065', '951753486' FROM dual
  UNION ALL SELECT 'Mateusz', 'Ostrowski', '55869708191', 'Dowód osobisty', 'NNO654987', 'Polska', 'Poznań', 'Nowa', 7, NULL, '60-066', '654789321' FROM dual
  UNION ALL SELECT 'Martyna', 'Sikorska', '56970819201', 'Paszport', 'OOP987321', 'Polska', 'Łódź', 'Długa', 14, '2', '90-067', '951357486' FROM dual
  UNION ALL SELECT 'Dominik', 'Malinowski', '57081920311', 'Dowód osobisty', 'PPQ123654', 'Polska', 'Wrocław', 'Lipowa', 19, NULL, '50-068', '753951486' FROM dual
  UNION ALL SELECT 'Ewelina', 'Dudek', '58192031421', 'Dowód osobisty', 'QQR456987', 'Polska', 'Katowice', 'Słoneczna', 5, '4', '40-069', '789654951' FROM dual
  UNION ALL SELECT 'Michał', 'Piasecki', '59203142531', 'Paszport', 'RRS789321', 'Polska', 'Rzeszów', 'Zielona', 10, NULL, '35-070', '951753654' FROM dual
  UNION ALL SELECT 'Patryk', 'Sadowski', '60314253641', 'Dowód osobisty', 'SST321789', 'Polska', 'Gdynia', 'Kwiatowa', 17, '2', '81-071', '654357789' FROM dual
  UNION ALL SELECT 'Agnieszka', 'Nowicka', '61425364751', 'Dowód osobisty', 'TTU654123', 'Polska', 'Lublin', 'Nowa', 15, '1', '20-072', '951357789' FROM dual
  UNION ALL SELECT 'Wiktor', 'Kania', '62536475861', 'Paszport', 'UUV987321', 'Polska', 'Kraków', 'Mazowiecka', 7, NULL, '30-073', '789951357' FROM dual
  UNION ALL SELECT 'Edyta', 'Zalewska', '63647586971', 'Dowód osobisty', 'VVW123654', 'Polska', 'Warszawa', 'Wiślana', 6, '3', '00-074', '654951789' FROM dual
  UNION ALL SELECT 'Łukasz', 'Bąk', '64758697081', 'Dowód osobisty', 'WWX456987', 'Polska', 'Poznań', 'Leśna', 10, '2', '60-075', '951654357' FROM dual
  UNION ALL SELECT 'Kamila', 'Wesołowska', '65869708191', 'Paszport', 'XXY789321', 'Polska', 'Łódź', 'Różana', 8, NULL, '90-076', '789654357' FROM dual
  UNION ALL SELECT 'Dawid', 'Chmielewski', '66970819201', 'Dowód osobisty', 'YYZ321789', 'Polska', 'Gdańsk', 'Parkowa', 14, '1', '80-077', '951357654' FROM dual
  UNION ALL SELECT 'Marta', 'Ziółkowska', '67081920311', 'Dowód osobisty', 'ZZA654123', 'Polska', 'Bydgoszcz', 'Lipowa', 9, '4', '85-078', '654951357' FROM dual
  UNION ALL SELECT 'Tomasz', 'Brzeziński', '68192031421', 'Paszport', 'AAB987321', 'Polska', 'Kielce', 'Nowa', 16, NULL, '25-079', '789654951' FROM dual
  UNION ALL SELECT 'Natalia', 'Sawicka', '69203142531', 'Dowód osobisty', 'BBC123654', 'Polska', 'Warszawa', 'Zielona', 11, '3', '00-080', '951753654' FROM dual
  UNION ALL SELECT 'Adrian', 'Maciejewski', '70314253641', 'Dowód osobisty', 'CCD456987', 'Polska', 'Kraków', 'Dworcowa', 5, NULL, '30-081', '654357789' FROM dual
  UNION ALL SELECT 'Julia', 'Cieślak', '71425364751', 'Paszport', 'DDE789321', 'Polska', 'Poznań', 'Słoneczna', 20, '2', '60-082', '951654357' FROM dual
  UNION ALL SELECT 'Artur', 'Błaszczyk', '72536475861', 'Dowód osobisty', 'EEF321789', 'Polska', 'Łódź', 'Nowa', 18, '3', '90-083', '789951654' FROM dual
  UNION ALL SELECT 'Oliwia', 'Andrzejewska', '73647586971', 'Dowód osobisty', 'FFG654123', 'Polska', 'Wrocław', 'Polna', 9, NULL, '50-084', '951753159' FROM dual
  UNION ALL SELECT 'Paweł', 'Głowacki', '74758697081', 'Paszport', 'GGH987321', 'Polska', 'Gdynia', 'Lipowa', 6, '4', '81-085', '789654357' FROM dual
  UNION ALL SELECT 'Klaudia', 'Kowalewska', '75869708191', 'Dowód osobisty', 'HHI123654', 'Polska', 'Katowice', 'Leśna', 13, NULL, '40-086', '951357654' FROM dual
  UNION ALL SELECT 'Sebastian', 'Szymczak', '76970819201', 'Dowód osobisty', 'IIJ456987', 'Polska', 'Warszawa', 'Różana', 8, '2', '00-087', '654951753' FROM dual
  UNION ALL SELECT 'Patrycja', 'Wójcik', '77081920311', 'Paszport', 'JJK789321', 'Polska', 'Poznań', 'Nowa', 11, '3', '60-088', '951654357' FROM dual
  UNION ALL SELECT 'Mateusz', 'Barczyk', '78192031421', 'Dowód osobisty', 'KKL321789', 'Polska', 'Kraków', 'Zielona', 10, NULL, '30-089', '789951357' FROM dual
  UNION ALL SELECT 'Alicja', 'Cybulska', '79203142531', 'Dowód osobisty', 'LLM654123', 'Polska', 'Łódź', 'Słoneczna', 17, '2', '90-090', '951753654' FROM dual
  UNION ALL SELECT 'Wojciech', 'Kopeć', '80314253641', 'Paszport', 'MMN987321', 'Polska', 'Wrocław', 'Lipowa', 19, NULL, '50-091', '654951357' FROM dual
  UNION ALL SELECT 'Ewelina', 'Leszczyńska', '81425364751', 'Dowód osobisty', 'NNO123654', 'Polska', 'Gdańsk', 'Nowa', 8, '1', '80-092', '951654357' FROM dual
  UNION ALL SELECT 'Kacper', 'Piekarski', '82536475861', 'Dowód osobisty', 'OOP456987', 'Polska', 'Warszawa', 'Polna', 12, '3', '00-093', '789654951' FROM dual
  UNION ALL SELECT 'Magda', 'Kulesza', '83647586971', 'Paszport', 'PPQ789321', 'Polska', 'Kraków', 'Wiślana', 16, NULL, '30-094', '951753486' FROM dual
  UNION ALL SELECT 'Piotr', 'Nowiński', '84758697081', 'Dowód osobisty', 'QQR321789', 'Polska', 'Poznań', 'Mazowiecka', 6, '2', '60-095', '654357951' FROM dual
  UNION ALL SELECT 'Karolina', 'Sobolewska', '85869708191', 'Dowód osobisty', 'RRS654123', 'Polska', 'Łódź', 'Zielona', 14, NULL, '90-096', '951654357' FROM dual
  UNION ALL SELECT 'Tomasz', 'Gajewski', '86970819201', 'Paszport', 'SST987321', 'Polska', 'Gdynia', 'Leśna', 20, '3', '81-097', '789951654' FROM dual
  UNION ALL SELECT 'Natalia', 'Jaworska', '87081920311', 'Dowód osobisty', 'TTU123654', 'Polska', 'Warszawa', 'Różana', 18, '2', '00-098', '951753159' FROM dual
  UNION ALL SELECT 'Rafał', 'Malec', '88192031421', 'Dowód osobisty', 'UUV456987', 'Polska', 'Kraków', 'Nowa', 5, NULL, '30-099', '654951357' FROM dual
  UNION ALL SELECT 'Justyna', 'Witczak', '89203142531', 'Paszport', 'VVW789321', 'Polska', 'Poznań', 'Dworcowa', 11, '4', '60-100', '951654357' FROM dual
) v;

COMMIT;

-- kontrola
SELECT MIN(id_klient) min_id,
       MAX(id_klient) max_id,
       COUNT(*) ile
FROM klient;


-- KARTOTEKA_TRANSAKCJI
TRUNCATE TABLE kartoteka_transakcji;

INSERT INTO kartoteka_transakcji
  (rodzaj, data_transakcji, samochod_w_rozliczeniu, uwagi, id_samochod, id_klient, id_sprzedawca, id_plac, id_faktura)
SELECT v.rodzaj,
       v.data_transakcji,
       v.samochod_w_rozliczeniu,
       v.uwagi,
       v.id_samochod,
       v.id_klient,
       v.id_sprzedawca,
       v.id_plac,
       v.id_faktura
FROM (
  SELECT 'sprzedaż' AS rodzaj, TO_DATE('2023-01-10','YYYY-MM-DD') AS data_transakcji, 0 AS samochod_w_rozliczeniu, 'Dodać opony zimowe'            AS uwagi,  1 AS id_samochod,  7 AS id_klient,  1 AS id_sprzedawca, 1 AS id_plac,  1 AS id_faktura FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2023-01-15','YYYY-MM-DD'), 1, 'Samochód kupiony z rabatem',         2, 10,  9, 1,  1 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2023-02-05','YYYY-MM-DD'), 0, 'Polerka przed wydaniem',            3,  3,  3, 1,  2 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-02-20','YYYY-MM-DD'), 0, 'Samochód kupiony z rabatem',         4,  6,  4, 2,  2 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-03-01','YYYY-MM-DD'), 1, 'Brak uwag',                          5,  2,  5, 2,  5 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-03-15','YYYY-MM-DD'), 0, 'Brak uwag',                          6,  8,  9, 2,  6 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-04-01','YYYY-MM-DD'), 1, 'Samochód w rozliczeniu',             7,  9,  5, 3,  7 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-04-10','YYYY-MM-DD'), 0, 'Brak uwag',                          8,  5,  8, 3,  8 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-04-20','YYYY-MM-DD'), 0, 'Dodać opony letnie',                 9,  4,  9, 3,  9 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-05-01','YYYY-MM-DD'), 1, 'Samochód w rozliczeniu',            10,  1, 10, 1,  9 FROM dual

  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-05-05','YYYY-MM-DD'), 1, 'Brak uwag',                         11,  2,  1, 1, 10 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-05-12','YYYY-MM-DD'), 0, 'Sprawdzić poziom oleju',            12,  3,  2, 1, 11 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-05-15','YYYY-MM-DD'), 1, 'Samochód używany',                  13,  4,  3, 2, 12 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-05-20','YYYY-MM-DD'), 0, 'Dodatkowe dywaniki',                14,  5,  4, 2, 13 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-05-25','YYYY-MM-DD'), 1, 'Brak uwag',                         15,  6,  5, 3, 14 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-06-01','YYYY-MM-DD'), 0, 'Samochód w rozliczeniu',            16,  7,  6, 3, 15 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-06-05','YYYY-MM-DD'), 1, 'Wymiana klocków hamulcowych',       17,  8,  7, 1, 16 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-06-10','YYYY-MM-DD'), 0, 'Brak uwag',                         18,  9,  8, 2, 17 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-06-15','YYYY-MM-DD'), 1, 'Samochód używany',                  19, 10,  9, 2, 18 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-06-20','YYYY-MM-DD'), 0, 'Brak uwag',                         20,  1, 10, 3, 19 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-06-25','YYYY-MM-DD'), 1, 'Samochód kupiony z rabatem',        21,  2,  1, 1, 20 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-07-01','YYYY-MM-DD'), 0, 'Wymiana oleju',                     22,  3,  2, 1, 21 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-07-05','YYYY-MM-DD'), 1, 'Brak uwag',                         23,  4,  3, 2, 22 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-07-10','YYYY-MM-DD'), 0, 'Samochód w rozliczeniu',            24,  5,  4, 2, 23 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-07-15','YYYY-MM-DD'), 1, 'Samochód używany',                  25,  6,  5, 3, 24 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-07-20','YYYY-MM-DD'), 0, 'Brak uwag',                         26,  7,  6, 3, 25 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-07-25','YYYY-MM-DD'), 1, 'Dodać dodatkowy bagażnik',          27,  8,  7, 1, 26 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-08-01','YYYY-MM-DD'), 0, 'Samochód w rozliczeniu',            28,  9,  8, 1, 27 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-08-05','YYYY-MM-DD'), 1, 'Brak uwag',                         29, 10,  9, 2, 28 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-08-10','YYYY-MM-DD'), 0, 'Sprawdzić hamulce',                 30,  1, 10, 2, 29 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-08-15','YYYY-MM-DD'), 1, 'Samochód używany',                  31,  2,  1, 3, 30 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-08-20','YYYY-MM-DD'), 0, 'Brak uwag',                         32,  3,  2, 3, 31 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-08-25','YYYY-MM-DD'), 1, 'Dodać felgi aluminiowe',            33,  4,  3, 1, 32 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-09-01','YYYY-MM-DD'), 0, 'Samochód w rozliczeniu',            34,  5,  4, 1, 33 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-09-05','YYYY-MM-DD'), 1, 'Brak uwag',                         35,  6,  5, 2, 34 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-09-10','YYYY-MM-DD'), 0, 'Dodatkowe dywaniki',                36,  7,  6, 2, 35 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-09-15','YYYY-MM-DD'), 1, 'Samochód używany',                  37,  8,  7, 3, 36 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-09-20','YYYY-MM-DD'), 0, 'Brak uwag',                         38,  9,  8, 3, 37 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-09-25','YYYY-MM-DD'), 1, 'Samochód kupiony z rabatem',        39, 10,  9, 1, 38 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-10-01','YYYY-MM-DD'), 0, 'Wymiana oleju',                     40,  1, 10, 1, 39 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-10-05','YYYY-MM-DD'), 1, 'Brak uwag',                         41,  2,  1, 2, 40 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-10-10','YYYY-MM-DD'), 0, 'Samochód w rozliczeniu',            42,  3,  2, 2, 41 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-10-15','YYYY-MM-DD'), 1, 'Samochód używany',                  43,  4,  3, 3, 42 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-10-20','YYYY-MM-DD'), 0, 'Brak uwag',                         44,  5,  4, 3, 43 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-10-25','YYYY-MM-DD'), 1, 'Dodać felgi aluminiowe',            45,  6,  5, 1, 44 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-11-01','YYYY-MM-DD'), 0, 'Samochód w rozliczeniu',            46,  7,  6, 1, 45 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-11-05','YYYY-MM-DD'), 1, 'Brak uwag',                         47,  8,  7, 2, 46 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-11-10','YYYY-MM-DD'), 0, 'Sprawdzić hamulce',                 48,  9,  8, 2, 47 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-11-15','YYYY-MM-DD'), 1, 'Samochód używany',                  49, 10,  9, 3, 48 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-11-20','YYYY-MM-DD'), 0, 'Brak uwag',                         50,  1, 10, 3, 49 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-11-25','YYYY-MM-DD'), 1, 'Samochód kupiony z rabatem',        51,  2,  1, 1, 50 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-12-01','YYYY-MM-DD'), 0, 'Wymiana oleju',                     52,  3,  2, 1, 51 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-12-05','YYYY-MM-DD'), 1, 'Brak uwag',                         53,  4,  3, 2, 52 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-12-10','YYYY-MM-DD'), 0, 'Samochód w rozliczeniu',            54,  5,  4, 2, 53 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2024-12-15','YYYY-MM-DD'), 1, 'Samochód używany',                  55,  6,  5, 3, 54 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-12-20','YYYY-MM-DD'), 0, 'Brak uwag',                         56,  7,  6, 3, 55 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2024-12-25','YYYY-MM-DD'), 1, 'Dodać dodatkowy bagażnik',          57,  8,  7, 1, 56 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2025-01-01','YYYY-MM-DD'), 0, 'Samochód w rozliczeniu',            58,  9,  8, 1, 57 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-01-05','YYYY-MM-DD'), 1, 'Brak uwag',                         59, 10,  9, 2, 58 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-01-10','YYYY-MM-DD'), 0, 'Dodatkowe dywaniki',                60,  1, 10, 2, 59 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2025-01-15','YYYY-MM-DD'), 1, 'Samochód używany',                  61,  2,  1, 3, 60 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-01-20','YYYY-MM-DD'), 0, 'Brak uwag',                         62,  3,  2, 3, 61 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-01-25','YYYY-MM-DD'), 1, 'Samochód kupiony z rabatem',        63,  4,  3, 1, 62 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2025-02-01','YYYY-MM-DD'), 0, 'Wymiana oleju',                     64,  5,  4, 1, 63 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-02-05','YYYY-MM-DD'), 1, 'Brak uwag',                         65,  6,  5, 2, 64 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-02-10','YYYY-MM-DD'), 0, 'Samochód w rozliczeniu',            66,  7,  6, 2, 65 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2025-02-15','YYYY-MM-DD'), 1, 'Samochód używany',                  67,  8,  7, 3, 66 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-02-20','YYYY-MM-DD'), 0, 'Brak uwag',                         68,  9,  8, 3, 67 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-02-25','YYYY-MM-DD'), 1, 'Dodać felgi aluminiowe',            69, 10,  9, 1, 68 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2025-03-01','YYYY-MM-DD'), 0, 'Samochód w rozliczeniu',            70,  1, 10, 1, 69 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-03-05','YYYY-MM-DD'), 1, 'Brak uwag',                         71,  2,  1, 2, 70 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-03-10','YYYY-MM-DD'), 0, 'Sprawdzić hamulce',                 72,  3,  2, 2, 71 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2025-03-15','YYYY-MM-DD'), 1, 'Samochód używany',                  73,  4,  3, 3, 72 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-03-20','YYYY-MM-DD'), 0, 'Brak uwag',                         74,  5,  4, 3, 73 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-03-25','YYYY-MM-DD'), 1, 'Samochód kupiony z rabatem',        75,  6,  5, 1, 74 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2025-04-01','YYYY-MM-DD'), 0, 'Wymiana oleju',                     76,  7,  6, 1, 75 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-04-05','YYYY-MM-DD'), 1, 'Brak uwag',                         77,  8,  7, 2, 76 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-04-10','YYYY-MM-DD'), 0, 'Samochód w rozliczeniu',            78,  9,  8, 2, 77 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2025-04-15','YYYY-MM-DD'), 1, 'Samochód używany',                  79, 10,  9, 3, 78 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-04-20','YYYY-MM-DD'), 0, 'Brak uwag',                         80,  1, 10, 3, 79 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-04-25','YYYY-MM-DD'), 1, 'Dodać dodatkowy bagażnik',          81,  2,  1, 1, 80 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2025-05-01','YYYY-MM-DD'), 0, 'Samochód w rozliczeniu',            82,  3,  2, 1, 81 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-05-05','YYYY-MM-DD'), 1, 'Brak uwag',                         83,  4,  3, 2, 82 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-05-10','YYYY-MM-DD'), 0, 'Dodatkowe dywaniki',                84,  5,  4, 2, 83 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2025-05-15','YYYY-MM-DD'), 1, 'Samochód używany',                  85,  6,  5, 3, 84 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-05-20','YYYY-MM-DD'), 0, 'Brak uwag',                         86,  7,  6, 3, 85 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-05-25','YYYY-MM-DD'), 1, 'Samochód kupiony z rabatem',        87,  8,  7, 1, 86 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2025-06-01','YYYY-MM-DD'), 0, 'Wymiana oleju',                     88,  9,  8, 1, 87 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-06-05','YYYY-MM-DD'), 1, 'Brak uwag',                         89, 10,  9, 2, 88 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-06-10','YYYY-MM-DD'), 0, 'Samochód w rozliczeniu',            90,  1, 10, 2, 89 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2025-06-15','YYYY-MM-DD'), 1, 'Samochód używany',                  91,  2,  1, 3, 90 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-06-20','YYYY-MM-DD'), 0, 'Brak uwag',                         92,  3,  2, 3, 91 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-06-25','YYYY-MM-DD'), 1, 'Dodać felgi aluminiowe',            93,  4,  3, 1, 92 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2025-07-01','YYYY-MM-DD'), 0, 'Samochód w rozliczeniu',            94,  5,  4, 1, 93 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-07-05','YYYY-MM-DD'), 1, 'Brak uwag',                         95,  6,  5, 2, 94 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-07-10','YYYY-MM-DD'), 0, 'Sprawdzić hamulce',                 96,  7,  6, 2, 95 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2025-07-15','YYYY-MM-DD'), 1, 'Samochód używany',                  97,  8,  7, 3, 96 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-07-20','YYYY-MM-DD'), 0, 'Brak uwag',                         98,  9,  8, 3, 97 FROM dual
  UNION ALL SELECT 'sprzedaż', TO_DATE('2025-07-25','YYYY-MM-DD'), 1, 'Samochód kupiony z rabatem',        99, 10,  9, 1, 98 FROM dual
  UNION ALL SELECT 'kupno',    TO_DATE('2025-08-01','YYYY-MM-DD'), 0, 'Wymiana oleju',                    100,  1, 10, 1, 99 FROM dual
) v;

COMMIT;

-- kontrola
SELECT MIN(id_transakcja) min_id,
       MAX(id_transakcja) max_id,
       COUNT(*) ile
FROM kartoteka_transakcji;


-- UBEZPIECZENIE (Oracle)
INSERT ALL
  INTO ubezpieczenie (id_samochod, firma_ubezpieczeniowa, nr_polisy, data_poczatku, data_konca, koszt)
  VALUES (1, 'PZU', 'POL000001', TO_DATE('2023-01-01','YYYY-MM-DD'), TO_DATE('2024-01-01','YYYY-MM-DD'), 1250.50)

  INTO ubezpieczenie VALUES (2, 'Allianz', 'POL000002', TO_DATE('2023-02-15','YYYY-MM-DD'), TO_DATE('2024-02-15','YYYY-MM-DD'), 1320.75)
  INTO ubezpieczenie VALUES (3, 'Warta', 'POL000003', TO_DATE('2022-07-10','YYYY-MM-DD'), TO_DATE('2023-07-10','YYYY-MM-DD'), 980.00)
  INTO ubezpieczenie VALUES (4, 'Link4', 'POL000004', TO_DATE('2023-03-05','YYYY-MM-DD'), TO_DATE('2024-03-05','YYYY-MM-DD'), 1120.00)
  INTO ubezpieczenie VALUES (5, 'Ergo Hestia', 'POL000005', TO_DATE('2023-04-20','YYYY-MM-DD'), TO_DATE('2024-04-20','YYYY-MM-DD'), 1400.25)
  INTO ubezpieczenie VALUES (6, 'Generali', 'POL000006', TO_DATE('2022-09-01','YYYY-MM-DD'), TO_DATE('2023-09-01','YYYY-MM-DD'), 890.90)
  INTO ubezpieczenie VALUES (7, 'Compensa', 'POL000007', TO_DATE('2023-05-01','YYYY-MM-DD'), TO_DATE('2024-05-01','YYYY-MM-DD'), 1010.00)
  INTO ubezpieczenie VALUES (8, 'InterRisk', 'POL000008', TO_DATE('2023-06-12','YYYY-MM-DD'), TO_DATE('2024-06-12','YYYY-MM-DD'), 1175.40)
  INTO ubezpieczenie VALUES (9, 'PZU', 'POL000009', TO_DATE('2023-07-20','YYYY-MM-DD'), TO_DATE('2024-07-20','YYYY-MM-DD'), 1100.60)
  INTO ubezpieczenie VALUES (10, 'Allianz', 'POL000010', TO_DATE('2023-08-15','YYYY-MM-DD'), TO_DATE('2024-08-15','YYYY-MM-DD'), 1350.00)
  INTO ubezpieczenie VALUES (11, 'Warta', 'POL000011', TO_DATE('2023-09-10','YYYY-MM-DD'), TO_DATE('2024-09-10','YYYY-MM-DD'), 950.30)
  INTO ubezpieczenie VALUES (12, 'Link4', 'POL000012', TO_DATE('2023-10-05','YYYY-MM-DD'), TO_DATE('2024-10-05','YYYY-MM-DD'), 1080.00)
  INTO ubezpieczenie VALUES (13, 'Ergo Hestia', 'POL000013', TO_DATE('2023-11-01','YYYY-MM-DD'), TO_DATE('2024-11-01','YYYY-MM-DD'), 1245.90)
  INTO ubezpieczenie VALUES (14, 'Generali', 'POL000014', TO_DATE('2023-12-12','YYYY-MM-DD'), TO_DATE('2024-12-12','YYYY-MM-DD'), 990.50)
  INTO ubezpieczenie VALUES (15, 'Compensa', 'POL000015', TO_DATE('2024-01-05','YYYY-MM-DD'), TO_DATE('2025-01-05','YYYY-MM-DD'), 1325.75)
  INTO ubezpieczenie VALUES (16, 'InterRisk', 'POL000016', TO_DATE('2024-02-10','YYYY-MM-DD'), TO_DATE('2025-02-10','YYYY-MM-DD'), 1070.00)
  INTO ubezpieczenie VALUES (17, 'PZU', 'POL000017', TO_DATE('2024-03-03','YYYY-MM-DD'), TO_DATE('2025-03-03','YYYY-MM-DD'), 1280.25)
  INTO ubezpieczenie VALUES (18, 'Allianz', 'POL000018', TO_DATE('2024-03-20','YYYY-MM-DD'), TO_DATE('2025-03-20','YYYY-MM-DD'), 1190.80)
  INTO ubezpieczenie VALUES (19, 'Warta', 'POL000019', TO_DATE('2024-04-10','YYYY-MM-DD'), TO_DATE('2025-04-10','YYYY-MM-DD'), 990.00)
  INTO ubezpieczenie VALUES (20, 'Link4', 'POL000020', TO_DATE('2024-04-25','YYYY-MM-DD'), TO_DATE('2025-04-25','YYYY-MM-DD'), 950.50)
  INTO ubezpieczenie VALUES (21, 'Ergo Hestia', 'POL000021', TO_DATE('2024-05-15','YYYY-MM-DD'), TO_DATE('2025-05-15','YYYY-MM-DD'), 1100.00)
  INTO ubezpieczenie VALUES (22, 'Generali', 'POL000022', TO_DATE('2024-06-01','YYYY-MM-DD'), TO_DATE('2025-06-01','YYYY-MM-DD'), 1025.00)
  INTO ubezpieczenie VALUES (23, 'Compensa', 'POL000023', TO_DATE('2024-06-20','YYYY-MM-DD'), TO_DATE('2025-06-20','YYYY-MM-DD'), 1320.00)
  INTO ubezpieczenie VALUES (24, 'InterRisk', 'POL000024', TO_DATE('2024-07-10','YYYY-MM-DD'), TO_DATE('2025-07-10','YYYY-MM-DD'), 950.00)
  INTO ubezpieczenie VALUES (25, 'PZU', 'POL000025', TO_DATE('2024-07-25','YYYY-MM-DD'), TO_DATE('2025-07-25','YYYY-MM-DD'), 1175.00)
  INTO ubezpieczenie VALUES (26, 'Allianz', 'POL000026', TO_DATE('2024-08-10','YYYY-MM-DD'), TO_DATE('2025-08-10','YYYY-MM-DD'), 1120.00)
  INTO ubezpieczenie VALUES (27, 'Warta', 'POL000027', TO_DATE('2024-08-25','YYYY-MM-DD'), TO_DATE('2025-08-25','YYYY-MM-DD'), 985.00)
  INTO ubezpieczenie VALUES (28, 'Link4', 'POL000028', TO_DATE('2024-09-10','YYYY-MM-DD'), TO_DATE('2025-09-10','YYYY-MM-DD'), 1090.00)
  INTO ubezpieczenie VALUES (29, 'Ergo Hestia', 'POL000029', TO_DATE('2024-09-25','YYYY-MM-DD'), TO_DATE('2025-09-25','YYYY-MM-DD'), 1180.00)
  INTO ubezpieczenie VALUES (30, 'Generali', 'POL000030', TO_DATE('2024-10-10','YYYY-MM-DD'), TO_DATE('2025-10-10','YYYY-MM-DD'), 1260.00)
  INTO ubezpieczenie VALUES (31, 'Compensa', 'POL000031', TO_DATE('2024-10-25','YYYY-MM-DD'), TO_DATE('2025-10-25','YYYY-MM-DD'), 1040.00)
  INTO ubezpieczenie VALUES (32, 'InterRisk', 'POL000032', TO_DATE('2024-11-10','YYYY-MM-DD'), TO_DATE('2025-11-10','YYYY-MM-DD'), 1085.00)
  INTO ubezpieczenie VALUES (33, 'PZU', 'POL000033', TO_DATE('2024-11-25','YYYY-MM-DD'), TO_DATE('2025-11-25','YYYY-MM-DD'), 1125.00)
  INTO ubezpieczenie VALUES (34, 'Allianz', 'POL000034', TO_DATE('2024-12-10','YYYY-MM-DD'), TO_DATE('2025-12-10','YYYY-MM-DD'), 980.00)
  INTO ubezpieczenie VALUES (35, 'Warta', 'POL000035', TO_DATE('2024-12-25','YYYY-MM-DD'), TO_DATE('2025-12-25','YYYY-MM-DD'), 1200.00)
  INTO ubezpieczenie VALUES (36, 'Link4', 'POL000036', TO_DATE('2025-01-10','YYYY-MM-DD'), TO_DATE('2026-01-10','YYYY-MM-DD'), 1350.00)
  INTO ubezpieczenie VALUES (37, 'Ergo Hestia', 'POL000037', TO_DATE('2025-01-25','YYYY-MM-DD'), TO_DATE('2026-01-25','YYYY-MM-DD'), 1250.00)
  INTO ubezpieczenie VALUES (38, 'Generali', 'POL000038', TO_DATE('2025-02-10','YYYY-MM-DD'), TO_DATE('2026-02-10','YYYY-MM-DD'), 1100.00)
  INTO ubezpieczenie VALUES (39, 'Compensa', 'POL000039', TO_DATE('2025-02-25','YYYY-MM-DD'), TO_DATE('2026-02-25','YYYY-MM-DD'), 1050.00)
  INTO ubezpieczenie VALUES (40, 'InterRisk', 'POL000040', TO_DATE('2025-03-10','YYYY-MM-DD'), TO_DATE('2026-03-10','YYYY-MM-DD'), 1020.00)
  INTO ubezpieczenie VALUES (41, 'PZU', 'POL000041', TO_DATE('2025-03-25','YYYY-MM-DD'), TO_DATE('2026-03-25','YYYY-MM-DD'), 1115.00)
  INTO ubezpieczenie VALUES (42, 'Allianz', 'POL000042', TO_DATE('2025-04-10','YYYY-MM-DD'), TO_DATE('2026-04-10','YYYY-MM-DD'), 1080.00)
  INTO ubezpieczenie VALUES (43, 'Warta', 'POL000043', TO_DATE('2025-04-25','YYYY-MM-DD'), TO_DATE('2026-04-25','YYYY-MM-DD'), 975.00)
  INTO ubezpieczenie VALUES (44, 'Link4', 'POL000044', TO_DATE('2025-05-10','YYYY-MM-DD'), TO_DATE('2026-05-10','YYYY-MM-DD'), 950.00)
  INTO ubezpieczenie VALUES (45, 'Ergo Hestia', 'POL000045', TO_DATE('2025-05-25','YYYY-MM-DD'), TO_DATE('2026-05-25','YYYY-MM-DD'), 990.00)
  INTO ubezpieczenie VALUES (46, 'Generali', 'POL000046', TO_DATE('2025-06-10','YYYY-MM-DD'), TO_DATE('2026-06-10','YYYY-MM-DD'), 1000.00)
  INTO ubezpieczenie VALUES (47, 'Compensa', 'POL000047', TO_DATE('2025-06-25','YYYY-MM-DD'), TO_DATE('2026-06-25','YYYY-MM-DD'), 1075.00)
  INTO ubezpieczenie VALUES (48, 'InterRisk', 'POL000048', TO_DATE('2025-07-10','YYYY-MM-DD'), TO_DATE('2026-07-10','YYYY-MM-DD'), 1120.00)
  INTO ubezpieczenie VALUES (49, 'PZU', 'POL000049', TO_DATE('2025-07-25','YYYY-MM-DD'), TO_DATE('2026-07-25','YYYY-MM-DD'), 1160.00)
  INTO ubezpieczenie VALUES (50, 'Allianz', 'POL000050', TO_DATE('2025-08-10','YYYY-MM-DD'), TO_DATE('2026-08-10','YYYY-MM-DD'), 1040.00)
  INTO ubezpieczenie VALUES (51, 'Warta', 'POL000051', TO_DATE('2025-08-25','YYYY-MM-DD'), TO_DATE('2026-08-25','YYYY-MM-DD'), 975.00)
  INTO ubezpieczenie VALUES (52, 'Link4', 'POL000052', TO_DATE('2025-09-10','YYYY-MM-DD'), TO_DATE('2026-09-10','YYYY-MM-DD'), 980.00)
  INTO ubezpieczenie VALUES (53, 'Ergo Hestia', 'POL000053', TO_DATE('2025-09-25','YYYY-MM-DD'), TO_DATE('2026-09-25','YYYY-MM-DD'), 995.00)
  INTO ubezpieczenie VALUES (54, 'Generali', 'POL000054', TO_DATE('2025-10-10','YYYY-MM-DD'), TO_DATE('2026-10-10','YYYY-MM-DD'), 1000.00)
  INTO ubezpieczenie VALUES (55, 'Compensa', 'POL000055', TO_DATE('2025-10-25','YYYY-MM-DD'), TO_DATE('2026-10-25','YYYY-MM-DD'), 1025.00)
  INTO ubezpieczenie VALUES (56, 'InterRisk', 'POL000056', TO_DATE('2025-11-10','YYYY-MM-DD'), TO_DATE('2026-11-10','YYYY-MM-DD'), 1070.00)
  INTO ubezpieczenie VALUES (57, 'PZU', 'POL000057', TO_DATE('2025-11-25','YYYY-MM-DD'), TO_DATE('2026-11-25','YYYY-MM-DD'), 1095.00)
  INTO ubezpieczenie VALUES (58, 'Allianz', 'POL000058', TO_DATE('2025-12-10','YYYY-MM-DD'), TO_DATE('2026-12-10','YYYY-MM-DD'), 1110.00)
  INTO ubezpieczenie VALUES (59, 'Warta', 'POL000059', TO_DATE('2025-12-25','YYYY-MM-DD'), TO_DATE('2026-12-25','YYYY-MM-DD'), 1125.00)
  INTO ubezpieczenie VALUES (60, 'Link4', 'POL000060', TO_DATE('2026-01-10','YYYY-MM-DD'), TO_DATE('2027-01-10','YYYY-MM-DD'), 1150.00)
  INTO ubezpieczenie VALUES (61, 'Ergo Hestia', 'POL000061', TO_DATE('2026-01-25','YYYY-MM-DD'), TO_DATE('2027-01-25','YYYY-MM-DD'), 1200.00)
  INTO ubezpieczenie VALUES (62, 'Generali', 'POL000062', TO_DATE('2026-02-10','YYYY-MM-DD'), TO_DATE('2027-02-10','YYYY-MM-DD'), 1220.00)
  INTO ubezpieczenie VALUES (63, 'Compensa', 'POL000063', TO_DATE('2026-02-25','YYYY-MM-DD'), TO_DATE('2027-02-25','YYYY-MM-DD'), 1235.00)
  INTO ubezpieczenie VALUES (64, 'InterRisk', 'POL000064', TO_DATE('2026-03-10','YYYY-MM-DD'), TO_DATE('2027-03-10','YYYY-MM-DD'), 1250.00)
  INTO ubezpieczenie VALUES (65, 'PZU', 'POL000065', TO_DATE('2026-03-25','YYYY-MM-DD'), TO_DATE('2027-03-25','YYYY-MM-DD'), 1275.00)
  INTO ubezpieczenie VALUES (66, 'Allianz', 'POL000066', TO_DATE('2026-04-10','YYYY-MM-DD'), TO_DATE('2027-04-10','YYYY-MM-DD'), 1290.00)
  INTO ubezpieczenie VALUES (67, 'Warta', 'POL000067', TO_DATE('2026-04-25','YYYY-MM-DD'), TO_DATE('2027-04-25','YYYY-MM-DD'), 1305.00)
  INTO ubezpieczenie VALUES (68, 'Link4', 'POL000068', TO_DATE('2026-05-10','YYYY-MM-DD'), TO_DATE('2027-05-10','YYYY-MM-DD'), 1320.00)
  INTO ubezpieczenie VALUES (69, 'Ergo Hestia', 'POL000069', TO_DATE('2026-05-25','YYYY-MM-DD'), TO_DATE('2027-05-25','YYYY-MM-DD'), 1340.00)
  INTO ubezpieczenie VALUES (70, 'Generali', 'POL000070', TO_DATE('2026-06-10','YYYY-MM-DD'), TO_DATE('2027-06-10','YYYY-MM-DD'), 1360.00)
  INTO ubezpieczenie VALUES (71, 'Compensa', 'POL000071', TO_DATE('2026-06-25','YYYY-MM-DD'), TO_DATE('2027-06-25','YYYY-MM-DD'), 1380.00)
  INTO ubezpieczenie VALUES (72, 'InterRisk', 'POL000072', TO_DATE('2026-07-10','YYYY-MM-DD'), TO_DATE('2027-07-10','YYYY-MM-DD'), 1400.00)
  INTO ubezpieczenie VALUES (73, 'PZU', 'POL000073', TO_DATE('2026-07-25','YYYY-MM-DD'), TO_DATE('2027-07-25','YYYY-MM-DD'), 1425.00)
  INTO ubezpieczenie VALUES (74, 'Allianz', 'POL000074', TO_DATE('2026-08-10','YYYY-MM-DD'), TO_DATE('2027-08-10','YYYY-MM-DD'), 1450.00)
  INTO ubezpieczenie VALUES (75, 'Warta', 'POL000075', TO_DATE('2026-08-25','YYYY-MM-DD'), TO_DATE('2027-08-25','YYYY-MM-DD'), 1475.00)
  INTO ubezpieczenie VALUES (76, 'Link4', 'POL000076', TO_DATE('2026-09-10','YYYY-MM-DD'), TO_DATE('2027-09-10','YYYY-MM-DD'), 1490.00)
  INTO ubezpieczenie VALUES (77, 'Ergo Hestia', 'POL000077', TO_DATE('2026-09-25','YYYY-MM-DD'), TO_DATE('2027-09-25','YYYY-MM-DD'), 1500.00)
  INTO ubezpieczenie VALUES (78, 'Generali', 'POL000078', TO_DATE('2026-10-10','YYYY-MM-DD'), TO_DATE('2027-10-10','YYYY-MM-DD'), 1515.00)
  INTO ubezpieczenie VALUES (79, 'Compensa', 'POL000079', TO_DATE('2026-10-25','YYYY-MM-DD'), TO_DATE('2027-10-25','YYYY-MM-DD'), 1530.00)
  INTO ubezpieczenie VALUES (80, 'InterRisk', 'POL000080', TO_DATE('2026-11-10','YYYY-MM-DD'), TO_DATE('2027-11-10','YYYY-MM-DD'), 1550.00)
  INTO ubezpieczenie VALUES (81, 'PZU', 'POL000081', TO_DATE('2026-11-25','YYYY-MM-DD'), TO_DATE('2027-11-25','YYYY-MM-DD'), 1575.00)
  INTO ubezpieczenie VALUES (82, 'Allianz', 'POL000082', TO_DATE('2026-12-10','YYYY-MM-DD'), TO_DATE('2027-12-10','YYYY-MM-DD'), 1600.00)
  INTO ubezpieczenie VALUES (83, 'Warta', 'POL000083', TO_DATE('2026-12-25','YYYY-MM-DD'), TO_DATE('2027-12-25','YYYY-MM-DD'), 1625.00)
  INTO ubezpieczenie VALUES (84, 'Link4', 'POL000084', TO_DATE('2027-01-10','YYYY-MM-DD'), TO_DATE('2028-01-10','YYYY-MM-DD'), 1650.00)
  INTO ubezpieczenie VALUES (85, 'Ergo Hestia', 'POL000085', TO_DATE('2027-01-25','YYYY-MM-DD'), TO_DATE('2028-01-25','YYYY-MM-DD'), 1675.00)
  INTO ubezpieczenie VALUES (86, 'Generali', 'POL000086', TO_DATE('2027-02-10','YYYY-MM-DD'), TO_DATE('2028-02-10','YYYY-MM-DD'), 1700.00)
  INTO ubezpieczenie VALUES (87, 'Compensa', 'POL000087', TO_DATE('2027-02-25','YYYY-MM-DD'), TO_DATE('2028-02-25','YYYY-MM-DD'), 1720.00)
  INTO ubezpieczenie VALUES (88, 'InterRisk', 'POL000088', TO_DATE('2027-03-10','YYYY-MM-DD'), TO_DATE('2028-03-10','YYYY-MM-DD'), 1740.00)
  INTO ubezpieczenie VALUES (89, 'PZU', 'POL000089', TO_DATE('2027-03-25','YYYY-MM-DD'), TO_DATE('2028-03-25','YYYY-MM-DD'), 1760.00)
  INTO ubezpieczenie VALUES (90, 'Allianz', 'POL000090', TO_DATE('2027-04-10','YYYY-MM-DD'), TO_DATE('2028-04-10','YYYY-MM-DD'), 1785.00)
  INTO ubezpieczenie VALUES (91, 'Warta', 'POL000091', TO_DATE('2027-04-25','YYYY-MM-DD'), TO_DATE('2028-04-25','YYYY-MM-DD'), 1800.00)
  INTO ubezpieczenie VALUES (92, 'Link4', 'POL000092', TO_DATE('2027-05-10','YYYY-MM-DD'), TO_DATE('2028-05-10','YYYY-MM-DD'), 1825.00)
  INTO ubezpieczenie VALUES (93, 'Ergo Hestia', 'POL000093', TO_DATE('2027-05-25','YYYY-MM-DD'), TO_DATE('2028-05-25','YYYY-MM-DD'), 1850.00)
  INTO ubezpieczenie VALUES (94, 'Generali', 'POL000094', TO_DATE('2027-06-10','YYYY-MM-DD'), TO_DATE('2028-06-10','YYYY-MM-DD'), 1875.00)
  INTO ubezpieczenie VALUES (95, 'Compensa', 'POL000095', TO_DATE('2027-06-25','YYYY-MM-DD'), TO_DATE('2028-06-25','YYYY-MM-DD'), 1900.00)
  INTO ubezpieczenie VALUES (96, 'InterRisk', 'POL000096', TO_DATE('2027-07-10','YYYY-MM-DD'), TO_DATE('2028-07-10','YYYY-MM-DD'), 1925.00)
  INTO ubezpieczenie VALUES (97, 'PZU', 'POL000097', TO_DATE('2027-07-25','YYYY-MM-DD'), TO_DATE('2028-07-25','YYYY-MM-DD'), 1950.00)
  INTO ubezpieczenie VALUES (98, 'Allianz', 'POL000098', TO_DATE('2027-08-10','YYYY-MM-DD'), TO_DATE('2028-08-10','YYYY-MM-DD'), 1975.00)
  INTO ubezpieczenie VALUES (99, 'Warta', 'POL000099', TO_DATE('2027-08-25','YYYY-MM-DD'), TO_DATE('2028-08-25','YYYY-MM-DD'), 1990.00)
  INTO ubezpieczenie VALUES (100, 'Link4', 'POL000100', TO_DATE('2027-09-10','YYYY-MM-DD'), TO_DATE('2028-09-10','YYYY-MM-DD'), 2000.00)
SELECT 1 FROM dual;

COMMIT;




