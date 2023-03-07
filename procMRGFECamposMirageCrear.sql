USE [MRGFE]
GO

/****** Object:  StoredProcedure [dbo].[procMRGFECamposMirageCrear]    Script Date: 27/02/2023 06:45:56 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[procMRGFECamposMirageCrear] 
	@CAMPOSMIID varchar(50) = '',
	@CAMPOSMICAMPO varchar(100) = '',
	@CAMPOSMIETIQUETA varchar(500) = '',
	@CAMPOSMITIPODATO varchar(100) = '',
	@CAMPOSMIARREGLO1 bit = 0,
	@CAMPOSMIVERSION varchar(100) = '',
	@CAMPOSMIOBLIGA1 bit = 0
AS
	/* jme 20230209. Da de alta un Campo Mirage derivado de los parametros del sp*/
	INSERT INTO tblMRGFECamposMirage
	VALUES( @CAMPOSMIID,
			@CAMPOSMICAMPO,
			@CAMPOSMIETIQUETA, 
			@CAMPOSMITIPODATO,
			@CAMPOSMIARREGLO1,
			@CAMPOSMIVERSION,
			@CAMPOSMIOBLIGA1);
GO


