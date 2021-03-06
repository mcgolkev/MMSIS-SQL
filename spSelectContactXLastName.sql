USE [mmsis]
GO
/****** Object:  StoredProcedure [dbo].[spSelectContactNameXLastName]    Script Date: 1/10/2018 4:32:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[spSelectContactNameXLastName]
	@LastName varchar(50)

AS

SELECT ContactFirstName, ContactLastName, ContactId
FROM Contact
WHERE (ContactLastName like +@LastName+'%')
ORDER BY ContactLastName
