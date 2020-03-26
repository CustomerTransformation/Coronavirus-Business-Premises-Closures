USE [FStepCommunity_prod]
GO

/****** Object:  Table [dbo].[coronavirusBusinessTrading]    Script Date: 26/03/2020 16:47:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[coronavirusBusinessTrading](
	[ID_query] [int] IDENTITY(1,1) NOT NULL,
	[reference] [varchar](50) NOT NULL,
	[Title] [varchar](10) NULL,
	[firstName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
	[address] [varchar](1000) NULL,
	[phoneNumber] [varchar](50) NULL,
	[mobileNumber] [varchar](50) NULL,
	[email] [varchar](255) NULL,
	[businessName] [varchar](255) NULL,
	[dateSeenTrading] [date] NULL,
	[tradingNow] [varchar](10) NULL,
	[BussinessAddress] [varchar](1000) NULL,
	[comments] [varchar](max) NULL,
	[status] [varchar](50) NULL,
	[createdDate] [datetime] NOT NULL,
	[modifiedBy] [varchar](50) NULL,
	[modifiedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[coronavirusBusinessTrading] ADD  CONSTRAINT [DF_coronavirusBusinessTrading_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO


