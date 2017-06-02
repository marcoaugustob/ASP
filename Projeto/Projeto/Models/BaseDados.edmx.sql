
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/01/2017 21:29:26
-- Generated from EDMX file: C:\Users\marco\Source\Repos\ASP\Projeto\Projeto\Models\BaseDados.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Times];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_PosicaoJogador]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JogadorSet] DROP CONSTRAINT [FK_PosicaoJogador];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[JogadorSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JogadorSet];
GO
IF OBJECT_ID(N'[dbo].[PosicaoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PosicaoSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'JogadorSet'
CREATE TABLE [dbo].[JogadorSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Time] nvarchar(max)  NOT NULL,
    [PosicaoId] int  NOT NULL
);
GO

-- Creating table 'PosicaoSet'
CREATE TABLE [dbo].[PosicaoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Funcao] nvarchar(max)  NOT NULL,
    [DescTati] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'JogadorSet'
ALTER TABLE [dbo].[JogadorSet]
ADD CONSTRAINT [PK_JogadorSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PosicaoSet'
ALTER TABLE [dbo].[PosicaoSet]
ADD CONSTRAINT [PK_PosicaoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [PosicaoId] in table 'JogadorSet'
ALTER TABLE [dbo].[JogadorSet]
ADD CONSTRAINT [FK_PosicaoJogador]
    FOREIGN KEY ([PosicaoId])
    REFERENCES [dbo].[PosicaoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PosicaoJogador'
CREATE INDEX [IX_FK_PosicaoJogador]
ON [dbo].[JogadorSet]
    ([PosicaoId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------