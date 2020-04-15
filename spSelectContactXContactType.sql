
-- =============================================
-- Author:		K MCGOLDRICK
-- Create date: 4/15/20
-- Description:	SELECT CONTACTS BY CONTACT TYPE
--				INPUT PARAMETER IS CONTACT TYPE
-- =============================================

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE spContactsXContactType(
	@ContactTypeName varchar(50))

AS
	
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT ContactTypeName
	FROM ContactTypeList
	WHERE ContactTypeName = @ContactTypeName
END
GO
