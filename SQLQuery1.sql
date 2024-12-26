if DB_ID('Training_RDBMS') is not null
begin
	use master;
	DROP DATABASE Training_RDBMS;
end
go
CREATE DATABASE Training_RDBMS;
go
use Training_RDBMS;
go
create table Users (
	id int primary key IDENTITY(1,1),
	userName varchar(50),
	fullName varchar(100),
	passwordd varchar(100),
)
select * from Users
go
EXEC sp_rename 'Users.passwordd', 'haspassword', 'COLUMN';
go
alter table Users
alter column haspassword varchar(255)
go
insert into Users
values('hoangtrieuvn39', 'Pham Hoang Trieu', '1234'),
('hoangtrieuvn39', 'HPham Hoang Trieu', '1234'),
('hoangtrieuvn39', 'Pham Hoang', '1234')
go
select top 100 * from Users
order by fullName asc
go
select * from Users
where substring(fullName, len(fullName) - charindex(' ',REVERSE(fullName))+2, charindex(' ',REVERSE(fullName))) like 'h%'
go