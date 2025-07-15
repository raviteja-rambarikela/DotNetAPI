CREATE TABLE [dbo].[Products] (
    [ProductId] INT             IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (100)  NOT NULL,
    [Price]     DECIMAL (18, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC)
);

