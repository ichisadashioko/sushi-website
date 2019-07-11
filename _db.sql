create database Sushi
go

use Sushi
go

CREATE TABLE visit_history (
	--id char(32) not null primary key,
	ip nvarchar(128) not null,
	time_visit DATETIME not null,
	request_url TEXT not null
)

