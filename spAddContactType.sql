USE [mmsis]
GO
/****** Object:  StoredProcedure [dbo].[spAddContactType]    Script Date: 4/6/2020 12:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROC [dbo].[spAddContactType](
    @ContactType VARCHAR(50))
AS
      BEGIN
		INSERT INTO ContactTypesList(
		[ContactType])

		VALUES(
		@ContactType);
      END