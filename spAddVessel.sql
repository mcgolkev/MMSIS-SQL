-- ===============================
-- AUTHOR     :Kevin McGoldrick
-- CREATE DATE: 4/24/2020
-- PURPOSE     :Stored procedure to add a new vessel to the database
--
-- SPECIAL NOTES: None
-- ===============================
-- Change History:
--
--==================================

USE [mmsis]
GO
/****** Object:  StoredProcedure [dbo].[spAddContact]    Script Date: 1/10/2018 11:33:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spAddVessel](
	@vesselHIN varchar(50),
	@vesselLOAFt int,
	@vesselLOAIn int,
	@vesselBeamFt int,
	@vesselBeamIn int,
	@vesselDraftFt int,
	@vesselDraftIn int,
	@vesselEngineMake varchar(50),
	@vesselEngineHP int,
	@vesselNumOfEngines int,
	@vesselEngineFuel varchar(50),
	@vesselEngineType varchar(50))

AS
BEGIN
INSERT INTO Vessel(
	[VesselHIN],
	[VesselLoaFt],
	[VesselLoaIn],
	[VesselBeamFt],
	[VesselBeamIn],
	[VesselDraftFt],
	[VesselDraftIn],
	[VesselEngineMake],
	[VesselEngineHP],
	[VesselNumOfEngines],
	[VesselFuel],
	[VesselPropulsionType],
	[VesselCreated])

VALUES(
	@vesselHIN ,
	@vesselLOAFt ,
	@vesselLOAIn ,
	@vesselBeamFt ,
	@vesselBeamIn ,
	@vesselDraftFt,
	@vesselDraftIn,
	@vesselEngineMake,
	@vesselEngineHP,
	@vesselNumOfEngines,
	@vesselEngineFuel,
	@vesselEngineType,
	GetDate())
END