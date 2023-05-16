CREATE TABLE [dbo].[AspNetUsers] (
    [Id]                   NVARCHAR (450)     NOT NULL,
    [Email]                NVARCHAR (256)     NULL,
    [PhoneNumber]          NVARCHAR (MAX)     NULL,
    [Name]                 NVARCHAR (MAX)     NULL,
    [Surname]              NVARCHAR (MAX)     NULL,
    [CreatedDate]          DATETIME2 (7)      NULL,
    [Subscribed]           BIT                NULL,
    [AddressId]            INT                NULL,
    [AccessFailedCount]    INT                DEFAULT ((0)) NOT NULL,
    [ConcurrencyStamp]     NVARCHAR (MAX)     NULL,
    [EmailConfirmed]       BIT                DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [LockoutEnabled]       BIT                DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [LockoutEnd]           DATETIMEOFFSET (7) NULL,
    [NormalizedEmail]      NVARCHAR (256)     NULL,
    [NormalizedUserName]   NVARCHAR (256)     NULL,
    [PasswordHash]         NVARCHAR (MAX)     NULL,
    [PhoneNumberConfirmed] BIT                DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [SecurityStamp]        NVARCHAR (MAX)     NULL,
    [TwoFactorEnabled]     BIT                DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [UserName]             NVARCHAR (256)     NULL,
    [RefreshToken]         NVARCHAR (MAX)     NULL,
    [TokenCreated]         DATETIME2 (7)      NULL,
    [TokenExpires]         DATETIME2 (7)      NULL,
    CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AspNetUsers_Adresses_AddressId] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Adresses] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_AddressId]
    ON [dbo].[AspNetUsers]([AddressId] ASC);


GO
CREATE NONCLUSTERED INDEX [EmailIndex]
    ON [dbo].[AspNetUsers]([NormalizedEmail] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex]
    ON [dbo].[AspNetUsers]([NormalizedUserName] ASC) WHERE ([NormalizedUserName] IS NOT NULL);

