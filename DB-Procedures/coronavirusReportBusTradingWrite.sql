USE [FStepCommunity_prod]
GO

/****** Object:  StoredProcedure [dbo].[coronavirusReportBusTradingWrite]    Script Date: 26/03/2020 16:49:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniel Gregory
-- Create date: 26/03/2020
-- Description:	Store submitted information in the database table
-- =============================================
CREATE PROCEDURE [dbo].[coronavirusReportBusTradingWrite] 
				@reference as varchar(50)
				,@title as varchar(10)
				,@firstName as varchar(50)
				,@lastName as varchar(50)
				,@address as varchar(1000)
				,@phoneNumber as varchar(50)
				,@mobile as varchar(50)
				,@email as varchar(255)
				,@businessName as varchar(255)
				,@dateSeenTrading as date
				,@tradingNow as varchar(10)
				,@businessAddress as varchar(1000)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [dbo].[coronavirusBusinessTrading]
			   ([reference]
			   ,[Title]
			   ,[firstName]
			   ,[lastName]
			   ,[address]
			   ,[phoneNumber]
			   ,[mobileNumber]
			   ,[email]
			   ,[businessName]
			   ,[dateSeenTrading]
			   ,[tradingNow]
			   ,[BussinessAddress]
			   ,[status]
			   ,[createdDate])
		 VALUES
			   (@reference
			   ,@title
			   ,@firstName
			   ,@lastName
			   ,@address
			   ,@phoneNumber
			   ,@mobile
			   ,@email
			   ,@businessName
			   ,@dateSeenTrading
			   ,@tradingNow
			   ,@businessAddress
			   ,'submitted'
			   ,GETDATE())


END
GO


