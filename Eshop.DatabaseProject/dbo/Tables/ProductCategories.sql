CREATE TABLE [dbo].[ProductCategories] (
    [CategoryId] INT NOT NULL,
    [ProductId]  INT NOT NULL,
    CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED ([CategoryId] ASC, [ProductId] ASC),
    CONSTRAINT [FK_ProductCategories_Categories_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ProductCategories_Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ProductCategories_ProductId]
    ON [dbo].[ProductCategories]([ProductId] ASC);

