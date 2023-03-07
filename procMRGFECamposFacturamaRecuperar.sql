USE [MRGFE]
GO

/****** Object:  StoredProcedure [dbo].[procMRGFECamposFacturamaRecuperar]    Script Date: 27/02/2023 06:40:37 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[procMRGFECamposFacturamaRecuperar]
	@accion int = 0,
	@CAMPOSFAID varchar(50) = ''
AS
	/* jme 20230215. Consultar los Campos Facturama registrados*/
	IF (@accion = 1)
		SELECT 
			tCF.CAMPOSFAID,
			tCF.CAMPOSFACAMPO,
			tCF.CAMPOSFAETIQUETA,
			tCF.CAMPOSFATIPODATO,
			tCF.CAMPOSFAARREGLO1,
			tCF.CAMPOSFAVERSION,
			tCF.CAMPOSFAOBLIGA1
		FROM tblMRGFECamposFacturama tCF;
	/* jme 20230209. Consultar los Campos Facturama por ID del parametro de busqueda*/
	IF (@accion = 2)
		SELECT 
			tCF.CAMPOSFAID,
			tCF.CAMPOSFACAMPO,
			tCF.CAMPOSFAETIQUETA,
			tCF.CAMPOSFATIPODATO,
			tCF.CAMPOSFAARREGLO1,
			tCF.CAMPOSFAVERSION,
			tCF.CAMPOSFAOBLIGA1
		FROM tblMRGFECamposFacturama tCF
		WHERE tCF.CAMPOSFAID = @CAMPOSFAID;
GO
