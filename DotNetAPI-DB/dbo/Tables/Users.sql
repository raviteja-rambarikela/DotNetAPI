CREATE TABLE [dbo].[Users] (
    [UserId]      INT            IDENTITY (1, 1) NOT NULL,
    [Username]    NVARCHAR (100) NOT NULL,
    [Password]    NVARCHAR (100) NOT NULL,
    [firstname]   NVARCHAR (100) NULL,
    [lastname]    NVARCHAR (100) NULL,
    [gender]      NVARCHAR (100) NULL,
    [phonenumber] NVARCHAR (15)  NULL,
    [IsActive]    BIT            NULL,
    [email]       VARCHAR (30)   NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC),
    UNIQUE NONCLUSTERED ([Username] ASC)
);

