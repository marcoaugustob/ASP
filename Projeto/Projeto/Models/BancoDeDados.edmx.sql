
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/30/2017 17:21:20
-- Generated from EDMX file: C:\Users\marco\Source\Repos\ASP\Projeto\Projeto\Models\BancoDeDados.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [master];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'JogadorSet'
CREATE TABLE [dbo].[JogadorSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Altura] nvarchar(max)  NOT NULL,
    [Peso] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PosicaoSet'
CREATE TABLE [dbo].[PosicaoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Funcao] nvarchar(max)  NOT NULL,
    [JogadorId] int  NOT NULL
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

-- Creating foreign key on [JogadorId] in table 'PosicaoSet'
ALTER TABLE [dbo].[PosicaoSet]
ADD CONSTRAINT [FK_JogadorPosicao]
    FOREIGN KEY ([JogadorId])
    REFERENCES [dbo].[JogadorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JogadorPosicao'
CREATE INDEX [IX_FK_JogadorPosicao]
ON [dbo].[PosicaoSet]
    ([JogadorId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------