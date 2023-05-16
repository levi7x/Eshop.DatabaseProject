CREATE TABLE [dbo].[Brands] (
    [Id]               INT            IDENTITY (1, 1) NOT NULL,
    [BrandName]        NVARCHAR (MAX) NOT NULL,
    [BrandDescription] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED ([Id] ASC)
);

