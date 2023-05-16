CREATE TABLE [dbo].[Products] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [ProductName]     NVARCHAR (MAX) NOT NULL,
    [Description]     NVARCHAR (MAX) NOT NULL,
    [Price]           FLOAT (53)     NOT NULL,
    [Stock]           INT            NOT NULL,
    [ProductImageUrl] NVARCHAR (MAX) NOT NULL,
    [BrandId]         INT            NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brands] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Products_BrandId]
    ON [dbo].[Products]([BrandId] ASC);

