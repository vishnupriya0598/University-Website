use UniversityWebsite
create proc procLoginCheck
(@UserName varchar(50),@Password varchar(100))
as
begin
 select UserId from tblUser 
 where UserName=@UserName and Password=@Password
 end

 exec procLoginCheck 'Priya','priyapriy'