USE [MRGFE]
GO

/****** Object:  StoredProcedure [dbo].[procMRGFECamposMirageRecuperar]    Script Date: 27/02/2023 06:50:51 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[procMRGFECamposMirageRecuperar]
	@accion int = 0,
	@CAMPOSMIID varchar(50) = ''
AS
	/* jme 20230215. Consultar los Campos Mirage registrados*/
	IF (@accion = 1)
		SELECT
			tCM.CAMPOSMIID,
			tCM.CAMPOSMICAMPO,
			tCM.CAMPOSMIETIQUETA,
			tCM.CAMPOSMITIPODATO,
			tCM.CAMPOSMIARREGLO1,
			tCM.CAMPOSMIVERSION,
			tCM.CAMPOSMIOBLIGA1
		FROM tblMRGFECamposMirage tCM;
	/* jme 20230209. Consultar los Campos Mirage por ID del parametro de busqueda*/
	IF (@accion = 2)
		SELECT 
			tCM.CAMPOSMIID,
			tCM.CAMPOSMICAMPO,
			tCM.CAMPOSMIETIQUETA,
			tCM.CAMPOSMITIPODATO,
			tCM.CAMPOSMIARREGLO1,
			tCM.CAMPOSMIVERSION,
			tCM.CAMPOSMIOBLIGA1
		FROM tblMRGFECamposMirage tCM
		WHERE tCM.CAMPOSMIID = @CAMPOSMIID;
GO
