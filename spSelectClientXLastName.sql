USE [tempmms]
GO
/****** Object:  StoredProcedure [dbo].[spSelectClientNameXLastName]    Script Date: 1/10/2018 4:32:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[spSelectClientNameXLastName]
	@LastName varchar(50)

AS

SELECT ClientLn, ClientFn, ClientCity, ClientState, ClientId
FROM ClientNa
WHERE (ClientLn like +@LastName+'%')
ORDER BY ClientLn
