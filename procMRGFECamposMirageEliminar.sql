USE [MRGFE]
GO

/****** Object:  StoredProcedure [dbo].[procMRGFECamposMirageEliminar]    Script Date: 27/02/2023 06:52:30 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[procMRGFECamposMirageEliminar] 
	@CAMPOSMIID varchar(50) = ''
AS
	/* jme 20230209. Elimina un Campo Mirage derivado de los parametros del sp*/
	DELETE tCM
	FROM tblMRGFECamposMirage tCM
	WHERE CAMPOSMIID = @CAMPOSMIID;
GO


