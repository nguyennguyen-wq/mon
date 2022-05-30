CREATE TABLE [dbo].[Kontingents] (
  [KontintId] [int] IDENTITY,
  [Name] [nvarchar](50) NULL,
  CONSTRAINT [PK_Kontingents] PRIMARY KEY CLUSTERED ([KontintId])
)
ON [PRIMARY]
GO