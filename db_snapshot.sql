USE [master]
GO
/****** Object:  Database [Sushi]    Script Date: 7/15/2019 22:12:28 ******/
CREATE DATABASE [Sushi]
GO
USE [Sushi]
GO
/****** Object:  Table [dbo].[banners]    Script Date: 7/15/2019 22:12:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[banners](
	[title] [varchar](128) NOT NULL,
	[img] [varchar](256) NOT NULL,
	[descr] [text] NOT NULL,
	[dc] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[food]    Script Date: 7/15/2019 22:12:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[food](
	[food_name] [varchar](64) NOT NULL,
	[menu_name] [varchar](128) NOT NULL,
	[price] [float] NOT NULL,
	[dc] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 7/15/2019 22:12:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[menu_name] [varchar](128) NOT NULL,
	[menu_desc] [text] NOT NULL,
	[dc] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[menu_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[visit_history]    Script Date: 7/15/2019 22:12:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[visit_history](
	[ip] [nvarchar](128) NOT NULL,
	[time_visit] [datetime] NOT NULL,
	[request_url] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'zo Eknqhn qQjTJ2  0Jb y16z KXQiu', N'images/sushi_01.jpg', N'Order sushi Now!
Free Delivery!
Sampler, Lunch and Banquet. $20.00 minimum order
Red Octopussy Sauce with every order', CAST(N'2019-07-15T13:30:52.940' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'wqgQat AjBi Tf 30 Nm B0g2Dy Mt5U s4NoJj', N'images/sushi_02.jpg', N'Stet clita kasd gubergren, no sea takimata sanctus est
Lorem ipsum dolor sit amet.', CAST(N'2019-07-15T13:30:53.263' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'2NoxEn aN 5A Uz q6 a1d Xr  lWR  1O5B AzImTs 7lh BZJ', N'images/sushi_03.jpg', N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.
sed diam nonumy eirmod tempor invidunt ut labore et.', CAST(N'2019-07-15T13:30:53.300' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'npt 32YbQv ulof TWQmsX lP X ROCR epm7  ul qd1KGu 7Z 4LzYcN  u3hOt', N'images/sushi_02.jpg', N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.
sed diam nonumy eirmod tempor invidunt ut labore et.', CAST(N'2019-07-15T13:30:53.337' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'BE CCb SHEW0o 1L PaTPCg p3 Voq1j XP X7P2PJ 5k5P7 lKP w9u8g r4Cj0R', N'images/sushi_02.jpg', N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.
sed diam nonumy eirmod tempor invidunt ut labore et.', CAST(N'2019-07-15T13:30:53.370' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N' pc ChTVMO dme3 Jmh 0bCW2', N'images/sushi_03.jpg', N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.
sed diam nonumy eirmod tempor invidunt ut labore et.', CAST(N'2019-07-15T13:30:53.440' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'wI4 oc hILF r3UQc TX PY 3d PAr I4 5xtl ZpB 95j9', N'images/sushi_02.jpg', N'Order sushi Now!
Free Delivery!
Sampler, Lunch and Banquet. $20.00 minimum order
Red Octopussy Sauce with every order', CAST(N'2019-07-15T13:30:53.520' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'oJKnd4 Irax ix 8B yoa ocxKt Og UJ ZdSply 4vEmN2', N'images/sushi_01.jpg', N'Stet clita kasd gubergren, no sea takimata sanctus est
Lorem ipsum dolor sit amet.', CAST(N'2019-07-15T13:30:53.587' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'AwVqfw BMGhsb IhK 2jb YI d UP WEz vYFia0 8IV Dedm XnWp h8 4KLq', N'images/sushi_01.jpg', N'dolore magna aliquyam erat, sed diam voluptua.
At vero eos et accusam et justo duo dolores et ea rebum.', CAST(N'2019-07-15T13:30:53.630' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'Qo pQ9KzO kRfTt1 AKKVl o0 AI fm d1D sauMt', N'images/sushi_02.jpg', N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.
sed diam nonumy eirmod tempor invidunt ut labore et.', CAST(N'2019-07-15T13:30:53.707' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'pJYs 3DtcIC VRvRT  gP JanwG 0x FONW 9zW ypuWkp wcXm wbGw9 3HVY0U', N'images/sushi_02.jpg', N'dolore magna aliquyam erat, sed diam voluptua.
At vero eos et accusam et justo duo dolores et ea rebum.', CAST(N'2019-07-15T13:30:53.740' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'cUmqF JIo J2 ztC81j HV1 pri Bas 71P9 FoLGk laXX62', N'images/sushi_02.jpg', N'dolore magna aliquyam erat, sed diam voluptua.
At vero eos et accusam et justo duo dolores et ea rebum.', CAST(N'2019-07-15T13:30:53.790' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'1zD1kd a1s jpGTs 7Uvn Tz3Gv uSj XN d5bjwv xQOshw Xt1', N'images/sushi_01.jpg', N'Order sushi Now!
Free Delivery!
Sampler, Lunch and Banquet. $20.00 minimum order
Red Octopussy Sauce with every order', CAST(N'2019-07-15T13:30:53.850' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'Y2CR lHMp MoqPn5 Uw Dh Vj2N f3mw', N'images/sushi_01.jpg', N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.
sed diam nonumy eirmod tempor invidunt ut labore et.', CAST(N'2019-07-15T13:30:53.400' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'wyeJ pcZP4 Hs 8Mr qSY73 nsV yq1 vAov4E FKLU7W', N'images/sushi_01.jpg', N'Stet clita kasd gubergren, no sea takimata sanctus est
Lorem ipsum dolor sit amet.', CAST(N'2019-07-15T13:30:53.653' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'24 types of sushi rolls', N'images/sushi_02.jpg', N'Order sushi Now!
Free Delivery!
Sampler, Lunch and Banquet. $20.00 minimum order
Red Octopussy Sauce with every order', CAST(N'2019-07-15T13:30:53.870' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'lM1  Pc BOP M8 knr DU34 X kdg 9o 6s0l5 OQdW0P Bzgb', N'images/sushi_03.jpg', N'Stet clita kasd gubergren, no sea takimata sanctus est
Lorem ipsum dolor sit amet.', CAST(N'2019-07-15T13:30:53.470' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'b1 97on Dqu ArHa 3U hr4 2Q Rpm6 IoAyH YOuW PS Z FB6 OF4Lq PZVbl', N'images/sushi_03.jpg', N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.
sed diam nonumy eirmod tempor invidunt ut labore et.', CAST(N'2019-07-15T13:30:53.560' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'mR5awE pzqX OypI YEIRrj Ecq3 Et2P DHI8Z AlBQUw n8 1KF876 fN zkPhh PRhGQt', N'images/sushi_03.jpg', N'dolore magna aliquyam erat, sed diam voluptua.
At vero eos et accusam et justo duo dolores et ea rebum.', CAST(N'2019-07-15T13:30:53.610' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'luJGr cJxWrT OB qota cIF2 DPyvH FSPJaj', N'images/sushi_02.jpg', N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.
sed diam nonumy eirmod tempor invidunt ut labore et.', CAST(N'2019-07-15T13:30:53.760' AS DateTime))
GO
INSERT [dbo].[banners] ([title], [img], [descr], [dc]) VALUES (N'R7LgUp j6 3AZSP O7 ZGIZuj wQbsZE 6Dl sg ', N'images/sushi_02.jpg', N'Stet clita kasd gubergren, no sea takimata sanctus est
Lorem ipsum dolor sit amet.', CAST(N'2019-07-15T13:30:53.823' AS DateTime))
GO
INSERT [dbo].[food] ([food_name], [menu_name], [price], [dc]) VALUES (N'sushi sampler', N'fresh sushi r', 20, CAST(N'2019-07-15T17:11:08.943' AS DateTime))
GO
INSERT [dbo].[food] ([food_name], [menu_name], [price], [dc]) VALUES (N'sushi sampler', N'fresh sushi', 20, CAST(N'2019-07-15T17:11:09.027' AS DateTime))
GO
INSERT [dbo].[food] ([food_name], [menu_name], [price], [dc]) VALUES (N'sushi and variety rolls', N'fresh sushi', 25, CAST(N'2019-07-15T17:11:09.053' AS DateTime))
GO
INSERT [dbo].[food] ([food_name], [menu_name], [price], [dc]) VALUES (N'sushi and dinner rolls', N'fresh sushi', 20, CAST(N'2019-07-15T17:11:09.080' AS DateTime))
GO
INSERT [dbo].[food] ([food_name], [menu_name], [price], [dc]) VALUES (N'sushi rolls and lunch menu', N'fresh sushi', 15, CAST(N'2019-07-15T17:11:09.107' AS DateTime))
GO
INSERT [dbo].[menu] ([menu_name], [menu_desc], [dc]) VALUES (N'fresh sushi', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', CAST(N'2019-07-15T17:11:09.000' AS DateTime))
GO
INSERT [dbo].[menu] ([menu_name], [menu_desc], [dc]) VALUES (N'fresh sushi r', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', CAST(N'2019-07-15T17:11:08.910' AS DateTime))
GO
INSERT [dbo].[menu] ([menu_name], [menu_desc], [dc]) VALUES (N'Variety fresh sushi rolls and sauce', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', CAST(N'2019-07-15T17:11:08.837' AS DateTime))
GO
ALTER TABLE [dbo].[banners] ADD  DEFAULT (getdate()) FOR [dc]
GO
ALTER TABLE [dbo].[food] ADD  DEFAULT (getdate()) FOR [dc]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (getdate()) FOR [dc]
GO
ALTER TABLE [dbo].[visit_history] ADD  DEFAULT (getdate()) FOR [time_visit]
GO
ALTER TABLE [dbo].[food]  WITH CHECK ADD FOREIGN KEY([menu_name])
REFERENCES [dbo].[menu] ([menu_name])
GO
USE [master]
GO
ALTER DATABASE [Sushi] SET  READ_WRITE 
GO
