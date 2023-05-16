CREATE TABLE [dbo].[Orders] (
    [Id]               INT            IDENTITY (1, 1) NOT NULL,
    [CreatedOrderDate] DATETIME2 (7)  NOT NULL,
    [Status]           INT            NOT NULL,
    [UserId]           NVARCHAR (450) NULL,
    [IsOrderActive]    BIT            DEFAULT (CONVERT([bit],(0))) NOT NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Orders_UserId]
    ON [dbo].[Orders]([UserId] ASC);

