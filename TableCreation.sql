create table pack_grades(grade_id int primary key,
grade_name varchar(50) not null,
min_price money,max_price money)


create table sectors(sector_id int primary key,
sector_name varchar(50))


create table packages(pack_id int primary key,
speed int,
strt_date date,
monthly_payment int,
sector_id int foreign key references sectors(sector_id))


create table customers(Customer_id int primary key,
First_Name varchar(30) not null,
Last_Name varchar(30) not null,
Birth_Date date,
Join_Date date,
City varchar(30),
StateName varchar(50),
Street varchar(30),
main_phone_num varchar(15),
secondary_phone_num varchar(15),
fax varchar(15),
monthly_discount money,
pack_id int foreign key references packages(pack_id))


alter table packages
    alter column monthly_payment money



alter table packages
    alter column speed decimal


INSERT pack_grades VALUES (1, 'Very Low', 0, 10)
INSERT pack_grades VALUES (2, 'Low', 11, 20)
INSERT pack_grades VALUES (3, 'Medium', 21, 40)
INSERT pack_grades VALUES (4, 'High', 41, 80)
INSERT pack_grades VALUES (5, 'Very High', 81, 150)


alter table packages
    alter column speed varchar(20)


INSERT packages VALUES(1,'750Kbps',CAST(0x5C2C0B00 AS Date),79,1)
INSERT packages VALUES(2,'750Kbps',CAST(0x8D2D0B00 AS Date),69,1)
INSERT packages VALUES(3,'750Kbps',CAST(0x092E0B00 AS Date),59,1)
INSERT packages VALUES(4,'750Kbps',CAST(0x05300B00 AS Date),49,1)
INSERT packages VALUES(5,'750Kbps',CAST(0xF9310B00 AS Date),39,1)
INSERT packages VALUES(6,'750Kbps',CAST(0x51320B00 AS Date),29,1)
INSERT packages VALUES(7,'750Kbps',CAST(0xA42B0B00 AS Date),69,2)
INSERT packages VALUES(8,'750Kbps',CAST(0x7D2D0B00 AS Date),59,2)
INSERT packages VALUES(9,'750Kbps',CAST(0x342F0B00 AS Date),49,2)
INSERT packages VALUES(10,'750Kbps',CAST(0x9C300B00 AS Date),39,2)
INSERT packages VALUES(11,'750Kbps',CAST(0x29320B00 AS Date),29,2)
INSERT packages VALUES(12,'750Kbps',CAST(0x2C330B00 AS Date),19,2)
INSERT packages VALUES(13,'1.5Mbps',CAST(0xBD2C0B00 AS Date),89,1)
INSERT packages VALUES(14,'1.5Mbps',CAST(0xB52E0B00 AS Date),79,1)
INSERT packages VALUES(15,'1.5Mbps',CAST(0xA2300B00 AS Date),69,1)
INSERT packages VALUES(16,'1.5Mbps',CAST(0x8F310B00 AS Date),59,1)
INSERT packages VALUES(17,'1.5Mbps',CAST(0x76320B00 AS Date),49,1)
INSERT packages VALUES(18,'1.5Mbps',CAST(0x3B2D0B00 AS Date),79,2)
INSERT packages VALUES(19,'1.5Mbps',CAST(0x3C2E0B00 AS Date),69,2)
INSERT packages VALUES(20,'1.5Mbps',CAST(0xA02F0B00 AS Date),59,2)
INSERT packages VALUES(21,'1.5Mbps',CAST(0x4A310B00 AS Date),49,2)
INSERT packages VALUES(22,'1.5Mbps',CAST(0x5F320B00 AS Date),39,2)
INSERT packages VALUES(23,'2.5Mbps',CAST(0x0C2E0B00 AS Date),99,1)
INSERT packages VALUES(24,'2.5Mbps',CAST(0xD82F0B00 AS Date),89,1)
INSERT packages VALUES(25,'2.5Mbps',CAST(0xC6310B00 AS Date),79,1)
INSERT packages VALUES(26,'2.5Mbps',CAST(0x09330B00 AS Date),69,1)
INSERT packages VALUES(27,'2.5Mbps',CAST(0x8B2E0B00 AS Date),89,2)
INSERT packages VALUES(28,'2.5Mbps',CAST(0x7C2F0B00 AS Date),79,2)
INSERT packages VALUES(29,'2.5Mbps',CAST(0xEC300B00 AS Date),69,2)
INSERT packages VALUES(30,'2.5Mbps',CAST(0x66320B00 AS Date),59,2)
INSERT packages VALUES(31,'5Mbps',CAST(0x55300B00 AS Date),109,1)
INSERT packages VALUES(32,'5Mbps',CAST(0xF6300B00 AS Date),99,1)
INSERT packages VALUES(33,'5Mbps',CAST(0xDF320B00 AS Date),89,1)
INSERT packages VALUES(34,'5Mbps',CAST(0xD1300B00 AS Date),99,2)
INSERT packages VALUES(35,'5Mbps',CAST(0x24320B00 AS Date),89,2)
INSERT packages VALUES(36,'5Mbps',CAST(0x5D330B00 AS Date),79,2)
INSERT packages VALUES(37,'10Mbps',CAST(0xE8300B00 AS Date),119,1)
INSERT packages VALUES(38,'10Mbps',CAST(0xAF320B00 AS Date),109,1)
INSERT packages VALUES(39,'10Mbps',CAST(0x2A320B00 AS Date),109,2)
INSERT packages VALUES(40,'10Mbps',CAST(0x5C320B00 AS Date),99,2)
INSERT packages VALUES(41,'12Mbps',CAST(0xB2330B00 AS Date),129,1)
INSERT packages VALUES(42,'12Mbps','2005-11-03',119,2)​

INSERT customers VALUES(1,'Alvin','Smith','1962-06-27',CAST(0x812D0B00 AS
Date),'NewYork','NewYork','5953HollisterAvenue','567.867.3945','936.228.9436','762.788.3400',CAST(28.00 AS Decimal(4,2)),18)
INSERT customers VALUES(2,'Jose','Jones','1968-01-17',CAST(0x12300B00 AS
Date),'LosAngeles','California','4081HollisterAvenue','520.336.8373','939.115.6982','711.883.3345',CAST(12.00 AS Decimal(4,2)),31)
INSERT customers VALUES(3,'Amado','Taylor','1965-08-17',CAST(0x802C0B00 AS
Date),'Chicago','Illinois','3402BroderickStreet','522.501.6331','976.113.3737','767.944.7131',NULL,7)
INSERT customers VALUES(4,'Stuart','Williams','1983-05-01',CAST(0xF32E0B00 AS
Date),'Houston','Texas','5543JenningsStreet','530.339.4737','963.891.4185','756.186.3634',CAST(17.00 AS Decimal(4,2)),23)
INSERT customers VALUES(5,'Demarcus','Brown','1971-12-02',CAST(0xD62C0B00 AS
Date),'Philadelphia','Pennsylvania','5321LagunaStreet','580.733.2184',NULL,'760.663.2046',CAST(11.00 AS Decimal(4,2)),13)
INSERT customers VALUES(6,'Mark','Davies','1970-09-01',CAST(0xAB310B00 AS
Date),'Phoenix','Arizona','5868CameronWay','557.701.1366','919.345.5511',NULL,CAST(18.00 AS Decimal(4,2)),39)
INSERT customers VALUES(7,'Merlin','Evans','1962-04-13',CAST(0xD52B0B00 AS Date),'SanAntonio','Texas','8177BrannanStreet','542.753.9215','992.959.8999',NULL,CAST
(23.00 AS Decimal(4,2)),1)
INSERT customers VALUES(8,'Elroy','Wilson','1963-01-28',CAST(0x19330B00 AS
Date),'SanDiego','California','1873KeyAvenue','544.172.1347','985.345.8501',NULL,CAST(
6.00 AS Decimal(4,2)),42)
INSERT customers VALUES(9,'Charles','Thomas','1960-05-13',CAST(0x44320B00 AS
Date),'SanJose','California','9164ValenciaStreet','515.656.3047',NULL,'799.101.7626',CAST(29.00 AS Decimal(4,2)),37)
INSERT customers VALUES(10,'Rudolph','Roberts','1973-11-05',CAST(0x412C0B00 AS
Date),'Jacksonville','Florida','6308GilbertStreet','549.569.1762','942.671.2496','729.973.1742',CAST(7.00 AS Decimal(4,2)),7)
INSERT customers VALUES(11,'Laurence','Johnson','1975-11-25',CAST(0xC62F0B00 AS
Date),'Indianapolis','Indiana','7529McLarenAvenue','527.138.3311','916.219.9787',NULL,
CAST(9.00 AS Decimal(4,2)),34)
INSERT customers VALUES(12,'Pasquale','Lewis','1969-05-24',CAST(0x162F0B00 AS
Date),'Austin','Texas','1569ClevelandStreet','566.849.6722','983.706.4341',NULL,NULL,27)
INSERT customers VALUES(13,'Pat','Walker','1985-07-02',CAST(0x8D300B00 AS
Date),'SanFrancisco','California','4687SloatBoulevard','582.885.8362','938.219.8802',NULL,NULL,31)
INSERT customers VALUES(14,'Harland','Robinson','1974-04-17',CAST(0xFD2F0B00 AS
Date),'Columbus','Ohio','5390MontgomeryStreet','520.519.1795','944.392.2529','721.443.
8826',CAST(30.00 AS Decimal(4,2)),31)
INSERT customers VALUES(15,'Herschel','Wood','1974-07-24',CAST(0xE9320B00 AS
Date),'FortWorth','Texas','7842CorbettAvenue','588.826.5279','997.263.1636','779.791.4
617',CAST(30.00 AS Decimal(4,2)),41)
INSERT customers VALUES(16,'Galen','Thompson','1964-12-08',CAST(0x902B0B00 AS
Date),'Charlotte','NorthCarolina','5466FarragutAvenue','599.783.7133',NULL,'753.251.64
33',CAST(16.00 AS Decimal(4,2)),1)
INSERT customers VALUES(17,'Brain','White','1978-02-13',CAST(0x1F300B00 AS
Date),'Detroit','Michigan','3728IngersonStreet','561.654.2679','957.711.4041','794.811
.7354',NULL,34)
INSERT customers VALUES(18,'Marcel','Watson','1978-10-12',CAST(0x452E0B00 AS
Date),'ElPaso','Texas','9157LeidesdorffStreet','567.827.2421','937.806.4116','723.277.
6166',CAST(28.00 AS Decimal(4,2)),23)

INSERT customers VALUES(19,'Lino','Jackson','1982-06-25',CAST(0x2E2E0B00 AS
Date),'Memphis','Tennessee','4542McKinnonAvenue','557.460.8507','984.433.8202','792.90
8.7024',CAST(6.00 AS Decimal(4,2)),27)
INSERT customers VALUES(20,'Riley','Wright','1970-02-18',CAST(0x2B2B0B00 AS
Date),'Boston','Massachusetts','4848VallejoStreet','541.661.3366','931.368.3046','737.
625.7424',CAST(21.00 AS Decimal(4,2)),1)



INSERT sectors VALUES(1,'Private')
INSERT sectors VALUES(2,'Business')


select * from customers
select * from sectors
select * from packages
select * from pack_grades