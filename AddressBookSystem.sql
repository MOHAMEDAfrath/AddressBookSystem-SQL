-----UC-1 Create Address Book Service Database-----
create database addressbook_service
use addressbook_service
-----UC-2 Ability to create address book table-----
create table address_book_table
(
FirstName varchar(255),
LastName varchar(255),
Address varchar(255),
City varchar(255),
State varchar(255),
ZipCode varchar(255),
PhoneNumber bigint,
email varchar(25)
) 
-----UC-3 Ability to insert values to address book table-----
insert into address_book_table(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,email)values('Ram','Kumar','Egmore','Chennai','TamilNadu','600078','9841578941','ram@gmail.com'),('Uma','Devi','Menod','BPmark','UP','ZIP8531','7841526987','umas@gmail.com'),('Amir','Khan','Ambattur','Chennai','Tamil Nadu','600660','7744556699','amir@gmail.com'),('Dhanush','Raj','XXXX','yyyy','Banglore','600XXX','4477885599','raj@gmail.com')
select * from address_book_table
-----UC-4 Ability to edit based on name-----
update address_book_table set PhoneNumber = '7812453679' where FirstName = 'Uma'
update address_book_table set PhoneNumber = '7745124574',Address = 'Mall Road' where FirstName = 'Dhanush'
update address_book_table set email ='amir123@gmail.com' where FirstName = 'Amir'
-----UC-5 Ability to Delete a person-----
insert into address_book_table(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,email)values('xxx','yyy','zzz','aaa','bbb','ccc','99999','eee')
delete from address_book_table where FirstName = 'xxx'
-----UC-6 Ability to Retrieve data based on city or state name-----
select * from address_book_table where City = 'Chennai' or State = 'TamilNadu'
select * from address_book_table where City = 'yyyy' or State ='UP'
