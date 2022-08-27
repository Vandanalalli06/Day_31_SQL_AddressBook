--UC-1--
create database AddressBook_Service
use AddressBook_Service

---UC-2--create a Address book table
create table AddressBook
(
FirstName varchar(50) not null,
LastName varchar(50) not null,
Address varchar(100) not null,
City varchar(50) not null,
State varchar(50) not null,
Zipcode varchar(50) not null,
PhoneNumber varchar(50) not null,
Email varchar(50) not null
)
Select * from AddressBook

--UC-3--insert new contact details
Insert into AddressBook values
('vandana','Dadi' , 'Simhachalam' , 'Visakhapatnam','AndhraPradesh','530047','897584934','abc@gmail.com'),
('Geetha','Dadi' , 'Simha' , 'Visakha','AndhraPradesh','530048','997584934','dabc@gmail.com'),
('Sri','Dadi' , 'Vepagunta' , 'Visakhapatnam','AndhraPradesh','530048','997584934','dabc@gmail.com')
select * from AddressBook

--Uc-4--edit existing contact person using their name
update AddressBook set FirstName='Vandana',LastName='Dadi',Address='Simhachalam',city='Bangalore',state='Andhra',Zipcode='530047',PhoneNumber='7986756483',Email='sai@gmail.com' where FirstName='vandana'
select * from AddressBook

--UC-5--Delete a person using persons name
delete from AddressBook where FirstName='Sri'
select * from AddressBook

--UC-6--Retrieve person belong to city or state from addressbook
select * from AddressBook where city='Visakhapatnam' or state='AndhraPradesh'
select FirstName from AddressBook where city='Visakha' or state='Andhra'

--UC-7--Ability to Understand size of Addressbook by City or state(indicate size of count)
select count(state) from AddressBook
select count(City) from AddressBook

--UC-8--retrive the persons name sorted Alphabetically for a given city
select FirstName from AddressBook order by city
select * from AddressBook order by city,FirstName

--UC-9--Identify each addressbook by name and type
alter table AddressBook add type varchar(100) default 'family' not null
select * from AddressBook
update AddressBook set type='Family' where FirstName in ('vandana')
update AddressBook set type='Friend' where FirstName in ('Geetha')
select * from AddressBook

--UC-10--Number of contact persons by type
select type, count(type) from AddressBook group by type

--UC-11--Add person to Both Friend and Family
insert into AddressBook values
('Vandu','Ammu','NAD','Chennai','Tamilnadu','567585','8796869504','cgd@gmail.com','Friend')
select * from AddressBook


