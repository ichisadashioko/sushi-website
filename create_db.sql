use master
go
drop database Sushi
go
create database Sushi
go
use Sushi
go
CREATE TABLE visit_history
(
    --id char(32) not null primary key,
    ip nvarchar(128) not null,
    time_visit DATETIME not null default GETDATE(),
    request_url TEXT not null
)
go
-- banners has (id, title, img, descr)
create table banners
(
    -- id int not null,
    title varchar(128) not null,
    img varchar(256) not null,
    descr text not null,
    dc datetime not null default GETDATE(),
)
-- menu has (id, title, descr)
go
create table menu
(
    -- menu_id int not null primary key,
    menu_name varchar(128) not null primary key,
    menu_desc text not null,
    dc datetime not null default GETDATE(),
)
go
-- food has (id, food_name, menu_id, price)
create table food
(
    -- food_id int not null ,
    food_name varchar(64) not null primary key,
    -- menu_id int not null references menu(menu_id),
    menu_name varchar(128) not null references menu(menu_name),
    price float not null,
    dc datetime not null default GETDATE(),
)