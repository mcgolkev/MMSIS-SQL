
CREATE DATABASE mmsis
GO

USE mmsis
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE Contact
(ContactId			Int Primary Key Identity(1,1),
ContactFirstName	VARCHAR(100),
ContactLastName		VARCHAR(100),
ContactCoName		VARCHAR(100),
ContactJobTitle		VARCHAR(100),
ContactCreated		DATETIME DEFAULT getdate(),
ContactLastUpdate	DATETIME NOT NULL,
ContactType			VARCHAR(100),
ContactNote			VARCHAR(2000))

CREATE TABLE ContactTypesList
(ContactTypeId		Int Primary Key Identity(1,1),
ContactType			VARCHAR(100)
UNIQUE (ContactType))

CREATE TABLE Address
(AddressId			Int Primary Key Identity(1,1),
AddressDesc			varchar(100),
AddressStreet1		varchar(100),
AddressStreet2		varchar(100),
AddressCity			varchar(100),
AddressState		varchar(100),
AddressStateAbbr	varchar(25),
AddressZip			varchar(25),
AddressCountry		varchar(100),
AddressNote			varchar(1000),
AddressLastUpdate	datetime,
AddressMailingAddr	bit,
ContactId			INT  NOT NULL FOREIGN KEY REFERENCES Contact(ContactId) ON DELETE CASCADE ON UPDATE CASCADE,
AddressCreated		DATETIME DEFAULT getdate())


CREATE TABLE Phone
(PhoneId			Int Primary Key Identity(1,1),
PhoneDesc			varchar(100),
PhoneCountryCode	varchar(25),
PhoneAreaCode		varchar(25),
PhoneNumber			varchar(25),
PhoneExtension		varchar(25),
ContactId			INT  NOT NULL FOREIGN KEY REFERENCES Contact(ContactId) ON DELETE CASCADE ON UPDATE CASCADE,
PhoneCreated		DATETIME DEFAULT getdate())


CREATE TABLE Vessel
(VesselId			Int Primary Key Identity(1,1),
VesselLoaFt			INT NOT NULL,
VesselLoaIn			INT,
VesselBeamFt		INT,
VesselBeamIn		INT,
VesselDraftFt		INT,
VesselDraftIn		INT,
VesselDisplacment	INT,
VesselEngineMake	varchar(200),
VesselEngineModel	varchar(200),
VesselEngineYear	varchar(25),
VesselEngineHP		INT,
VesselNumOfEngines	INT,
VesselFuel			varchar(100),
VesselPropulsionType	varchar(200),
VesselName			varchar(200),
VesselHIN			varchar(200),
VesselUSCGDoc		INT,
VesselStateRegi		varchar(100),
VesselMfgNum		varchar(100),
VesselModelYr		INT,
VesselStreet1		varchar(100),
VesselStreet2		varchar(100),
VesselCity			varchar(100),
VesselState			varchar(100),
VesselStateAbbr		varchar(25),
VesselZip			varchar(25),
VesselNote			varchar(2000),
VesselCreated		DATETIME DEFAULT getdate())


CREATE TABLE Job
(JobId			Int Primary Key Identity(1,1),
ContactId		INT NOT NULL FOREIGN KEY REFERENCES Contact(ContactId) ON DELETE NO ACTION ON UPDATE NO ACTION,
VesselId		INT NOT NULL FOREIGN KEY REFERENCES Vessel(VesselId) ON DELETE NO ACTION ON UPDATE NO ACTION,
--InvoiceId		UNIQUEIDENTIFIER NOT NULL FOREIGN KEY REFERENCES Invoice(InvoiceId) ON DELETE CASCADE ON UPDATE NO ACTION,
JobInspDate		DATETIME,
JobRequestDate	DATETIME,
JobType			varchar(100),
JobStartTime	varchar(100),
JobContact		INT  FOREIGN KEY REFERENCES Contact(ContactId) ON DELETE NO ACTION ON UPDATE NO ACTION,
JobNote			varchar(2000),
JobCreated		DATETIME DEFAULT getdate())

CREATE TABLE Invoice
(InvoiceId			Int Primary Key Identity(1,1),
InvoiceLineItem		varchar(100),
InvoiceLineDesc		varchar(100),
InvoiceLineAmt		varchar(100),
AddressNote			varchar(1000),
InvoiceLastUpdate	datetime,
JobId				INT  NOT NULL FOREIGN KEY REFERENCES Job(JobId) ON DELETE CASCADE ON UPDATE CASCADE,
InvoiceCreated		DATETIME DEFAULT getdate())

create table State
(
--StateId			UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, >>>>DON'T NEED STATE GUID AT THIS TIME.
Name			varchar(100) NOT NULL,
StateAbbr		varchar(10))

INSERT INTO State
(Name, StateAbbr)
VALUES
('Alabama', 'AL'),
('Alaska', 'AK'),
('Arizona', 'AZ'),
('Arkansas', 'AR'),
('California', 'CA'),
('Colorado', 'CO'),
('Connecticut', 'CT'),
('Delaware', 'DE'),
('District of Columbia', 'DC'),
('Florida', 'FL'),
('Georgia', 'GA'),
('Hawaii', 'HI'),
('Idaho', 'ID'),
('Illinois', 'IL'),
('Indiana', 'IN'),
('Iowa', 'IA'),
('Kansas', 'KS'),
('Kentucky', 'KY'),
('Louisiana', 'LA'),
('Maine', 'ME'),
('Maryland', 'MD'),
('Massachusetts', 'MA'),
('Michigan', 'MI'),
('Minnesota', 'MN'),
('Mississippi', 'MS'),
('Missouri', 'MO'),
('Montana', 'MT'),
('Nebraska', 'NE'),
('Nevada', 'NV'),
('New Hampshire', 'NH'),
('New Jersey', 'NJ'),
('New Mexico', 'NM'),
('New York', 'NY'),
('North Carolina', 'NC'),
('North Dakota', 'ND'),
('Ohio', 'OH'),
('Oklahoma', 'OK'),
('Oregon', 'OR'),
('Pennsylvania', 'PA'),
('Rhode Island', 'RI'),
('South Carolina', 'SC'),
('South Dakota', 'SD'),
('Tennessee', 'TN'),
('Texas', 'TX'),
('Utah', 'UT'),
('Vermont', 'VT'),
('Virginia', 'VA'),
('Washington', 'WA'),
('West Virginia', 'WV'),
('Wisconsin', 'WI'),
('Wyoming', 'WY')
;
