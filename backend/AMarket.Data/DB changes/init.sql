USE [master]
GO
/****** Object:  Database [AMarket]    Script Date: 17.04.2017 20:57:00 ******/
CREATE DATABASE [AMarket]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AMarket', FILENAME = N'F:\MSSQL Databases\AMarket.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AMarket_log', FILENAME = N'F:\MSSQL Databases\AMarket_log.ldf' , SIZE = 1536KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AMarket] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AMarket].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AMarket] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AMarket] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AMarket] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AMarket] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AMarket] SET ARITHABORT OFF 
GO
ALTER DATABASE [AMarket] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AMarket] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AMarket] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AMarket] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AMarket] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AMarket] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AMarket] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AMarket] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AMarket] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AMarket] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AMarket] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AMarket] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AMarket] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AMarket] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AMarket] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AMarket] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AMarket] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AMarket] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AMarket] SET  MULTI_USER 
GO
ALTER DATABASE [AMarket] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AMarket] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AMarket] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AMarket] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AMarket] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AMarket', N'ON'
GO
USE [AMarket]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 17.04.2017 20:57:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inquiries]    Script Date: 17.04.2017 20:57:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inquiries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[IsClosed] [bit] NOT NULL,
	[Updated] [datetime2](7) NULL,
	[Created] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Inquiries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Messages]    Script Date: 17.04.2017 20:57:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OfferId] [int] NOT NULL,
	[SenderId] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Offers]    Script Date: 17.04.2017 20:57:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InquiryId] [int] NOT NULL,
	[RetailerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[IsRejected] [bit] NOT NULL,
	[IsImageAttached] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 17.04.2017 20:57:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 17.04.2017 20:57:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[CompanyName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[WebSiteUrl] [nvarchar](max) NULL,
	[Guid] [nvarchar](max) NULL,
	[UniqueId] [nvarchar](max) NOT NULL,
	[SecretWord] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[LogoPath] [nvarchar](max) NULL,
	[Created] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_Categories]    Script Date: 17.04.2017 20:57:00 ******/
CREATE NONCLUSTERED INDEX [IX_Categories] ON [dbo].[Categories]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Inquiries_CategoryId]    Script Date: 17.04.2017 20:57:00 ******/
CREATE NONCLUSTERED INDEX [IX_Inquiries_CategoryId] ON [dbo].[Inquiries]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Inquiries_CustomerId]    Script Date: 17.04.2017 20:57:00 ******/
CREATE NONCLUSTERED INDEX [IX_Inquiries_CustomerId] ON [dbo].[Inquiries]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Messages_ChatId]    Script Date: 17.04.2017 20:57:00 ******/
CREATE NONCLUSTERED INDEX [IX_Messages_ChatId] ON [dbo].[Messages]
(
	[OfferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Messages_SenderId]    Script Date: 17.04.2017 20:57:00 ******/
CREATE NONCLUSTERED INDEX [IX_Messages_SenderId] ON [dbo].[Messages]
(
	[SenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offers_InquiryId]    Script Date: 17.04.2017 20:57:00 ******/
CREATE NONCLUSTERED INDEX [IX_Offers_InquiryId] ON [dbo].[Offers]
(
	[InquiryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offers_RetailerId]    Script Date: 17.04.2017 20:57:00 ******/
CREATE NONCLUSTERED INDEX [IX_Offers_RetailerId] ON [dbo].[Offers]
(
	[RetailerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_RoleId]    Script Date: 17.04.2017 20:57:00 ******/
CREATE NONCLUSTERED INDEX [IX_Users_RoleId] ON [dbo].[Users]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF_Offers_IsRejected]  DEFAULT ((0)) FOR [IsRejected]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF_Offers_IsImageAttached]  DEFAULT ((0)) FOR [IsImageAttached]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsImageAttached]  DEFAULT ((0)) FOR [LogoPath]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Categories] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Categories]
GO
ALTER TABLE [dbo].[Inquiries]  WITH CHECK ADD  CONSTRAINT [FK_Inquiries_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Inquiries] CHECK CONSTRAINT [FK_Inquiries_Categories]
GO
ALTER TABLE [dbo].[Inquiries]  WITH CHECK ADD  CONSTRAINT [FK_Inquiries_Users] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Users] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inquiries] CHECK CONSTRAINT [FK_Inquiries_Users]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Offers] FOREIGN KEY([OfferId])
REFERENCES [dbo].[Offers] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Offers]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Users] FOREIGN KEY([SenderId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Users]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_Inquiries] FOREIGN KEY([InquiryId])
REFERENCES [dbo].[Inquiries] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_Inquiries]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_OffersCustomer_Users] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_OffersCustomer_Users]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_OffersRetailer_Users] FOREIGN KEY([RetailerId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_OffersRetailer_Users]
GO
USE [master]
GO
ALTER DATABASE [AMarket] SET  READ_WRITE 
GO