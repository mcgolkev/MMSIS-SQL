USE [mmsis]
GO
/****** Object:  StoredProcedure [dbo].[spAddContactType]    Script Date: 4/6/2020 12:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROC [dbo].[spDeleteContactType](
    @ContactType VARCHAR(50))
AS
      BEGIN
		if contact type exist in contact table
		then cancel transaction
		else
			delete contact type from
			contact type table

      END