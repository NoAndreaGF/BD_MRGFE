USE [MRGFE]
GO

/****** Object:  StoredProcedure [dbo].[procMRGFEEmisorCrear]    Script Date: 27/02/2023 06:31:43 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[procMRGFEEmisorCrear] 
	@EMISORRFC varchar(50) = '',
	@EMISORRAZSOCIAL varchar(500) = '',
	@EMISORESTATUS varchar(50) = '',
	@EMISORREGFISCAL varchar(50) = '',
	@EMISORCORREO varchar(100) = '',
	@EMISORLOGOURL varchar(500) = '',
	@EMISORCODPOSTAL varchar(20) = '',
	@EMISORMUNICIPIO varchar(100) = '',
	@EMISORESTADO varchar(50) = '',
	@EMISORCOLONIA varchar(100) = '',
	@EMISORCALLE varchar(100) = '',
	@EMISORNOEXTERIOR varchar(30) = '',
	@EMISORNOINTERIOR varchar(30) = '',
	@EMISORFOLIOINIC varchar(50) = ''
AS
	/* jme 20230209. Da de alta un Emisor derivado de los parametros del sp*/
	INSERT INTO tblMRGFEEmisor
	VALUES( @EMISORRFC,
			@EMISORRAZSOCIAL,
			@EMISORESTATUS, 
			@EMISORREGFISCAL,
			@EMISORCORREO,
			@EMISORLOGOURL,
			@EMISORCODPOSTAL,
			@EMISORMUNICIPIO,
			@EMISORESTADO,
			@EMISORCOLONIA,
			@EMISORCALLE,
			@EMISORNOEXTERIOR,
			@EMISORNOINTERIOR,
			@EMISORFOLIOINIC);
GO


