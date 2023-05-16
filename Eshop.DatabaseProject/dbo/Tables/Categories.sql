CREATE TABLE [dbo].[Categories] (
    [Id]                  INT            IDENTITY (1, 1) NOT NULL,
    [CategoryName]        NVARCHAR (MAX) NOT NULL,
    [CategoryDescription] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([Id] ASC)
);

