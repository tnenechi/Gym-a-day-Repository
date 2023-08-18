CREATE TABLE [dbo].[Customer]
(
	[U_Name] Varchar(255) NOT NULL,
	[U_Surname] Varchar(255) NOT NULL,
	[Email] Varchar(255) UNIQUE NOT NULL PRIMARY KEY,
	[Gender] Varchar(10) NOT NULL,
	[Password] Varchar(255) NOT NULL 
)
