USE [MRGFE]
GO

/****** Object:  StoredProcedure [dbo].[procMRGFECamposFacturamaEliminar]    Script Date: 27/02/2023 06:43:14 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[procMRGFECamposFacturamaEliminar] 
	@CAMPOSFAID varchar(50) = ''
AS
	/* jme 20230209. Elimina un Campo Facturama derivado de los parametros del sp*/
	DELETE tCF
	FROM tblMRGFECamposFacturama tCF
	WHERE CAMPOSFAID = @CAMPOSFAID;
GO