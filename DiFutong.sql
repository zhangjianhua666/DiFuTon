use master
go
drop database DiFutong
go
--创建数据库DiFutong
CREATE DATABASE DiFutong
go
--在数据库DiFutong里开始建表
use DiFutong
go
--创建管理员表
CREATE TABLE Admin
(
name nvarchar(20) not null,--用户名
adminID nvarchar(20) not null,--账号
adminPwd nvarchar(20) not null--密码
 
)
--创建用户表
CREATE TABLE [User]
(
name nvarchar(20) not null,--用户名
UserID nvarchar(20) not null,--账号
UserPwd nvarchar(20) not null--密码
 
)
--创建投胎类型表
CREATE TABLE Reborn
(

rebornID int identity(1,1) not null PRIMARY KEY ,--投胎号 
rebornType nvarchar(20) not null--投胎类型
)
--创建地狱刑法表
CREATE TABLE Penal(
penalID int identity(1,1) not null PRIMARY KEY, --刑罚号
penalType   nvarchar(20) not null,--刑罚类型
penalTime   nvarchar(20)not null--刑罚时间
 )
 --创建地狱服刑人员表
 CREATE TABLE Serving(
 servingID  int identity(1,1) not null PRIMARY KEY,--编号
 servingName   nvarchar(20),--姓名
 penalType  nvarchar(20),--刑罚类型
 servingTime  nvarchar(20),--刑罚时间
 jailtime  nvarchar(20) default getdate(),--入狱时间
 timeRemaining  nvarchar(20)--剩余时间
 )

 --创建生死簿表
 CREATE TABLE LifeDeathBook(
LifeDeathBookID   int identity(1,1) not null PRIMARY KEY,--编号
name  nvarchar(20), --姓名 
rebornType nvarchar(20), --投胎类型
lifeSpan nvarchar(20),--寿命
birthday nvarchar(20) default getdate(),  --出生时间
TimeRemaining nvarchar(20),--剩余时间
dieType nvarchar(30),--死亡方式
  )
  --创建地府工作人员表
 CREATE TABLE worker(
workerID   int  identity(1,1) not null PRIMARY KEY , --主键，自增，非空
workerName nvarchar(20),--姓名 
posts nvarchar(20),--职位
 )