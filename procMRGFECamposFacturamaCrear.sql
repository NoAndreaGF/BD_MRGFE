USE [MRGFE]
GO

/****** Object:  StoredProcedure [dbo].[procMRGFECamposFacturamaCrear]    Script Date: 27/02/2023 06:38:54 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[procMRGFECamposFacturamaCrear] 
	@CAMPOSFAID varchar(50) = '',
	@CAMPOSFACAMPO varchar(100) = '',
	@CAMPOSFAETIQUETA varchar(500) = '',
	@CAMPOSFATIPODATO varchar(100) = '',
	@CAMPOSFAARREGLO1 bit = 0,
	@CAMPOSFAVERSION varchar(100) = '',
	@CAMPOSFAOBLIGA1 bit = 0
AS
	/* jme 20230209. Da de alta un Campo Facturama derivado de los parametros del sp*/
	INSERT INTO tblMRGFECamposFacturama
	VALUES( @CAMPOSFAID,
			@CAMPOSFACAMPO,
			@CAMPOSFAETIQUETA, 
			@CAMPOSFATIPODATO,
			@CAMPOSFAARREGLO1,
			@CAMPOSFAVERSION,
			@CAMPOSFAOBLIGA1);
GO


