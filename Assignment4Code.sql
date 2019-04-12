use assignment_4;

#Problem 1
CREATE TABLE IF NOT EXISTS clients(
ClientNo INT NOT NULL,
First_name VARCHAR(45) NULL,
Last_name VARCHAR(45) NULL);

#Problem 2
/*INSERT INTO Clients
VALUES (16, 'Fohn', 'Havis'), (12, 'Rohn', 'Wavis'),
(16, 'Pohn', 'Quavis'), (14, 'Gohn', 'Tavis');
*/

#Problem 3
CREATE VIEW ourView AS SELECT * From clients 
where ClientNo = 12;

#Problem 4
SELECT * FROM ourView;

#Problem 5
SET sql_safe_updates = 0;

#Case 1
insert into clients values (12, 'Dillo', 'Tanks');

#Case 2
insert into clients values ('hello', 'Fillo', 'Uanks');
select * from clients;

#Case 3
update clients set
ClientNo = 15 where
ClientNo = 12;

#Case 4
update clients set
ClientNo = 12 where ClientNo = 14;

#Case 5
delete from clients where ClientNo = 12;

#Problem B
#Drop view ourView;
#Drop table clients;

#Case 1
select * from clients;
select * from ourView;
insert into ourView values (12, 'Dillo', 'Tanks');

#Case 2
insert into ourView values (18, 'Fillo', 'Uanks');

#Case 3
update ourView set
ClientNo = 15
where ClientNo = 12;

#Case 4
update clients set
ClientNo = 12 where
clientNo = 14;

#Case 5
delete from ourview where ClientNo = 12;

#Case 6
delete from ourView where ClientNo = 14;

#Problem C
Create view ourView as
select * from clients where
ClientNo = 12
WITH CHECK OPTION;

select * from clients;
select * from ourView;

#Case 1
insert into ourView values (12, 'Dillo', 'Tanks');

#Case 2
insert into ourView values (18, 'Fillo', 'Uanks');

#Case 3
update ourView set
ClientNo = 15
where ClientNo = 12;

#Case 4
update clients set
ClientNo = 12 where
clientNo = 14;

#Case 5
delete from ourview where ClientNo = 12;

#Case 6
delete from ourView where ClientNo = 14;

#Problem D
select * from clients;
select *from ourView;

#Case 1
ALTER TABLE clients
drop First_name;

#Case 2
ALTER TABLE clients
add myCol varchar(10);

#Case 3
ALTER VIEW ourView as SELECT concat(c.First_name, c.Last_name)
AS Full_name
FROM clients c;
