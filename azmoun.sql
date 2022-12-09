create database Yzdn;
use yzdn;
create table salestable 
(SalesID int(5), OrderID int(5), Customer varchar(5), Product varchar(5), Date int(5), Quantity int(5), UnitPrice int(20));
select *from saletable;
insert into salestable (﻿SalesID,OrderID,Customer,Product,Date,Quantity,UnitPrice)
values (1,1,C1,P1,1,2,100);
drop table salestable;
insert into saletable (salesid) values(1);
insert into saletable
(SalesID, OrderID, Customer ,Product, Date, Quantity, UnitPrice) 
values (1,1,'C1','P1',1,2,100);
insert into saletable
(SalesID, OrderID, Customer, Product, Date, Quantity, UnitPrice)
values
(2,1,'C1','P2',1,4,150),
(3,2,'C2','P2',1,5,150),
(4,3,'C3','P4',1,3,550),
(5,4,'C4','P3',1,1,300),
(6,4,'C4','P6',1,6,150),
(7,4,'C4','P4',1,6,550),
(8,5,'C5','P2',1,3,150),
(9,5,'C5','P1',1,6,100),
(10,6,'C1','P6',1,3,150),
(11,6,'C1','P3',1,2,300),
(12,7,'C3','P5',1,4,400),
(13,7,'C3','P1',1,6,100),
(14,7,'C3','P3',1,1,300),
(15,8,'C5','P2',1,3,150),
(16,8,'C5','P5',1,4,400),
(17,8,'C5','P1',1,2,100),
(18,9,'C2','P3',2,1,300),
(19,9,'C2','P4',2,3,550),
(20,9,'C2','P5',2,6,400),
(21,9,'C2','P1',2,4,100),
(22,10,'C4','P6',2,3,150),
(23,11,'C6','P3',2,2,300),
(24,11,'C6','P4',2,3,550),
(25,12,'C7','P1',2,5,100),
(26,12,'C7','P2',2,3,150),
(27,12,'C7','P3',2,1,300),
(28,13,'C2','P1',2,4,100),
(29,13,'C2','P3',2,2,300),
(30,14,'C6','P2',2,6,150),
(31,15,'C4','P6',2,1,150),
(32,16,'C1','P4',3,6,550),
(33,17,'C2','P5',3,3,400),
(34,18,'C8','P1',3,6,100),
(35,18,'C8','P3',3,3,300),
(36,18,'C8','P5',3,5,400),
(37,19,'C9','P2',3,2,150),
(38,20,'C2','P3',3,3,300),
(39,20,'C2','P1',3,4,100),
(40,20,'C2','P2',3,1,150);
soal 1 select sum(unitprice*quantity) from saletable;
soal 2 select distinct customer from saletable;
soal 3 select product, sum(quantity) as sumofquantity from saletable group by product;
soal 4 select Customer, (quantity*unitprice) as totalvalue,sum(quantity) from saletable where (unitprice*quantity)>1500  group by customer; 
soal 5 alter table saletable add profit int(50) not null;
create table saleprofit (product varchar(50),profitratio int(2));
insert into saleprofit (Product,ProfitRatio)
values ('P1',5),
('P2',25),
('P3',10),
('P4',20),
('P5',1);
update saletable
set profit=(select profitratio from saleprofit
where saleprofit.product=saletable.product);
select sum(profitvalue) from saletable;
select (sum(profitvalue)/sum(quantity*unitprice)*100) from saletable;
soal6;
select count(distinct customer, date) from saletable;
create table chart (Id int(10),name varchar(20),manager varchar(20),ManagerId int(10));
insert into chart (Id , name, manager, ManagerId)
values (1,'Ken',null,null),
(2,'Hugo',null,null),
(3,'James','Carol',5),
(4,'Mark','Morgan',13),
(5,'Carol','Alex',12),
(6,'David','Rose',21),
(7,'Michael','Markos',11),
(8,'Brad','Alex',12),
(9,'Rob','Matt',15),
(10,'Dylan','Alex',12),
(11,'Markos','Carol',5),
(12,'Alex','Ken',1),
(13,'Morgan','Matt',15),
(14,'Jennifer','Morgan',13),
(15,'Matt','Hugo',2),
(16,'Tom','Brad',8),
(17,'Oliver','Dylan',10),
(18,'Daniel','Rob',9),
(19,'Amanda','Markos',11),
(20,'Ana','Dylan',10),
(21,'Rose','Rob',9),
(22,'Robert','Rob',9),
(23,'Fill','Morgan',13),
(24,'Antoan','David',6),
(25,'Eddie','Mark',4);
select id,name,manager, managerid from chart order by managerid asc;
sadly i couldnt understand the meaning of question 6
