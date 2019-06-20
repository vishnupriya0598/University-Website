create database dbStudent

use dbStudent

create table tblStudent
(id int identity(1,1)primary key,
name varchar(50),
age int
)

create proc proc_GetAllStudentDetails
as
begin
	select * from tblStudent
end

exec proc_GetAllStudentDetails

create proc proc_InsertStudentDetails(@sname varchar(50),@sage int)
as
begin
	insert into tblStudent values (@sname,@sage)
end

exec proc_InsertStudentDetails 'Riya',25