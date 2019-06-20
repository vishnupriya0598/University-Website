use UniversityWebsite
create table tblEvent
(EventId int identity(100,1) primary key,
EventName varchar(20),
EventDate datetime,
EventDescription varchar(200)
)

