use master
go
drop database Sushi
go
create database Sushi
go
use Sushi
go

drop table visit_history

CREATE TABLE visit_history
(
	--id char(32) not null primary key,
	ip nvarchar(128) not null,
	time_visit DATETIME not null default GETDATE(),
	request_url TEXT not null
)

-- banners has (id, title, img, descr)
drop table banners

create table banners
(
	-- id int not null,
	title varchar(128) not null,
	img varchar(256) not null,
	descr text not null,
	dc datetime not null default GETDATE(),
)

select * from banners order by dc

select * from (select ROW_NUMBER() over(order by dc desc) as rownum, title, img, descr, dc from banners) as s where s.rownum > 4 and s.rownum <= 10

delete from banners

insert into banners
	(id, title, img, descr)
values
	(1, 'a', 'as', 'as')

-- menu has (id, title, descr)
drop table menu

create table menu
(
	-- menu_id int not null primary key,
	menu_name varchar(128) not null primary key,
	menu_desc text not null,
	dc datetime not null default GETDATE(),
)

-- insert into menu(menu_name, menu_img, menu_desc) values
-- ('24 types of sushi rolls', 'images/sushi_02.jpg', 'Order sushi Now!

-- Free Delivery!

-- Sampler, Lunch and Banquet. $20.00 minimum order

-- Red Octopussy Sauce with every order'),
-- ('Special Menu', 'images/SuKu2Common.jpg', 'In the mood for something new? Treat yourself to a meal off of our special menu! Here you''ll find many of our fanciest fusion favorites, as easy on the eyes as they are on the tongue. These rolls represent the height of our sushi craft, so take a look, try a bite, and experience the true majesty that sushi can offer!')

select *
from menu

-- food has (id, food_name, menu_id, price)
drop table food

create table food
(
	-- food_id int not null ,
	food_name varchar(64) not null primary key,
	-- menu_id int not null references menu(menu_id),
	menu_name varchar(128) not null references menu(menu_name),
	price float not null,
	dc datetime not null default GETDATE(),
)

insert into food
	(food_name, menu_id, price)
values
	('Spicy Tuna Roll', 1, 6.75),
	('Eel Roll', 1, 6.95),
	('Zen Roll', 1, 7.00),
	('Rock & Roll', 1, 5.79),
	('Spicy Salmon Roll', 1, 6.50),
	('Seattle Roll', 1, 5.75),
	('Pacific Roll', 1, 6.25),
	('Bistro Roll', 1, 7.00),
	('California Roll', 1, 5.50),
	('Crunch Roll', 1, 6.00),
	('Ichi Roll', 1, 7.00),
	('Temp. Shrimp Roll', 1, 7.25),
	('Las Vegas Roll', 1, 7.50),
	('Rainbow Maki Roll', 1, 7.25),
	('Spicy California Roll', 1, 6.00),
	('Philly Roll', 1, 6.20),
	('Tuna Roll', 1, 5.00),
	('Salmon Roll', 1, 4.75),
	('Veggie Maki Roll', 1, 5.25),
	('Cucumber Roll', 1, 3.75),
	('Kampyo Roll', 1, 3.75),
	('Avocado Roll', 1, 4.25),
	('Tofu Roll', 1, 5.50),
	('Yellow Radish Roll', 1, 3.75),
	('Rice Roll', 1, 3.25)
