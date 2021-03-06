USE [Agm]
GO
/****** Object:  Table [dbo].[Asistance]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asistance](
	[asistanceId] [int] IDENTITY(1,1) NOT NULL,
	[asistanceNameSurname] [nvarchar](100) NULL,
	[managerFk] [int] NULL,
	[userFk] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[asistanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GroupAsistance]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupAsistance](
	[groupFk] [int] NOT NULL,
	[asistanceFk] [int] NOT NULL,
 CONSTRAINT [PK_GroupAsistance] PRIMARY KEY CLUSTERED 
(
	[groupFk] ASC,
	[asistanceFk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Groups]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[groupId] [int] IDENTITY(1,1) NOT NULL,
	[groupName] [nvarchar](150) NULL,
	[groupImageUrl] [nvarchar](250) NULL,
	[managerFk] [int] NULL,
	[groupCode] [nchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[groupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manager]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[managerId] [int] IDENTITY(1,1) NOT NULL,
	[managerNameSurname] [nvarchar](100) NULL,
	[userFk] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[managerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TextMessage]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextMessage](
	[textId] [int] IDENTITY(1,1) NOT NULL,
	[textOwner] [nvarchar](100) NULL,
	[textContent] [nvarchar](max) NULL,
	[groupFk] [int] NULL,
	[textDate] [smalldatetime] NULL,
	[userFk] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[textId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[userPhoneNumber] [nvarchar](11) NULL,
	[userNameSurname] [nvarchar](100) NULL,
	[userLoginName] [nvarchar](100) NULL,
	[userPassword] [nvarchar](25) NULL,
	[userImageUrl] [nvarchar](250) NULL,
	[userEmail] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersGroup]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersGroup](
	[usersFk] [int] NOT NULL,
	[groupFk] [int] NOT NULL,
 CONSTRAINT [PK_UsersGroup] PRIMARY KEY CLUSTERED 
(
	[usersFk] ASC,
	[groupFk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([groupId], [groupName], [groupImageUrl], [managerFk], [groupCode]) VALUES (42, N'testgrup', N'/Group_Images/5256276-cute-images.jpg', 23, N'PxuTvZKF')
INSERT [dbo].[Groups] ([groupId], [groupName], [groupImageUrl], [managerFk], [groupCode]) VALUES (43, N'1. Sınıf İşletme', N'/Group_Images/5256276-cute-images.jpg', 24, N'OQJrLINf')
SET IDENTITY_INSERT [dbo].[Groups] OFF
SET IDENTITY_INSERT [dbo].[Manager] ON 

INSERT [dbo].[Manager] ([managerId], [managerNameSurname], [userFk]) VALUES (23, N'test', 47)
INSERT [dbo].[Manager] ([managerId], [managerNameSurname], [userFk]) VALUES (24, N'yönetici', 49)
SET IDENTITY_INSERT [dbo].[Manager] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([userId], [userPhoneNumber], [userNameSurname], [userLoginName], [userPassword], [userImageUrl], [userEmail]) VALUES (47, N'5532902294', N'test', N'test', N'asd', N'/User_Images/default.png', N'test@gmail.com')
INSERT [dbo].[Users] ([userId], [userPhoneNumber], [userNameSurname], [userLoginName], [userPassword], [userImageUrl], [userEmail]) VALUES (48, N'5532902295', N'test2', N'test2', N'asd', N'/User_Images/krystian-krzewinski-1159463-unsplash.jpg', N'test2@gmail.com')
INSERT [dbo].[Users] ([userId], [userPhoneNumber], [userNameSurname], [userLoginName], [userPassword], [userImageUrl], [userEmail]) VALUES (49, N'05544444444', N'yönetici', N'yönetici', N'asd', N'/User_Images/krystian-krzewinski-1159463-unsplash.jpg', N'yönetici@gmail.com')
INSERT [dbo].[Users] ([userId], [userPhoneNumber], [userNameSurname], [userLoginName], [userPassword], [userImageUrl], [userEmail]) VALUES (50, N'05555555555', N'kullanıcı', N'kullanıcı', N'asd', N'/User_Images/icons8-team-1221953-unsplash.jpg', N'kullanıcı@gmail.com')
SET IDENTITY_INSERT [dbo].[Users] OFF
INSERT [dbo].[UsersGroup] ([usersFk], [groupFk]) VALUES (47, 42)
INSERT [dbo].[UsersGroup] ([usersFk], [groupFk]) VALUES (49, 43)
INSERT [dbo].[UsersGroup] ([usersFk], [groupFk]) VALUES (50, 43)
ALTER TABLE [dbo].[Asistance]  WITH CHECK ADD  CONSTRAINT [FK_Asistance_Manager] FOREIGN KEY([managerFk])
REFERENCES [dbo].[Manager] ([managerId])
GO
ALTER TABLE [dbo].[Asistance] CHECK CONSTRAINT [FK_Asistance_Manager]
GO
ALTER TABLE [dbo].[Asistance]  WITH CHECK ADD  CONSTRAINT [FK_Asistance_Users] FOREIGN KEY([userFk])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Asistance] CHECK CONSTRAINT [FK_Asistance_Users]
GO
ALTER TABLE [dbo].[GroupAsistance]  WITH CHECK ADD  CONSTRAINT [FK_GroupAsistance_Asistance] FOREIGN KEY([asistanceFk])
REFERENCES [dbo].[Asistance] ([asistanceId])
GO
ALTER TABLE [dbo].[GroupAsistance] CHECK CONSTRAINT [FK_GroupAsistance_Asistance]
GO
ALTER TABLE [dbo].[GroupAsistance]  WITH CHECK ADD  CONSTRAINT [FK_GroupAsistance_Groups] FOREIGN KEY([groupFk])
REFERENCES [dbo].[Groups] ([groupId])
GO
ALTER TABLE [dbo].[GroupAsistance] CHECK CONSTRAINT [FK_GroupAsistance_Groups]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Manager] FOREIGN KEY([managerFk])
REFERENCES [dbo].[Manager] ([managerId])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Manager]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_Users] FOREIGN KEY([userFk])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_Users]
GO
ALTER TABLE [dbo].[TextMessage]  WITH CHECK ADD  CONSTRAINT [FK_TextMessage_Users] FOREIGN KEY([userFk])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[TextMessage] CHECK CONSTRAINT [FK_TextMessage_Users]
GO
ALTER TABLE [dbo].[UsersGroup]  WITH CHECK ADD  CONSTRAINT [FK_UsersGroup_Groups] FOREIGN KEY([groupFk])
REFERENCES [dbo].[Groups] ([groupId])
GO
ALTER TABLE [dbo].[UsersGroup] CHECK CONSTRAINT [FK_UsersGroup_Groups]
GO
ALTER TABLE [dbo].[UsersGroup]  WITH CHECK ADD  CONSTRAINT [FK_UsersGroup_Users] FOREIGN KEY([usersFk])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[UsersGroup] CHECK CONSTRAINT [FK_UsersGroup_Users]
GO
/****** Object:  StoredProcedure [dbo].[spAddAsistance]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[spAddAsistance] (@userId int , @asistanceUserLoginName nvarchar(100))
AS
declare @managerFk int
declare @mGroupId int
Select @managerFk=managerId from Manager m where m.userFk = @userId
Select @mGroupId=groupId from Groups g where g.managerFk = @managerFk
declare @aUserNameSurname nvarchar(100)
declare @aUserFk nvarchar(100)
select @aUserNameSurname=userNameSurname , @aUserFk = userId from Users u where u.userLoginName = @asistanceUserLoginName
declare @acount int
set @acount=( select COUNT(*) from Asistance a where a.managerFk =@managerFk and a.userFk = @aUserFk)
if @acount < 0 
begin
insert into Asistance (asistanceNameSurname,managerFk,userFk) values(@aUserNameSurname,@managerFk,@aUserFk)
declare @aId int
select @aId= asistanceId from Asistance a where a.userFk = @aUserFk 
insert into GroupAsistance (groupFk,asistanceFk) values(@mGroupId,@aId)
end
else
begin
declare @asId int
select @asId= asistanceId from Asistance a where a.userFk = @aUserFk 
insert into GroupAsistance (groupFk,asistanceFk) values(@mGroupId,@asId)
end
GO
/****** Object:  StoredProcedure [dbo].[spAddAsistanceWithOrder]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[spAddAsistanceWithOrder] (@userId int , @asistanceUserLoginName nvarchar(100))
AS
declare @managerFk int
declare @mGroupId int
Select @managerFk=managerId from Manager m where m.userFk = @userId
Select @mGroupId=groupId from Groups g where g.managerFk = @managerFk
declare @aUserNameSurname nvarchar(100)
declare @aUserFk nvarchar(100)
select @aUserNameSurname=userNameSurname , @aUserFk = userId from Users u where u.userLoginName = @asistanceUserLoginName
if exists((select * from Asistance a where a.managerFk = @managerFk and a.userFk=@aUserFk))
begin 
declare @aId int
select @aId= asistanceId from Asistance a where a.userFk = @aUserFk 
insert into GroupAsistance (groupFk,asistanceFk) values(@mGroupId,@aId)
end
else 
begin
declare @asId int
select @asId= asistanceId from Asistance a where a.userFk = @aUserFk 
insert into Asistance (asistanceNameSurname,managerFk,userFk) values(@aUserNameSurname,@managerFk,@aUserFk)
insert into GroupAsistance (groupFk,asistanceFk) values(@mGroupId,@asId)
end

GO
/****** Object:  StoredProcedure [dbo].[spAddAsistanceWithOutput]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[spAddAsistanceWithOutput] (@userId int , @asistanceUserLoginName nvarchar(100),@asistanceId int output)
AS
declare @managerFk int
declare @mGroupId int
Select @managerFk=managerId from Manager m where m.userFk = @userId
Select @mGroupId=groupId from Groups g where g.managerFk = @managerFk
declare @aUserNameSurname nvarchar(100)
declare @aUserFk nvarchar(100)
select @aUserNameSurname=userNameSurname , @aUserFk = userId from Users u where u.userLoginName = @asistanceUserLoginName
if exists( select * from Asistance a where a.managerFk = @managerFk and a.userFk=@aUserFk)
begin
declare @aId int
select @aId= asistanceId from Asistance a where a.userFk = @aUserFk 
insert into GroupAsistance (groupFk,asistanceFk) values(@mGroupId,@aId)
set @asistanceId = 0
end
else
begin
declare @asId int
select @asId= asistanceId from Asistance a where a.userFk = @aUserFk 
insert into Asistance (asistanceNameSurname,managerFk,userFk) values(@aUserNameSurname,@managerFk,@aUserFk)
insert into GroupAsistance (groupFk,asistanceFk) values(@mGroupId,@asId)
select @asistanceId=a.asistanceId from Asistance a where a.userFk= @aUserFk and a.managerFk =@managerFk
end;
return @asistanceId
GO
/****** Object:  StoredProcedure [dbo].[spAddUserGroups]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spAddUserGroups] (@userFk int,@groupFk int) as
declare @u int
select @u= userId from Users where userId = @userFk
declare @g int
select @g= groupId from Groups where groupId = @groupFk
insert into UsersGroup (usersFk,groupFk) values (@u,@g)
GO
/****** Object:  StoredProcedure [dbo].[spAddUserGroupsWithLogName]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spAddUserGroupsWithLogName] (@userLogName nvarchar(100),@groupFk int) as
declare @u int
select @u= userId from Users where userLoginName = @userLogName
declare @g int
select @g= groupId from Groups where groupId = @groupFk
insert into UsersGroup (usersFk,groupFk) values (@u,@g)
GO
/****** Object:  StoredProcedure [dbo].[spAsistanceOfManager]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[spAsistanceOfManager](@managerId int)
as
select a.asistanceNameSurname,a.asistanceId,groupId,groupName,m.managerId,userId,userNameSurname,userLoginName,userImageUrl
from Groups g 
inner join Manager m on g.managerFk = m.managerId
inner join Asistance a on m.managerId = a.managerFk 
inner join Users u on u.userId = a.userFk
where  m.managerId = @managerId
GO
/****** Object:  StoredProcedure [dbo].[spCheckGrupAsistance]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spCheckGrupAsistance] (@groupFk int,@aId int)
as
select * from GroupAsistance ug where ug.groupFk=@groupFk and ug.asistanceFk = @aId 

GO
/****** Object:  StoredProcedure [dbo].[spGroupJoin]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spGroupJoin] (@userId int,@groupId int) as
insert into UsersGroup (usersFk,groupFk) values(@userId,@groupId)
GO
/****** Object:  StoredProcedure [dbo].[spGroupsManager]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spGroupsManager] (@userId int)
as 
select groupId,groupName,groupImageUrl,groupCode,managerNameSurname,managerId,userFk from Groups g 
inner join Manager m on g.managerFk = m.managerId inner join Users u on u.userId = m.userFk where u.userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[spLeaveGroup]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spLeaveGroup](@userId int,@groupId int)
as
delete UsersGroup from Groups g
 inner join UsersGroup ug on ug.groupFk = g.groupId 
 inner join Users u on u.userId = ug.usersFk
 where u.userId= @userId and g.groupId=@groupId

GO
/****** Object:  StoredProcedure [dbo].[spMemberofGroup]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[spMemberofGroup] (@id int)
as
select userImageUrl,userLoginName,groupFk,userId from UsersGroup ug  inner join Users u on ug.usersFk = u.userId where ug.groupFk=@id
GO
/****** Object:  StoredProcedure [dbo].[spUserGroup]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spUserGroup](@id int)
as
select groupId,groupName,groupImageUrl from groups g inner join UsersGroup ug 
on g.groupId = ug.groupFk inner join Users u 
on ug.usersFk = u.userId where usersFk=@id

GO
/****** Object:  StoredProcedure [dbo].[userGroupsUsidGrpid]    Script Date: 21.06.2019 04:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[userGroupsUsidGrpid](@id int , @groupid int)
as
select groupId,groupName,groupImageUrl from groups g inner join UsersGroup ug 
on g.groupId = ug.groupFk inner join Users u 
on ug.usersFk = u.userId where usersFk=@id and groupId=@groupid
GO
