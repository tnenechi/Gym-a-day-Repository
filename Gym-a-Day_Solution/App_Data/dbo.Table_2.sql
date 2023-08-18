CREATE TABLE [dbo].[Product_Invoice]
(
	[Id] INT NOT NULL Unique PRIMARY KEY,
	[Product_ID] int NOT NULL,
	[User_Email] Varchar(255) NOT NULL,
	[DOP] Date NOT NULL,
	FOREIGN KEY (Product_ID) references Product(Id),
	FOREIGN KEY (User_Email) references User(Email),

)
