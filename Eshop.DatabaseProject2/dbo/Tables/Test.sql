CREATE TABLE [dbo].[Test] (
    [Id]       INT            NULL,
    [TestCase] VARCHAR (1000) NULL
);


GO
CREATE NONCLUSTERED INDEX [idx_tst]
    ON [dbo].[Test]([TestCase] ASC);

