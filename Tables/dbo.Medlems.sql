CREATE TABLE [dbo].[Medlems] (
  [Medlem_Id] [uniqueidentifier] NOT NULL,
  [Fornavn] [nvarchar](max) NULL,
  [Etternavn] [nvarchar](max) NULL,
  [Bosted] [nvarchar](max) NULL,
  [MobilTlf] [int] NOT NULL,
  [Email] [nvarchar](max) NULL,
  [Fodselsdato] [datetime2] NOT NULL,
  [CurrentKontintId] [int] NOT NULL,
  CONSTRAINT [PK_Medlems] PRIMARY KEY CLUSTERED ([Medlem_Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_Medlems_CurrentKontintId]
  ON [dbo].[Medlems] ([CurrentKontintId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[Medlems]
  ADD CONSTRAINT [FK_Medlems_Kontingents_CurrentKontintId] FOREIGN KEY ([CurrentKontintId]) REFERENCES [dbo].[Kontingents] ([KontintId]) ON DELETE CASCADE
GO