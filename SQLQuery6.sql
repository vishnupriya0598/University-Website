use UniversityWebsite

create table tblIdea
(
ideaID int identity(1,1) primary key,
UserId int,
IdeaDescription varchar(200),
NoOfLikes int
)
drop table tblIdea
insert into tblIdea values(114,'Coding Practices can be given prior to Hackathon',25)

alter proc procIdeas
(@UserId int,@IdeaDescription varchar,@NoOfLikes int)
as
begin
insert into tblIdea(userId,IdeaDescription,NoOfLikes) values(@UserId,@IdeaDescription,@NoOfLikes)
end
go
alter proc procGetIdeas
as 
begin
select UserName,IdeaDescription,NoOfLikes from tblUser 
join tblIdea on tblUser.UserId=tblIdea.UserId
end
go
exec procGetIdeas

create table tblComplaint
(
ComplaintID int identity(1,1) primary key,
UserId int,
ComplaintDescription varchar(200)

)
drop table tblComplaint

insert into tblComplaint values(102,'The Quality of Food was not good in Photon')
create proc procComplaints
(@UserId int,@ComplaintDescription varchar)
as
begin
insert into tblComplaint values(@UserId,@ComplaintDescription)
end
go
create proc procGetcomplaints
as 
begin
select UserName,complaintDescription from tblUser 
join tblComplaint on tblUser.UserId=tblComplaint.UserId
end
go