CREATE TABLE [dbo].[Booking]
(
	[Id] INT NOT NULL UNique PRIMARY KEY,
	[Time] Datetime NOT NULL,
	[Email] Varchar(255) NOT NULL,
	[Club] varchar(255) NOT NULL,
	[Cost] money NOT NULL,
	[Status] varchar(255) NOT NULL,
	FOREIGN KEY (Email) references Customer(Email),

)
