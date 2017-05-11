drop table if exists  communime.suburb;
drop table if exists  communime.place_type;
drop table if exists communime.place;
drop table if exists communime.place_information_type;
drop   table if exists communime.place_information;
drop  table if exists communime.place_suburb;
drop table if exists communime.classification;
drop table if exists communime.place_type_classification;

create table communime.suburb
(
suburb_id int not null,
    suburb_name_text varchar(50) not null,
    suburb_url varchar(150) null,
    primary key (suburb_id)
);


create table communime.place_type
(
 place_type_id int not null,
place_type_text varchar(50)

);


create table communime.place
(
  place_id int not null auto_increment primary key,
 place_type_id int not null,
place_name_text varchar(50)

);

create table communime.place_information_type
(
 place_information_type_id int not null,
 place_information_type_text varchar(50)

);


create table communime.place_information
(
 place_information_type_id int not null,
  place_id int not null,
 place_information_text varchar(50)
);


create table communime.place_suburb
(
place_id int not null,
 suburb_id int not null
);

create table communime.classification
(
  classification_id int not null,
  classification_text varchar(50)
);

create table communime.place_type_classification
 (place_type_id int not null,

  classification_id int not null

);


-- add suburb



insert into suburb values (573200,'Aro Valley', 'http://icons.wunderground.com/data/wximagenew/m/MrSur/231.jpg');insert into suburb values (569402,'Berhampore','');
insert into suburb values (568402,'Breaker Bay','');
insert into suburb values (567600,'Broadmeadows','');
insert into suburb values (575600,'Brooklyn','');
insert into suburb values (579700,'Churton Park','');
insert into suburb values (574701,'Crofton Downs','');
insert into suburb values (564800,'Glenside','');
insert into suburb values (573522,'Grenada North','');
insert into suburb values (573523,'Grenada Village','');
insert into suburb values (575902,'Hataitai','');
insert into suburb values (567800,'Highbury','');
insert into suburb values (573526,'Horokiwi','');
insert into suburb values (573527,'Houghton Bay','');
insert into suburb values (622101,'Island Bay','');
insert into suburb values (576001,'Johnsonville','');
insert into suburb values (574500,'Kaiwharawhara','');
insert into suburb values (566301,'Karaka Bays','');
insert into suburb values (577400,'Karori','');
insert into suburb values (575300,'Kelburn','');
insert into suburb values (569500,'Khandallah','');
insert into suburb values (574200,'Kilbirnie','');
insert into suburb values (576903,'Kingston','');
insert into suburb values (572701,'Lyall Bay','');
insert into suburb values (577601,'Maupuia','');
insert into suburb values (569201,'Melrose','');
insert into suburb values (577302,'Miramar','');
insert into suburb values (575500,'Moa Point','');
insert into suburb values (564601,'Mornington','');
insert into suburb values (564605,'Mt Cook','');
insert into suburb values (579503,'Mt Victoria','');
insert into suburb values (568303,'Newlands','');
insert into suburb values (574001,'Newtown','');
insert into suburb values (576301,'Ngaio','');
insert into suburb values (579000,'Ngauranga','');
insert into suburb values (575200,'Northland','');
insert into suburb values (622202,'Ohariu','');
insert into suburb values (576600,'Oriental Bay','');
insert into suburb values (564022,'Owhiro Bay','');
insert into suburb values (573901,'Paparangi','');
insert into suburb values (564530,'Pipitea','');
insert into suburb values (564602,'Rongotai','');
insert into suburb values (576700,'Roseneath','');
insert into suburb values (577500,'Seatoun','');
insert into suburb values (578902,'Southgate','');
insert into suburb values (577102,'Strathmore Park','');
insert into suburb values (573525,'Takapu Valley','');
insert into suburb values (573528,'Tawa','');
insert into suburb values (568101,'Te Aro','');
insert into suburb values (579502,'Thorndon','');
insert into suburb values (575702,'Vogeltown','');
insert into suburb values (574600,'Wadestown','');
insert into suburb values (568601,'Wellington Central','');
insert into suburb values (574702,'Wilton','');
insert into suburb values (573902,'Woodridge','');



-- add place information type

insert into place_information_type values (1,'Address');
insert into place_information_type values (2,'Opening Hours');
insert into place_information_type values (4,'Phone');
insert into place_information_type values (5,'Website');
insert into place_information_type values (6,'Sport');
insert into place_information_type values (7,'Pool Type');
insert into place_information_type values (8,'Reserve Type');
insert into place_information_type values (10,'Primary');
insert into place_information_type values (11,'Intermediate');
insert into place_information_type values (12,'Secondary');
insert into place_information_type values (13,'Years (School)');
insert into place_information_type values (14,'Genders');
insert into place_information_type values (15,'School Authority');
insert into place_information_type values (16,'Decile');
insert into place_information_type values (17,'Roll Size');



-- Add Classification
insert into classification values (1,'Food');
insert into classification values (2,'Sport');
insert into classification values (3,'Health');
insert into classification values (4,'Entertainment');
insert into classification values (5,'Alcohol');
insert into classification values (6,'Education');


-- add place type
Insert into place_type values (1,'Takeaway');
Insert into place_type values (2,'Bar');
Insert into place_type values (3,'Reserve');
Insert into place_type values (4,'Pool');
Insert into place_type values (5,'Doctor');
Insert into place_type values (6,'Rec Centre');
Insert into place_type values (7,'Market');
Insert into place_type values (8,'Sports Club');
Insert into place_type values (9,'School');
Insert into place_type values (10,'Supermarket');


-- p t c



-- Add places 
-- sports
insert into place (place_type_id,place_name_text) values (8,'Johnsonville Rugby Football Club');
insert into place (place_type_id,place_name_text) values (8,'Marist St. Pats');
insert into place (place_type_id,place_name_text) values (8,'Old Boys Univeristy');
insert into place (place_type_id,place_name_text) values (8,'Oriental-Rongotai Football Club (Ories)');
insert into place (place_type_id,place_name_text) values (8,'Poneke Football Club');
insert into place (place_type_id,place_name_text) values (8,'Tawa Rugby Club');
insert into place (place_type_id,place_name_text) values (8,'Wellington Football Club');
insert into place (place_type_id,place_name_text) values (8,'Wests Roosters');
insert into place (place_type_id,place_name_text) values (8,'Brooklyn Northern United AFC');
insert into place (place_type_id,place_name_text) values (8,'Island Bay United AFC');
insert into place (place_type_id,place_name_text) values (8,'Marist A.F.C. Wellington');
insert into place (place_type_id,place_name_text) values (8,'Miramar Raangers AFC');
insert into place (place_type_id,place_name_text) values (8,'North Wellington Football Club');
insert into place (place_type_id,place_name_text) values (8,'Olympic AFC');
insert into place (place_type_id,place_name_text) values (8,'Onslow Junior Football Club');
insert into place (place_type_id,place_name_text) values (8,'Seatoun AFC.');
insert into place (place_type_id,place_name_text) values (8,'Waterside Karori AFC');
insert into place (place_type_id,place_name_text) values (8,'Wellington United AFC');
insert into place (place_type_id,place_name_text) values (8,'Tawa AFC');
insert into place (place_type_id,place_name_text) values (8,'Brooklyn Cricket Club');
insert into place (place_type_id,place_name_text) values (8,'Eastern Suburbs Cricket Club');
insert into place (place_type_id,place_name_text) values (8,'Johnsonville Cricket Club');
insert into place (place_type_id,place_name_text) values (8,'Karori Cricket Club ');
insert into place (place_type_id,place_name_text) values (8,'Porirua Cricket Club');
insert into place (place_type_id,place_name_text) values (8,'Onslow Cricket Club ');
insert into place (place_type_id,place_name_text) values (8,'Tawa Cricket Club');
insert into place (place_type_id,place_name_text) values (8,'Wellington Collegians Cricket Club');
insert into place (place_type_id,place_name_text) values (8,'Victoria University Cricket Club');


-- markets
insert into place (place_type_id,place_name_text) values (7,'City Market');
insert into place (place_type_id,place_name_text) values (7,'Harbourside Market');
insert into place (place_type_id,place_name_text) values (7,'Thorndon Farmers Market');
insert into place (place_type_id,place_name_text) values (7,'Wellington Underground Market');
insert into place (place_type_id,place_name_text) values (7,'Friday Night Market');
insert into place (place_type_id,place_name_text) values (7,'Saturday Night Market');
insert into place (place_type_id,place_name_text) values (7,'Newtown Fruit and Vegetable Market');
insert into place (place_type_id,place_name_text) values (7,'Capital Market');
insert into place (place_type_id,place_name_text) values (7,'Victoria Street Farmers Market');


-- health
insert into place (place_type_id,place_name_text) values (5,'Beehive Medical');
insert into place (place_type_id,place_name_text) values (5,'Brooklyn Central Health');
insert into place (place_type_id,place_name_text) values (5,'Brooklyn Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Capital Care Health Centre');
insert into place (place_type_id,place_name_text) values (5,'Churton Park Medical Care');
insert into place (place_type_id,place_name_text) values (5,'City GPs');
insert into place (place_type_id,place_name_text) values (5,'City Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Coastal Medical Rooms');
insert into place (place_type_id,place_name_text) values (5,'Courtenay Medical');
insert into place (place_type_id,place_name_text) values (5,'Dr RM McIlroys Surgery');
insert into place (place_type_id,place_name_text) values (5,'Drs Cammack & Evans');
insert into place (place_type_id,place_name_text) values (5,'Grace Surgery');
insert into place (place_type_id,place_name_text) values (5,'Hataitai Medical Practice');
insert into place (place_type_id,place_name_text) values (5,'Hataitai Village Surgery');
insert into place (place_type_id,place_name_text) values (5,'Hora Te Pai Health Services');
insert into place (place_type_id,place_name_text) values (5,'Island Bay Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Johnsonville Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Kapiti Youth Support');
insert into place (place_type_id,place_name_text) values (5,'Kelburn GPs');
insert into place (place_type_id,place_name_text) values (5,'Kelburn Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Khandallah Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Kilbirnie Central Surgery');
insert into place (place_type_id,place_name_text) values (5,'Kilbirnie Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Linden Surgery');
insert into place (place_type_id,place_name_text) values (5,'Mana Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Miramar Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Natural Healing Raumati');
insert into place (place_type_id,place_name_text) values (5,'Newlands Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Newtown Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Ngaio Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Northland Village Surgery');
insert into place (place_type_id,place_name_text) values (5,'Onslow Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Pacific Health Service Porirua');
insert into place (place_type_id,place_name_text) values (5,'Paraparaumu Medical');
insert into place (place_type_id,place_name_text) values (5,'Peninsula Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Plimmer Surgery');
insert into place (place_type_id,place_name_text) values (5,'Plimmerton Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Port Nicholson Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Raumati Road Surgery');
insert into place (place_type_id,place_name_text) values (5,'Seatoun Medical');
insert into place (place_type_id,place_name_text) values (5,'Student Health Services Massey University');
insert into place (place_type_id,place_name_text) values (5,'Student Health Services, Mauri Ora, Victoria University');
insert into place (place_type_id,place_name_text) values (5,'Tawa Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Te Aro Health Centre');
insert into place (place_type_id,place_name_text) values (5,'Team Medical');
insert into place (place_type_id,place_name_text) values (5,'The Terrace Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Thorndon Medical Centre');
insert into place (place_type_id,place_name_text) values (5,'Titahi Bay Doctors');
insert into place (place_type_id,place_name_text) values (5,'Titahi Bay Surgery');
insert into place (place_type_id,place_name_text) values (5,'Wadestown Medical');
insert into place (place_type_id,place_name_text) values (5,'Waikanae Health');
insert into place (place_type_id,place_name_text) values (5,'Waitangirua Health Centre');
insert into place (place_type_id,place_name_text) values (5,'Whitby Doctors');


-- pool
insert into place (place_type_id,place_name_text) values (4,'Freyberg Pool & Fitness Centre');
insert into place (place_type_id,place_name_text) values (4,'Karori Pool');
insert into place (place_type_id,place_name_text) values (4,'Keith Spry Pool');
insert into place (place_type_id,place_name_text) values (4,'Khandallah Pool');
insert into place (place_type_id,place_name_text) values (4,'Tawa Pool');
insert into place (place_type_id,place_name_text) values (4,'Thorndon Pool');
insert into place (place_type_id,place_name_text) values (4,'Wellington Regional Aquatic Centre');



-- Rec centres

insert into place (place_type_id,place_name_text) values (6,'Karori Recreation Centre');
insert into place (place_type_id,place_name_text) values (6,'Kilbirnie Recreation Centre');
insert into place (place_type_id,place_name_text) values (6,'Nairnville Recreation Centre');
insert into place (place_type_id,place_name_text) values (6,'Tawa Recreation Centre');



-- REserves

insert into place (place_type_id,place_name_text) values (3,'Brandons Rock');
insert into place (place_type_id,place_name_text) values (3,'Caribbean Avenue Reserve');
insert into place (place_type_id,place_name_text) values (3,'Centennial Reserve');
insert into place (place_type_id,place_name_text) values (3,'Central Park');
insert into place (place_type_id,place_name_text) values (3,'Charles Plimmer Park');
insert into place (place_type_id,place_name_text) values (3,'Dorrie Leslie Park');
insert into place (place_type_id,place_name_text) values (3,'Fort Buckley');
insert into place (place_type_id,place_name_text) values (3,'Frank Kitts Park');
insert into place (place_type_id,place_name_text) values (3,'George Denton Park & Polhill Reserve');
insert into place (place_type_id,place_name_text) values (3,'Gilberd Bush Reserve');
insert into place (place_type_id,place_name_text) values (3,'Glenside Reserve');
insert into place (place_type_id,place_name_text) values (3,'Grasslees Reserve');
insert into place (place_type_id,place_name_text) values (3,'Hawkins Hill');
insert into place (place_type_id,place_name_text) values (3,'Johnsonville Park');
insert into place (place_type_id,place_name_text) values (3,'Johnston Hill');
insert into place (place_type_id,place_name_text) values (3,'Kentwood Drive Reserve');
insert into place (place_type_id,place_name_text) values (3,'Khandallah Park');
insert into place (place_type_id,place_name_text) values (3,'Kilmister Tops');
insert into place (place_type_id,place_name_text) values (3,'Lakewood Reserve');
insert into place (place_type_id,place_name_text) values (3,'Makara Peak Mountain Bike Park');
insert into place (place_type_id,place_name_text) values (3,'Mount Albert');
insert into place (place_type_id,place_name_text) values (3,'Mount Alfred');
insert into place (place_type_id,place_name_text) values (3,'Mount Kaukau');
insert into place (place_type_id,place_name_text) values (3,'Mount Victoria');
insert into place (place_type_id,place_name_text) values (3,'Oku Street Reserve');
insert into place (place_type_id,place_name_text) values (3,'Oruaiti Reserve');
insert into place (place_type_id,place_name_text) values (3,'Rangitatau Reserve & Ataturk Park');
insert into place (place_type_id,place_name_text) values (3,'Seton Nossiter Park');
insert into place (place_type_id,place_name_text) values (3,'Shorland Park');
insert into place (place_type_id,place_name_text) values (3,'Sinclair Park');
insert into place (place_type_id,place_name_text) values (3,'Stellin Memorial Park');
insert into place (place_type_id,place_name_text) values (3,'Tanera Park');
insert into place (place_type_id,place_name_text) values (3,'Tawatawa Reserve');
insert into place (place_type_id,place_name_text) values (3,'Te Ahumairangi Hill');
insert into place (place_type_id,place_name_text) values (3,'Te Kopahou Reserve');
insert into place (place_type_id,place_name_text) values (3,'Trelissick Park');
insert into place (place_type_id,place_name_text) values (3,'Waihinahina Park');
insert into place (place_type_id,place_name_text) values (3,'Waitangi Park');
insert into place (place_type_id,place_name_text) values (3,'Wilf Mexted Scenic Reserve');
insert into place (place_type_id,place_name_text) values (3,'Willowbank Reserve');
insert into place (place_type_id,place_name_text) values (3,'Woodburn Reserve');
insert into place (place_type_id,place_name_text) values (3,'Wrights Hill');


-- school
insert into place (place_type_id,place_name_text) values (9,'Berhampore School');
insert into place (place_type_id,place_name_text) values (9,'Brooklyn School');
insert into place (place_type_id,place_name_text) values (9,'St Bernards School');
insert into place (place_type_id,place_name_text) values (9,'Amesbury School');
insert into place (place_type_id,place_name_text) values (9,'Churton Park School');
insert into place (place_type_id,place_name_text) values (9,'Hataitai School');
insert into place (place_type_id,place_name_text) values (9,'Kilbirnie School');
insert into place (place_type_id,place_name_text) values (9,'Houghton Valley School');
insert into place (place_type_id,place_name_text) values (9,'Island Bay School');
insert into place (place_type_id,place_name_text) values (9,'St Francis De Sales School');
insert into place (place_type_id,place_name_text) values (9,'Johnsonville School');
insert into place (place_type_id,place_name_text) values (9,'Onslow College');
insert into place (place_type_id,place_name_text) values (9,'Raroa Normal Intermediate');
insert into place (place_type_id,place_name_text) values (9,'St Brigids School');
insert into place (place_type_id,place_name_text) values (9,'West Park School');
insert into place (place_type_id,place_name_text) values (9,'Karori Normal School');
insert into place (place_type_id,place_name_text) values (9,'Karori West Normal School');
insert into place (place_type_id,place_name_text) values (9,'Makara Model School');
insert into place (place_type_id,place_name_text) values (9,'Samuel Marsden Collegiate School');
insert into place (place_type_id,place_name_text) values (9,'St Teresas School');
insert into place (place_type_id,place_name_text) values (9,'Clifton Terrace Model School');
insert into place (place_type_id,place_name_text) values (9,'Kelburn Normal School');
insert into place (place_type_id,place_name_text) values (9,'Cashmere Avenue School');
insert into place (place_type_id,place_name_text) values (9,'Khandallah School');
insert into place (place_type_id,place_name_text) values (9,'St Benedicts School');
insert into place (place_type_id,place_name_text) values (9,'Evans Bay Intermediate School');
insert into place (place_type_id,place_name_text) values (9,'Rongotai College');
insert into place (place_type_id,place_name_text) values (9,'St Catherines College');
insert into place (place_type_id,place_name_text) values (9,'St. Patricks College');
insert into place (place_type_id,place_name_text) values (9,'St Patricks School');
insert into place (place_type_id,place_name_text) values (9,'Lyall Bay School');
insert into place (place_type_id,place_name_text) values (9,'Holy Cross School');
insert into place (place_type_id,place_name_text) values (9,'Miramar Central School');
insert into place (place_type_id,place_name_text) values (9,'Miramar Christian School');
insert into place (place_type_id,place_name_text) values (9,'Miramar North School');
insert into place (place_type_id,place_name_text) values (9,'Scots College');
insert into place (place_type_id,place_name_text) values (9,'Worser Bay School');
insert into place (place_type_id,place_name_text) values (9,'Mt Cook School');
insert into place (place_type_id,place_name_text) values (9,'Clyde Quay School');
insert into place (place_type_id,place_name_text) values (9,'St Marks Church School');
insert into place (place_type_id,place_name_text) values (9,'Wellington East Girls College');
insert into place (place_type_id,place_name_text) values (9,'Bellevue School');
insert into place (place_type_id,place_name_text) values (9,'Newlands College');
insert into place (place_type_id,place_name_text) values (9,'Newlands Intermediate');
insert into place (place_type_id,place_name_text) values (9,'Newlands School');
insert into place (place_type_id,place_name_text) values (9,'Rewa Rewa School');
insert into place (place_type_id,place_name_text) values (9,'Newtown School');
insert into place (place_type_id,place_name_text) values (9,'South Wellington Intermediate');
insert into place (place_type_id,place_name_text) values (9,'St Annes School');
insert into place (place_type_id,place_name_text) values (9,'Ngaio School');
insert into place (place_type_id,place_name_text) values (9,'Northland School');
insert into place (place_type_id,place_name_text) values (9,'Owhiro Bay School');
insert into place (place_type_id,place_name_text) values (9,'Paparangi School');
insert into place (place_type_id,place_name_text) values (9,'Ridgway School');
insert into place (place_type_id,place_name_text) values (9,'Roseneath School');
insert into place (place_type_id,place_name_text) values (9,'Seatoun School');
insert into place (place_type_id,place_name_text) values (9,'St Anthonys School');
insert into place (place_type_id,place_name_text) values (9,'TKKM o Nga Mokopuna');
insert into place (place_type_id,place_name_text) values (9,'Kahurangi School');
insert into place (place_type_id,place_name_text) values (9,'Greenacres School');
insert into place (place_type_id,place_name_text) values (9,'Hampton Hill School');
insert into place (place_type_id,place_name_text) values (9,'Linden School');
insert into place (place_type_id,place_name_text) values (9,'Redwood School');
insert into place (place_type_id,place_name_text) values (9,'St Francis Xavier School');
insert into place (place_type_id,place_name_text) values (9,'Tawa College');
insert into place (place_type_id,place_name_text) values (9,'Tawa Intermediate');
insert into place (place_type_id,place_name_text) values (9,'Tawa School');
insert into place (place_type_id,place_name_text) values (9,'Queen Margaret College');
insert into place (place_type_id,place_name_text) values (9,'Sacred Heart Cathedral School');
insert into place (place_type_id,place_name_text) values (9,'Thorndon School');
insert into place (place_type_id,place_name_text) values (9,'Wellington Girls College');
insert into place (place_type_id,place_name_text) values (9,'Wadestown School');
insert into place (place_type_id,place_name_text) values (9,'Crofton Downs Primary School');
insert into place (place_type_id,place_name_text) values (9,'Te Aro School');
insert into place (place_type_id,place_name_text) values (9,'Wellington College');
insert into place (place_type_id,place_name_text) values (9,'Wellington High School');
insert into place (place_type_id,place_name_text) values (9,'St Marys College');
insert into place (place_type_id,place_name_text) values (9,'Cardinal McKeefry School');
insert into place (place_type_id,place_name_text) values (9,'Otari School');



-- Supermarkets

insert into place (place_type_id,place_name_text) values (10,'Countdown Tawa');
insert into place (place_type_id,place_name_text) values (10,'Countdown Johnsonville Mall');
insert into place (place_type_id,place_name_text) values (10,'Countdown Crofton Downs');
insert into place (place_type_id,place_name_text) values (10,'Countdown Karori');
insert into place (place_type_id,place_name_text) values (10,'Countdown Newtown');
insert into place (place_type_id,place_name_text) values (10,'Countdown Kilbirnie');
insert into place (place_type_id,place_name_text) values (10,'New World Churton Park');
insert into place (place_type_id,place_name_text) values (10,'New World Island Bay');
insert into place (place_type_id,place_name_text) values (10,'New World Karori');
insert into place (place_type_id,place_name_text) values (10,'New World Khandallah');
insert into place (place_type_id,place_name_text) values (10,'New World Miramar');
insert into place (place_type_id,place_name_text) values (10,'New World Newlands');
insert into place (place_type_id,place_name_text) values (10,'New World Newtown');
insert into place (place_type_id,place_name_text) values (10,'New World Railway Metro');
insert into place (place_type_id,place_name_text) values (10,'New World Tawa');
insert into place (place_type_id,place_name_text) values (10,'New World Thorndon');
insert into place (place_type_id,place_name_text) values (10,'New World Wellington City');
insert into place (place_type_id,place_name_text) values (10,'New World Willis Street');
insert into place (place_type_id,place_name_text) values (10,'Pak n Save Kilbirnie');


-- Add place suburb

insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Johnsonville Rugby Football Club' and s.suburb_name_text ='Johnsonville';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Marist St. Pats' and s.suburb_name_text ='Hataitai';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Old Boys Univeristy' and s.suburb_name_text ='Kelburn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Oriental-Rongotai Football Club (Ories)' and s.suburb_name_text ='Miramar';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Poneke Football Club' and s.suburb_name_text ='Kilbirnie';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Tawa Rugby Club' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Wellington Football Club' and s.suburb_name_text ='Hataitai';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Wests Roosters' and s.suburb_name_text ='Northland';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Brooklyn Northern United AFC' and s.suburb_name_text ='Brooklyn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Island Bay United AFC' and s.suburb_name_text ='Island Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Marist A.F.C. Wellington' and s.suburb_name_text ='Kilbirnie';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Miramar Raangers AFC' and s.suburb_name_text ='Miramar';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='North Wellington Football Club' and s.suburb_name_text ='Johnsonville';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Olympic AFC' and s.suburb_name_text ='Island Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Onslow Junior Football Club' and s.suburb_name_text ='Khandallah';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Seatoun AFC.' and s.suburb_name_text ='Seatoun';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Waterside Karori AFC' and s.suburb_name_text ='Karori';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Wellington United AFC' and s.suburb_name_text ='Newtown';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Tawa AFC' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Brooklyn Cricket Club' and s.suburb_name_text ='Brooklyn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Eastern Suburbs Cricket Club' and s.suburb_name_text ='Kilbirnie';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Johnsonville Cricket Club' and s.suburb_name_text ='Johnsonville';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Karori Cricket Club ' and s.suburb_name_text ='Karori';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Porirua Cricket Club' and s.suburb_name_text ='Porirua';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Onslow Cricket Club ' and s.suburb_name_text ='Khandallah';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Tawa Cricket Club' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Wellington Collegians Cricket Club' and s.suburb_name_text ='Kelburn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Victoria University Cricket Club' and s.suburb_name_text ='Kelburn';

insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='City Market' and s.suburb_name_text ='Te Aro';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Harbourside Market' and s.suburb_name_text ='Te Aro';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Thorndon Farmers Market' and s.suburb_name_text ='Thorndon';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Wellington Underground Market' and s.suburb_name_text ='Wellington Central';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Friday Night Market' and s.suburb_name_text ='Te Aro';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Saturday Night Market' and s.suburb_name_text ='Te Aro';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Newtown Fruit and Vegetable Market' and s.suburb_name_text ='Newtown';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Capital Market' and s.suburb_name_text ='Te Aro';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Victoria Street Farmers Market' and s.suburb_name_text ='Te Aro';


insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Beehive Medical' and s.suburb_name_text ='Wellington Central';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Brooklyn Central Health' and s.suburb_name_text ='Brooklyn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Brooklyn Medical Centre' and s.suburb_name_text ='Brooklyn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Capital Care Health Centre' and s.suburb_name_text ='Te Aro';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Churton Park Medical Care' and s.suburb_name_text ='Churton Park';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='City GPs' and s.suburb_name_text ='Te Aro';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='City Medical Centre' and s.suburb_name_text ='Wellington Central';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Coastal Medical Rooms' and s.suburb_name_text ='';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Courtenay Medical' and s.suburb_name_text ='Te Aro';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Dr RM McIlroys Surgery' and s.suburb_name_text ='Hataitai';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Drs Cammack & Evans' and s.suburb_name_text ='Paraparaumu Beach';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Grace Surgery' and s.suburb_name_text ='';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Hataitai Medical Practice' and s.suburb_name_text ='Hataitai';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Hataitai Village Surgery' and s.suburb_name_text ='Hataitai';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Hora Te Pai Health Services' and s.suburb_name_text ='';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Island Bay Medical Centre' and s.suburb_name_text ='Island Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Johnsonville Medical Centre' and s.suburb_name_text ='Johnsonville';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Kapiti Youth Support' and s.suburb_name_text ='';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Kelburn GPs' and s.suburb_name_text ='Kelburn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Kelburn Medical Centre' and s.suburb_name_text ='Kelburn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Khandallah Medical Centre' and s.suburb_name_text ='Khandallah';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Kilbirnie Central Surgery' and s.suburb_name_text ='Kilbirnie';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Kilbirnie Medical Centre' and s.suburb_name_text ='Kilbirnie';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Linden Surgery' and s.suburb_name_text ='Linden';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Mana Medical Centre' and s.suburb_name_text ='Paremata';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Miramar Medical Centre' and s.suburb_name_text ='Miramar';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Natural Healing Raumati' and s.suburb_name_text ='Raumati Beach';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Newlands Medical Centre' and s.suburb_name_text ='Newlands';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Newtown Medical Centre' and s.suburb_name_text ='Newtown';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Ngaio Medical Centre' and s.suburb_name_text ='Ngaio';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Northland Village Surgery' and s.suburb_name_text ='Nothland';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Onslow Medical Centre' and s.suburb_name_text ='Johnsonville';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Pacific Health Service Porirua' and s.suburb_name_text ='Cannons Creek';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Paraparaumu Medical' and s.suburb_name_text ='';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Peninsula Medical Centre' and s.suburb_name_text ='Miramar';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Plimmer Surgery' and s.suburb_name_text ='Wellington Central';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Plimmerton Medical Centre' and s.suburb_name_text ='Plimmerton';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Port Nicholson Medical Centre' and s.suburb_name_text ='Te Aro';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Raumati Road Surgery' and s.suburb_name_text ='Raumati Beach';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Seatoun Medical' and s.suburb_name_text ='Seatoun';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Student Health Services Massey University' and s.suburb_name_text ='Mt Cook';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Student Health Services, Mauri Ora, Victoria University' and s.suburb_name_text ='Kelburn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Tawa Medical Centre' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Te Aro Health Centre' and s.suburb_name_text ='Te Aro';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Team Medical' and s.suburb_name_text ='';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='The Terrace Medical Centre' and s.suburb_name_text ='Wellington Central';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Thorndon Medical Centre' and s.suburb_name_text ='Thorndon';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Titahi Bay Doctors' and s.suburb_name_text ='Titahi Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Titahi Bay Surgery' and s.suburb_name_text ='Titahi Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Wadestown Medical' and s.suburb_name_text ='Wadestown';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Waikanae Health' and s.suburb_name_text ='';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Waitangirua Health Centre' and s.suburb_name_text ='Waitangirua';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Whitby Doctors' and s.suburb_name_text ='Whitby';


insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Freyberg Pool & Fitness Centre' and s.suburb_name_text ='Oriental Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Karori Pool' and s.suburb_name_text ='Karori';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Keith Spry Pool' and s.suburb_name_text ='Johnsonville';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Khandallah Pool' and s.suburb_name_text ='Khandallah';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Tawa Pool' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Thorndon Pool' and s.suburb_name_text ='Thorndon';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Wellington Regional Aquatic Centre' and s.suburb_name_text ='Kilbirnie';


insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Karori Recreation Centre' and s.suburb_name_text ='Karori';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Kilbirnie Recreation Centre' and s.suburb_name_text ='Kilbirnie';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Nairnville Recreation Centre' and s.suburb_name_text ='Khandallah';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Tawa Recreation Centre' and s.suburb_name_text ='Tawa';


insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Brandons Rock' and s.suburb_name_text ='Newlands';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Caribbean Avenue Reserve' and s.suburb_name_text ='Grenada North';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Centennial Reserve' and s.suburb_name_text ='Miramar';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Central Park' and s.suburb_name_text ='Brooklyn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Charles Plimmer Park' and s.suburb_name_text ='Mt Victoria';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Dorrie Leslie Park' and s.suburb_name_text ='Lyall Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Fort Buckley' and s.suburb_name_text ='Wadestown';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Frank Kitts Park' and s.suburb_name_text ='Wellington Central';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='George Denton Park & Polhill Reserve' and s.suburb_name_text ='Brooklyn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Gilberd Bush Reserve' and s.suburb_name_text ='Newlands';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Glenside Reserve' and s.suburb_name_text ='Glenside';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Grasslees Reserve' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Hawkins Hill' and s.suburb_name_text ='Owhiro Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Johnsonville Park' and s.suburb_name_text ='Johnsonville';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Johnston Hill' and s.suburb_name_text ='Karori';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Kentwood Drive Reserve' and s.suburb_name_text ='Woodridge';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Khandallah Park' and s.suburb_name_text ='Khandallah';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Kilmister Tops' and s.suburb_name_text ='Crofton Downs';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Lakewood Reserve' and s.suburb_name_text ='Churton Park';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Makara Peak Mountain Bike Park' and s.suburb_name_text ='Karori';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Mount Albert' and s.suburb_name_text ='Melrose';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Mount Alfred' and s.suburb_name_text ='Mt Victoria';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Mount Kaukau' and s.suburb_name_text ='Khandallah';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Mount Victoria' and s.suburb_name_text ='Mt Victoria';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Oku Street Reserve' and s.suburb_name_text ='Island Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Oruaiti Reserve' and s.suburb_name_text ='Seatoun';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Rangitatau Reserve & Ataturk Park' and s.suburb_name_text ='Breaker Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Seton Nossiter Park' and s.suburb_name_text ='Paparangi';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Shorland Park' and s.suburb_name_text ='Island Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Sinclair Park' and s.suburb_name_text ='Houghton Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Stellin Memorial Park' and s.suburb_name_text ='Northland';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Tanera Park' and s.suburb_name_text ='Brooklyn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Tawatawa Reserve' and s.suburb_name_text ='Owhiro Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Te Ahumairangi Hill' and s.suburb_name_text ='Northland';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Te Kopahou Reserve' and s.suburb_name_text ='Owhiro Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Trelissick Park' and s.suburb_name_text ='Ngaio';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Waihinahina Park' and s.suburb_name_text ='Newlands';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Waitangi Park' and s.suburb_name_text ='Te Aro';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Wilf Mexted Scenic Reserve' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Willowbank Reserve' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Woodburn Reserve' and s.suburb_name_text ='Woodburn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Wrights Hill' and s.suburb_name_text ='Karori';


insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Berhampore School' and s.suburb_name_text ='Berhampore';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Brooklyn School' and s.suburb_name_text ='Brooklyn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='St Bernards School' and s.suburb_name_text ='Brooklyn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Amesbury School' and s.suburb_name_text ='Churton Park';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Churton Park School' and s.suburb_name_text ='Churton Park';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Hataitai School' and s.suburb_name_text ='Hataitai';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Kilbirnie School' and s.suburb_name_text ='Hataitai';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Houghton Valley School' and s.suburb_name_text ='Houghton Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Island Bay School' and s.suburb_name_text ='Island Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='St Francis De Sales School' and s.suburb_name_text ='Island Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Johnsonville School' and s.suburb_name_text ='Johnsonville';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Onslow College' and s.suburb_name_text ='Johnsonville';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Raroa Normal Intermediate' and s.suburb_name_text ='Johnsonville';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='St Brigids School' and s.suburb_name_text ='Johnsonville';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='West Park School' and s.suburb_name_text ='Johnsonville';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Karori Normal School' and s.suburb_name_text ='Karori';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Karori West Normal School' and s.suburb_name_text ='Karori';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Makara Model School' and s.suburb_name_text ='Karori';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Samuel Marsden Collegiate School' and s.suburb_name_text ='Karori';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='St Teresas School' and s.suburb_name_text ='Karori';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Clifton Terrace Model School' and s.suburb_name_text ='Kelburn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Kelburn Normal School' and s.suburb_name_text ='Kelburn';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Cashmere Avenue School' and s.suburb_name_text ='Khandallah';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Khandallah School' and s.suburb_name_text ='Khandallah';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='St Benedicts School' and s.suburb_name_text ='Khandallah';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Evans Bay Intermediate School' and s.suburb_name_text ='Kilbirnie';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Rongotai College' and s.suburb_name_text ='Kilbirnie';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='St Catherines College' and s.suburb_name_text ='Kilbirnie';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='St. Patricks College' and s.suburb_name_text ='Kilbirnie';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='St Patricks School' and s.suburb_name_text ='Kilbirnie';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Lyall Bay School' and s.suburb_name_text ='Lyall Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Holy Cross School' and s.suburb_name_text ='Miramar';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Miramar Central School' and s.suburb_name_text ='Miramar';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Miramar Christian School' and s.suburb_name_text ='Miramar';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Miramar North School' and s.suburb_name_text ='Miramar';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Scots College' and s.suburb_name_text ='Miramar';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Worser Bay School' and s.suburb_name_text ='Miramar';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Mt Cook School' and s.suburb_name_text ='Mount Cook';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Clyde Quay School' and s.suburb_name_text ='Mount Victoria';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='St Marks Church School' and s.suburb_name_text ='Mount Victoria';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Wellington East Girls College' and s.suburb_name_text ='Mount Victoria';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Bellevue School' and s.suburb_name_text ='Newlands';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Newlands College' and s.suburb_name_text ='Newlands';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Newlands Intermediate' and s.suburb_name_text ='Newlands';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Newlands School' and s.suburb_name_text ='Newlands';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Rewa Rewa School' and s.suburb_name_text ='Newlands';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Newtown School' and s.suburb_name_text ='Newtown';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='South Wellington Intermediate' and s.suburb_name_text ='Newtown';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='St Annes School' and s.suburb_name_text ='Newtown';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Ngaio School' and s.suburb_name_text ='Ngaio';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Northland School' and s.suburb_name_text ='Northland';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Owhiro Bay School' and s.suburb_name_text ='Owhiro Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Paparangi School' and s.suburb_name_text ='Paparangi';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Ridgway School' and s.suburb_name_text ='Ridgway';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Roseneath School' and s.suburb_name_text ='Roseneath';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Seatoun School' and s.suburb_name_text ='Seatoun';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='St Anthonys School' and s.suburb_name_text ='Seatoun';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='TKKM o Nga Mokopuna' and s.suburb_name_text ='Seatoun';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Kahurangi School' and s.suburb_name_text ='Strathmore';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Greenacres School' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Hampton Hill School' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Linden School' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Redwood School' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='St Francis Xavier School' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Tawa College' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Tawa Intermediate' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Tawa School' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Queen Margaret College' and s.suburb_name_text ='Thorndon';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Sacred Heart Cathedral School' and s.suburb_name_text ='Thorndon';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Thorndon School' and s.suburb_name_text ='Thorndon';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Wellington Girls College' and s.suburb_name_text ='Thorndon';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Wadestown School' and s.suburb_name_text ='Wadestown';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Crofton Downs Primary School' and s.suburb_name_text ='Ngaio';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Te Aro School' and s.suburb_name_text ='Te Aro';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Wellington College' and s.suburb_name_text ='Mt Victoria';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Wellington High School' and s.suburb_name_text ='Te Aro';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='St Marys College' and s.suburb_name_text ='Thorndon';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Cardinal McKeefry School' and s.suburb_name_text ='Wilton';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Otari School' and s.suburb_name_text ='Wilton';



insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Countdown Tawa' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Countdown Johnsonville Mall' and s.suburb_name_text ='Johnsonville';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Countdown Crofton Downs' and s.suburb_name_text ='Crofton Downs';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Countdown Karori' and s.suburb_name_text ='Karori';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Countdown Newtown' and s.suburb_name_text ='Newtown';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Countdown Kilbirnie' and s.suburb_name_text ='Kilbirnie';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='New World Churton Park' and s.suburb_name_text ='Churton Park';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='New World Island Bay' and s.suburb_name_text ='Island Bay';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='New World Karori' and s.suburb_name_text ='Karori';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='New World Khandallah' and s.suburb_name_text ='Khandallah';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='New World Miramar' and s.suburb_name_text ='Miramar';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='New World Newlands' and s.suburb_name_text ='Newlands';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='New World Newtown' and s.suburb_name_text ='Newtown';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='New World Railway Metro' and s.suburb_name_text ='Pipitea';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='New World Tawa' and s.suburb_name_text ='Tawa';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='New World Thorndon' and s.suburb_name_text ='Thorndon';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='New World Wellington City' and s.suburb_name_text ='Te Aro';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='New World Willis Street' and s.suburb_name_text ='Wellington Central';
insert into place_suburb (place_id,suburb_id) select place_id, suburb_id from place p, suburb s where p.place_name_text 

='Pak n Save Kilbirnie' and s.suburb_name_text ='Kilbirnie';


-- place information

insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Rugby'  from place p, place_information_type pit where p.place_name_text ='Johnsonville Rugby 

Football Club' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Rugby'  from place p, place_information_type pit where p.place_name_text ='Marist St. Pats' 

and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Rugby'  from place p, place_information_type pit where p.place_name_text ='Old Boys 

Univeristy' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Rugby'  from place p, place_information_type pit where p.place_name_text ='Oriental-Rongotai 

Football Club (Ories)' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Rugby'  from place p, place_information_type pit where p.place_name_text ='Poneke Football 

Club' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Rugby'  from place p, place_information_type pit where p.place_name_text ='Tawa Rugby Club' 

and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Rugby'  from place p, place_information_type pit where p.place_name_text ='Wellington Football 

Club' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Rugby'  from place p, place_information_type pit where p.place_name_text ='Wests Roosters' and 

pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Soccer'  from place p, place_information_type pit where p.place_name_text ='Brooklyn Northern 

United AFC' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Soccer'  from place p, place_information_type pit where p.place_name_text ='Island Bay United 

AFC' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Soccer'  from place p, place_information_type pit where p.place_name_text ='Marist A.F.C. 

Wellington' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Soccer'  from place p, place_information_type pit where p.place_name_text ='Miramar Raangers 

AFC' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Soccer'  from place p, place_information_type pit where p.place_name_text ='North Wellington 

Football Club' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Soccer'  from place p, place_information_type pit where p.place_name_text ='Olympic AFC' and 

pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Soccer'  from place p, place_information_type pit where p.place_name_text ='Onslow Junior 

Football Club' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Soccer'  from place p, place_information_type pit where p.place_name_text ='Seatoun AFC.' and 

pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Soccer'  from place p, place_information_type pit where p.place_name_text ='Waterside Karori 

AFC' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Soccer'  from place p, place_information_type pit where p.place_name_text ='Wellington United 

AFC' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Soccer'  from place p, place_information_type pit where p.place_name_text ='Tawa AFC' and 

pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Cricket'  from place p, place_information_type pit where p.place_name_text ='Brooklyn Cricket 

Club' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Cricket'  from place p, place_information_type pit where p.place_name_text ='Eastern Suburbs 

Cricket Club' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Cricket'  from place p, place_information_type pit where p.place_name_text ='Johnsonville 

Cricket Club' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Cricket'  from place p, place_information_type pit where p.place_name_text ='Karori Cricket 

Club ' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Cricket'  from place p, place_information_type pit where p.place_name_text ='Porirua Cricket 

Club' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Cricket'  from place p, place_information_type pit where p.place_name_text ='Onslow Cricket 

Club ' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Cricket'  from place p, place_information_type pit where p.place_name_text ='Tawa Cricket 

Club' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Cricket'  from place p, place_information_type pit where p.place_name_text ='Wellington 

Collegians Cricket Club' and pit.place_information_type_text ='Sport';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Cricket'  from place p, place_information_type pit where p.place_name_text ='Victoria 

University Cricket Club' and pit.place_information_type_text ='Sport';


insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Chaffers Dock Building, 1 Herd Street'  from place p, place_information_type pit where 

p.place_name_text ='City Market' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Corner Cable Street and Barnett Street'  from place p, place_information_type pit where 

p.place_name_text ='Harbourside Market' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '5 Hill Street'  from place p, place_information_type pit where p.place_name_text ='Thorndon 

Farmers Market' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Frank Kitts Park, Jervois Quay'  from place p, place_information_type pit where 

p.place_name_text ='Wellington Underground Market' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '116 Cuba Street'  from place p, place_information_type pit where p.place_name_text ='Friday 

Night Market' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '60 Cuba Street'  from place p, place_information_type pit where p.place_name_text ='Saturday 

Night Market' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Newtown School, Mein Street'  from place p, place_information_type pit where p.place_name_text 

='Newtown Fruit and Vegetable Market' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '151 Willis Street'  from place p, place_information_type pit where p.place_name_text ='Capital 

Market' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '253 - 261 Willis Street'  from place p, place_information_type pit where p.place_name_text 

='Victoria Street Farmers Market' and pit.place_information_type_text ='Address';


insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Sundays, 8:30am – 12:30pm'  from place p, place_information_type pit where p.place_name_text 

='City Market' and pit.place_information_type_text ='Opening Hours';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Sundays, 7:30am – 1pm'  from place p, place_information_type pit where p.place_name_text 

='Harbourside Market' and pit.place_information_type_text ='Opening Hours';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Saturdays, 8:30am – 12:30pm'  from place p, place_information_type pit where p.place_name_text 

='Thorndon Farmers Market' and pit.place_information_type_text ='Opening Hours';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Saturdays, 10am – 4pm'  from place p, place_information_type pit where p.place_name_text 

='Wellington Underground Market' and pit.place_information_type_text ='Opening Hours';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Fridays, 5pm – 11pm'  from place p, place_information_type pit where p.place_name_text 

='Friday Night Market' and pit.place_information_type_text ='Opening Hours';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Saturdays, 5pm – 11pm'  from place p, place_information_type pit where p.place_name_text 

='Saturday Night Market' and pit.place_information_type_text ='Opening Hours';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Saturdays, 7am – 2pm'  from place p, place_information_type pit where p.place_name_text 

='Newtown Fruit and Vegetable Market' and pit.place_information_type_text ='Opening Hours';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Everyday, 10:30am – 9pm'  from place p, place_information_type pit where p.place_name_text 

='Capital Market' and pit.place_information_type_text ='Opening Hours';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Sundays, 6am – 2:30pm'  from place p, place_information_type pit where p.place_name_text 

='Victoria Street Farmers Market' and pit.place_information_type_text ='Opening Hours';



insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '74 Lambton Quay'  from place p, place_information_type pit where p.place_name_text ='Beehive 

Medical' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '183 Ohiro Road'  from place p, place_information_type pit where p.place_name_text ='Brooklyn 

Central Health' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '155 Ohiro Road'  from place p, place_information_type pit where p.place_name_text ='Brooklyn 

Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '35 Tennyson Street'  from place p, place_information_type pit where p.place_name_text 

='Capital Care Health Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '107c Westchester Drive'  from place p, place_information_type pit where p.place_name_text 

='Churton Park Medical Care' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '189 - 191 Willis Street'  from place p, place_information_type pit where p.place_name_text 

='City GPs' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Littlejohns Building 2/190 Lambton Quay'  from place p, place_information_type pit where 

p.place_name_text ='City Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '240 Mazengarb Road'  from place p, place_information_type pit where p.place_name_text 

='Coastal Medical Rooms' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Lvl 5, Symes de Silva House, 97-99 Courtenay Place'  from place p, place_information_type pit 

where p.place_name_text ='Courtenay Medical' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '4 Taurima Street'  from place p, place_information_type pit where p.place_name_text ='Dr RM 

McIlroys Surgery' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '46 Ocean Road'  from place p, place_information_type pit where p.place_name_text ='Drs Cammack 

& Evans' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '51 Kapiti Road'  from place p, place_information_type pit where p.place_name_text ='Grace 

Surgery' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '12 Tapiri Street'  from place p, place_information_type pit where p.place_name_text ='Hataitai 

Medical Practice' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '4 Taurima Street'  from place p, place_information_type pit where p.place_name_text ='Hataitai 

Village Surgery' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Kapiti Health Centre, Warrimoo Street'  from place p, place_information_type pit where 

p.place_name_text ='Hora Te Pai Health Services' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '159 The Parade'  from place p, place_information_type pit where p.place_name_text ='Island Bay 

Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '24 Moorefield Road'  from place p, place_information_type pit where p.place_name_text 

='Johnsonville Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '15 Tutanekai Street'  from place p, place_information_type pit where p.place_name_text 

='Kapiti Youth Support' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '42 Upland Road'  from place p, place_information_type pit where p.place_name_text ='Kelburn 

GPs' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '5 Upland Road'  from place p, place_information_type pit where p.place_name_text ='Kelburn 

Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '8 Dekka Street'  from place p, place_information_type pit where p.place_name_text ='Khandallah 

Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '1 Kilbirnie Plaza'  from place p, place_information_type pit where p.place_name_text 

='Kilbirnie Central Surgery' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '21 Mahora Street'  from place p, place_information_type pit where p.place_name_text 

='Kilbirnie Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '49 Hinau Street'  from place p, place_information_type pit where p.place_name_text ='Linden 

Surgery' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '107 The Esplanade'  from place p, place_information_type pit where p.place_name_text ='Mana 

Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '46 Park Road'  from place p, place_information_type pit where p.place_name_text ='Miramar 

Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '22 Margaret Road'  from place p, place_information_type pit where p.place_name_text ='Natural 

Healing Raumati' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '15 Batchelor Street'  from place p, place_information_type pit where p.place_name_text 

='Newlands Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '33 Rintoul Street'  from place p, place_information_type pit where p.place_name_text ='Newtown 

Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '75 Ottawa Road'  from place p, place_information_type pit where p.place_name_text ='Ngaio 

Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '52 Northland Road'  from place p, place_information_type pit where p.place_name_text 

='Northland Village Surgery' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '125 Moorefield Road'  from place p, place_information_type pit where p.place_name_text 

='Onslow Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '4 Bedford Court'  from place p, place_information_type pit where p.place_name_text ='Pacific 

Health Service Porirua' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '40 Ihakara Street'  from place p, place_information_type pit where p.place_name_text 

='Paraparaumu Medical' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '58 Miramar Avenue'  from place p, place_information_type pit where p.place_name_text 

='Peninsula Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Level 4, Plimmer Tower, Lambton Quay'  from place p, place_information_type pit where 

p.place_name_text ='Plimmer Surgery' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '10 Steyne Avenue'  from place p, place_information_type pit where p.place_name_text 

='Plimmerton Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'ACC Building, 61 - 63 Taranaki Street'  from place p, place_information_type pit where 

p.place_name_text ='Port Nicholson Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '23 Raumati Road'  from place p, place_information_type pit where p.place_name_text ='Raumati 

Road Surgery' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '27a Falkirk Avenue'  from place p, place_information_type pit where p.place_name_text 

='Seatoun Medical' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Student Health and Counselling Centre'  from place p, place_information_type pit where 

p.place_name_text ='Student Health Services Massey University' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Student Health Service, Mauri Ora, L1, Student Union B, Gate 1, Kelburn Parade'  from place p, 

place_information_type pit where p.place_name_text ='Student Health Services, Mauri Ora, Victoria University' and 

pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Rewa Terrace'  from place p, place_information_type pit where p.place_name_text ='Tawa Medical 

Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '331 Willis Street'  from place p, place_information_type pit where p.place_name_text ='Te Aro 

Health Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coastlands Mall'  from place p, place_information_type pit where p.place_name_text ='Team 

Medical' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Level 1, 50 The Terrace (via 44 The Terrace)'  from place p, place_information_type pit where 

p.place_name_text ='The Terrace Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '101 Molesworth Street'  from place p, place_information_type pit where p.place_name_text 

='Thorndon Medical Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '3 Whitehouse Road'  from place p, place_information_type pit where p.place_name_text ='Titahi 

Bay Doctors' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '76 Main Road'  from place p, place_information_type pit where p.place_name_text ='Titahi Bay 

Surgery' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '104a Wadestown Road'  from place p, place_information_type pit where p.place_name_text 

='Wadestown Medical' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Marae Lane'  from place p, place_information_type pit where p.place_name_text ='Waikanae 

Health' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '201 Warspite Avenue'  from place p, place_information_type pit where p.place_name_text 

='Waitangirua Health Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Whitby Mall, Discovery Drive'  from place p, place_information_type pit where 

p.place_name_text ='Whitby Doctors' and pit.place_information_type_text ='Address';


insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 8311006' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 8018188' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 3842761' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 8018935' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 4770014' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 3816161' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 4712161' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 9029200' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 8015228' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 3861379' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 2985114' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 2983050' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 3863598' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 3861379' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 9027095' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 3837647' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 9208850' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 9059597' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 4759801' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 9399551' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 4797157' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 3879119' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 3879758' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 2328376' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 2338019' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 388 7018' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 9021048' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 4789858' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 389 9955' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 9399393' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 4753377' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 4789999' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 890 3620' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 9028507' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 3808855' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 472 6024' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 2338015' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 3844315' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 298 6807' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 939 3989' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 9793030' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 463 5308' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 2327193' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 3850255' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 2973000' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 472 5723' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 4735181' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 2368171' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 2368200' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 4737248' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 2936005' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 235 9059' and 

pit.place_information_type_text ='Phone';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, ''  from place p, place_information_type pit where p.place_name_text ='04 234 1404' and 

pit.place_information_type_text ='Phone';





insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Freyberg Pool & Fitness Centre'  from place p, place_information_type pit where 

p.place_name_text ='139 Oriental Parade' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Karori Pool'  from place p, place_information_type pit where p.place_name_text ='22 Donald 

Street' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Keith Spry Pool'  from place p, place_information_type pit where p.place_name_text ='15 

Frankmoore Avenue' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Khandallah Pool'  from place p, place_information_type pit where p.place_name_text ='45 

Woodmancote Road' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Tawa Pool'  from place p, place_information_type pit where p.place_name_text ='23 Davies 

Street' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Thorndon Pool'  from place p, place_information_type pit where p.place_name_text ='26 Murphy 

Street' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Wellington Regional Aquatic Centre'  from place p, place_information_type pit where 

p.place_name_text ='63 Kilbirnie Crescent' and pit.place_information_type_text ='Address';








insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Indoor'  from place p, place_information_type pit where p.place_name_text ='Freyberg Pool & 

Fitness Centre' and pit.place_information_type_text ='Pool Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Indoor'  from place p, place_information_type pit where p.place_name_text ='Karori Pool' and 

pit.place_information_type_text ='Pool Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Indoor'  from place p, place_information_type pit where p.place_name_text ='Keith Spry Pool' 

and pit.place_information_type_text ='Pool Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Outdoor'  from place p, place_information_type pit where p.place_name_text ='Khandallah Pool' 

and pit.place_information_type_text ='Pool Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Indoor'  from place p, place_information_type pit where p.place_name_text ='Tawa Pool' and 

pit.place_information_type_text ='Pool Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Outdoor'  from place p, place_information_type pit where p.place_name_text ='Thorndon Pool' 

and pit.place_information_type_text ='Pool Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Indoor'  from place p, place_information_type pit where p.place_name_text ='Wellington 

Regional Aquatic Centre' and pit.place_information_type_text ='Pool Type';

insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '251 Karori Road'  from place p, place_information_type pit where p.place_name_text ='Karori 

Recreation Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '101 Kilbirnie Crescent'  from place p, place_information_type pit where p.place_name_text 

='Kilbirnie Recreation Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Cockayne Road and Lucknow Terrace'  from place p, place_information_type pit where 

p.place_name_text ='Nairnville Recreation Centre' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '38 Duncan Street'  from place p, place_information_type pit where p.place_name_text ='Tawa 

Recreation Centre' and pit.place_information_type_text ='Address';


insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Brandons Rock' 

and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Caribbean Avenue 

Reserve' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Centennial 

Reserve' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Town Belt'  from place p, place_information_type pit where p.place_name_text ='Central Park' 

and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Charles Plimmer 

Park' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Dorrie Leslie 

Park' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Fort Buckley' 

and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Frank Kitts 

Park' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='George Denton 

Park & Polhill Reserve' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Gilberd Bush 

Reserve' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Glenside 

Reserve' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Grasslees 

Reserve' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Outer Belt'  from place p, place_information_type pit where p.place_name_text ='Hawkins Hill' 

and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Outer Belt'  from place p, place_information_type pit where p.place_name_text ='Johnsonville 

Park' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Outer Belt'  from place p, place_information_type pit where p.place_name_text ='Johnston Hill' 

and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Kentwood Drive 

Reserve' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Outer Belt'  from place p, place_information_type pit where p.place_name_text ='Khandallah 

Park' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Outer Belt'  from place p, place_information_type pit where p.place_name_text ='Kilmister 

Tops' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Lakewood 

Reserve' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Outer Belt'  from place p, place_information_type pit where p.place_name_text ='Makara Peak 

Mountain Bike Park' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Town Belt'  from place p, place_information_type pit where p.place_name_text ='Mount Albert' 

and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Town Belt'  from place p, place_information_type pit where p.place_name_text ='Mount Alfred' 

and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Outer Belt'  from place p, place_information_type pit where p.place_name_text ='Mount Kaukau' 

and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Town Belt'  from place p, place_information_type pit where p.place_name_text ='Mount Victoria' 

and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Oku Street 

Reserve' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Oruaiti Reserve' 

and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Rangitatau 

Reserve & Ataturk Park' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Seton Nossiter 

Park' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Shorland Park' 

and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Sinclair Park' 

and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Town Belt'  from place p, place_information_type pit where p.place_name_text ='Stellin 

Memorial Park' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Town Belt'  from place p, place_information_type pit where p.place_name_text ='Tanera Park' 

and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Tawatawa 

Reserve' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Town Belt'  from place p, place_information_type pit where p.place_name_text ='Te Ahumairangi 

Hill' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Outer Belt'  from place p, place_information_type pit where p.place_name_text ='Te Kopahou 

Reserve' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Trelissick Park' 

and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Waihinahina 

Park' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Waitangi Park' 

and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Wilf Mexted 

Scenic Reserve' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Willowbank 

Reserve' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Suburban'  from place p, place_information_type pit where p.place_name_text ='Woodburn 

Reserve' and pit.place_information_type_text ='Reserve Type';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Outer Belt'  from place p, place_information_type pit where p.place_name_text ='Wrights Hill' 

and pit.place_information_type_text ='Reserve Type';







-- school info

insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Berhampore School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Berhampore School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Berhampore 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Berhampore School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Berhampore School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Berhampore School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '4'  from place p, place_information_type pit where p.place_name_text ='Berhampore 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '241'  from place 

p, place_information_type pit where p.place_name_text ='Berhampore School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Brooklyn School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Brooklyn School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Brooklyn 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Brooklyn School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Brooklyn School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Brooklyn School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Brooklyn 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '413'  from place 

p, place_information_type pit where p.place_name_text ='Brooklyn School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='St Bernards School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='St Bernards School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='St Bernards 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='St Bernards School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='St Bernards School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='St Bernards School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '9'  from place p, place_information_type pit where p.place_name_text ='St Bernards 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '47'  from place 

p, place_information_type pit where p.place_name_text ='St Bernards School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Amesbury School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Amesbury School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Amesbury 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Amesbury School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Amesbury School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Amesbury School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Amesbury 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '149'  from place 

p, place_information_type pit where p.place_name_text ='Amesbury School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Churton Park School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Churton Park School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Churton Park 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Churton Park School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Churton Park School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Churton Park School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Churton Park 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '337'  from place 

p, place_information_type pit where p.place_name_text ='Churton Park School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Hataitai School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Hataitai School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Hataitai 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Hataitai School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Hataitai School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Hataitai School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Hataitai 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '333'  from place 

p, place_information_type pit where p.place_name_text ='Hataitai School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Kilbirnie School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Kilbirnie School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Kilbirnie 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Kilbirnie School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Kilbirnie School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Kilbirnie School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Kilbirnie 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '212'  from place 

p, place_information_type pit where p.place_name_text ='Kilbirnie School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Houghton Valley 

School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Houghton Valley School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Houghton 

Valley School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Houghton Valley School' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Houghton 

Valley School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Houghton Valley School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '9'  from place p, place_information_type pit where p.place_name_text ='Houghton 

Valley School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '210'  from place 

p, place_information_type pit where p.place_name_text ='Houghton Valley School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Island Bay School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Island Bay School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Island Bay 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Island Bay School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Island Bay School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Island Bay School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Island Bay 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '437'  from place 

p, place_information_type pit where p.place_name_text ='Island Bay School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='St Francis De Sales 

School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='St Francis De Sales School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='St Francis 

De Sales School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='St Francis De Sales School' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='St Francis 

De Sales School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='St Francis De Sales School' and 

pit.place_information_type_text ='School Authority';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '9'  from place p, 

place_information_type pit where p.place_name_text ='St Francis De Sales School' and pit.place_information_type_text 

='Decile';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '274'  from place p, place_information_type pit where p.place_name_text ='St Francis De Sales 

School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Johnsonville School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Johnsonville School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Johnsonville 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Johnsonville School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Johnsonville School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Johnsonville School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '9'  from place p, place_information_type pit where p.place_name_text ='Johnsonville 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '331'  from place 

p, place_information_type pit where p.place_name_text ='Johnsonville School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Onslow College' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Onslow College' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Onslow 

College' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '9–13'  from place 

p, place_information_type pit where p.place_name_text ='Onslow College' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Onslow College' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Onslow College' and pit.place_information_type_text ='School 

Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Onslow College' and 

pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1255'  from place 

p, place_information_type pit where p.place_name_text ='Onslow College' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Raroa Normal 

Intermediate' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Raroa Normal Intermediate' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Raroa Normal 

Intermediate' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '7–8'  from place 

p, place_information_type pit where p.place_name_text ='Raroa Normal Intermediate' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Raroa 

Normal Intermediate' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Raroa Normal Intermediate' and 

pit.place_information_type_text ='School Authority';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '10'  from place 

p, place_information_type pit where p.place_name_text ='Raroa Normal Intermediate' and pit.place_information_type_text 

='Decile';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '659'  from place p, place_information_type pit where p.place_name_text ='Raroa Normal 

Intermediate' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='St Brigids School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='St Brigids School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='St Brigids 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='St Brigids School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='St Brigids School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='St Brigids School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '9'  from place p, place_information_type pit where p.place_name_text ='St Brigids 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '312'  from place 

p, place_information_type pit where p.place_name_text ='St Brigids School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='West Park School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='West Park School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='West Park 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='West Park School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='West Park School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='West Park School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '9'  from place p, place_information_type pit where p.place_name_text ='West Park 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '372'  from place 

p, place_information_type pit where p.place_name_text ='West Park School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Karori Normal School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Karori Normal School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Karori 

Normal School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Karori Normal School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Karori Normal 

School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Karori Normal School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Karori 

Normal School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '738'  from place 

p, place_information_type pit where p.place_name_text ='Karori Normal School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Karori West Normal 

School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Karori West Normal School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Karori West 

Normal School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Karori West Normal School' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Karori 

West Normal School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Karori West Normal School' and 

pit.place_information_type_text ='School Authority';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '8'  from place p, 

place_information_type pit where p.place_name_text ='Karori West Normal School' and pit.place_information_type_text 

='Decile';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '469'  from place p, place_information_type pit where p.place_name_text ='Karori West Normal 

School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Makara Model School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Makara Model School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Makara Model 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Makara Model School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Makara Model School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Makara Model School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '7'  from place p, place_information_type pit where p.place_name_text ='Makara Model 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '28'  from place 

p, place_information_type pit where p.place_name_text ='Makara Model School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Samuel Marsden 

Collegiate School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Samuel Marsden Collegiate School' and 

pit.place_information_type_text ='Intermediate';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Samuel Marsden Collegiate School' and 

pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–13'  from place 

p, place_information_type pit where p.place_name_text ='Samuel Marsden Collegiate School' and 

pit.place_information_type_text ='Years (School)';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Girls'  from 

place p, place_information_type pit where p.place_name_text ='Samuel Marsden Collegiate School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Private'  from 

place p, place_information_type pit where p.place_name_text ='Samuel Marsden Collegiate School' and 

pit.place_information_type_text ='School Authority';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '10'  from place 

p, place_information_type pit where p.place_name_text ='Samuel Marsden Collegiate School' and 

pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '482'  from place 

p, place_information_type pit where p.place_name_text ='Samuel Marsden Collegiate School' and 

pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='St Teresas School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='St Teresas School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='St Teresas 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='St Teresas School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='St Teresas School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='St Teresas School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='St Teresas 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '159'  from place 

p, place_information_type pit where p.place_name_text ='St Teresas School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Clifton Terrace Model 

School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Clifton Terrace Model School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Clifton 

Terrace Model School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Clifton Terrace Model School' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Clifton 

Terrace Model School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Clifton Terrace Model School' and 

pit.place_information_type_text ='School Authority';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '10'  from place 

p, place_information_type pit where p.place_name_text ='Clifton Terrace Model School' and pit.place_information_type_text 

='Decile';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '67'  from place p, place_information_type pit where p.place_name_text ='Clifton Terrace Model 

School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Kelburn Normal 

School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Kelburn Normal School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Kelburn 

Normal School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Kelburn Normal School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Kelburn Normal 

School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Kelburn Normal School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Kelburn 

Normal School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '307'  from place 

p, place_information_type pit where p.place_name_text ='Kelburn Normal School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Cashmere Avenue 

School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Cashmere Avenue School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Cashmere 

Avenue School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Cashmere Avenue School' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Cashmere 

Avenue School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Cashmere Avenue School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Cashmere 

Avenue School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '329'  from place 

p, place_information_type pit where p.place_name_text ='Cashmere Avenue School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Khandallah School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Khandallah School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Khandallah 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Khandallah School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Khandallah School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Khandallah School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Khandallah 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '396'  from place 

p, place_information_type pit where p.place_name_text ='Khandallah School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='St Benedicts School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='St Benedicts School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='St Benedicts 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='St Benedicts School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='St Benedicts School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='St Benedicts School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='St Benedicts 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '229'  from place 

p, place_information_type pit where p.place_name_text ='St Benedicts School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Evans Bay Intermediate 

School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Evans Bay Intermediate School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Evans Bay 

Intermediate School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '7–8'  from place 

p, place_information_type pit where p.place_name_text ='Evans Bay Intermediate School' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Evans Bay 

Intermediate School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Evans Bay Intermediate School' and 

pit.place_information_type_text ='School Authority';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '7'  from place p, 

place_information_type pit where p.place_name_text ='Evans Bay Intermediate School' and pit.place_information_type_text 

='Decile';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '381'  from place p, place_information_type pit where p.place_name_text ='Evans Bay 

Intermediate School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Rongotai College' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Rongotai College' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Rongotai 

College' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '9–13'  from place 

p, place_information_type pit where p.place_name_text ='Rongotai College' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Boys'  from place p, place_information_type pit where p.place_name_text ='Rongotai College' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Rongotai College' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '6'  from place p, place_information_type pit where p.place_name_text ='Rongotai 

College' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '627'  from place 

p, place_information_type pit where p.place_name_text ='Rongotai College' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='St Catherines College' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='St Catherines College' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='St 

Catherines College' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '9–13'  from place 

p, place_information_type pit where p.place_name_text ='St Catherines College' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Girls'  from place p, place_information_type pit where p.place_name_text ='St Catherines 

College' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='St Catherines College' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '6'  from place p, place_information_type pit where p.place_name_text ='St Catherines 

College' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '255'  from place 

p, place_information_type pit where p.place_name_text ='St Catherines College' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='St. Patricks College' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='St. Patricks College' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='St. 

Patricks College' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '9–13'  from place 

p, place_information_type pit where p.place_name_text ='St. Patricks College' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Boys'  from place p, place_information_type pit where p.place_name_text ='St. Patricks 

College' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='St. Patricks College' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '8'  from place p, place_information_type pit where p.place_name_text ='St. Patricks 

College' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '847'  from place 

p, place_information_type pit where p.place_name_text ='St. Patricks College' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='St Patricks School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='St Patricks School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='St Patricks 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='St Patricks School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='St Patricks School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='St Patricks School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '5'  from place p, place_information_type pit where p.place_name_text ='St Patricks 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '98'  from place 

p, place_information_type pit where p.place_name_text ='St Patricks School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Lyall Bay School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Lyall Bay School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Lyall Bay 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Lyall Bay School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Lyall Bay School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Lyall Bay School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '7'  from place p, place_information_type pit where p.place_name_text ='Lyall Bay 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '399'  from place 

p, place_information_type pit where p.place_name_text ='Lyall Bay School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Holy Cross School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Holy Cross School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Holy Cross 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Holy Cross School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Holy Cross School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='Holy Cross School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '5'  from place p, place_information_type pit where p.place_name_text ='Holy Cross 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '185'  from place 

p, place_information_type pit where p.place_name_text ='Holy Cross School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Miramar Central 

School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Miramar Central School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Miramar 

Central School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Miramar Central School' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Miramar 

Central School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Miramar Central School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '6'  from place p, place_information_type pit where p.place_name_text ='Miramar 

Central School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '253'  from place 

p, place_information_type pit where p.place_name_text ='Miramar Central School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Miramar Christian 

School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Miramar Christian School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Miramar 

Christian School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Miramar Christian School' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Miramar 

Christian School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='Miramar Christian School' and 

pit.place_information_type_text ='School Authority';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '7'  from place p, 

place_information_type pit where p.place_name_text ='Miramar Christian School' and pit.place_information_type_text 

='Decile';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '65'  from place p, place_information_type pit where p.place_name_text ='Miramar Christian 

School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Miramar North School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Miramar North School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Miramar 

North School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Miramar North School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Miramar North 

School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Miramar North School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '8'  from place p, place_information_type pit where p.place_name_text ='Miramar North 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '268'  from place 

p, place_information_type pit where p.place_name_text ='Miramar North School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Scots College' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Scots College' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Scots 

College' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–13'  from place 

p, place_information_type pit where p.place_name_text ='Scots College' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Boys'  from place p, place_information_type pit where p.place_name_text ='Scots College' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Private'  from 

place p, place_information_type pit where p.place_name_text ='Scots College' and pit.place_information_type_text ='School 

Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Scots College' and 

pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '841'  from place 

p, place_information_type pit where p.place_name_text ='Scots College' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Worser Bay School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Worser Bay School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Worser Bay 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Worser Bay School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Worser Bay School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Worser Bay School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Worser Bay 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '178'  from place 

p, place_information_type pit where p.place_name_text ='Worser Bay School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Mt Cook School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Mt Cook School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Mt Cook 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Mt Cook School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Mt Cook School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Mt Cook School' and pit.place_information_type_text ='School 

Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '5'  from place p, place_information_type pit where p.place_name_text ='Mt Cook School' and 

pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '232'  from place 

p, place_information_type pit where p.place_name_text ='Mt Cook School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Clyde Quay School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Clyde Quay School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Clyde Quay 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Clyde Quay School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Clyde Quay School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Clyde Quay School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '8'  from place p, place_information_type pit where p.place_name_text ='Clyde Quay 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '211'  from place 

p, place_information_type pit where p.place_name_text ='Clyde Quay School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='St Marks Church 

School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='St Marks Church School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='St Marks 

Church School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='St Marks Church School' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='St Marks 

Church School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Private'  from 

place p, place_information_type pit where p.place_name_text ='St Marks Church School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='St Marks 

Church School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '201'  from place 

p, place_information_type pit where p.place_name_text ='St Marks Church School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Wellington East Girls 

College' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Wellington East Girls College' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Wellington 

East Girls College' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '9–13'  from place 

p, place_information_type pit where p.place_name_text ='Wellington East Girls College' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Girls'  from place p, place_information_type pit where p.place_name_text 

='Wellington East Girls College' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Wellington East Girls College' and 

pit.place_information_type_text ='School Authority';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '8'  from place p, 

place_information_type pit where p.place_name_text ='Wellington East Girls College' and pit.place_information_type_text 

='Decile';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '1081'  from place p, place_information_type pit where p.place_name_text ='Wellington East 

Girls College' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Bellevue School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Bellevue School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Bellevue 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Bellevue School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Bellevue School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Bellevue School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '8'  from place p, place_information_type pit where p.place_name_text ='Bellevue 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '260'  from place 

p, place_information_type pit where p.place_name_text ='Bellevue School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Newlands College' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Newlands College' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Newlands 

College' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '9–13'  from place 

p, place_information_type pit where p.place_name_text ='Newlands College' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Newlands College' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Newlands College' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '9'  from place p, place_information_type pit where p.place_name_text ='Newlands 

College' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '930'  from place 

p, place_information_type pit where p.place_name_text ='Newlands College' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Newlands Intermediate' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Newlands Intermediate' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Newlands 

Intermediate' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '7–8'  from place 

p, place_information_type pit where p.place_name_text ='Newlands Intermediate' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Newlands 

Intermediate' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Newlands Intermediate' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '9'  from place p, place_information_type pit where p.place_name_text ='Newlands 

Intermediate' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '310'  from place 

p, place_information_type pit where p.place_name_text ='Newlands Intermediate' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Newlands School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Newlands School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Newlands 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Newlands School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Newlands School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Newlands School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '8'  from place p, place_information_type pit where p.place_name_text ='Newlands 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '325'  from place 

p, place_information_type pit where p.place_name_text ='Newlands School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Rewa Rewa School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Rewa Rewa School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Rewa Rewa 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Rewa Rewa School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Rewa Rewa School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Rewa Rewa School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '8'  from place p, place_information_type pit where p.place_name_text ='Rewa Rewa 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '70'  from place 

p, place_information_type pit where p.place_name_text ='Rewa Rewa School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Newtown School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Newtown School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Newtown 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Newtown School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Newtown School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Newtown School' and pit.place_information_type_text ='School 

Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '4'  from place p, place_information_type pit where p.place_name_text ='Newtown School' and 

pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '298'  from place 

p, place_information_type pit where p.place_name_text ='Newtown School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='South Wellington 

Intermediate' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='South Wellington Intermediate' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='South 

Wellington Intermediate' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '7–8'  from place 

p, place_information_type pit where p.place_name_text ='South Wellington Intermediate' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='South 

Wellington Intermediate' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='South Wellington Intermediate' and 

pit.place_information_type_text ='School Authority';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '7'  from place p, 

place_information_type pit where p.place_name_text ='South Wellington Intermediate' and pit.place_information_type_text 

='Decile';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '303'  from place p, place_information_type pit where p.place_name_text ='South Wellington 

Intermediate' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='St Annes School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='St Annes School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='St Annes 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='St Annes School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='St Annes School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='St Annes School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '4'  from place p, place_information_type pit where p.place_name_text ='St Annes 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '121'  from place 

p, place_information_type pit where p.place_name_text ='St Annes School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Ngaio School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Ngaio School' and pit.place_information_type_text ='Intermediate';	

insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Ngaio School' and 

pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Ngaio School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Ngaio School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Ngaio School' and pit.place_information_type_text ='School 

Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Ngaio School' and 

pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '487'  from place 

p, place_information_type pit where p.place_name_text ='Ngaio School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Northland School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Northland School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Northland 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Northland School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Northland School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Northland School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Northland 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '341'  from place 

p, place_information_type pit where p.place_name_text ='Northland School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Owhiro Bay School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Owhiro Bay School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Owhiro Bay 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Owhiro Bay School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Owhiro Bay School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Owhiro Bay School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '9'  from place p, place_information_type pit where p.place_name_text ='Owhiro Bay 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '121'  from place 

p, place_information_type pit where p.place_name_text ='Owhiro Bay School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Paparangi School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Paparangi School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Paparangi 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Paparangi School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Paparangi School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Paparangi School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '9'  from place p, place_information_type pit where p.place_name_text ='Paparangi 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '183'  from place 

p, place_information_type pit where p.place_name_text ='Paparangi School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Ridgway School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Ridgway School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Ridgway 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Ridgway School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Ridgway School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Ridgway School' and pit.place_information_type_text ='School 

Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '9'  from place p, place_information_type pit where p.place_name_text ='Ridgway School' and 

pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '221'  from place 

p, place_information_type pit where p.place_name_text ='Ridgway School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Roseneath School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Roseneath School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Roseneath 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Roseneath School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Roseneath School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Roseneath School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Roseneath 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '124'  from place 

p, place_information_type pit where p.place_name_text ='Roseneath School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Seatoun School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Seatoun School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Seatoun 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Seatoun School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Seatoun School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Seatoun School' and pit.place_information_type_text ='School 

Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Seatoun School' and 

pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '417'  from place 

p, place_information_type pit where p.place_name_text ='Seatoun School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='St Anthonys School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='St Anthonys School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='St Anthonys 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='St Anthonys School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='St Anthonys School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='St Anthonys School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '8'  from place p, place_information_type pit where p.place_name_text ='St Anthonys 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '106'  from place 

p, place_information_type pit where p.place_name_text ='St Anthonys School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='TKKM o Nga Mokopuna' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='TKKM o Nga Mokopuna' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='TKKM o Nga 

Mokopuna' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–13'  from place 

p, place_information_type pit where p.place_name_text ='TKKM o Nga Mokopuna' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='TKKM o Nga Mokopuna' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='TKKM o Nga Mokopuna' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '8'  from place p, place_information_type pit where p.place_name_text ='TKKM o Nga 

Mokopuna' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '80'  from place 

p, place_information_type pit where p.place_name_text ='TKKM o Nga Mokopuna' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Kahurangi School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Kahurangi School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Kahurangi 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Kahurangi School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Kahurangi School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Kahurangi School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '2'  from place p, place_information_type pit where p.place_name_text ='Kahurangi 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '146'  from place 

p, place_information_type pit where p.place_name_text ='Kahurangi School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Greenacres School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Greenacres School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Greenacres 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Greenacres School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Greenacres School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Greenacres School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '9'  from place p, place_information_type pit where p.place_name_text ='Greenacres 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '179'  from place 

p, place_information_type pit where p.place_name_text ='Greenacres School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Hampton Hill School' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Hampton Hill School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Hampton Hill 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Hampton Hill School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Hampton Hill School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Hampton Hill School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '6'  from place p, place_information_type pit where p.place_name_text ='Hampton Hill 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '154'  from place 

p, place_information_type pit where p.place_name_text ='Hampton Hill School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Linden School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Linden School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Linden 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Linden School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Linden School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Linden School' and pit.place_information_type_text ='School 

Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '4'  from place p, place_information_type pit where p.place_name_text ='Linden School' and 

pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '86'  from place 

p, place_information_type pit where p.place_name_text ='Linden School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Redwood School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Redwood School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Redwood 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Redwood School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Redwood School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Redwood School' and pit.place_information_type_text ='School 

Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Redwood School' and 

pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '397'  from place 

p, place_information_type pit where p.place_name_text ='Redwood School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='St Francis Xavier 

School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='St Francis Xavier School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='St Francis 

Xavier School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='St Francis Xavier School' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='St Francis 

Xavier School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='St Francis Xavier School' and 

pit.place_information_type_text ='School Authority';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '9'  from place p, 

place_information_type pit where p.place_name_text ='St Francis Xavier School' and pit.place_information_type_text 

='Decile';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '173'  from place p, place_information_type pit where p.place_name_text ='St Francis Xavier 

School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Tawa College' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Tawa College' and pit.place_information_type_text ='Intermediate';	

insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Tawa College' and 

pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '9–13'  from place 

p, place_information_type pit where p.place_name_text ='Tawa College' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Tawa College' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Tawa College' and pit.place_information_type_text ='School 

Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '9'  from place p, place_information_type pit where p.place_name_text ='Tawa College' and 

pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1514'  from place 

p, place_information_type pit where p.place_name_text ='Tawa College' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Tawa Intermediate' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Tawa Intermediate' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Tawa 

Intermediate' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '7–8'  from place 

p, place_information_type pit where p.place_name_text ='Tawa Intermediate' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Tawa Intermediate' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Tawa Intermediate' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '8'  from place p, place_information_type pit where p.place_name_text ='Tawa 

Intermediate' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '505'  from place 

p, place_information_type pit where p.place_name_text ='Tawa Intermediate' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Tawa School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Tawa School' and pit.place_information_type_text ='Intermediate';	

insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Tawa School' and 

pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Tawa School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Tawa School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Tawa School' and pit.place_information_type_text ='School 

Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '8'  from place p, place_information_type pit where p.place_name_text ='Tawa School' and 

pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '330'  from place 

p, place_information_type pit where p.place_name_text ='Tawa School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Queen Margaret 

College' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Queen Margaret College' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Queen 

Margaret College' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–13'  from place 

p, place_information_type pit where p.place_name_text ='Queen Margaret College' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Girls'  from place p, place_information_type pit where p.place_name_text ='Queen 

Margaret College' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Private'  from 

place p, place_information_type pit where p.place_name_text ='Queen Margaret College' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Queen 

Margaret College' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '668'  from place 

p, place_information_type pit where p.place_name_text ='Queen Margaret College' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Sacred Heart 

Cathedral School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Sacred Heart Cathedral School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Sacred Heart 

Cathedral School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Sacred Heart Cathedral School' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Sacred 

Heart Cathedral School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='Sacred Heart Cathedral School' and 

pit.place_information_type_text ='School Authority';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '9'  from place p, 

place_information_type pit where p.place_name_text ='Sacred Heart Cathedral School' and pit.place_information_type_text 

='Decile';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '218'  from place p, place_information_type pit where p.place_name_text ='Sacred Heart 

Cathedral School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Thorndon School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Thorndon School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Thorndon 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Thorndon School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Thorndon School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Thorndon School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Thorndon 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '295'  from place 

p, place_information_type pit where p.place_name_text ='Thorndon School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Wellington Girls 

College' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Wellington Girls College' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Wellington 

Girls College' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '9–13'  from place 

p, place_information_type pit where p.place_name_text ='Wellington Girls College' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Girls'  from place p, place_information_type pit where p.place_name_text 

='Wellington Girls College' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Wellington Girls College' and 

pit.place_information_type_text ='School Authority';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '10'  from place 

p, place_information_type pit where p.place_name_text ='Wellington Girls College' and pit.place_information_type_text 

='Decile';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '1375'  from place p, place_information_type pit where p.place_name_text ='Wellington Girls 

College' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Wadestown School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Wadestown School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Wadestown 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Wadestown School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Wadestown School' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Wadestown School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Wadestown 

School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '334'  from place 

p, place_information_type pit where p.place_name_text ='Wadestown School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Crofton Downs Primary 

School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Crofton Downs Primary School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Crofton 

Downs Primary School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–6'  from place 

p, place_information_type pit where p.place_name_text ='Crofton Downs Primary School' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Crofton 

Downs Primary School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Crofton Downs Primary School' and 

pit.place_information_type_text ='School Authority';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '10'  from place 

p, place_information_type pit where p.place_name_text ='Crofton Downs Primary School' and pit.place_information_type_text 

='Decile';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '176'  from place p, place_information_type pit where p.place_name_text ='Crofton Downs Primary 

School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Te Aro School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Te Aro School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Te Aro 

School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Te Aro School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Te Aro School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Te Aro School' and pit.place_information_type_text ='School 

Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '6'  from place p, place_information_type pit where p.place_name_text ='Te Aro School' and 

pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '207'  from place 

p, place_information_type pit where p.place_name_text ='Te Aro School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Wellington College' 

and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Wellington College' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Wellington 

College' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '9–13'  from place 

p, place_information_type pit where p.place_name_text ='Wellington College' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Boys'  from place p, place_information_type pit where p.place_name_text ='Wellington College' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Wellington College' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Wellington 

College' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1673'  from place 

p, place_information_type pit where p.place_name_text ='Wellington College' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Wellington High 

School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='Wellington High School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Wellington 

High School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '9–13'  from place 

p, place_information_type pit where p.place_name_text ='Wellington High School' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Wellington 

High School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Wellington High School' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '9'  from place p, place_information_type pit where p.place_name_text ='Wellington 

High School' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1081'  from place 

p, place_information_type pit where p.place_name_text ='Wellington High School' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='St Marys College' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'No'  from place 

p, place_information_type pit where p.place_name_text ='St Marys College' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='St Marys 

College' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '9–13'  from place 

p, place_information_type pit where p.place_name_text ='St Marys College' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Girls'  from place p, place_information_type pit where p.place_name_text ='St Marys College' 

and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='St Marys College' and pit.place_information_type_text 

='School Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='St Marys 

College' and pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '623'  from place 

p, place_information_type pit where p.place_name_text ='St Marys College' and pit.place_information_type_text ='Roll 

Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Cardinal McKeefry 

School' and pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Cardinal McKeefry School' and pit.place_information_type_text 

='Intermediate';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Cardinal 

McKeefry School' and pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Cardinal McKeefry School' and pit.place_information_type_text 

='Years (School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select 

place_id, place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Cardinal 

McKeefry School' and pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Integrated'  from 

place p, place_information_type pit where p.place_name_text ='Cardinal McKeefry School' and 

pit.place_information_type_text ='School Authority';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '10'  from place 

p, place_information_type pit where p.place_name_text ='Cardinal McKeefry School' and pit.place_information_type_text 

='Decile';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '98'  from place p, place_information_type pit where p.place_name_text ='Cardinal McKeefry 

School' and pit.place_information_type_text ='Roll Size';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Yes'  from place p, place_information_type pit where p.place_name_text ='Otari School' and 

pit.place_information_type_text ='Primary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'Yes'  from place 

p, place_information_type pit where p.place_name_text ='Otari School' and pit.place_information_type_text ='Intermediate';	

insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'No'  from place p, place_information_type pit where p.place_name_text ='Otari School' and 

pit.place_information_type_text ='Secondary';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '1–8'  from place 

p, place_information_type pit where p.place_name_text ='Otari School' and pit.place_information_type_text ='Years 

(School)';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Coed'  from place p, place_information_type pit where p.place_name_text ='Otari School' and 

pit.place_information_type_text ='Genders';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, 'State'  from 

place p, place_information_type pit where p.place_name_text ='Otari School' and pit.place_information_type_text ='School 

Authority';	insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '10'  from place p, place_information_type pit where p.place_name_text ='Otari School' and 

pit.place_information_type_text ='Decile';	insert into place_information 

(place_id,place_information_type_id,place_information_text) select place_id, place_information_type_id, '205'  from place 

p, place_information_type pit where p.place_name_text ='Otari School' and pit.place_information_type_text ='Roll Size';


-- supermarket

insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '5 William Earp Place'  from place p, place_information_type pit where p.place_name_text 

='Countdown Tawa' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Moorefield Road'  from place p, place_information_type pit where p.place_name_text ='Countdown 

Johnsonville Mall' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '120 Churchill Drive'  from place p, place_information_type pit where p.place_name_text 

='Countdown Crofton Downs' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '236 Karori Rd'  from place p, place_information_type pit where p.place_name_text ='Countdown 

Karori' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '3 John Street'  from place p, place_information_type pit where p.place_name_text ='Countdown 

Newtown' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '47 Bay Road'  from place p, place_information_type pit where p.place_name_text ='Countdown 

Kilbirnie' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '69 Lakewood Avenue'  from place p, place_information_type pit where p.place_name_text ='New 

World Churton Park' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '6 Medway Street'  from place p, place_information_type pit where p.place_name_text ='New World 

Island Bay' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Karori Mall, 236 Karori Road'  from place p, place_information_type pit where 

p.place_name_text ='New World Karori' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '26 Ganges Road'  from place p, place_information_type pit where p.place_name_text ='New World 

Khandallah' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '48 Miramar Avenue'  from place p, place_information_type pit where p.place_name_text ='New 

World Miramar' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Corner Newlands Road and Bracken Road'  from place p, place_information_type pit where 

p.place_name_text ='New World Newlands' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '195 Riddiford Street'  from place p, place_information_type pit where p.place_name_text ='New 

World Newtown' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, 'Wellington Railway Station, 2 Bunny Street'  from place p, place_information_type pit where 

p.place_name_text ='New World Railway Metro' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '35 Oxford Street'  from place p, place_information_type pit where p.place_name_text ='New 

World Tawa' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '150 Molesworth Street'  from place p, place_information_type pit where p.place_name_text ='New 

World Thorndon' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '279 Wakefield Street'  from place p, place_information_type pit where p.place_name_text ='New 

World Wellington City' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '68-70 Willis Street'  from place p, place_information_type pit where p.place_name_text ='New 

World Willis Street' and pit.place_information_type_text ='Address';
insert into place_information (place_id,place_information_type_id,place_information_text) select place_id, 

place_information_type_id, '78 Rongotai Road'  from place p, place_information_type pit where p.place_name_text ='Pak n 

Save Kilbirnie' and pit.place_information_type_text ='Address';

