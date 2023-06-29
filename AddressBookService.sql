--UC1--Create Database
create Database AddressBookService
--UC2-- Create Table
create table AddressBook(
FirstName varchar(200),
LastName varchar(200),
Address varchar(200),
City varchar(200),
State varchar(200),
PhoneNumber bigint,
Zip int,
Email varchar(200)
)
select * from AddressBook
--UC3 Inserting New Contact to Addressbook
create or alter proc Inserdata
(@FirstName varchar(200),
@LastName varchar(200),
@Address varchar(200),
@City varchar(200),
@State varchar(200),
@PhoneNumber bigint,
@Zip int,
@Email varchar(200)
)
as
begin
insert into AddressBook values(@FirstName,@LastName,@Address,@City,@State,@PhoneNumber,@Zip,@Email)
end
go
exec  Inserdata 'GHK','HNK','GLD','GLD','KA',9988998800,876876,'ghk@gmail.com'
exec  Inserdata 'Anjali','ghk','solapur','solapur','MH',9988998811,876871,'anj@gmail.com'
exec  Inserdata 'raj','jadav','Bng','bng','KA',9988998822,876872,'raj@gmail.com'
exec  Inserdata 'ram','lamani','bjp','bjp','KA',9988998833,876873,'ram@gmail.com'
exec  Inserdata 'jocep','kelvin','vayanad','vayanad','KL',9988998844,876875,'jocep@gmail.com'
select * from AddressBook
--UC4 Update Contact Using Theire Name



