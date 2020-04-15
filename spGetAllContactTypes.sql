USE [mmsis]
GO
/****** Object:  StoredProcedure [dbo].[spGetAllContactTypes]    Script Date: 3/31/2020 4:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spGetAllContactTypes]
AS
BEGIN
SELECT * FROM ContactTypesList;
END