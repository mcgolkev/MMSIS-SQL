USE [mmsis]
GO
/****** Object:  StoredProcedure [dbo].[spAddContact]    Script Date: 3/30/2020 11:56:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spAddContactWithAddress](
	@ContactFirstName varchar(50),
	@ContactLastName varchar(50),
	@ContactType varchar(50),
	@ContactNote varchar(500),
	@ContactStreet varchar(50),
	@ContactCity varchar(50),
	@ContactState varchar (50))
AS
BEGIN TRANSACTION

BEGIN TRY

INSERT INTO Contact(
[ContactFirstName],
[ContactLastName],
[ContactType],
[ContactNote],
[ContactCreated],
[ContactLastUpdate])

VALUES(
@ContactFirstName,
@ContactLastName,
@ContactType,
@ContactNote,
GetDate(),
GetDate());

declare @fk int = scope_identity();

INSERT INTO Address(
[ContactId],
[AddressStreet1],
[AddressCity],
[AddressState])

VALUES(
@fk,
@ContactStreet,
@ContactCity,
@ContactState)

COMMIT TRANSACTION;

END TRY

BEGIN CATCH

ROLLBACK TRANSACTION;

END CATCH;
