USE [tempmms]
GO
/****** Object:  StoredProcedure [dbo].[spSelectAllUSStates]    Script Date: 9/25/2018 4:19:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spSelectAllUSStates] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT *
	FROM dbo.States
	ORDER BY StateName
END
