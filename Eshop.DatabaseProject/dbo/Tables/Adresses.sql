CREATE TABLE [dbo].[Adresses] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [Street]     NVARCHAR (MAX) NOT NULL,
    [City]       NVARCHAR (MAX) NOT NULL,
    [State]      NVARCHAR (MAX) NOT NULL,
    [PostalCode] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Adresses] PRIMARY KEY CLUSTERED ([Id] ASC)
);

