BEGIN TRY EXEC(N'ALTER TABLE ONY_GUNIZIN ADD RET_ACIK varchar(300), CREATEUSER varchar(100)')
END TRY BEGIN CATCH END CATCH
BEGIN TRY  EXEC(N'ALTER TABLE ONY_SAATIZIN ADD RET_ACIK varchar(300), CREATEUSER varchar(100)') 
END TRY BEGIN CATCH END CATCH
BEGIN TRY EXEC(N'ALTER TABLE ONY_MESAI ADD RET_ACIK varchar(300), CREATEUSER varchar(100)')
END TRY BEGIN CATCH END CATCH
BEGIN TRY EXEC(N'ALTER TABLE ONY_VARDIYA ADD RET_ACIK varchar(300), CREATEUSER varchar(100)')
END TRY BEGIN CATCH END CATCH
BEGIN TRY EXEC(N'ALTER TABLE ONY_HAREKET ADD RET_ACIK varchar(300), CREATEUSER varchar(100)')
END TRY BEGIN CATCH END CATCH
BEGIN TRY EXEC(N'ALTER TABLE ONY_POSTA ADD RET_ACIK varchar(300), CREATEUSER varchar(100)')
END TRY BEGIN CATCH END CATCH
BEGIN TRY EXEC(N'ALTER TABLE PERSONEL_AMIR ADD DOKUMAN_ONAY bit DEFAULT null')
END TRY BEGIN CATCH END CATCH
BEGIN TRY EXEC(N'ALTER TABLE PERSONEL1 ADD DIL int DEFAULT null')
END TRY BEGIN CATCH END CATCH
BEGIN TRY EXEC(N'ALTER TABLE PERSONEL_AMIR ADD DIL int DEFAULT null')
END TRY BEGIN CATCH END CATCH

BEGIN TRY EXEC(N'ALTER TABLE ONY_LOG_ ADD DIL int DEFAULT null')
END TRY BEGIN CATCH END CATCH
BEGIN TRY EXEC(N'ALTER TABLE PERSONEL_AMIR ADD DIL int DEFAULT null')
END TRY BEGIN CATCH END CATCH
BEGIN TRY EXEC(N'ALTER TABLE PERSONEL_AMIR ADD DIL int DEFAULT null')
END TRY BEGIN CATCH END CATCH
BEGIN TRY EXEC(N'ALTER TABLE PERSONEL_AMIR ADD DIL int DEFAULT null')
END TRY BEGIN CATCH END CATCH
BEGIN TRY EXEC(N'ALTER TABLE PERSONEL_AMIR ADD DIL int DEFAULT null')
END TRY BEGIN CATCH END CATCH
BEGIN TRY EXEC(N'ALTER TABLE PERSONEL_AMIR ADD POST_USER_HAREKET bit DEFAULT null')
END TRY BEGIN CATCH END CATCH
BEGIN TRY EXEC(N'ALTER TABLE PERSONEL_AMIR ADD POST_USER_POSTA bit DEFAULT null')
END TRY BEGIN CATCH END CATCH
BEGIN TRY EXEC(N'ALTER TABLE PERSONEL_AMIR ADD POST_USER_VARDIYA bit DEFAULT null')
END TRY BEGIN CATCH END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_LANGUAGE_UPDATE] 	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_MESAI_SERVICE_SELECT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_LANGUAGE_SELECT]  	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_TRIGGER_SELECT] 	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_TRIGGER_UPDATE] 	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_DOC_AUTH]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_DOCUMENT_DELETE]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_DOCUMENT_INSERT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_DOCUMENT_SELECT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_DOCUMENT_SELECT_USER]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_DOCUMENT_TYPES]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_DASHREPORT_GET]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_POSTA_INSERT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_APPROVE_AUTH_NEW]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_APPROVE_GET_NEW]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_CALISMA_SELECT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_CONTROL_DEMAND]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_GET_PASSWORD]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[WR_GIZ_OTE]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_GET_TEMPLATE]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_GUNIZIN_INSERT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_HAREKET_INSERT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_IZIN_INSERT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_IZIN_REPORT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_IZIN_UPDATE]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_LABEL_SELECT]  	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_LICENSE_INSERT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_LICENSE_SELECT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_LIMIT_CONTROL] 	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_LOGIN_NEW]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_MAIL_INSERT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_MESAI_INSERT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_PARAMETER_INSERT]  	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_PARAMETER_SELECT]  	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_PERSONEL_GET_NEW]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_PERSONEL_GET_LIMITS]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_PERSONEL_GET_VRD_NEW]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_POSTA_SELECT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_REASON_SELECT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_REPASSWORD]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_SAATIZIN_INSERT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_SHIFTS_SELECT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_VARDIYA_INSERT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_VARDIYA_SELECT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_VEKALET_DELETE]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_VEKALET_INSERT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[BCS_VEKALET_SELECT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[ONY_USERTIPI]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[WR_YETKI]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[WR_ARV]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[WR_GIZ]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[WR_SIZ]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	 [dbo].[WR_IZN_LMT]	END TRY	BEGIN CATCH	END CATCH

IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'ONY_VEKALET'))
BEGIN

/****** Object:  Table [dbo].[ONY_VEKALET]    Script Date: 11.02.2022 17:25:27 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[ONY_VEKALET](
	[KLADI] [varchar](50) NULL,
	[ISIM] [varchar](50) NULL,
	[BASTARIH] [datetime] NULL,
	[BITTARIH] [datetime] NULL,
	[VEKILADI] [varchar](50) NULL,
	[VEKILISIM] [varchar](50) NULL,
	[IDNO] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ONY_VEKALET] PRIMARY KEY CLUSTERED 
(
	[IDNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


END


IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'ONY_FORM'))
BEGIN

/****** Object:  Table [dbo].[ONY_FORM]    Script Date: 11.02.2022 17:27:35 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[ONY_FORM](
	[IDNO] [int] IDENTITY(1,1) NOT NULL,
	[CLKODU] [int] NULL,
	[GUNLUK_IZIN] [varchar](max) NULL,
	[SAATLIK_IZIN] [varchar](max) NULL,
	[MESAI] [varchar](max) NULL,
 CONSTRAINT [PK_ONY_FORM] PRIMARY KEY CLUSTERED 
(
	[IDNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


END

IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'ONY_FORM_ALAN'))
BEGIN

/****** Object:  Table [dbo].[ONY_FORM_ALAN]    Script Date: 11.02.2022 17:28:14 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[ONY_FORM_ALAN](
	[IDNO] [int] IDENTITY(1,1) NOT NULL,
	[CLKODU] [int] NULL,
	[FORM_TIPI] [varchar](50) NULL,
	[FORM_ALAN] [varchar](50) NULL,
	[SORGU] [varchar](max) NULL,
 CONSTRAINT [PK_ONY_FORM_ALAN] PRIMARY KEY CLUSTERED 
(
	[IDNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

END




IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'ONY_VARDIYA'))
BEGIN

/****** Object:  Table [dbo].[ONY_VARDIYA]    Script Date: 11.02.2022 17:26:19 ******/
SET ANSI_NULLS OFF

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[ONY_VARDIYA](
	[IDNO] [int] IDENTITY(1,1) NOT NULL,
	[SRKODU] [int] NULL,
	[PRSICIL] [varchar](15) NULL,
	[TARIH] [datetime] NULL,
	[VRKODU] [int] NULL,
	[ONAY1] [bit] NULL,
	[ONAY1KL] [varchar](50) NULL,
	[ONAY2] [bit] NULL,
	[ONAY2KL] [varchar](50) NULL,
	[ONAY3] [bit] NULL,
	[ONAY3KL] [varchar](50) NULL,
	[ONAY4] [bit] NULL,
	[ONAY4KL] [varchar](50) NULL,
	[ONAY5] [bit] NULL,
	[ONAY5KL] [varchar](50) NULL,
	[ONAY6] [bit] NULL,
	[ONAY6KL] [varchar](50) NULL,
	[ONAY7] [bit] NULL,
	[ONAY7KL] [varchar](50) NULL,
	[ONAY8] [bit] NULL,
	[ONAY8KL] [varchar](50) NULL,
	[ONAY9] [bit] NULL,
	[ONAY9KL] [varchar](50) NULL,
	[ONAY10] [bit] NULL,
	[ONAY10KL] [varchar](50) NULL,
	[POST] [bit] NULL,
	[RET] [bit] NULL,
	[RET_ACIK] [varchar](300) NULL,
 CONSTRAINT [PK_ONY_VARDIYA] PRIMARY KEY CLUSTERED 
(
	[IDNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

END



IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'BCS_PARAMETERS'))
BEGIN

/****** Object:  Table [dbo].[BCS_PARAMETERS]    Script Date: 30.12.2021 13:31:16 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[BCS_PARAMETERS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirmName] [varchar](200) NULL,
	[OnayTuru] [smallint] NULL,
	[LimitDash] [bit] NULL,
	[ReportDash] [bit] NULL,
	[PrsBazli] [bit] NULL,
	[Ret] [bit] NULL,
	[SendMail] [bit] NULL,
	[SendMailForm] [bit] NULL,
	[SendMailFormTxt] [varchar](200) NULL,
	[GecmisPostUser] [bit] NULL,
	[MailOnay] [bit] NULL,
	[Domain] [varchar](50) NULL,
	[Smtp] [varchar](50) NULL,
	[Port] [varchar](5) NULL,
	[SmtpUser] [varchar](50) NULL,
	[SmtpPass] [varchar](50) NULL,
	[Ssl] [bit] NULL,
	[Mail] [varchar](50) NULL,
	[MailFrom] [varchar](50) NULL,
	[MailSubject] [varchar](200) NULL,
	[ReportUrl] [varchar](200) NULL,
	[ReportUrlSecure] [bit] NULL,
	[Language] [varchar](200) NULL,
	[TransferDate] [datetime] NULL,
	[FmTip] [smallint] NULL,
	[FmServis] [bit] NULL,
	[FmYemek] [bit] NULL,
	[FmAcik] [bit] NULL,
	[FmNeden] [bit] NULL,
	[FmGecmisIslem] [bit] NULL,
	[FmGecmisIslemSure] [int] NULL,
	[FmTemplate] [varchar](max) NULL,
	[FmUserMailBody] [varchar](max) NULL,
	[FmFormOnay] [smallint] NULL,
	[FmUseForm] [smallint] NULL,
	[GiYemek] [bit] NULL,
	[GiAcik] [bit] NULL,
	[GiNeden] [bit] NULL,
	[GiGecmisIslem] [bit] NULL,
	[GiGecmisIslemSure] [int] NULL,
	[GiFormOnay] [smallint] NULL,
	[GiUseForm] [smallint] NULL,
	[GiYillikIzin] [bit] NULL,
	[SiYemek] [bit] NULL,
	[SiAcik] [bit] NULL,
	[SiNeden] [bit] NULL,
	[SiGecmisIslem] [bit] NULL,
	[SiGecmisIslemSure] [int] NULL,
	[SiFormOnay] [smallint] NULL,
	[SiUseForm] [smallint] NULL,
	[SiSaat] [smallint] NULL,
	[HktUseForm] [bit] NULL,
	[HktFormOnay] [bit] NULL,
	[HktNeden] [bit] NULL,
	[HktAcik] [bit] NULL,
	[HktGecmisIslem] [bit] NULL,
	[HktGecmisIslemSure] [int] NULL,
	[PstAcik] [bit] NULL,
	[PstGecmisIslem] [bit] NULL,
	[PstGecmisIslemSure] [int] NULL,
	[link1Name] [varchar](50) NULL,
	[link1Url] [varchar](200) NULL,
	[link2Name] [varchar](50) NULL,
	[link2Url] [varchar](200) NULL,
	[link3Name] [varchar](50) NULL,
	[link3Url] [varchar](200) NULL,
	[link4Name] [varchar](50) NULL,
	[link4Url] [varchar](200) NULL,
	[link5Name] [varchar](50) NULL,
	[link5Url] [varchar](200) NULL,
	[IsDocument] bit NULL
 CONSTRAINT [PK_tbl_Stock] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] 


	--BEGIN TRY EXEC(N'ALTER TABLE BCS_PARAMETERS ADD LimitDash bit null')
	--END TRY BEGIN CATCH END CATCH

	--BEGIN TRY EXEC(N'ALTER TABLE BCS_PARAMETERS ADD ReportDash bit null')
	--END TRY BEGIN CATCH END CATCH

	--BEGIN TRY EXEC(N'ALTER TABLE BCS_PARAMETERS ADD IsDocument bit null')
	--END TRY BEGIN CATCH END CATCH


SET IDENTITY_INSERT [dbo].[BCS_PARAMETERS] ON 
INSERT [dbo].[BCS_PARAMETERS] ([ID], [FirmName], [OnayTuru], [LimitDash], [ReportDash], [PrsBazli], [Ret], [SendMail], [SendMailForm], [SendMailFormTxt], [GecmisPostUser], [MailOnay], [Domain], [Smtp], [Port], [SmtpUser], [SmtpPass], [Ssl], [Mail], [MailFrom], [MailSubject], [ReportUrl], [ReportUrlSecure], [Language], [TransferDate], [FmTip], [FmServis], [FmYemek], [FmAcik], [FmNeden], [FmGecmisIslem], [FmGecmisIslemSure], [FmTemplate], [FmUserMailBody], [FmFormOnay], [FmUseForm], [GiYemek], [GiAcik], [GiNeden], [GiGecmisIslem], [GiGecmisIslemSure], [GiFormOnay], [GiUseForm], [GiYillikIzin], [SiYemek], [SiAcik], [SiNeden], [SiGecmisIslem], [SiGecmisIslemSure], [SiFormOnay], [SiUseForm], [SiSaat], [HktUseForm], [HktFormOnay], [HktNeden], [HktAcik], [HktGecmisIslem], [HktGecmisIslemSure], [PstAcik], [PstGecmisIslem], [PstGecmisIslemSure], [link1Name], [link1Url], [link2Name], [link2Url], [link3Name], [link3Url], [link4Name], [link4Url], [link5Name], [link5Url]) VALUES (1, N'Örnek A.Ş.', 0, 0, 0, 1, 1, 1, 0, N'ornek@ornek.com.tr', 0, 1, NULL, N'smtp.gmail.com', N'587', N'pdksmail@gmail.com', N'1122334455f', 1, N'pdksmail@gmail.com', N'PersonelCI Rapor', N'Barkodes Insan Kaynakları - @FLOW@ Bilgilendirme', N'fsfsdfsf', 0, N'en-US', CAST(N'1900-01-23T00:00:00.000' AS DateTime), 1, 0, 0, 0, 0, 1, 3, N'<!DOCTYPE html>
<html>
<head>
    <title>Examples. Setting a custom placemark image</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <!--
        Set your own API-key. Testing key is not valid for other web-sites and services.
        Get your API-key on the Developer Dashboard: https://developer.tech.yandex.ru/keys/
    -->
    <script src="https://api-maps.yandex.ru/2.1/?lang=en_RU&amp;apikey=<your API-key>" type="text/javascript"></script>
    <script src="icon_customImage.js" type="text/javascript"></script>
	<style>
        html, body, #map {
            width: 100%; height: 100%; padding: 0; margin: 0;
        }
    </style>
</head>
<body>
<div id="map"></div>
</body>
</html>


txtfmTemplate:[],
      txtfmUserMailBody:[],
      ', N'<!DOCTYPE html>
<html>
<body>
Sayın @AMIR@,
<br/>
<br/>
Onayınızda bekleyen @FLOW@ kayıtlarını aşağıda bilgilerinize sunarız.
<br/>
<br/>
@TABLE@
<br/>
<br/>
Lütfen <a href=''http://172.30.68.20:1997\''> http://172.30.68.20:1997</a> linkine tıklayarak Portala giriş yaptıktan sonra talebi değerlendiriniz.	   
<br/>
<br/>

</body>
</html>', 0, 1, 0, 0, 0, 1, 990, 1, 1, 1, 0, 0, 0, 1, 60, 1, 1, 1, 0, 0, 0, 0, 1, 3, 0, 0, 0, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[BCS_PARAMETERS] OFF
END

IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'HARFMNED'))
BEGIN

/****** Object:  Table [dbo].[HARFMNED]    Script Date: 1.01.2022 19:21:11 ******/
SET ANSI_NULLS ON
 
SET QUOTED_IDENTIFIER ON
 
CREATE TABLE [dbo].[HARFMNED](
	[IDNO] [int] NOT NULL,
	[SRKODU] [int] NOT NULL,
	[KODU] [char](10) NOT NULL,
	[TURU] [varchar](50) NOT NULL
) ON [PRIMARY]

END

IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'WR_DILLER'))
BEGIN

/****** Object:  Table [dbo].[WR_DILLER]    Script Date: 1.01.2022 17:37:39 ******/
SET ANSI_NULLS OFF
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[WR_DILLER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DIL] [varchar](50) NULL,
	[KODU] [varchar](10) NULL,
	[TEXT] [nvarchar](50) NULL,
	[TARIHFORMAT] [varchar](10) NULL,
 CONSTRAINT [PK_WR_DILLER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET IDENTITY_INSERT [dbo].[WR_DILLER] ON 
INSERT [dbo].[WR_DILLER] ([ID], [DIL], [KODU], [TEXT], [TARIHFORMAT]) VALUES (1, N'TÜRKÇE', N'tr-TR', N'TÜRKÇE', N'dd.MM.yyyy')
INSERT [dbo].[WR_DILLER] ([ID], [DIL], [KODU], [TEXT], [TARIHFORMAT]) VALUES (2, N'İNGİLİZCE', N'en-US', N'ENGLISH', N'MM/dd/yyyy')
SET IDENTITY_INSERT [dbo].[WR_DILLER] OFF

END

IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'BCS_TRIGGER'))
BEGIN

/****** Object:  Table [dbo].[BCS_TRIGGER]    Script Date: 30.12.2021 13:45:26 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[BCS_TRIGGER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SpName] [varchar](200) NULL,
	[Params] [varchar](200) NULL,
	[SpResult] [varchar](200) NULL,
	[StartDate] [datetime] NULL,
	[Period] [int] NULL,
	[TranDate] [datetime] NULL,
 CONSTRAINT [PK_BCS_TRIGGER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

END

IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'ONY_DOCUMENT'))
BEGIN


/****** Object:  Table [dbo].[ONY_DOCUMENT]    Script Date: 30.12.2021 13:30:19 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[ONY_DOCUMENT](
	[IDNO] [int] IDENTITY(1,1) NOT NULL,
	[SRKODU] [int] NULL,
	[PRSICIL] [nvarchar](15) NULL,
	[TIPI] [nvarchar](10) NULL,
	[TARIH] [nvarchar](10) NULL,
	[ACIKLAMA] [nvarchar](200) NULL,
	[DOSYA] [nvarchar](100) NULL,
	[DOSYA_YOLU] [nvarchar](500) NULL,
	[STATUS] [bit] NULL,
	[USER] [nvarchar](50) NULL,
	[TRAN_DATE] [datetime] NULL,
 CONSTRAINT [PK_ONY_DOCUMENT] PRIMARY KEY CLUSTERED 
(
	[IDNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

END

IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'BCS_ONY_MAIL_LOG'))
BEGIN

/****** Object:  Table [dbo].[BCS_ONY_MAIL_LOG]    Script Date: 19.09.2021 03:34:06 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[BCS_ONY_MAIL_LOG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PerSicilNo] [nvarchar](50) NULL,
	[AmirSicilNo] [nvarchar](50) NULL,
	[MailTo] [nvarchar](50) NULL,
	[MailBody] [nvarchar](max) NULL,
	[Dscr] [nvarchar](250) NULL,
	[Status] [smallint] NULL,
	[TranDate] [datetime] NULL,
 CONSTRAINT [PK_BCS_ONY_MAIL_LOG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

END

IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'BCS_DASHREPORT'))
BEGIN


/****** Object:  Table [dbo].[BCS_DASHREPORT]    Script Date: 30.12.2021 13:29:27 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[BCS_DASHREPORT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Column] [int] NULL,
	[ReportName] [varchar](10) NULL,
	[SPName] [varchar](200) NULL,
	[Params] [varchar](200) NULL,
 CONSTRAINT [PK_BCS_DASHREPORT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

END
 
IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'BCS_LICENSE'))
BEGIN

/****** Object:  Table [dbo].[BCS_LICENSE]    Script Date: 19.09.2021 03:34:06 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[BCS_LICENSE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyCode] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](250) NULL,
	[ServerAddress] [nvarchar](250) NULL,
	[UserCount] [nvarchar](250) NULL,
	[BarkodesNum] [nvarchar](250) NULL,
	[ValidNum] [nvarchar](250) NULL,
	[SecureNum] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[TranDate] [datetime] NULL,
	[Status] [smallint] NULL,
 CONSTRAINT [PK_tbl_Lisans] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET IDENTITY_INSERT [dbo].[BCS_LICENSE] ON 
INSERT [dbo].[BCS_LICENSE] ([ID], [CompanyCode], [CompanyName], [ServerAddress], [UserCount], [BarkodesNum], [ValidNum], [SecureNum], [Description], [TranDate], [Status]) VALUES (91, N'1', N'fsdfds', N'3C:2C:30:C4:25:96', N'10', N'1234567', N'JMcsxGEXdvIegN1k3bDnPA==', N'GIS3YUQLifP5R22nSVMI3lxI8x92jyCvvtLS3vFnhtU=', N'Key', CAST(N'2019-12-06T19:28:04.520' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[BCS_LICENSE] OFF

END

IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'BCS_LABEL'))
BEGIN

/****** Object:  Table [dbo].[BCS_LABEL]    Script Date: 19.09.2021 03:34:06 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[BCS_LABEL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Lng] [varchar](10) NULL,
	[Label] [varchar](200) NULL,
	[LabelName] [varchar](200) NULL,
 CONSTRAINT [PK_BCS_LABEL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET IDENTITY_INSERT [dbo].[BCS_LABEL] ON 
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (1, N'en-US', N'lblPersonel', N'Personnel')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (2, N'tr-TR', N'lblPersonel', N'Personel')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (3, N'en-US', N'lblAppName', N'Personnel Attendance Control System')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (4, N'tr-TR', N'lblAppName', N'Personel Devam Kontrol Sistemi')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (5, N'tr-TR', N'lblExit', N'Çıkış')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (6, N'en-US', N'lblExit', N'Exit')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (7, N'tr-TR', N'lblDaily', N'Günlük İzin')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (8, N'en-US', N'lblDaily', N'Daily Out')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (9, N'tr-TR', N'lblHourly', N'Saatlik İzin')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (10, N'en-US', N'lblHourly', N'Hourly Out')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (11, N'tr-TR', N'lblFM', N'Fazla Mesai')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (12, N'en-US', N'lblFM', N'Overtime')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (13, N'tr-TR', N'lblShift', N'Vardiya Giriş')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (14, N'en-US', N'lblShift', N'Shift Out')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (15, N'tr-TR', N'lblPosta', N'Posta Giriş')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (16, N'en-US', N'lblPosta', N'Post Entry')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (17, N'tr-TR', N'lblIO', N'Giriş Çıkış')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (18, N'en-US', N'lblIO', N'IO')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (19, N'tr-TR', N'lblVacationEntry', N'İzin Girişleri')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (20, N'en-US', N'lblVacationEntry', N'Vacation Entry')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (21, N'tr-TR', N'lblIOReport', N'Giriş Çıkış Raporları')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (22, N'en-US', N'lblIOReport', N' IO Report')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (23, N'tr-TR', N'lblVacationTrack', N'Talep Takip')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (24, N'en-US', N'lblVacationTrack', N'Vacation Track')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (25, N'tr-TR', N'lblReports', N'Raporlar')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (26, N'en-US', N'lblReports', N'Reports')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (27, N'tr-TR', N'lblMonthyCalcReport', N'Aylık Puantaj Raporu')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (28, N'en-US', N'lblMonthyCalcReport', N'Monthly Calculation Report')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (29, N'tr-TR', N'btnApprove', N'Onay')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (30, N'en-US', N'btnApprove', N'Confirm')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (31, N'tr-TR', N'btnEntry', N'Giriş')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (32, N'en-US', N'btnEntry', N'Entry')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (33, N'tr-TR', N'lblPersonelSelect', N'Kişi Seçim')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (34, N'en-US', N'lblPersonelSelect', N'Personnel List')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (35, N'tr-TR', N'lblDailyEntry', N'Günlük İzin Giriş')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (36, N'en-US', N'lblDailyEntry', N'Daily Entry')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (37, N'tr-TR', N'lblApprove', N'Onay')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (38, N'en-US', N'lblApprove', N'Approve')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (39, N'tr-TR', N'lblHourlyEntry', N'Saatlik İzin Giriş')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (40, N'en-US', N'lblHourlyEntry', N'Hourly Entry')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (41, N'tr-TR', N'lblTransactionEntry', N'Hareket Giriş')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (42, N'en-US', N'lblTransactionEntry', N'Transaction Entry')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (43, N'tr-Tr', N'lblShiftScheduledEntry', N'Posta Giriş')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (44, N'en-US', N'lblShiftScheduledEntry', N'Shift Scheduled Entry')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (45, N'tr-Tr', N'lblShiftEntry', N'Vardiya Giriş')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (46, N'en-US', N'lblShiftEntry', N'Shift Entry')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (47, N'tr-Tr', N'lblOvertimeEntry', N'Mesai Giriş')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (48, N'en-US', N'lblOvertimeEntry', N'Overtime Entry')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (49, N'tr-Tr', N'lblSummary', N'Özet')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (50, N'en-US', N'lblSummary', N'Summary')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (51, N'tr-Tr', N'lblShiftApprove', N'Vardiya Onay')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (52, N'en-US', N'lblShiftApprove', N'Shift Approve')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (53, N'tr-Tr', N'lblPersonnnelName', N'Personel Adı')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (54, N'en-US', N'lblPersonnnelName', N'Personnel Name')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (55, N'tr-Tr', N'lblPersonnnelID', N'Sicil No')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (56, N'en-US', N'lblPersonnnelID', N'Personel ID')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (57, N'tr-Tr', N'lblMultiSelect', N'Toplu Seçim')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (58, N'en-US', N'lblMultiSelect', N'Multi Select')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (59, N'tr-Tr', N'lblDate', N'Tarih')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (60, N'en-US', N'lblDate', N'Date')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (61, N'tr-Tr', N'lblTime', N'Süre')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (62, N'en-US', N'lblTime', N'Time')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (63, N'tr-Tr', N'lblReason', N'Neden')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (64, N'en-US', N'lblReason', N'Cause')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (65, N'tr-Tr', N'lblDscr', N'Açıklama')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (66, N'en-US', N'lblDscr', N'Description')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (67, N'tr-Tr', N'lblArrival', N'Geliş')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (68, N'en-US', N'lblArrival', N'Arrival')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (69, N'tr-Tr', N'lblDeparture', N'Gidiş')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (70, N'en-US', N'lblDeparture', N'Departure')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (71, N'tr-Tr', N'lblService', N'Servis')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (72, N'en-US', N'lblService', N'Service')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (73, N'tr-Tr', N'lblMeal', N'Yemek')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (74, N'en-US', N'lblMeal', N'Meal')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (75, N'tr-Tr', N'lblTotalOvertime', N'Yıllık Fazla Mesai')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (76, N'en-US', N'lblTotalOvertime', N'Total Overtime')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (77, N'tr-Tr', N'lblAnnualBalance', N'Yıllık İzin Bakiye')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (78, N'en-US', N'lblAnnualBalance', N'Annual Balance')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (79, N'tr-TR', N'lblApproved', N'Onaylı')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (80, N'en-US', N'lblApproved', N'Approved')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (81, N'tr-TR', N'lblRejected', N'Ret')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (82, N'en-US', N'lblRejected', N'Rejected')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (83, N'tr-TR', N'lblInbox', N'Bekleyen Kayıtlar')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (84, N'en-US', N'lblInbox', N'Inbox')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (85, N'tr-TR', N'lblApproveList', N'Onay Listesi')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (86, N'en-US', N'lblApproveList', N'Approve List')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (87, N'tr-TR', N'lblStartDate', N'Başlangıç Tarihi')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (88, N'en-US', N'lblStartDate', N'Start Date')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (89, N'tr-TR', N'lblEndDate', N'Bitiş Tarihi')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (90, N'en-US', N'lblEndDate', N'End Date')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (92, N'tr-TR', N'lblHour', N'Saat')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (93, N'en-US', N'lblHour', N'Hour')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (94, N'tr-TR', N'lblServiceSelect', N'Servis Seçiniz')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (95, N'en-US', N'lblServiceSelect', N'Service Select')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (96, N'tr-TR', N'lblOvertimeDate', N'Mesai Tarih')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (97, N'en-US', N'lblOvertimeDate', N'Overtime Date')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (98, N'tr-TR', N'lblStartHour', N'Baş Saat')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (99, N'en-US', N'lblStartHour', N'Start Hour')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (100, N'tr-TR', N'lblStartWork', N'İşBaşı Tarihi')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (101, N'en-US', N'lblStartWork', N'StartWork Date')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (102, N'tr-TR', N'lblCause', N'Sebep')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (103, N'en-US', N'lblCause', N'Cause')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (104, N'tr-TR', N'lblPrint', N'Döküm')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (105, N'en-US', N'lblPrint', N'Print')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (106, N'tr-TR', N'lblCause2', N'Sebep2')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (107, N'en-US', N'lblCause2', N'Cause2')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (108, N'tr-TR', N'lblRejectDscr', N'Ret Açıklama')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (109, N'en-US', N'lblRejectDscr', N'Reject Dscr')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (110, N'tr-TR', N'lblReject', N'Ret')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (111, N'en-US', N'lblReject', N'Reject')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (112, N'tr-TR', N'Toplam', N'Toplam')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (113, N'en-US', N'Toplam', N'Sum')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (114, N'tr-TR', N'Toplam Gün', N'Toplam (Gün)')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (115, N'en-US', N'Toplam Gün', N'Sum (Day)')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (116, N'tr-TR', N'Toplam Saat', N'Toplam (Saat)')
INSERT [dbo].[BCS_LABEL] ([ID], [Lng], [Label], [LabelName]) VALUES (117, N'en-US', N'Toplam Saat', N'Sum (Hour)')
SET IDENTITY_INSERT [dbo].[BCS_LABEL] OFF



END

IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'BCS_FAZLA_MESAI'))
BEGIN

/****** Object:  Table [dbo].[BCS_FAZLA_MESAI]    Script Date: 19.09.2021 03:34:06 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[BCS_FAZLA_MESAI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Sicil] [varchar](20) NULL,
	[FazlaMesai] [decimal](20, 2) NULL,
 CONSTRAINT [PK_BCS_FAZLA_MESAI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

END

/****** Object:  StoredProcedure [dbo].[BCS_LANGUAGE_UPDATE]    Script Date: 1.01.2022 18:55:28 ******/
 
GO
CREATE PROC  [dbo].[BCS_LANGUAGE_UPDATE]  
(
@UserName varchar(20)=null, 
@Lng varchar(20)=null, 
@UserType varchar(20)=null, 
@ReturnCode varchar(20) output
)
AS 
 IF(@UserName is not null)
 BEGIN
  

    IF EXISTS (select * from PERSONEL_AMIR a (nolock) where AMIR_KODU=@UserName )
	update PERSONEL_AMIR set DIL=  @Lng where AMIR_KODU=@UserName 
	ELSE
	update PERSONEL1 set DIL=@Lng where SICILNO=@UserName
 
set @ReturnCode='200';

END
 

/****** Object:  StoredProcedure [dbo].[BCS_MESAI_SERVICE_SELECT]    Script Date: 1.01.2022 18:51:42 ******/
GO
CREATE PROC  [dbo].[BCS_MESAI_SERVICE_SELECT]
@Username varchar(50)=null
AS 

select RTRIM(s.KODU) KODU, s.TURU, p.SICILNO  from dbo.SERVIS s (nolock) 
left join dbo.PERSONEL1 p (nolock) on p.SERVIS=s.KODU and s.SRKODU=1 and s.KODU=p.SERVIS

 
GO
/****** Object:  StoredProcedure [dbo].[BCS_LANGUAGE_SELECT]    Script Date: 1.01.2022 18:48:01 ******/
 
CREATE PROC  [dbo].[BCS_LANGUAGE_SELECT]  
(
@UserName varchar(20)=null, 
@Lng varchar(20)=null, 
@UserType varchar(20)=null, 
@ReturnCode varchar(20) output
)
AS 
 IF(@UserName is not null)
 BEGIN

DECLARE @pLng varchar(10) = (select top 1 w.ID from BCS_PARAMETERS p (nolock)
left join WR_DILLER w (nolock) on RTRIM(p.[Language])=RTRIM(w.KODU))  

DECLARE @pLngKodu varchar(10) = (select top 1 RTRIM(p.[Language]) from BCS_PARAMETERS p (nolock))  

    IF EXISTS (select * from PERSONEL_AMIR a (nolock) where AMIR_KODU=@UserName )
	select isnull(w.ID,@pLng) ID,isnull(w.DIL,@pLngKodu) DIL,isnull(w.KODU,@pLngKodu) KODU,w.[TEXT] from PERSONEL_AMIR a (nolock)
	left join WR_DILLER w (nolock) on a.[DIL]=w.ID 
	where a.AMIR_KODU=@UserName 
	ELSE
	select isnull(w.ID,@pLng) ID,isnull(w.DIL,@pLngKodu) DIL,isnull(w.KODU,@pLngKodu) KODU,w.[TEXT] from PERSONEL1 p (nolock)
	left join WR_DILLER w (nolock) on p.[DIL]=w.ID 
	where SICILNO=@UserName
 END
 ELSE
 select  w.* from WR_DILLER w (nolock) 
 ----where KODU=isnull(@Lng,KODU)
 
set @ReturnCode='200';


GO
/****** Object:  StoredProcedure [dbo].[BCS_TRIGGER_SELECT]    Script Date: 30.12.2021 13:58:28 ******/
CREATE PROC  [dbo].[BCS_TRIGGER_SELECT]  AS
select * from [dbo].[BCS_TRIGGER] nolock

 
 
/****** Object:  StoredProcedure [dbo].[BCS_TRIGGER_UPDATE]    Script Date: 30.12.2021 13:58:28 ******/
 
GO
CREATE PROC  [dbo].[BCS_TRIGGER_UPDATE] 
  @ID int,
  @StartDate datetime=null,
  @SpResult nvarchar(200),
  @TranDate datetime=null
AS

BEGIN TRY  
update [dbo].[BCS_TRIGGER] set [StartDate]=@StartDate, [SpResult]=@SpResult, [TranDate]=@TranDate where ID=@ID
END TRY  
BEGIN CATCH  
update [dbo].[BCS_TRIGGER] set [StartDate]=@StartDate, [SpResult]=ERROR_MESSAGE(), [TranDate]=@TranDate  where ID=@ID
END CATCH  
 

/****** Object:  StoredProcedure [dbo].[BCS_DOC_AUTH]    Script Date: 30.12.2021 13:50:06 ******/
 GO
CREATE PROC  [dbo].[BCS_DOC_AUTH]
(
@Username varchar(50)=null
)
AS 
 
select isnull(DOKUMAN_ONAY,0) YETKI from PERSONEL_AMIR nolock where AMIR_KODU=@Username

 
GO
/****** Object:  StoredProcedure [dbo].[BCS_DOCUMENT_DELETE]    Script Date: 30.12.2021 13:50:06 ******/
 
CREATE PROC  [dbo].[BCS_DOCUMENT_DELETE]
@IDNO int=null,
@ReturnCode varchar(20) output
AS
SET @ReturnCode='200'

DELETE from ONY_DOCUMENT where IDNO=@IDNO

GO
/****** Object:  StoredProcedure [dbo].[BCS_DOCUMENT_INSERT]    Script Date: 30.12.2021 13:50:06 ******/
CREATE PROC  [dbo].[BCS_DOCUMENT_INSERT]
(
@IDNO int=null,
@PRSICIL nvarchar(15)=null,
@TIPI nvarchar(10)=null,
@TARIH nvarchar(50)=null,
@ACIKLAMA nvarchar(200)=null,
@DOSYA nvarchar(100)=null,
@DOSYA_YOLU nvarchar(200)=null,
@ReturnCode varchar(20) output)
AS

SET @ReturnCode='500'

DELETE from ONY_DOCUMENT where DOSYA=@DOSYA;

IF NOT EXISTS(select * from ONY_DOCUMENT (nolock) where IDNO=isnull(@IDNO,0))
INSERT INTO ONY_DOCUMENT ([SRKODU]
      ,[PRSICIL]
      ,[TIPI]
      ,[TARIH]
	  ,[ACIKLAMA]
      ,[DOSYA]
      ,[DOSYA_YOLU]
      ,[TRAN_DATE]) VALUES (1,@PRSICIL,@TIPI,@TARIH,@ACIKLAMA,@DOSYA,@DOSYA_YOLU,GETDATE())
ELSE
UPDATE ONY_DOCUMENT SET 
PRSICIL=@PRSICIL,TIPI=@TIPI,TARIH=@TARIH, 
ACIKLAMA=@ACIKLAMA, DOSYA=@DOSYA,DOSYA_YOLU=@DOSYA_YOLU,TRAN_DATE=GETDATE();

SET @ReturnCode='200'

GO
/****** Object:  StoredProcedure [dbo].[BCS_DOCUMENT_SELECT]    Script Date: 30.12.2021 13:50:06 ******/ 
CREATE PROC  [dbo].[BCS_DOCUMENT_SELECT]
@Username nvarchar(50)=null ,
@IDNO int=null 
AS

DECLARE @YETKI bit=0;

IF EXISTS (select * from PERSONEL_AMIR where DOKUMAN_ONAY=1 and AMIR_KODU=@Username)
SET @YETKI=1

select d.*, p.ADI+' '+p.SOYADI ADI from ONY_DOCUMENT d (nolock) 
left join PERSONEL1 p (nolock) on d.PRSICIL=p.SICILNO 
where d.PRSICIL= (case when @YETKI=0 then  @Username else d.PRSICIL end)
 
GO
/****** Object:  StoredProcedure [dbo].[BCS_DOCUMENT_SELECT_USER]    Script Date: 30.12.2021 13:50:06 ******/
CREATE PROC  [dbo].[BCS_DOCUMENT_SELECT_USER]
(@Username varchar(50)=null,
@IDNO int=null)
AS

select p.IDNO, p.SICILNO, p.ADI+' '+p.SOYADI ADI,RTRIM(d.ADI) DEPARTADI from PERSONEL1 p (nolock) 
left join DEPARTMAN (nolock) d on p.DEPART=d.KODU where 1=1 
and (ISCIKT is  null or ISCIKT>GETDATE()) order by p.ADI

 GO
/****** Object:  StoredProcedure [dbo].[BCS_DOCUMENT_TYPES]    Script Date: 30.12.2021 13:50:06 ******/
 
CREATE PROC  [dbo].[BCS_DOCUMENT_TYPES]
@Username nvarchar(50)=null ,
@IDNO int=null 
AS

select 1 ID, '01' CODE, 'SSK' [NAME]
union
select 2 ID, '02' CODE, 'RAPOR' [NAME]
union
select 3 ID, '03' CODE, 'İŞ GİRİŞ' [NAME]
union
select 4 ID, '04' CODE, 'SİGORTA' [NAME]

 GO
/****** Object:  StoredProcedure [dbo].[BCS_DASHREPORT_GET]    Script Date: 30.12.2021 13:47:10 ******/
 
CREATE PROC  [dbo].[BCS_DASHREPORT_GET]
(
@Username varchar(50)=null
)
AS 
select * from BCS_DASHREPORT (nolock)

 
GO
/****** Object:  StoredProcedure [dbo].[BCS_APPROVE_AUTH_NEW]    Script Date: 19.09.2021 06:59:18 ******/
  
CREATE PROC  [dbo].[BCS_APPROVE_AUTH_NEW]
(
@Username varchar(50)=null,
@Type varchar(5)=null
)
AS 

DECLARE 
@ReturnCode varchar(3) = null,
@Dscr varchar(100) = null,
@MESAI smallint = 0,
@GUNLUK smallint = 0,
@SAATLIK smallint = 0,
@VARDIYA smallint = 0,
@HAREKET smallint = 0,
@POSTA smallint = 0,
@SQL NVARCHAR(4000)

IF @Type='P' 
select 
@MESAI=max(convert(smallint,isnull(FM_ONAY,0))),
@GUNLUK= max(convert(int,isnull(GUNLUK_IZIN_ONAY,0))) ,
@SAATLIK=max(convert(int,isnull(SAATLIK_IZIN_ONAY,0))) ,
@VARDIYA= max(convert(int,isnull(VARDIYA_ONAY,0))) ,
@HAREKET= max(convert(int,isnull(HAREKET_EKLEME_ONAY,0))) ,
@POSTA= max(convert(int,isnull(HAFTA_TATILI_ONAY,0))) 
from dbo.PERSONEL_AMIR (nolock)
where AMIR_KODU in 
(select AMIR1 from  dbo.PERSONEL1  nolock where SICILNO=@Username 
union all
select AMIR2 from  dbo.PERSONEL1  nolock where SICILNO=@Username
union all
select AMIR3 from  dbo.PERSONEL1  nolock where SICILNO=@Username
union all
select AMIR4 from  dbo.PERSONEL1  nolock where SICILNO=@Username
union all
select AMIR5 from  dbo.PERSONEL1  nolock where SICILNO=@Username
)  having max(convert(int,isnull(FM_ONAY,0))) is not null
else 
select @MESAI=FM_ONAY,
@GUNLUK=GUNLUK_IZIN_ONAY,
@SAATLIK= SAATLIK_IZIN_ONAY,
@VARDIYA= VARDIYA_ONAY ,
@HAREKET=HAREKET_EKLEME_ONAY,
@POSTA=HAFTA_TATILI_ONAY
from  dbo.PERSONEL_AMIR (nolock) where AMIR_KODU in (@Username)
 

select @MESAI MESAI, @GUNLUK GUNLUK,@SAATLIK SAATLIK,@VARDIYA VARDIYA,@HAREKET HAREKET,@POSTA POSTA, 
(select case when count(1)>0 then 1 else 0 end from PERSONEL1 where AMIR1=@Username) AMIR1


GO 
/****** Object:  StoredProcedure [dbo].[BCS_APPROVE_GET_NEW]    Script Date: 19.09.2021 06:59:18 ******/
 
CREATE PROC  [dbo].[BCS_APPROVE_GET_NEW]
(
@Username varchar(50)=null,
@Rule smallint=0,
@Type varchar(10)=null,
@FilterType int=0,
@IDNO int =null
)
AS
BEGIN

DECLARE 
@ReturnCode varchar(3) = null,
@Dscr varchar(100) = null,
@MESAI smallint = 0,
@GUNLUK smallint = 0,
@SAATLIK smallint = 0,
@VARDIYA smallint = 0,
@HAREKET smallint = 0,
@POSTA smallint = 0,
@SQL NVARCHAR(4000)
 

IF @Username='ADMIN' 
begin
select @MESAI=1,
@GUNLUK=1,
@SAATLIK= 1,
@VARDIYA= 1,
@HAREKET= 1, 
@POSTA= 1 
return;
end
else
select @MESAI=FM_ONAY,
@GUNLUK=GUNLUK_IZIN_ONAY,
@SAATLIK= SAATLIK_IZIN_ONAY,
@VARDIYA= VARDIYA_ONAY,
@HAREKET= HAREKET_EKLEME_ONAY, 
@POSTA= HAFTA_TATILI_ONAY
from  dbo.PERSONEL_AMIR where AMIR_KODU in (@Username)
 
 

  IF @FilterType=0  
  BEGIN
  	
	IF @POSTA=1 
	SELECT *
	INTO #POSTA FROM 
	(
 
	select  p1.ADI POSTA ,'' INOUTPUT, m.IDNO, 'POSTA' IZIN_TIP ,m.PRSICIL, p.ADI +' '+ p.SOYADI [NAME],0 TOPLAMKALAN, 
	 CONVERT(char(5), DATEADD(MINUTE, convert(int,ptj.SURE), '19000101'), 108)  YILLIK_FAZLA_MESAI,'' NEDEN,TARIH, TARIH BAS_TARIH,null BIT_TARIH, 
	 null ISBASI, substring(convert(varchar,'00:00',114),1,5) SURE, '' SEBEP,'' SEBEP2, ACIKLAMA, RET_ACIK,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from dbo.ONY_POSTA m (nolock) 
	left join [dbo].PERSONEL1 p (nolock) on m.PRSICIL=p.SICILNO
	--left join dbo.FMNED n (nolock) on m.NEDEN=n.KODU 
	left join POSTA p1 (nolock) on m.POSTA_KODU=p1.KODU
	left join (select PRSICIL,ISNULL(SUM((DATEPART(HOUR, SURE) * 60) + DATEPART(MINUTE, SURE)), 0) SURE from  PUANTAJ1 (nolock) 
	where CLKODU IN(SELECT KODU FROM CALISMA WHERE TIPI = 'MESAİ') AND ONAY = 'EVET' 
	and TARIH >= DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)  AND TARIH <= GETDATE() 
	group by PRSICIL) ptj on ptj.PRSICIL=p.SICILNO 
	where 1=1 and  m.IDNO=isnull(@IDNO,m.IDNO) and (POST<>1 and RET=0) 
	and (p.ISCIKT is null or p.ISCIKT>GETDATE())
	and DATEDIFF(DAY,m.TARIH,GETDATE())<(select FmGecmisIslemSure from dbo.BCS_PARAMETERS)
	and m.PRSICIL in (
	select SICILNO from [dbo].PERSONEL1 nolock 
	where 1=1 
	and (
	AMIR1=@Username and  1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when ONAY1 is null then 1 else 0 end ) end)
	or 
	(AMIR2=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY1 is not null and ONAY2 is null) then 1 else 0  end )end))
	or 
	( AMIR3=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY2 is not null and ONAY3 is null) then 1 else 0  end )end))
	or 
	( AMIR4=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY3 is not null and ONAY4 is null) then 1 else 0  end )end))
	or 
	( AMIR5=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY4 is not null and ONAY5 is null) then 1 else 0  end )end))
	)
	))a

	IF @MESAI=1 
	SELECT * 
	INTO #MESAI FROM 
	(
	select POSTA,INOUTPUT,IDNO,IZIN_TIP,PRSICIL,[NAME],TOPLAMKALAN,
	--case when PARSENAME(YFM,1)=0  then convert(varchar,PARSENAME(YFM,2))+'.00'
--when PARSENAME(YFM,1)>0 and PARSENAME(YFM,1)<=15 then convert(varchar,PARSENAME(YFM,2))+'.15'
--	   when PARSENAME(YFM,1)>15 and PARSENAME(YFM,1)<=30 then convert(varchar,PARSENAME(YFM,2))+'.30'
--	   when PARSENAME(YFM,1)>30 and PARSENAME(YFM,1)<=45 then convert(varchar,PARSENAME(YFM,2))+'.45'
--	   when PARSENAME(YFM,1)>45 and PARSENAME(YFM,1)<=59 then convert(varchar,PARSENAME(YFM,2)+1)+'.00' end 
0 YILLIK_FAZLA_MESAI, NEDEN,TARIH,BAS_TARIH,BIT_TARIH,null ISBASI, SURE,SEBEP,SEBEP2,ACIKLAMA,RET_ACIK,AUTH 

from (
	select '' POSTA ,'' INOUTPUT, m.IDNO, 'MESAI' IZIN_TIP ,m.PRSICIL, p.ADI +' '+ p.SOYADI [NAME],0 TOPLAMKALAN, 
	 CAST(((convert(int,isnull(f.FazlaMesai,0)+isnull(ptj.SURE,0))) / 60) AS VARCHAR(10)) + '.' + CAST ((convert(int,isnull(f.FazlaMesai,0)+isnull(ptj.SURE,0)))%60 AS VARCHAR(10))
	 YFM,
	 m.NEDEN +'-'+n.TURU 
	 NEDEN,TARIH, TARIH BAS_TARIH,TARIH BIT_TARIH,substring(convert(varchar,m.SURE,114),1,5) SURE,
	 '' SEBEP,'' SEBEP2, ACIKLAMA, RET_ACIK,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from dbo.ONY_MESAI m (nolock) 
	left join [dbo].PERSONEL1 p (nolock) on m.PRSICIL=p.SICILNO
	left join dbo.FMNED n (nolock) on m.NEDEN=n.KODU 
	left join BCS_FAZLA_MESAI f (nolock) on p.SICILNO=f.Sicil
	left join (select PRSICIL,ISNULL(SUM((DATEPART(HOUR, SURE) * 60) + DATEPART(MINUTE, SURE)), 0) SURE from  PUANTAJ1 (nolock) 
	where CLKODU IN(SELECT KODU FROM CALISMA WHERE TIPI = 'MESAİ') AND ONAY = 'EVET'  and convert(varchar,TARIH,112)>(select TransferDate from BCS_PARAMETERS nolock)
	and TARIH >= DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)  AND TARIH <= GETDATE() 
	group by PRSICIL) ptj on ptj.PRSICIL=p.SICILNO 
	where 1=1 and  m.IDNO=isnull(@IDNO,m.IDNO) and (POST<>1 and RET=0) 
	and (p.ISCIKT is null or p.ISCIKT>GETDATE())
	and DATEDIFF(DAY,m.TARIH,GETDATE())<(select FmGecmisIslemSure from dbo.BCS_PARAMETERS)
	and m.PRSICIL in (
	select SICILNO from [dbo].PERSONEL1 nolock 
	where 1=1 
	and (
	AMIR1=@Username and  1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when ONAY1 is null then 1 else 0 end ) end)
	or 
	(AMIR2=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY1 is not null and ONAY2 is null) then 1 else 0  end )end))
	or 
	( AMIR3=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY2 is not null and ONAY3 is null) then 1 else 0  end )end))
	or 
	( AMIR4=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY3 is not null and ONAY4 is null) then 1 else 0  end )end))
	or 
	( AMIR5=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY4 is not null and ONAY5 is null) then 1 else 0  end )end))
	)
	))  a ) a 
	 
	IF (@GUNLUK=1)
	SELECT *
	INTO #GUNLUK FROM 
	(
	
	select '' POSTA ,'' INOUTPUT, o.IDNO, 'GUNLUK' IZIN_TIP ,o.PRSICIL, p.ADI +' '+ p.SOYADI  [NAME], TOPLAMKALAN,'' YILLIK_FAZLA_MESAI,o.NEDEN+'-'+n.ADI NEDEN,BASTARIH TARIH,BASTARIH BAS_TARIH,BITTARIH BIT_TARIH,ISBASI, convert(varchar,GUN) SURE,  SEBEP,SEBEP2, ACIKLAMA , RET_ACIK,case when ONAY1KL= @Username and ONAY2KL is not null then 0
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from [dbo].[ONY_GUNIZIN] o (nolock) 
	left join dbo.PERSONEL1 p (nolock) on o.PRSICIL=p.SICILNO
	left join dbo.CALISMA n (nolock) on o.NEDEN=n.KODU 
	left join (select PRSICIL, max(YIL) YIL from dbo.YILIZHESAP1 (nolock) group by PRSICIL) y on y.PRSICIL=o.PRSICIL
	left join (select YIL, PRSICIL,sum(TOPLAMKALAN) TOPLAMKALAN from dbo.YILIZHESAP1 (nolock) group by YIL, PRSICIL) y2  on y2.PRSICIL=o.PRSICIL and y2.YIL=y.YIL
	where  1=1 and  o.IDNO=isnull(@IDNO,o.IDNO) and (POST<>1 and RET=0)	
	--and DATEDIFF(DAY,o.BASTARIH,GETDATE())<(select GiGecmisIslemSure from dbo.BCS_PARAMETERS)
	---and isnull(ONAY1,0)=0 
	--and (p.ISCIKT is null or p.ISCIKT>GETDATE())
	and o.PRSICIL in (
	select SICILNO from [dbo].PERSONEL1 nolock 
	where 1=1 and o.IDNO=ISNULL(@IDNO,o.IDNO)
	and (
	AMIR1=@Username and  1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when ONAY1 is null then 1 else 0 end ) end)
	or 
	(AMIR2=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY1 is not null and ONAY2 is null) then 1 else 0  end )end))
	or 
	( AMIR3=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY2 is not null and ONAY3 is null) then 1 else 0  end )end))
	or 
	( AMIR4=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY3 is not null and ONAY4 is null) then 1 else 0  end )end))
	or 
	( AMIR5=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY4 is not null and ONAY5 is null) then 1 else 0  end )end))
	)
	)) as a 



	IF @SAATLIK=1  
	SELECT *
	INTO #SAATLIK FROM 
	(
	

	select '' POSTA ,'' INOUTPUT, o.IDNO,'SAATLIK' IZIN_TIP ,PRSICIL, p.ADI +' '+ p.SOYADI [NAME],0 TOPLAMKALAN,'' YILLIK_FAZLA_MESAI,o.NEDEN+'-'+n.ADI NEDEN,TARIH, BASSAAT BAS_TARIH,BITSAAT BIT_TARIH,null ISBASI, substring(convert(varchar,SAAT,8),1,5) SAAT, SEBEP,SEBEP2, ACIKLAMA, RET_ACIK,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from dbo.ONY_SAATIZIN o (nolock) 
	left join [dbo].PERSONEL1 p (nolock) on o.PRSICIL=p.SICILNO
	left join dbo.CALISMA n (nolock) on o.NEDEN=n.KODU
	where 1=1 and o.IDNO=isnull(@IDNO,o.IDNO) and (POST<>1 and RET=0) 
	and DATEDIFF(DAY,o.TARIH,GETDATE())<(select SiGecmisIslemSure from dbo.BCS_PARAMETERS)
	and (p.ISCIKT is null or p.ISCIKT>GETDATE())
	and PRSICIL in (
	select SICILNO from [dbo].PERSONEL1 nolock 
	where 1=1
	and (
	AMIR1=@Username and  1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when ONAY1 is null then 1 else 0 end ) end)
	or 
	(AMIR2=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY1 is not null and ONAY2 is null) then 1 else 0  end )end))
	or 
	( AMIR3=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY2 is not null and ONAY3 is null) then 1 else 0  end )end))
	or 
	( AMIR4=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY3 is not null and ONAY4 is null) then 1 else 0  end )end))
	or 
	( AMIR5=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY4 is not null and ONAY5 is null) then 1 else 0  end )end))
	)
	)) as a

	--where PRSICIL in (select SICILNO from dbo.PERSONEL1 nolock
	--where (AMIR1=@Username or AMIR2=@Username or AMIR3=@Username or AMIR4=@Username) ) 
	--) as a


	IF @VARDIYA=1 
	SELECT *
	INTO #VARDIYA FROM 
	(
	select '' POSTA ,'' INOUTPUT, o.IDNO, 'VARDIYA' IZIN_TIP , PRSICIL, p.ADI +' '+ p.SOYADI [NAME], 0 TOPLAMKALAN,'' YILLIK_FAZLA_MESAI, '' NEDEN,null TARIH ,null BAS_TARIH,null BIT_TARIH,null ISBASI, '0' SAAT,'' SEBEP,'' SEBEP2, '' ACIKLAMA,RET_ACIK,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from dbo.ONY_VARDIYA o (nolock) 
	left join [dbo].PERSONEL1 p (nolock) on o.PRSICIL=p.SICILNO
	--left join dbo.FMNED n (nolock) on o.NEDEN=n.KODU
	where 1=1 and  o.IDNO=isnull(@IDNO,o.IDNO)
	and (p.ISCIKT is null or p.ISCIKT>GETDATE())
	and PRSICIL in (
	select SICILNO from [dbo].PERSONEL1 nolock 
	where 1=1 and (POST<>1 and RET=0)
	and (
	AMIR1=@Username and  1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when ONAY1 is null then 1 else 0 end ) end)
	or 
	(AMIR2=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY1 is not null and ONAY2 is null) then 1 else 0  end )end))
	or 
	( AMIR3=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY2 is not null and ONAY3 is null) then 1 else 0  end )end))
	or 
	( AMIR4=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY3 is not null and ONAY4 is null) then 1 else 0  end )end))
	or 
	( AMIR5=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY4 is not null and ONAY5 is null) then 1 else 0  end )end))
	)
	)) as a


	IF @HAREKET=1 
	SELECT *
	INTO #HAREKET FROM 
	(
	select '' POSTA ,GCKODU INOUTPUT, m.IDNO, 'HAREKET' IZIN_TIP ,  m.PRSICIL, p.ADI +' '+ p.SOYADI [NAME],0 TOPLAMKALAN, 
	 '' YILLIK_FAZLA_MESAI,m.NEDEN+'-'+n.TURU NEDEN, TARIH, TARIH BAS_TARIH,null BIT_TARIH,null ISBASI, convert(varchar,ZAMAN,108) SURE, '' SEBEP,'' SEBEP2, ACIKLAMA,  RET_ACIK ,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from dbo.ONY_HAREKET m (nolock) 
	left join [dbo].PERSONEL1 p (nolock) on m.PRSICIL=p.SICILNO
	left join dbo.FMNED n (nolock) on m.NEDEN=n.KODU 
	left join (select PRSICIL,ISNULL(SUM((DATEPART(HOUR, SURE) * 60) + DATEPART(MINUTE, SURE)), 0) SURE from  PUANTAJ1 (nolock) 
	where 1=1  and CLKODU IN(SELECT KODU FROM CALISMA WHERE TIPI = 'MESAİ') AND ONAY = 'EVET' 
	and TARIH >= DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)  AND TARIH <= GETDATE() 
	group by PRSICIL) ptj on ptj.PRSICIL=p.SICILNO 
	where 1=1 and  m.IDNO=isnull(@IDNO,m.IDNO) and (POST<>1 and RET=0) 
	and (p.ISCIKT is null or p.ISCIKT>GETDATE())
	and DATEDIFF(DAY,m.TARIH,GETDATE())<(select HktGecmisIslemSure from dbo.BCS_PARAMETERS)
	and m.PRSICIL in (
	select SICILNO from [dbo].PERSONEL1 nolock 
	where 1=1 and  m.IDNO=isnull(@IDNO,m.IDNO)
	and (
	AMIR1=@Username and  1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when ONAY1 is null then 1 else 0 end ) end)
	or 
	(AMIR2=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY1 is not null and ONAY2 is null) then 1 else 0  end )end))
	or 
	( AMIR3=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY2 is not null and ONAY3 is null) then 1 else 0  end )end))
	or 
	( AMIR4=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY3 is not null and ONAY4 is null) then 1 else 0  end )end))
	or 
	( AMIR5=@Username and 1 =(case when (select OnayTuru from dbo.BCS_PARAMETERS)=1 then 1 
				 when (select OnayTuru from dbo.BCS_PARAMETERS)=0 then (case when (ONAY4 is not null and ONAY5 is null) then 1 else 0  end )end))
	)
	)) as a

	IF (@Type is not null) begin
	SET @SQL = 'select * from (' 
	IF OBJECT_ID('tempdb..#MESAI') IS NOT NULL  
	SET @SQL = @SQL + 'SELECT  * from #MESAI union all ' 
	IF OBJECT_ID('tempdb..#GUNLUK') IS NOT NULL  
	SET @SQL = @SQL + 'SELECT * from #GUNLUK union all ' 
	IF OBJECT_ID('tempdb..#SAATLIK') IS NOT NULL  
	SET @SQL = @SQL + 'SELECT * from #SAATLIK union all ' 
	IF OBJECT_ID('tempdb..#VARDIYA') IS NOT NULL  
	SET @SQL = @SQL + 'SELECT * from #VARDIYA union all ' 
	IF OBJECT_ID('tempdb..#HAREKET') IS NOT NULL  
	SET @SQL = @SQL + 'SELECT * from #HAREKET union all ' 
	IF OBJECT_ID('tempdb..#POSTA') IS NOT NULL  
	SET @SQL = @SQL + 'SELECT * from #POSTA union all ' 

	SET @SQL= SUBSTRING(@SQL,0,LEN(@SQL)-9)
	SET @SQL= @SQL+ ') t' 
	IF @TYPE is not null
	SET @SQL= @SQL+' where IZIN_TIP='''+
	case when @TYPE=1 then 'GUNLUK'
	when @TYPE=2 then 'SAATLIK'
	when @TYPE=3 then 'MESAI'
	when @TYPE=4 then 'VARDIYA' 
	when @TYPE=5 then 'HAREKET'
	when @TYPE=6 then 'POSTA' else null 
	end+''''; end
	else begin
	SET @SQL = 'select IZIN_TIP,count(1) ADET from (' 
	IF OBJECT_ID('tempdb..#MESAI') IS NOT NULL  
	SET @SQL = @SQL + 'SELECT IZIN_TIP from #MESAI union all ' 
	IF OBJECT_ID('tempdb..#GUNLUK') IS NOT NULL  
	SET @SQL = @SQL + 'SELECT IZIN_TIP from #GUNLUK union all ' 
	IF OBJECT_ID('tempdb..#SAATLIK') IS NOT NULL  
	SET @SQL = @SQL + 'SELECT IZIN_TIP from #SAATLIK union all ' 
	IF OBJECT_ID('tempdb..#VARDIYA') IS NOT NULL  
	SET @SQL = @SQL + 'SELECT IZIN_TIP from #VARDIYA union all ' 
	IF OBJECT_ID('tempdb..#HAREKET') IS NOT NULL  
	SET @SQL = @SQL + 'SELECT IZIN_TIP from #HAREKET union all ' 
	IF OBJECT_ID('tempdb..#POSTA') IS NOT NULL  
	SET @SQL = @SQL + 'SELECT IZIN_TIP from #POSTA union all ' 
	SET @SQL= SUBSTRING(@SQL,0,LEN(@SQL)-9)
	SET @SQL= @SQL+ ') t group by IZIN_TIP' 
	end



	END 
	 
	
	--where PRSICIL in (select SICILNO from dbo.PERSONEL1 nolock
	--where (AMIR1=@Username or AMIR2=@Username or AMIR3=@Username or AMIR4=@Username) ) 
	--) as a
	
	IF @FilterType=1
	BEGIN

		IF (@POSTA=1)
		SELECT *
		INTO #POSTA1 FROM 
		(
		select  p1.ADI POSTA_KODU,'' INOUTPUT, m.IDNO, 'POSTA' IZIN_TIP ,m.PRSICIL, p.ADI +' '+ p.SOYADI [NAME],0 TOPLAMKALAN, 
	 CONVERT(char(5), DATEADD(MINUTE, convert(int,ptj.SURE), '19000101'), 108)  YILLIK_FAZLA_MESAI,'' NEDEN,TARIH, TARIH BAS_TARIH,'' BIT_TARIH,
	 null ISBASI,substring(convert(varchar,'00:00',114),1,5) SURE, '' SEBEP,'' SEBEP2, ACIKLAMA, RET_ACIK,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from dbo.ONY_POSTA m (nolock) 
	left join [dbo].PERSONEL1 p (nolock) on m.PRSICIL=p.SICILNO
	--left join dbo.FMNED n (nolock) on m.NEDEN=n.KODU 
	left join POSTA p1 (nolock) on m.POSTA_KODU=p1.KODU
	left join (select PRSICIL,ISNULL(SUM((DATEPART(HOUR, SURE) * 60) + DATEPART(MINUTE, SURE)), 0) SURE from  PUANTAJ1 (nolock) 
	where CLKODU IN(SELECT KODU FROM CALISMA WHERE TIPI = 'MESAİ') AND ONAY = 'EVET' 
	and TARIH >= DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)  AND TARIH <= GETDATE() 
	group by PRSICIL) ptj on ptj.PRSICIL=p.SICILNO 
	where  1=1 and  m.IDNO=isnull(@IDNO,m.IDNO)
	---and (POST<>1 and RET=0)  
		and (p.ISCIKT is null or p.ISCIKT>GETDATE())
	and DATEDIFF(DAY,m.TARIH,GETDATE())<(select HktGecmisIslemSure from dbo.BCS_PARAMETERS)
		and m.PRSICIL in (select SICILNO from [dbo].PERSONEL1 nolock where (AMIR1=@Username or AMIR2=@Username or AMIR3=@Username or AMIR4=@Username 
		or AMIR5=@Username))
		and (
		(m.ONAY1=1 and ONAY1KL= @Username) or
		(m.ONAY2=1 and ONAY2KL= @Username) or
		(m.ONAY3=1 and ONAY3KL= @Username) or
		(m.ONAY4=1 and ONAY4KL= @Username) or
		(m.ONAY5=1 and ONAY5KL= @Username) )
		) as a



		IF (@GUNLUK=1)
		SELECT *
		INTO #GUNLUK1 FROM 
		(
		select '' POSTA ,'' INOUTPUT,o.IDNO, 'GUNLUK' IZIN_TIP ,o.PRSICIL, p.ADI +' '+ p.SOYADI  [NAME], TOPLAMKALAN,'' YILLIK_FAZLA_MESAI,o.NEDEN+'-'+n.ADI NEDEN,BASTARIH TARIH,BASTARIH BAS_TARIH,BITTARIH BIT_TARIH, ISBASI,convert(varchar,GUN) SURE,  SEBEP,SEBEP2, ACIKLAMA , RET_ACIK,
		case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end AUTH from [dbo].[ONY_GUNIZIN] o (nolock) 
		left join [dbo].PERSONEL1 p (nolock) on o.PRSICIL=p.SICILNO
		left join dbo.CALISMA n (nolock) on o.NEDEN=n.KODU 
		left join (select PRSICIL, max(YIL) YIL from dbo.YILIZHESAP1 (nolock) group by PRSICIL) y on y.PRSICIL=o.PRSICIL
		left join (select YIL, PRSICIL,sum(TOPLAMKALAN) TOPLAMKALAN from dbo.YILIZHESAP1 (nolock) group by YIL, PRSICIL) y2  on y2.PRSICIL=o.PRSICIL and y2.YIL=y.YIL
		where  1=1 and  o.IDNO=isnull(@IDNO,o.IDNO)
		---and (POST<>1 and RET=0)  
		and DATEDIFF(DAY,o.BASTARIH,GETDATE())<(select GiGecmisIslemSure from dbo.BCS_PARAMETERS) 
		and (p.ISCIKT is null or p.ISCIKT>GETDATE())
		and o.PRSICIL in (select SICILNO from [dbo].PERSONEL1 nolock where (AMIR1=@Username or AMIR2=@Username or AMIR3=@Username or AMIR4=@Username 
		or AMIR5=@Username))
		and (
		(o.ONAY1=1 and ONAY1KL= @Username) or
		(o.ONAY2=1 and ONAY2KL= @Username) or
		(o.ONAY3=1 and ONAY3KL= @Username) or
		(o.ONAY4=1 and ONAY4KL= @Username) or
		(o.ONAY5=1 and ONAY5KL= @Username) )
		) as a

		IF (@SAATLIK=1)
		SELECT *
		INTO #SAATLIK1 FROM 
		(
		select '' POSTA ,'' INOUTPUT, o.IDNO,'SAATLIK' IZIN_TIP ,PRSICIL, p.ADI +' '+ p.SOYADI [NAME],0 TOPLAMKALAN,'' YILLIK_FAZLA_MESAI,o.NEDEN+'-'+ n.ADI NEDEN,TARIH, BASSAAT BAS_TARIH,BITSAAT BIT_TARIH,null ISBASI,substring(convert(varchar,SAAT,8),1,5) SAAT, SEBEP,SEBEP2, ACIKLAMA, RET_ACIK,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from dbo.ONY_SAATIZIN o (nolock) 
		left join [dbo].PERSONEL1 p (nolock) on o.PRSICIL=p.SICILNO
		left join dbo.CALISMA n (nolock) on o.NEDEN=n.KODU		
		where  1=1 and  o.IDNO=isnull(@IDNO,o.IDNO)
		---and (POST<>1 and RET=0)  
		and (p.ISCIKT is null or p.ISCIKT>GETDATE())
		and DATEDIFF(DAY,o.TARIH,GETDATE())<(select SiGecmisIslemSure from dbo.BCS_PARAMETERS)
		and PRSICIL in (select SICILNO from [dbo].PERSONEL1 nolock where (AMIR1=@Username or AMIR2=@Username or AMIR3=@Username or AMIR4=@Username 
		or AMIR5=@Username))
		and (
		(o.ONAY1=1 and ONAY1KL= @Username) or
		(o.ONAY2=1 and ONAY2KL= @Username) or
		(o.ONAY3=1 and ONAY3KL= @Username) or
		(o.ONAY4=1 and ONAY4KL= @Username) or
		(o.ONAY5=1 and ONAY5KL= @Username) )
		) as a

		IF (@MESAI=1)
		SELECT *
		INTO #MESAI1 FROM 
		(
	select POSTA,INOUTPUT,IDNO,IZIN_TIP,PRSICIL,[NAME],TOPLAMKALAN, case 
when PARSENAME(YFM,1)=0  then convert(varchar,PARSENAME(YFM,2))+'.00'
when PARSENAME(YFM,1)>0 and PARSENAME(YFM,1)<=15 then convert(varchar,PARSENAME(YFM,2))+'.15'
	   when PARSENAME(YFM,1)>15 and PARSENAME(YFM,1)<=30 then convert(varchar,PARSENAME(YFM,2))+'.30'
	   when PARSENAME(YFM,1)>30 and PARSENAME(YFM,1)<=45 then convert(varchar,PARSENAME(YFM,2))+'.45'
	   when PARSENAME(YFM,1)>45 and PARSENAME(YFM,1)<=59 then convert(varchar,PARSENAME(YFM,2)+1)+'.00' end 
YILLIK_FAZLA_MESAI, NEDEN,TARIH,BAS_TARIH,BIT_TARIH,null ISBASI,SURE,SEBEP,SEBEP2,ACIKLAMA,RET_ACIK,AUTH from (

		select '' POSTA ,'' INOUTPUT,m.IDNO, 'MESAI' IZIN_TIP ,m.PRSICIL, p.ADI +' '+ p.SOYADI [NAME],0 TOPLAMKALAN,
		CAST(((convert(int,isnull(f.FazlaMesai,0)+isnull(ptj.SURE,0))) / 60) AS VARCHAR(10)) + '.' + CAST ((convert(int,isnull(f.FazlaMesai,0)+isnull(ptj.SURE,0)))%60 AS VARCHAR(10)) YFM,
		m.NEDEN+'-'+n.TURU 
		NEDEN,TARIH,  TARIH BAS_TARIH,DONUS_SAATI BIT_TARIH, substring(convert(varchar,m.SURE,114),1,5) SURE, '' SEBEP,'' SEBEP2, ACIKLAMA, RET_ACIK,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from dbo.ONY_MESAI m (nolock) 
		left join [dbo].PERSONEL1 p (nolock) on m.PRSICIL=p.SICILNO 
		left join BCS_FAZLA_MESAI f (nolock) on p.SICILNO=f.Sicil
		left join dbo.FMNED n (nolock) on m.NEDEN=n.KODU 
			left join (select PRSICIL,ISNULL(SUM((DATEPART(HOUR, SURE) * 60) + DATEPART(MINUTE, SURE)), 0) SURE from  PUANTAJ1 (nolock) 
	where CLKODU IN(SELECT KODU FROM CALISMA WHERE TIPI = 'MESAİ') AND ONAY = 'EVET'  and convert(varchar,TARIH,112)>(select TransferDate from BCS_PARAMETERS nolock)
	and TARIH >= DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)  AND TARIH <= GETDATE() 

	group by PRSICIL) ptj on ptj.PRSICIL=p.SICILNO 
		where  1=1 and  m.IDNO=isnull(@IDNO,m.IDNO)
		----and (POST<>1 and RET=0)  
		and DATEDIFF(DAY,m.TARIH,GETDATE())<(select FmGecmisIslemSure from dbo.BCS_PARAMETERS)
		and (p.ISCIKT is null or p.ISCIKT>GETDATE())
		and m.PRSICIL in (select SICILNO from [dbo].PERSONEL1 nolock where (AMIR1=@Username or AMIR2=@Username or AMIR3=@Username or AMIR4=@Username 
		or AMIR5=@Username))
		and (
		(m.ONAY1=1 and ONAY1KL= @Username) or
		(m.ONAY2=1 and ONAY2KL= @Username) or
		(m.ONAY3=1 and ONAY3KL= @Username) or
		(m.ONAY4=1 and ONAY4KL= @Username) or
		(m.ONAY5=1 and ONAY5KL= @Username) )
		) a )a 

		 IF (@VARDIYA=1)
		SELECT *
		INTO #VARDIYA1 FROM 
		(
		select '' POSTA ,'' INOUTPUT, o.IDNO, 'VARDIYA' IZIN_TIP , PRSICIL, p.ADI +' '+ p.SOYADI [NAME],0 TOPLAMKALAN,''YILLIK_FAZLA_MESAI, '' NEDEN,null TARIH ,null BAS_TARIH,null BIT_TARIH,null ISBASI,'0' SAAT,'' SEBEP,'' SEBEP2, '' ACIKLAMA,RET_ACIK,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from dbo.ONY_VARDIYA o (nolock) 
		left join [dbo].PERSONEL1 p (nolock) on o.PRSICIL=p.SICILNO
		--left join dbo.FMNED n (nolock) on o.NEDEN=n.KODU
		where  1=1 and  o.IDNO=isnull(@IDNO,o.IDNO)
		---and (POST<>1 and RET=0)  
		and (p.ISCIKT is null or p.ISCIKT>GETDATE())
		and PRSICIL in (select SICILNO from [dbo].PERSONEL1 nolock where (AMIR1=@Username or AMIR2=@Username or AMIR3=@Username or AMIR4=@Username 
		or AMIR5=@Username))
		and (
		(o.ONAY1=1 and ONAY1KL= @Username) or
		(o.ONAY2=1 and ONAY2KL= @Username) or
		(o.ONAY3=1 and ONAY3KL= @Username) or
		(o.ONAY4=1 and ONAY4KL= @Username) or
		(o.ONAY5=1 and ONAY5KL= @Username) )
		) as a


		IF (@HAREKET=1) 
	SELECT *
	INTO #HAREKET1 FROM 
	(
	select  '' POSTA ,GCKODU INOUTPUT, m.IDNO, 'HAREKET' IZIN_TIP ,  m.PRSICIL, p.ADI +' '+ p.SOYADI [NAME],0 TOPLAMKALAN, 
	 '' YILLIK_FAZLA_MESAI,m.NEDEN+'-'+n.TURU NEDEN, TARIH, TARIH BAS_TARIH,null BIT_TARIH,null ISBASI,convert(varchar,ZAMAN,108) SURE, '' SEBEP,'' SEBEP2, ACIKLAMA,  RET_ACIK ,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from dbo.ONY_HAREKET m (nolock) 
	left join [dbo].PERSONEL1 p (nolock) on m.PRSICIL=p.SICILNO
	left join dbo.FMNED n (nolock) on m.NEDEN=n.KODU 
	left join (select PRSICIL,ISNULL(SUM((DATEPART(HOUR, SURE) * 60) + DATEPART(MINUTE, SURE)), 0) SURE from  PUANTAJ1 (nolock) 
	where CLKODU IN(SELECT KODU FROM CALISMA WHERE TIPI = 'MESAİ') AND ONAY = 'EVET' 
	and TARIH >= DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)  AND TARIH <= GETDATE() 
	group by PRSICIL) ptj on ptj.PRSICIL=p.SICILNO 
	where  1=1 and  m.IDNO=isnull(@IDNO,m.IDNO)
	----and (POST<>1 and RET=0)  
		and (p.ISCIKT is null or p.ISCIKT>GETDATE())
	and DATEDIFF(DAY,m.TARIH,GETDATE())<(select HktGecmisIslemSure from dbo.BCS_PARAMETERS)
		and m.PRSICIL in (select SICILNO from [dbo].PERSONEL1 nolock where (AMIR1=@Username or AMIR2=@Username or AMIR3=@Username or AMIR4=@Username 
		or AMIR5=@Username))
		and (
		(m.ONAY1=1 and ONAY1KL= @Username) or
		(m.ONAY2=1 and ONAY2KL= @Username) or
		(m.ONAY3=1 and ONAY3KL= @Username) or
		(m.ONAY4=1 and ONAY4KL= @Username) or
		(m.ONAY5=1 and ONAY5KL= @Username) )
		) as a


		 SET @SQL = 'select * from (' 
		IF OBJECT_ID('tempdb..#MESAI1') IS NOT NULL  
		SET @SQL = @SQL + 'SELECT  * from #MESAI1 union all ' 
		 IF OBJECT_ID('tempdb..#GUNLUK1') IS NOT NULL  
		SET @SQL = @SQL + 'SELECT * from #GUNLUK1 union all ' 
		IF OBJECT_ID('tempdb..#SAATLIK1') IS NOT NULL  
		SET @SQL = @SQL + 'SELECT * from #SAATLIK1 union all ' 
		IF OBJECT_ID('tempdb..#VARDIYA1') IS NOT NULL  
		SET @SQL = @SQL + 'SELECT * from #VARDIYA1 union all ' 
			IF OBJECT_ID('tempdb..#HAREKET1') IS NOT NULL  
		SET @SQL = @SQL + 'SELECT * from #HAREKET1 union all ' 
			IF OBJECT_ID('tempdb..#POSTA1') IS NOT NULL  
		SET @SQL = @SQL + 'SELECT * from #POSTA1 union all ' 
	
		SET @SQL= SUBSTRING(@SQL,0,LEN(@SQL)-9)
		SET @SQL= @SQL+ ') t' 
		IF @TYPE is not null
		SET @SQL= @SQL+' where IZIN_TIP='''+
		case when @TYPE=1 then 'GUNLUK'
		when @TYPE=2 then 'SAATLIK'
		when @TYPE=3 then 'MESAI'
		when @TYPE=4 then 'VARDIYA' 
		when @TYPE=5 then 'HAREKET' 
		when @TYPE=6 then 'POSTA' 
		
		else null 
		end+''''; 


 
	END

	
	IF @FilterType=2 
	BEGIN

	IF @POSTA=1 
		SELECT *
		INTO #POSTA2 FROM 
		(
select  p1.ADI POSTA_KODU,'' INOUTPUT, m.IDNO, 'POSTA' IZIN_TIP ,m.PRSICIL, p.ADI +' '+ p.SOYADI [NAME],0 TOPLAMKALAN, 
	 CONVERT(char(5), DATEADD(MINUTE, convert(int,ptj.SURE), '19000101'), 108)  YILLIK_FAZLA_MESAI,'' NEDEN,TARIH, TARIH BAS_TARIH,'' BIT_TARIH,null ISBASI,substring(convert(varchar,'00:00',114),1,5) SURE, '' SEBEP,'' SEBEP2, ACIKLAMA, RET_ACIK,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from dbo.ONY_POSTA m (nolock) 
	left join [dbo].PERSONEL1 p (nolock) on m.PRSICIL=p.SICILNO
	--left join dbo.FMNED n (nolock) on m.NEDEN=n.KODU 
	left join POSTA p1 (nolock) on m.POSTA_KODU=p1.KODU
	left join (select PRSICIL,ISNULL(SUM((DATEPART(HOUR, SURE) * 60) + DATEPART(MINUTE, SURE)), 0) SURE from  PUANTAJ1 (nolock)  
	where CLKODU IN(SELECT KODU FROM CALISMA WHERE TIPI = 'MESAİ') AND ONAY = 'EVET' 
	and TARIH >= DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)  AND TARIH <= GETDATE() 
	group by PRSICIL) ptj on ptj.PRSICIL=p.SICILNO 
		where  1=1 and  m.IDNO=isnull(@IDNO,m.IDNO) and RET>0 
		and (p.ISCIKT is null or p.ISCIKT>GETDATE()) 
		and DATEDIFF(DAY,m.TARIH,GETDATE())<(select HktGecmisIslemSure from dbo.BCS_PARAMETERS)
		and m.PRSICIL in (select SICILNO from [dbo].PERSONEL1 nolock where (AMIR1=@Username or AMIR2=@Username or AMIR3=@Username or AMIR4=@Username  or AMIR5=@Username)) 
		and (
	  	(m.ONAY1=0 and ONAY1KL= case when RET=1 then @Username end ) or
		(m.ONAY2=0 and ONAY2KL= case when RET=2 then @Username end) or
		(m.ONAY3=0 and ONAY3KL= case when RET=3 then @Username end) or
		(m.ONAY4=0 and ONAY4KL= case when RET=4 then @Username end) or
		(m.ONAY5=0 and ONAY5KL= case when RET=5 then @Username end) )
		) as a



		IF (@GUNLUK=1)
		SELECT *
		INTO #GUNLUK2 FROM 
		(
		select '' POSTA ,'' INOUTPUT,o.IDNO, 'GUNLUK' IZIN_TIP ,o.PRSICIL, p.ADI +' '+ p.SOYADI  [NAME],TOPLAMKALAN, '' YILLIK_FAZLA_MESAI,o.NEDEN+'-'+ n.ADI NEDEN,BASTARIH TARIH,BASTARIH BAS_TARIH,BITTARIH BIT_TARIH,ISBASI,convert(varchar,GUN) SURE,  SEBEP,SEBEP2, ACIKLAMA , RET_ACIK,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from [dbo].[ONY_GUNIZIN] o (nolock) 
		left join [dbo].PERSONEL1 p (nolock) on o.PRSICIL=p.SICILNO
		left join dbo.CALISMA n (nolock) on o.NEDEN=n.KODU 
		left join (select PRSICIL, max(YIL) YIL from dbo.YILIZHESAP1 (nolock) group by PRSICIL) y on y.PRSICIL=o.PRSICIL
		left join (select YIL, PRSICIL,sum(TOPLAMKALAN) TOPLAMKALAN from dbo.YILIZHESAP1 (nolock) group by YIL, PRSICIL) y2  on y2.PRSICIL=o.PRSICIL and y2.YIL=y.YIL
		where  1=1 and  o.IDNO=isnull(@IDNO,o.IDNO) and (RET>0)
		and DATEDIFF(DAY,o.BASTARIH,GETDATE())<(select GiGecmisIslemSure from dbo.BCS_PARAMETERS) 
		and (p.ISCIKT is null or p.ISCIKT>GETDATE())
		and o.PRSICIL in (select SICILNO from [dbo].PERSONEL1 nolock where (AMIR1=@Username or AMIR2=@Username or AMIR3=@Username or AMIR4=@Username 
		or AMIR5=@Username)) 
		and (
	  	(o.ONAY1=0 and ONAY1KL= case when RET=1 then @Username end ) or
		(o.ONAY2=0 and ONAY2KL= case when RET=2 then @Username end) or
		(o.ONAY3=0 and ONAY3KL= case when RET=3 then @Username end) or
		(o.ONAY4=0 and ONAY4KL= case when RET=4 then @Username end) or
		(o.ONAY5=0 and ONAY5KL= case when RET=5 then @Username end) )
		) as a

		IF (@SAATLIK=1)
		SELECT *
		INTO #SAATLIK2 FROM 
		(
		select '' POSTA ,'' INOUTPUT,o.IDNO,'SAATLIK' IZIN_TIP ,PRSICIL, p.ADI +' '+ p.SOYADI [NAME],0 TOPLAMKALAN,'' YILLIK_FAZLA_MESAI,o.NEDEN+'-'+ n.ADI NEDEN,TARIH, BASSAAT BAS_TARIH,BITSAAT BIT_TARIH,null ISBASI,substring(convert(varchar,SAAT,8),1,5) SAAT, SEBEP,SEBEP2, ACIKLAMA, RET_ACIK,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from dbo.ONY_SAATIZIN o (nolock) 
		left join [dbo].PERSONEL1 p (nolock) on o.PRSICIL=p.SICILNO
		left join dbo.CALISMA n (nolock) on o.NEDEN=n.KODU		
		where  1=1 and  o.IDNO=isnull(@IDNO,o.IDNO) and (RET>0)
		and DATEDIFF(DAY,o.TARIH,GETDATE())<(select SiGecmisIslemSure from dbo.BCS_PARAMETERS)
		and (p.ISCIKT is null or p.ISCIKT>GETDATE())
		and PRSICIL in (select SICILNO from [dbo].PERSONEL1 nolock where (AMIR1=@Username or AMIR2=@Username or AMIR3=@Username or AMIR4=@Username 
		or AMIR5=@Username)) 
		and (
	  	(o.ONAY1=0 and ONAY1KL= case when RET=1 then @Username end ) or
		(o.ONAY2=0 and ONAY2KL= case when RET=2 then @Username end) or
		(o.ONAY3=0 and ONAY3KL= case when RET=3 then @Username end) or
		(o.ONAY4=0 and ONAY4KL= case when RET=4 then @Username end) or
		(o.ONAY5=0 and ONAY5KL= case when RET=5 then @Username end) )
		) as a

		IF (@MESAI=1)
		SELECT *
		INTO #MESAI2 FROM 
		(
	select POSTA,INOUTPUT,IDNO,IZIN_TIP,PRSICIL,[NAME],TOPLAMKALAN, case 
when PARSENAME(YFM,1)=0  then convert(varchar,PARSENAME(YFM,2))+'.00'
when PARSENAME(YFM,1)>0 and PARSENAME(YFM,1)<=15 then convert(varchar,PARSENAME(YFM,2))+'.15'
	   when PARSENAME(YFM,1)>15 and PARSENAME(YFM,1)<=30 then convert(varchar,PARSENAME(YFM,2))+'.30'
	   when PARSENAME(YFM,1)>30 and PARSENAME(YFM,1)<=45 then convert(varchar,PARSENAME(YFM,2))+'.45'
	   when PARSENAME(YFM,1)>45 and PARSENAME(YFM,1)<=59 then convert(varchar,PARSENAME(YFM,2)+1)+'.00' end 
YILLIK_FAZLA_MESAI, NEDEN,TARIH,BAS_TARIH,BIT_TARIH,null ISBASI,SURE,SEBEP,SEBEP2,ACIKLAMA,RET_ACIK,AUTH   from (
	    select '' POSTA ,'' INOUTPUT,m.IDNO, 'MESAI' IZIN_TIP ,m.PRSICIL, p.ADI +' '+ p.SOYADI [NAME],0 TOPLAMKALAN,
		CAST(((convert(int,isnull(f.FazlaMesai,0)+isnull(ptj.SURE,0))) / 60) AS VARCHAR(10)) + '.' + CAST ((convert(int,isnull(f.FazlaMesai,0)+isnull(ptj.SURE,0)))%60 AS VARCHAR(10)) YFM,
		m.NEDEN
		+'-'+ n.TURU 
		NEDEN,TARIH, TARIH BAS_TARIH,DONUS_SAATI BIT_TARIH, substring(convert(varchar,m.SURE,114),1,5) SURE, '' SEBEP,'' SEBEP2, ACIKLAMA, RET_ACIK,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from dbo.ONY_MESAI m (nolock) 
		left join [dbo].PERSONEL1 p (nolock) on m.PRSICIL=p.SICILNO 
		left join dbo.FMNED n (nolock) on m.NEDEN=n.KODU		
		left join BCS_FAZLA_MESAI f (nolock) on p.SICILNO=f.Sicil
		left join (select PRSICIL,ISNULL(SUM((DATEPART(HOUR, SURE) * 60) + DATEPART(MINUTE, SURE)), 0) SURE from  PUANTAJ1 (nolock) 
	where CLKODU IN(SELECT KODU FROM CALISMA WHERE TIPI = 'MESAİ') AND ONAY = 'EVET'  and convert(varchar,TARIH,112)>(select TransferDate from BCS_PARAMETERS nolock)
	and TARIH >= DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)  AND TARIH <= GETDATE() 
	group by PRSICIL) ptj on ptj.PRSICIL=p.SICILNO 
		where  1=1 and  m.IDNO=isnull(@IDNO,m.IDNO) and (RET>0) 
		and DATEDIFF(DAY,m.TARIH,GETDATE())<(select FmGecmisIslemSure from dbo.BCS_PARAMETERS)
		and (p.ISCIKT is null or p.ISCIKT>GETDATE())
		and m.PRSICIL in (select SICILNO from [dbo].PERSONEL1 nolock where (AMIR1=@Username or AMIR2=@Username or AMIR3=@Username or AMIR4=@Username 
		or AMIR5=@Username)) 
		and (
	  	(m.ONAY1=0 and ONAY1KL= case when RET=1 then @Username end ) or
		(m.ONAY2=0 and ONAY2KL= case when RET=2 then @Username end) or
		(m.ONAY3=0 and ONAY3KL= case when RET=3 then @Username end) or
		(m.ONAY4=0 and ONAY4KL= case when RET=4 then @Username end) or
		(m.ONAY5=0 and ONAY5KL= case when RET=5 then @Username end) )
		) a ) a

		IF (@VARDIYA=1)
		SELECT *
		INTO #VARDIYA2 FROM 
		(
		select '' POSTA ,'' INOUTPUT,o.IDNO, 'VARDIYA' IZIN_TIP , PRSICIL, p.ADI +' '+ p.SOYADI [NAME],0 TOPLAMKALAN,''YILLIK_FAZLA_MESAI, '' NEDEN,null TARIH ,null BAS_TARIH,null BIT_TARIH,null ISBASI,'0' SAAT,'' SEBEP,'' SEBEP2, '' ACIKLAMA,RET_ACIK,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from dbo.ONY_VARDIYA o (nolock) 
		left join [dbo].PERSONEL1 p (nolock) on o.PRSICIL=p.SICILNO
		--left join dbo.FMNED n (nolock) on o.NEDEN=n.KODU		
		where  1=1 and  o.IDNO=isnull(@IDNO,o.IDNO) and (RET>0) 
		and (p.ISCIKT is null or p.ISCIKT>GETDATE())
		and PRSICIL in (select SICILNO from [dbo].PERSONEL1 nolock where (AMIR1=@Username or AMIR2=@Username or AMIR3=@Username or AMIR4=@Username 
		or AMIR5=@Username)) 
		and (
	  	(o.ONAY1=0 and ONAY1KL= case when RET=1 then @Username end ) or
		(o.ONAY2=0 and ONAY2KL= case when RET=2 then @Username end) or
		(o.ONAY3=0 and ONAY3KL= case when RET=3 then @Username end) or
		(o.ONAY4=0 and ONAY4KL= case when RET=4 then @Username end) or
		(o.ONAY5=0 and ONAY5KL= case when RET=5 then @Username end) )
		) as a


		IF @HAREKET=1 
		SELECT *
		INTO #HAREKET2 FROM 
		(
	select '' POSTA ,GCKODU INOUTPUT, m.IDNO, 'HAREKET' IZIN_TIP ,  m.PRSICIL, p.ADI +' '+ p.SOYADI [NAME],0 TOPLAMKALAN, 
	 '' YILLIK_FAZLA_MESAI,m.NEDEN+'-'+n.TURU NEDEN, TARIH, TARIH BAS_TARIH,null BIT_TARIH,null ISBASI,convert(varchar,ZAMAN,108) SURE, '' SEBEP,'' SEBEP2, ACIKLAMA,  RET_ACIK ,case when ONAY1KL= @Username and ONAY2KL is not null then 0 
		when ONAY2KL= @Username and ONAY3KL is not null then 0 
		when ONAY3KL= @Username and ONAY4KL is not null then 0 
		when ONAY4KL= @Username and ONAY5KL is not null then 0 else 1 end  AUTH from dbo.ONY_HAREKET m (nolock) 
	left join [dbo].PERSONEL1 p (nolock) on m.PRSICIL=p.SICILNO
	left join dbo.FMNED n (nolock) on m.NEDEN=n.KODU 
	left join (select PRSICIL,ISNULL(SUM((DATEPART(HOUR, SURE) * 60) + DATEPART(MINUTE, SURE)), 0) SURE from  PUANTAJ1 (nolock) 
	where CLKODU IN(SELECT KODU FROM CALISMA WHERE TIPI = 'MESAİ') AND ONAY = 'EVET' 
	and TARIH >= DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)  AND TARIH <= GETDATE() 
	group by PRSICIL) ptj on ptj.PRSICIL=p.SICILNO 
		where  1=1 and  m.IDNO=isnull(@IDNO,m.IDNO) and RET>0 
		and (p.ISCIKT is null or p.ISCIKT>GETDATE()) 
		and DATEDIFF(DAY,m.TARIH,GETDATE())<(select HktGecmisIslemSure from dbo.BCS_PARAMETERS)
		and m.PRSICIL in (select SICILNO from [dbo].PERSONEL1 nolock where (AMIR1=@Username or AMIR2=@Username or AMIR3=@Username or AMIR4=@Username  or AMIR5=@Username)) 
		and (
	  	(m.ONAY1=0 and ONAY1KL= case when RET=1 then @Username end ) or
		(m.ONAY2=0 and ONAY2KL= case when RET=2 then @Username end) or
		(m.ONAY3=0 and ONAY3KL= case when RET=3 then @Username end) or
		(m.ONAY4=0 and ONAY4KL= case when RET=4 then @Username end) or
		(m.ONAY5=0 and ONAY5KL= case when RET=5 then @Username end) )
		) as a


		 SET @SQL = 'select * from (' 
		IF OBJECT_ID('tempdb..#MESAI2') IS NOT NULL  
		SET @SQL = @SQL + 'SELECT  * from #MESAI2 union all ' 
		 IF OBJECT_ID('tempdb..#GUNLUK2') IS NOT NULL  
		SET @SQL = @SQL + 'SELECT * from #GUNLUK2 union all ' 
		IF OBJECT_ID('tempdb..#SAATLIK2') IS NOT NULL  
		SET @SQL = @SQL + 'SELECT * from #SAATLIK2 union all ' 
		IF OBJECT_ID('tempdb..#VARDIYA2') IS NOT NULL  
		SET @SQL = @SQL + 'SELECT * from #VARDIYA2 union all ' 
		IF OBJECT_ID('tempdb..#HAREKET2') IS NOT NULL  
		SET @SQL = @SQL + 'SELECT * from #HAREKET2 union all ' 
		IF OBJECT_ID('tempdb..#POSTA2') IS NOT NULL  
		SET @SQL = @SQL + 'SELECT * from #POSTA2 union all ' 
	
		SET @SQL= SUBSTRING(@SQL,0,LEN(@SQL)-9)
		SET @SQL= @SQL+ ') t' 
		IF @TYPE is not null
		SET @SQL= @SQL+' where IZIN_TIP='''+
		case when @TYPE=1 then 'GUNLUK'
		when @TYPE=2 then 'SAATLIK'
		when @TYPE=3 then 'MESAI'
		when @TYPE=4 then 'VARDIYA' 
		when @TYPE=5 then 'HAREKET'
		when @TYPE=6 then 'POSTA'
		else null 
		end+'''';   

 
	END

	
	IF LEN(@SQL)>20
	BEGIN 
	EXEC (@SQL) 
	--print @SQL
	END
	ELSE RETURN


	IF OBJECT_ID('tempdb..#MESAI') IS NOT NULL DROP TABLE #MESAI
	IF OBJECT_ID('tempdb..#MESAI1') IS NOT NULL DROP TABLE #MESAI1
	IF OBJECT_ID('tempdb..#MESAI2') IS NOT NULL DROP TABLE #MESAI2
	IF OBJECT_ID('tempdb..#GUNLUK') IS NOT NULL DROP TABLE #GUNLUK
	IF OBJECT_ID('tempdb..#GUNLUK1') IS NOT NULL DROP TABLE #GUNLUK1
	IF OBJECT_ID('tempdb..#GUNLUK2') IS NOT NULL DROP TABLE #GUNLUK2
	IF OBJECT_ID('tempdb..#SAATLIK') IS NOT NULL DROP TABLE #SAATLIK
	IF OBJECT_ID('tempdb..#SAATLIK1') IS NOT NULL DROP TABLE #SAATLIK1
	IF OBJECT_ID('tempdb..#SAATLIK2') IS NOT NULL DROP TABLE #SAATLIK2
	IF OBJECT_ID('tempdb..#VARDIYA') IS NOT NULL DROP TABLE #VARDIYA
	IF OBJECT_ID('tempdb..#VARDIYA1') IS NOT NULL DROP TABLE #VARDIYA1
	IF OBJECT_ID('tempdb..#VARDIYA2') IS NOT NULL DROP TABLE #VARDIYA2
	IF OBJECT_ID('tempdb..#HAREKET') IS NOT NULL DROP TABLE #HAREKET
	IF OBJECT_ID('tempdb..#HAREKET1') IS NOT NULL DROP TABLE #HAREKET1
	IF OBJECT_ID('tempdb..#HAREKET2') IS NOT NULL DROP TABLE #HAREKET2
	IF OBJECT_ID('tempdb..#POSTA') IS NOT NULL DROP TABLE #POSTA
	IF OBJECT_ID('tempdb..#POSTA1') IS NOT NULL DROP TABLE #POSTA1
	IF OBJECT_ID('tempdb..#POSTA2') IS NOT NULL DROP TABLE #POSTA2


END

 GO
/****** Object:  StoredProcedure [dbo].[BCS_CALISMA_SELECT]    Script Date: 19.09.2021 06:59:18 ******/
 

CREATE PROC  [dbo].[BCS_CALISMA_SELECT]
@USER varchar(50)=null
AS
---İzin sayfası neden
select KODU,ADI from dbo.CALISMA nolock 
where TIPI='İZİN'
 GO

/****** Object:  StoredProcedure [dbo].[BCS_CONTROL_DEMAND]    Script Date: 19.09.2021 06:59:18 ******/
--declare @STARTDATE smalldatetime='20210405';
--declare @ENDDATE smalldatetime='20210405';
--declare @ReturnCode varchar(20) ;
--exec [dbo].[BCS_CONTROL_DEMAND] '2',1,'0002',@STARTDATE,@ENDDATE,0,'11:00','13:00','02:00',null,null,null,null,'19',
--'','','',null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,
--@ReturnCode output

CREATE PROC  [dbo].[BCS_CONTROL_DEMAND]
		   @TYPE varchar(50)=null,
		   @SRKODU int,
           @PRSICIL varchar(15),
		   @STARTDATE smalldatetime=null,
		   @ENDDATE smalldatetime=null,
		   @DAY int=null,
		   @STARTTIME datetime=null,
		   @ENDTIME datetime=null,
		   @TIME datetime=null,
           @IOSTARTDATE smalldatetime=null,
           @IOTIME smalldatetime=null,
           @INOUTPUT int=null,
		   @POSTA int=null,
		   @NEDEN  varchar(10),
           @SEBEP varchar(100)='',
           @SEBEP2 varchar(100)='',
           @ACIKLAMA varchar(100)='',
           @ONAY1 bit=null,
           @ONAY1KL varchar(50)=null,
           @ONAY2 bit=null,
           @ONAY2KL varchar(50)=null,
           @ONAY3 bit=null,
           @ONAY3KL varchar(50)=null,
           @ONAY4 bit=null,
           @ONAY4KL varchar(50)=null,
           @ONAY5 bit=null,
           @ONAY5KL varchar(50)=null,
           @ONAY6 bit=null,
           @ONAY6KL varchar(50)=null,
           @ONAY7 bit=null,
           @ONAY7KL varchar(50)=null,
           @ONAY8 bit=null,
           @ONAY8KL varchar(50)=null,
           @ONAY9 bit=null,
           @ONAY9KL varchar(50)=null,
           @ONAY10 bit=null,
           @ONAY10KL varchar(50)=null,
           @ReturnCode varchar(20) output
AS
BEGIN
DECLARE @IDNO  bigint=0;
SET @ReturnCode='200'

BEGIN TRY


--SQL versiyon kaynaklı hata alıyor... TRY_PARSE kullanılacak....
--DECLARE @STARTTIMEE datetime= convert(datetime,'1899-12-30 '+convert(varchar,@STARTTIME,114));
--DECLARE @ENDTIMEE datetime=  convert(datetime,'1899-12-30 '+convert(varchar,@ENDTIME,114));
--DECLARE @TIMEE datetime=  convert(datetime,'1899-12-30 '+convert(varchar,@TIME,114));

--DECLARE @STARTTIMEE datetime=  TRY_PARSE('1899-12-30 '+convert(varchar,@STARTTIME,114) as DATETIME)
--DECLARE @ENDTIMEE datetime=   TRY_PARSE('1899-12-30 '+convert(varchar,@ENDTIME,114) as DATETIME)
--DECLARE @TIMEE datetime=   TRY_PARSE('1899-12-30 '+convert(varchar,@TIME,114) as DATETIME)

SET @STARTTIME=  DATEADD(day,-2,@STARTTIME)
SET @ENDTIME=   DATEADD(day,-2,@ENDTIME)
SET @TIME=DATEADD(day,-2,@TIME)

IF (@TYPE='1')
BEGIN
 
	if EXISTS (select * from [dbo].[ONY_GUNIZIN] where BASTARIH= @STARTDATE  and RET=0 and PRSICIL=RTRIM(@PRSICIL)) 
	BEGIN
	SET @ReturnCode='450'
	return;
	END
END


IF (@TYPE='2')
BEGIN
 
	if EXISTS (select * from [dbo].[ONY_SAATIZIN] where TARIH= @STARTDATE and (
	(BASSAAT>= isnull(@STARTTIME,BASSAAT) and  BASSAAT<= isnull(@ENDTIME,BASSAAT)) or 
	(BITSAAT>= isnull(@STARTTIME,BITSAAT) and  BITSAAT<= isnull(@ENDTIME,BITSAAT))) and RET=0 and PRSICIL=RTRIM(@PRSICIL)
	) 
	BEGIN
	
	SET @ReturnCode='450'
	return;
	END
END

IF (@TYPE='3')
BEGIN
 
 
	IF (@STARTTIME='00:00' or @ENDTIME='00:00')
	BEGIN

 
		if EXISTS (select * from [dbo].[ONY_MESAI] where TARIH= @STARTDATE and (SURE=ISNULL(@TIME,SURE) and RET=0)
		 and PRSICIL=RTRIM(@PRSICIL)  ) 
		BEGIN
		SET @ReturnCode='450'
		return;
		END
	END
	ELSE
	BEGIN
 
	if EXISTS (select * from [dbo].[ONY_MESAI] where TARIH= @STARTDATE and (
	(BASZAMAN>= isnull(@STARTTIME,BASZAMAN) and  BASZAMAN<= isnull(@ENDTIME,BASZAMAN)) or 
	(BITZAMAN>= isnull(@STARTTIME,BITZAMAN) and  BITZAMAN<= isnull(@ENDTIME,BITZAMAN))) and RET=0 and PRSICIL=RTRIM(@PRSICIL)) 
	BEGIN
	SET @ReturnCode='450'
	return;
	END
	END
END

IF (@TYPE='5')
BEGIN

	if EXISTS (select * from [dbo].[ONY_HAREKET] where TARIH= @IOSTARTDATE and 
	ZAMAN= isnull(@IOTIME,ZAMAN) and GCKODU= (case when isnull(@INOUTPUT,-1)='0' then 'G' else 'C' end) and RET=0 and PRSICIL=RTRIM(@PRSICIL) ) 
	BEGIN
	SET @ReturnCode='450'
	return;
	END

END 

IF (@TYPE='6')
BEGIN

	if EXISTS (select * from [dbo].[ONY_POSTA] where TARIH= @STARTDATE and 
	POSTA_KODU= isnull(@POSTA,POSTA_KODU) and RET=0 and PRSICIL=RTRIM(@PRSICIL) ) 
	BEGIN
	SET @ReturnCode='450'
	return;
	END

END


END TRY  
BEGIN CATCH

SET @ReturnCode='500'
END CATCH 			  
			  
END

 GO
/****** Object:  StoredProcedure [dbo].[BCS_GET_PASSWORD]    Script Date: 19.09.2021 06:59:18 ******/
CREATE PROC  [dbo].[BCS_GET_PASSWORD]
(
@Username varchar(50)=null,
@ReturnCode varchar(20) output
)
AS

declare @mailAdresss varchar(100)=null;

IF EXISTS(select * from dbo.PERSONEL_AMIR nolock where AMIR_KODU=@Username)
BEGIN select AMIR_KODU USERNAME, SIFRE,EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=@Username 
	SET @mailAdresss =  (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=@Username) 

END
ELSE
BEGIN

IF EXISTS(select * from dbo.ADRES1 a (nolock) where PRSICIL=@Username ) 
BEGIN
select SICILNO USERNAME,ONY_SIFRE SIFRE,a.EMAIL from dbo.PERSONEL1 p (nolock)  
left join dbo.ADRES1 a (nolock) on p.SICILNO=a.PRSICIL 
where SICILNO=@Username 

SET @mailAdresss =  (select a.EMAIL from dbo.PERSONEL1 p (nolock)  
left join dbo.ADRES1 a (nolock) on p.SICILNO=a.PRSICIL 
where SICILNO=@Username )

END

END

 if (@mailAdresss is null)
THROW 99001, 'Kullanıcı mail adres bilgisi tanımsız', 1;


SET @ReturnCode='200'
 
GO

/****** Object:  StoredProcedure [dbo].[WR_IZN_LMT]    Script Date: 11.02.2022 17:34:04 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[WR_IZN_LMT]
     @SIRKET INT, 
     @SICILNO VARCHAR(15), 
     @NEDEN INT, 
     @USER VARCHAR(50) 
 AS 
 BEGIN 
 SET DATEFORMAT DMY 
     SET ANSI_WARNINGS OFF 
     DECLARE @CMT_OTE VARCHAR(5) 
     DECLARE @HFT_OTE VARCHAR(5) 
     DECLARE @GNT_OTE VARCHAR(5) 
     DECLARE @OTELEME VARCHAR(200) 
     DECLARE @KRITER VARCHAR(100) 
     DECLARE @SAT_LIMIT INT 
     DECLARE @GUN_LIMIT INT 
     DECLARE @X INT 
     DECLARE @ILKTAR DATETIME 
     DECLARE @SONTAR DATETIME 
     DECLARE @ISGIRT DATETIME 
     SET @X=1 
     SET @CMT_OTE='HAYIR' 
     SET @HFT_OTE='HAYIR' 
     SET @GNT_OTE='HAYIR' 
 /*HAYALI TABLO ACILIYOR**/ 
     BEGIN TRY 
         DROP TABLE ##LIMIT 
     END TRY 
     BEGIN CATCH 
     END CATCH 
     BEGIN TRY 
         CREATE TABLE ##LIMIT (AYSLMT INT DEFAULT 0, 
                               YILLMT INT DEFAULT 0, 
                               TTLLMT INT DEFAULT 0) ON [PRIMARY] 
     END TRY 
     BEGIN CATCH 
     END CATCH 
     INSERT  INTO ##LIMIT (AYSLMT,YILLMT,TTLLMT) VALUES  (0,0,0) 
 /*HAYALI TABLO ACILIYOR**/ 
 /* OTELEME VARMI **/ 
     SELECT  @GNT_OTE=ISNULL(GTATIL,'HAYIR'),@HFT_OTE=ISNULL(HTATIL,'HAYIR'),@CMT_OTE=ISNULL(CMT,'HAYIR') 
     FROM    OTELEME 
     WHERE   SRKODU=@SIRKET AND CLKODU=@NEDEN 
     SET @KRITER=' AND PER.SICILNO='''+CONVERT(VARCHAR,@SICILNO)+'''' 
     IF @CMT_OTE<>'EVET' 
         SET @CMT_OTE='HAYIR' 
     IF @HFT_OTE<>'EVET' 
         SET @HFT_OTE='HAYIR' 
     IF @GNT_OTE<>'EVET' 
         SET @GNT_OTE='HAYIR' 
     SET @OTELEME='''Hafta İçi''' 
     IF @CMT_OTE='HAYIR' 
         SET @OTELEME=@OTELEME+',''Cumartesi''' 
     IF @HFT_OTE='HAYIR' 
         SET @OTELEME=@OTELEME+',''Hafta Tatili''' 
     IF @GNT_OTE='HAYIR' 
         SET @OTELEME=@OTELEME+',''Resmi/Dini Tatil'''	 
 /* OTELEME KONTROL EDILDI **/ 
 /* BUTUN PERSONELLERDE SICILI IS GIRIS TARIHINI BUL **/ 
     DECLARE @TABLO TABLE (SRKODU INT,SICILNO VARCHAR(50),KARTNO VARCHAR(50),ISGIRT DATETIME,ADI VARCHAR(50),SOYADI VARCHAR(50),PERTIP VARCHAR(10)); 
     INSERT  INTO @TABLO 
             EXEC WR_PER_TUM @SRKODU=@SIRKET,@SICILNO=@SICILNO 
     SELECT  @ISGIRT=ISGIRT FROM    @TABLO WHERE   SICILNO=@SICILNO AND SRKODU=@SIRKET 
 /* ISE GIRIS TARIHI BULUNDU **/ 
 /* OTELEME TANIMLARINA GORE LIMITLERI BULALIM **/ 
     WHILE @X<=3 
         BEGIN 
 	/* AYLIK LIMIT BULUNDU **/ 
             IF @X=1 
 		SELECT  @ILKTAR=CAST(AyIlkGun AS DATETIME),@SONTAR=CAST(AySonGun AS DATETIME)   FROM    dbo.TARIHLER WHERE   TARIH=CAST(GETDATE() AS DATETIME) 
 	/* YILLIK LIMIT BULUNDU **/ 
             IF @X=2 
                 SELECT  @ILKTAR=CAST(YilIlkGun AS DATETIME),@SONTAR=CAST(YilSonGun AS DATETIME) FROM    dbo.TARIHLER WHERE   TARIH=CAST(GETDATE() AS DATETIME) 
 	/* TOPLAM LIMIT BULUNDU **/ 
             IF @X=3 
                 SELECT  @ILKTAR=@ISGIRT,@SONTAR=CAST(AySonGun AS DATETIME)                  FROM    dbo.TARIHLER WHERE   TARIH=CAST(GETDATE() AS DATETIME) 
 	/* LIMITLERE GORE ARSIV,IZINLER,SAAT IZIN KONTROL EDILDI **/ 	 
             EXEC WR_ARV @SIRKET=@SIRKET,@KRITER=@KRITER,@CIHAZ='',@TARIH1=@ILKTAR,@TARIH2=@SONTAR,@USER=@USER,@GRUP=1,@DURUM=1	 
             EXEC WR_GIZ @SIRKET=@SIRKET,@KRITER=@KRITER,@CIHAZ='',@TARIH1=@ILKTAR,@TARIH2=@SONTAR,@USER=@USER,@GRUP=1,@DURUM=1	 
             EXEC WR_SIZ @SIRKET=@SIRKET,@KRITER=@KRITER,@CIHAZ='',@TARIH1=@ILKTAR,@TARIH2=@SONTAR,@USER=@USER,@GRUP=1,@DURUM=1	 
 	/* SAATLIK LIMIT ICIN TOPLAM DEGER ALINDI **/ 
             SELECT  @SAT_LIMIT=ISNULL(SUM((dbo.SAYI_YAP(SAAT)/60)/60),0) FROM    ##WR_SIZ_TBL 
             WHERE   SICILNO=CONVERT(VARCHAR,@SICILNO) AND TARIH>=CONVERT(VARCHAR,@ILKTAR) 
 			AND TARIH<=CONVERT(VARCHAR,@SONTAR) AND NEDEN=CONVERT(VARCHAR,@NEDEN) 
 	/* GUNLUK LIMITLERIN TOPLAM DEGERI ALINDI **/ 
 	SELECT  @GUN_LIMIT=ISNULL(SUM((dbo.SAYI_YAP(MAXCLIM)/60)/60),0) 
 	FROM    (SELECT T.TARIH, G.BASTARIH, G.BITTARIH, 
 	CASE WHEN A.MAXCLIM IS NULL THEN '07:30:00'ELSE MAXCLIM END MAXCLIM, 
 	CASE WHEN A.VRKODU IS NULL THEN '1' ELSE VRKODU END VRKODU, 
 	CASE WHEN A.TURU IS NULL THEN 'Hafta İçi' ELSE TURU END TURU 
 	FROM   dbo.TARIHLER T 
 	LEFT JOIN ##WR_ARV_TBL A ON A.TARIH=T.TARIH AND A.TURU IN (@OTELEME) 
 	LEFT JOIN ##WR_GIZ_TBL G ON G.NEDEN=CONVERT(VARCHAR,@NEDEN) AND 
 	((G.BASTARIH>=T.TARIH AND G.BASTARIH<=T.TARIH) OR (G.BASTARIH<=T.TARIH AND G.BITTARIH>=T.TARIH) OR 
 	 (G.BITTARIH>=T.TARIH AND G.BITTARIH<=T.TARIH)) 
 	WHERE  T.TARIH>=CONVERT(VARCHAR,@ILKTAR) AND T.TARIH<=CONVERT(VARCHAR,@SONTAR) 
 	AND G.SICILNO=CONVERT(VARCHAR,@SICILNO)) ARV 
 	/* LIMIT TABLOSU UPDATE EDILDI **/ 
             IF @X=1 
 	UPDATE  ##LIMIT SET AYSLMT=@SAT_LIMIT+@GUN_LIMIT 
             IF @X=2 
 	UPDATE  ##LIMIT SET YILLMT=@SAT_LIMIT+@GUN_LIMIT 
             IF @X=3 
 	UPDATE  ##LIMIT SET TTLLMT=@SAT_LIMIT+@GUN_LIMIT 
             SET @X=@X+1 
         END 
 END 

GO


/****** Object:  StoredProcedure [dbo].[WR_SIZ]    Script Date: 11.02.2022 17:33:28 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[WR_SIZ] @SIRKET VARCHAR(1000),
 	@KRITER VARCHAR(8000), 
 	@CIHAZ VARCHAR(8000), 
 	@TARIH1 DATETIME, 
 	@TARIH2 DATETIME, 
 	@USER VARCHAR(50), 
 	@GRUP INT, 
 	@DURUM INT 
 AS 
 	BEGIN 
 SET DATEFORMAT DMY 
     SET ANSI_WARNINGS OFF 
 DECLARE @BASTAR VARCHAR(10) 
 DECLARE @BITTAR VARCHAR(10) 
 DECLARE @BASSAT VARCHAR(10) 
 DECLARE @BITSAT VARCHAR(10) 
 SET @BASTAR=CONVERT(VARCHAR,@TARIH1,104) 
 SET @BITTAR=CONVERT(VARCHAR,@TARIH2,104) 
 SET @BASSAT=CONVERT(VARCHAR,@TARIH1,108) 
 SET @BITSAT=CONVERT(VARCHAR,@TARIH2,108) 
 BEGIN TRY 
 	DROP TABLE ##WR_SIZ_TBL 
 END TRY 
 BEGIN CATCH 
 END CATCH 
 SET ANSI_WARNINGS OFF 
 BEGIN TRY 
 	CREATE TABLE ##WR_SIZ_TBL 
 	([IDNO] INT NOT NULL, 
 		[SRKODU] [int] NOT NULL, 
 		[SICILNO] [varchar](50) NOT NULL, 
 		[NEDEN] [char](10) NOT NULL, 
 		[ACIKLAMA] [varchar](50) NOT NULL, 
 		[TARIH] [datetime] NOT NULL, 
 		[BASSAAT] [datetime] NOT NULL, 
 		[SAAT] [datetime] NOT NULL, 
 		[BITSAAT] [datetime] NOT NULL, 
 		[SEBEP] [char](50) NULL, 
 		[TRNID] [int] NULL CONSTRAINT [PK_##WR_SIZ_TBL] PRIMARY KEY CLUSTERED ([SRKODU] ASC,[SICILNO] ASC,TARIH ASC,NEDEN ASC,BASSAAT ASC)) 
 		ON 
 	[PRIMARY] 
 END TRY 
 BEGIN CATCH 
 END CATCH 
CREATE NONCLUSTERED INDEX ONY_FM_SP1 ON ##WR_SIZ_TBL (	SRKODU ASC,SICILNO ASC) 
 DECLARE @SQL2 VARCHAR(8000) 
 DECLARE @SQL3 VARCHAR(8000) 
 DECLARE @BASLIK VARCHAR(8000) 
 DECLARE @SORGULA VARCHAR(8000) 
 EXEC WR_YETKI @USER,@SIRKET 
 SET @BASLIK='INSERT INTO ##WR_SIZ_TBL ( IDNO,SRKODU ,SICILNO ,NEDEN ,ACIKLAMA ,TARIH ,BASSAAT,SAAT,BITSAAT ,SEBEP ,TRNID )' 
 DECLARE @SQL VARCHAR(8000) 
         SET @SQL='' 
 DECLARE @KODU NVARCHAR(50) 
 IF @SIRKET<>'' 
 	EXEC('DECLARE CR_SIRKET CURSOR FOR SELECT KODU FROM SIRKET WHERE KODU IN ('+@SIRKET+')') 
 ELSE 
 	EXEC('DECLARE CR_SIRKET CURSOR FOR SELECT KODU FROM SIRKET') 
 OPEN CR_SIRKET 
 FETCH NEXT FROM CR_SIRKET INTO @KODU 
 WHILE @@FETCH_STATUS=0 
 	BEGIN 
 		SET @SQL='SELECT G.IDNO,'+@KODU+' SRKODU ,PRSICIL SICILNO ,NEDEN ,C.ADI ACIKLAMA,TARIH ,BASSAAT,SAAT,BITSAAT ,SEBEP ,TRNID FROM dbo.SAATIZIN'+@KODU+' G 
        LEFT OUTER JOIN CALISMA C ON C.KODU=G.NEDEN 
        WHERE TARIH>='''+@BASTAR+''' AND TARIH<='''+@BITTAR+''' 
        AND EXISTS (SELECT SICILNO FROM ##WR_YETKI Y WHERE Y.KLADI='''+@USER+''' AND Y.SRKODU='+@KODU+' AND Y.SICILNO COLLATE Turkish_CI_AS=G.PRSICIL COLLATE Turkish_CI_AS)' 
 		SET @SORGULA=@BASLIK+' '+@SQL 
 		EXEC(@SORGULA) 
 		FETCH NEXT FROM CR_SIRKET INTO @KODU 
 	END 
 CLOSE CR_SIRKET 
 DEALLOCATE CR_SIRKET 
 SET ANSI_WARNINGS OFF 
 	END 

GO



/****** Object:  StoredProcedure [dbo].[WR_GIZ]    Script Date: 11.02.2022 17:32:51 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[WR_GIZ] @SIRKET VARCHAR(1000),
 	@KRITER VARCHAR(8000), 
 	@CIHAZ VARCHAR(8000), 
 	@TARIH1 DATETIME, 
 	@TARIH2 DATETIME, 
 	@USER VARCHAR(50), 
 	@GRUP INT, 
 	@DURUM INT 
 AS 
 	BEGIN 
     SET DATEFORMAT DMY 
     SET ANSI_WARNINGS OFF 
 DECLARE @BASTAR VARCHAR(10) 
 DECLARE @BITTAR VARCHAR(10) 
 DECLARE @BASSAT VARCHAR(10) 
 DECLARE @BITSAT VARCHAR(10) 
 SET @BASTAR=CONVERT(VARCHAR,@TARIH1,104) 
 SET @BITTAR=CONVERT(VARCHAR,@TARIH2,104) 
 SET @BASSAT=CONVERT(VARCHAR,@TARIH1,108) 
 SET @BITSAT=CONVERT(VARCHAR,@TARIH2,108) 
 BEGIN TRY 
 	DROP TABLE ##WR_GIZ_TBL 
 END TRY 
 BEGIN CATCH 
 END CATCH 
 BEGIN TRY 
 	TRUNCATE TABLE ##WR_GIZ_TBL 
 END TRY 
 BEGIN CATCH 
 END CATCH 
 SET ANSI_WARNINGS OFF 
 BEGIN TRY 
 	CREATE TABLE ##WR_GIZ_TBL 
 	([IDNO] INT NOT NULL, 
 		[SRKODU] [int] NOT NULL, 
 		[SICILNO] [varchar](50) NOT NULL, 
 		[NEDEN] [char](10) NOT NULL, 
 		[ACIKLAMA] [varchar](50) NULL, 
 		[BASTARIH] [datetime] NOT NULL, 
 		[GUN] [float] NOT NULL, 
 		[BITTARIH] [datetime] NOT NULL, 
 		[SEBEP] [char](50) NULL, 
 		[TRNID] [int] NULL, 
 		[ISBASI] [datetime] NULL) 
 		ON 
 	[PRIMARY] 
 END TRY 
 BEGIN CATCH 
 END CATCH 
CREATE NONCLUSTERED INDEX ONY_FM_SP1 ON ##WR_GIZ_TBL (	SRKODU ASC,SICILNO ASC) 
 DECLARE @SQL2 VARCHAR(8000) 
 DECLARE @SQL3 VARCHAR(8000) 
 DECLARE @BASLIK VARCHAR(8000) 
 DECLARE @SORGULA VARCHAR(8000) 
 EXEC WR_YETKI @USER,@SIRKET 
 SET @BASLIK='INSERT INTO ##WR_GIZ_TBL (IDNO, SRKODU ,SICILNO ,NEDEN ,ACIKLAMA ,BASTARIH ,GUN ,BITTARIH ,SEBEP ,TRNID ,ISBASI )' 
 DECLARE @SQL VARCHAR(8000) 
         SET @SQL= '' 
 DECLARE @KODU NVARCHAR(50) 
 IF @SIRKET<>'' 
 	EXEC('DECLARE CR_SIRKET CURSOR FOR SELECT KODU FROM SIRKET WHERE KODU IN ('+@SIRKET+')') 
 ELSE 
 	EXEC('DECLARE CR_SIRKET CURSOR FOR SELECT KODU FROM SIRKET') 
 OPEN CR_SIRKET 
 FETCH NEXT FROM CR_SIRKET INTO @KODU 
 WHILE @@FETCH_STATUS=0 
 	BEGIN 
 		SET @SQL='SELECT G.IDNO,'+@KODU+' SRKODU ,PRSICIL SICILNO ,NEDEN ,C.ADI ACIKLAMA,BASTARIH ,GUN ,BITTARIH ,SEBEP ,TRNID ,ISBASI FROM dbo.GUNIZIN'+@KODU+' G 
        LEFT OUTER JOIN CALISMA C ON C.KODU=G.NEDEN 
        WHERE (BASTARIH>='''+@BASTAR+''' AND BASTARIH<='''+@BITTAR+''' OR BITTARIH>='''+@BASTAR+''' AND BITTARIH<='''+@BITTAR+''' OR BASTARIH<='''+@BASTAR+''' AND BITTARIH>='''+@BITTAR+''') 
        AND EXISTS (SELECT SICILNO FROM ##WR_YETKI Y WHERE Y.KLADI='''+@USER+''' AND Y.SRKODU='+@KODU+' AND Y.SICILNO COLLATE Turkish_CI_AS=G.PRSICIL COLLATE Turkish_CI_AS)' 
 		SET @SORGULA=@BASLIK+' '+@SQL 
 		EXEC(@SORGULA) 
 		FETCH NEXT FROM CR_SIRKET INTO @KODU 
 	END 
 CLOSE CR_SIRKET 
 DEALLOCATE CR_SIRKET 
 SET ANSI_WARNINGS OFF 
 	END 
GO




/****** Object:  StoredProcedure [dbo].[WR_ARV]    Script Date: 11.02.2022 17:32:14 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[WR_ARV] @SIRKET VARCHAR(1000),
 	@KRITER VARCHAR(8000), 
 	@CIHAZ VARCHAR(8000), 
 	@TARIH1 DATETIME, 
 	@TARIH2 DATETIME, 
 	@USER VARCHAR(50), 
 	@GRUP INT, 
 	@DURUM INT 
 AS 
 	BEGIN 
 SET DATEFORMAT dmy 
     SET ANSI_WARNINGS OFF 
 BEGIN TRY 
 	DROP TABLE ##WR_ARV_TBL 
 END TRY 
 BEGIN CATCH 
 END CATCH 
 SET ANSI_WARNINGS OFF 
 BEGIN TRY 
 	DROP TABLE ##WR_ARV_TBL 
 END TRY 
 BEGIN CATCH 
 END CATCH 
 BEGIN TRY 
 	CREATE TABLE [dbo].##WR_ARV_TBL 
 	([TARIH] [datetime] NOT NULL, 
 		[SRKODU] [int] NOT NULL, 
 		[SICILNO] [varchar](15) NOT NULL, 
 		[PER_ADI] [varchar](30) NOT NULL, 
 		[SOYADI] [varchar](50) NOT NULL, 
 		[KARTNO] [char](20) NULL, 
 		[DEPARTMAN] [char](20) NULL, 
 		[DP_ADI] [varchar](50) NULL, 
 		[PERTIPI] [char](20) NULL, 
 		[PT_ADI] [varchar](50) NULL, 
 		[POSTA] [char](20) NULL, 
 		[PS_ADI] [varchar](50) NULL, 
 		[MASRAF] [char](20) NULL, 
 		[MS_ADI] [varchar](50) NULL, 
 		[ALTDEPART] [char](20) NULL, 
 		[AD_ADI] [varchar](50) NULL, 
 		[PSKODU] [smallint] NULL, 
 		[VRKODU] [smallint] NULL, 
 		[ADI] [varchar](50) NULL, 
 		[TURU] [char](20) NULL, 
 		[MAXCLIM] [datetime] NULL, 
 		[BASSAAT] [datetime] NULL, 
 		[BITSAAT] [datetime] NULL, 
 		[ERKTOL] [datetime] NULL, 
 		[GECTOL] [datetime] NULL, 
 		[GNDTIPI] [char](4) NULL, 
 		[GNDSAAT] [datetime] NULL, 
 		CONSTRAINT [PK_WR_ARSIV] PRIMARY KEY CLUSTERED ([TARIH] ASC,[SRKODU] ASC,[SICILNO] ASC)) 
 		ON 
 	[PRIMARY] 
 END TRY 
 BEGIN CATCH 
 END CATCH 
CREATE NONCLUSTERED INDEX ONY_FM_SP1 ON ##WR_ARV_TBL (	SRKODU ASC,SICILNO ASC) 
 DECLARE @SQL2 VARCHAR(8000) 
 DECLARE @SQL3 VARCHAR(8000) 
 DECLARE @BASLIK VARCHAR(8000) 
 DECLARE @SORGULA VARCHAR(8000) 
 DECLARE @BASTAR VARCHAR(10) 
 DECLARE @BITTAR VARCHAR(10) 
 DECLARE @BASSAT VARCHAR(10) 
 DECLARE @BITSAT VARCHAR(10) 
 EXEC WR_YETKI @USER,@SIRKET 
 SET @BASLIK='INSERT INTO ##WR_ARV_TBL 
   (TARIH,SRKODU,SICILNO,PER_ADI,SOYADI,KARTNO,DEPARTMAN,DP_ADI,PERTIPI,PT_ADI,POSTA,PS_ADI,MASRAF,MS_ADI,ALTDEPART,AD_ADI, 
      PSKODU,VRKODU,ADI,TURU,MAXCLIM,BASSAAT,BITSAAT,ERKTOL,GECTOL,GNDTIPI,GNDSAAT)' 
 DECLARE @SQL VARCHAR(8000) 
         SET @SQL= '' 
 DECLARE @KODU NVARCHAR(50) 
 SET @BASTAR=CONVERT(VARCHAR,@TARIH1,104) 
 SET @BITTAR=CONVERT(VARCHAR,@TARIH2,104) 
 SET @BASSAT=CONVERT(VARCHAR,@TARIH1,108) 
 SET @BITSAT=CONVERT(VARCHAR,@TARIH2,108) 
 IF @GRUP=2 
 	SET @KRITER=@KRITER+' AND PER.ISCIKT IS NULL' 
 IF @GRUP=3 
 	SET @KRITER=@KRITER+' AND PER.ISCIKT IS NOT NULL' 
 IF @GRUP=4 
 	SET @KRITER=@KRITER+' AND (PER.ISCIKT IS NULL OR PER.ISCIKT>='''+@BITTAR+''')' 
 IF @SIRKET<>'' 
 	EXEC('DECLARE CR_SIRKET CURSOR FOR SELECT KODU FROM SIRKET WHERE KODU IN ('+@SIRKET+')') 
 ELSE 
 	EXEC('DECLARE CR_SIRKET CURSOR FOR SELECT KODU FROM SIRKET') 
 OPEN CR_SIRKET 
 FETCH NEXT FROM CR_SIRKET INTO @KODU 
 WHILE @@FETCH_STATUS=0 
 	BEGIN 
 		SET @SQL=' 
  SELECT ARV.TARIH,ARV.SRKODU,SICILNO,ARV.ADI PER_ADI,SOYADI,KARTNO,DEPARTMAN,DP.ADI DP_ADI,ARV.PERTIPI, 
  PT.TURU PT_ADI,POSTA,PS.ADI PS_ADI,MASRAF,MR.TURU MS_ADI,ALTDEPART,AD.ADADI AD_ADI, 
  TK.PSKODU,TK.VRKODU,TK.ADI,TK.TURU,TK.MAXCLIM,TK.BASSAAT,TK.BITSAAT,TK.ERKTOL,TK.GECTOL,TK.GNDTIPI,TK.GNDSAAT FROM 
  (SELECT  '+@KODU+' SRKODU,TR.TARIH,PER.SICILNO,PER.ADI,PER.SOYADI, 
  (SELECT AR.DEGER FROM   dbo.PERARSIV'+@KODU+' AR WHERE  AR.PRSICIL=PER.SICILNO AND AR.BILGI=''KARTNO'' AND AR.TARIH= 
  (SELECT  MAX(AR1.TARIH) FROM    dbo.PERARSIV'+@KODU+' AR1 WHERE   AR1.PRSICIL=PER.SICILNO AND AR1.BILGI=AR.BILGI AND AR1.TARIH<=TR.TARIH)) KARTNO, 
  (SELECT AR.DEGER FROM   dbo.PERARSIV'+@KODU+' AR WHERE  AR.PRSICIL=PER.SICILNO AND AR.BILGI=''DEPARTMAN'' AND AR.TARIH= 
  (SELECT  MAX(AR1.TARIH) FROM    dbo.PERARSIV'+@KODU+' AR1 WHERE   AR1.PRSICIL=PER.SICILNO AND AR1.BILGI=AR.BILGI AND AR1.TARIH<=TR.TARIH)) DEPARTMAN, 
  (SELECT AR.DEGER FROM   dbo.PERARSIV'+@KODU+' AR WHERE  AR.PRSICIL=PER.SICILNO AND AR.BILGI=''PERTiPi'' AND AR.TARIH= 
  (SELECT  MAX(AR1.TARIH) FROM dbo.PERARSIV'+@KODU+' AR1 WHERE   AR1.PRSICIL=PER.SICILNO AND AR1.BILGI=AR.BILGI AND AR1.TARIH<=TR.TARIH)) PERTIPI, 
  (SELECT AR.DEGER FROM   dbo.PERARSIV'+@KODU+' AR WHERE  AR.PRSICIL=PER.SICILNO AND AR.BILGI=''POSTA'' AND AR.TARIH= 
  (SELECT  MAX(AR1.TARIH) FROM    dbo.PERARSIV'+@KODU+' AR1 WHERE   AR1.PRSICIL=PER.SICILNO AND AR1.BILGI=AR.BILGI AND AR1.TARIH<=TR.TARIH)) POSTA, 
  (SELECT AR.DEGER FROM   dbo.PERARSIV'+@KODU+' AR WHERE  AR.PRSICIL=PER.SICILNO AND AR.BILGI=''MASRAF'' AND AR.TARIH= 
  (SELECT  MAX(AR1.TARIH) FROM    dbo.PERARSIV'+@KODU+' AR1 WHERE   AR1.PRSICIL=PER.SICILNO AND AR1.BILGI=AR.BILGI AND AR1.TARIH<=TR.TARIH)) MASRAF, 
  (SELECT AR.DEGER FROM   dbo.PERARSIV'+@KODU+' AR WHERE  AR.PRSICIL=PER.SICILNO AND AR.BILGI=''ALTDEPART'' AND AR.TARIH= 
  (SELECT  MAX(AR1.TARIH) FROM    dbo.PERARSIV'+@KODU+' AR1 WHERE   AR1.PRSICIL=PER.SICILNO AND AR1.BILGI=AR.BILGI AND AR1.TARIH<=TR.TARIH)) ALTDEPART 
  FROM    dbo.TARIHLER TR,PERSONEL'+@KODU+' PER 
  WHERE   PER.TPGIRT<=TR.TARIH AND TR.TARIH>='''+@BASTAR+''' AND TR.TARIH<='''+@BITTAR+''''+@KRITER+') ARV 
  LEFT OUTER JOIN ( 
  SELECT T1.SRKODU,T1.TARIH,T1.PSKODU,T1.VRKODU,V1.MAXCLIM,V1.ADI,V1.TURU,V1.BASSAAT,V1.BITSAAT,V1.ERKTOL,V1.GECTOL,VG.GNDTIPI,VG.GNDSAAT 
  FROM dbo.TAKVIM T1,dbo.VARDIYA V1,VARGRUP VG 
  WHERE T1.VRKODU=V1.KODU AND T1.SRKODU=V1.SRKODU 
  AND VG.SRKODU=V1.SRKODU AND VG.KODU=V1.GRUP)    TK 
  ON TK.SRKODU = ARV.SRKODU AND TK.TARIH = ARV.TARIH AND TK.PSKODU=ARV.POSTA 
  LEFT OUTER JOIN DEPARTMAN DP ON DP.SRKODU=ARV.SRKODU AND ARV.DEPARTMAN=DP.KODU 
  LEFT OUTER JOIN POSTA     PS ON PS.SRKODU=ARV.SRKODU AND ARV.POSTA =PS.KODU 
  LEFT OUTER JOIN PERTIPI   PT ON PT.SRKODU=ARV.SRKODU AND ARV.PERTIPI=PT.PERTIPI 
  LEFT OUTER JOIN ALTDEPART AD ON AD.SRKODU=ARV.SRKODU AND ARV.DEPARTMAN=AD.DPKODU AND ARV.ALTDEPART=AD.ADKODU 
  LEFT OUTER JOIN MASRAF_MERKEZI MR ON MR.SRKODU=ARV.SRKODU AND ARV.MASRAF=MR.TURU' 
 		SET @SORGULA=@BASLIK+' '+@SQL+'  ORDER BY ARV.SRKODU,ARV.SICILNO,ARV.TARIH' 
 		EXEC(@SORGULA) 
 		FETCH NEXT FROM CR_SIRKET INTO @KODU 
 	END 
 CLOSE CR_SIRKET 
 DEALLOCATE CR_SIRKET 
 SET ANSI_WARNINGS OFF 
 	END 

GO

/****** Object:  StoredProcedure [dbo].[WR_YETKI]    Script Date: 11.02.2022 17:31:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[WR_YETKI] @USER VARCHAR(50), 
 @SIRKET varchar(1000) 
 AS 
 BEGIN 
 	SET DATEFORMAT DMY; 
 	SET ANSI_WARNINGS OFF; 
 	DECLARE @SRKODU varchar(50); 
 	DECLARE @TURU varchar(50); 
 	DECLARE @DEGER varchar(50); 
 	BEGIN TRY 
 		TRUNCATE TABLE ##WR_YETKI; 
 	END TRY 
 	BEGIN CATCH 
 	END CATCH; 
 	BEGIN TRY 
 		CREATE TABLE ##WR_YETKI 
 		( KLADI varchar(50) NOT NULL, SRKODU int NOT NULL, SICILNO varchar(50) NOT NULL) ON [PRIMARY]; 
 		CREATE INDEX IDX01 ON ##WR_YETKI( SICILNO ); 
 		CREATE INDEX IDX02 ON ##WR_YETKI( SRKODU ); 
 	END TRY 
 	BEGIN CATCH 
 	END CATCH;    
 	--* SON YETKI DERECESINI BULUYORUM*   
 	DECLARE @DERECE int; 
 	DECLARE @KULLANICI varchar(50); 
 	DECLARE @SON_YETKI int; 
 	SELECT @DERECE = DERECE FROM DBO.KULLANICI AS KL WHERE KL.ADI = @KULLANICI; 
 	DECLARE @VKL_USER_ADI varchar(50); 
 	DECLARE @VKL_USER_DRC int; 
 	DECLARE @VEKALET_ADI varchar(50); 
 	DECLARE @VEKALET_DRC int; 
 	DECLARE @LOG_USR varchar(50); 
 	DECLARE @LOG_DRC int; 
 	DECLARE @POST_USER int; 
 	DECLARE @KL_DERECE int; 
 	DECLARE @RAPOR_USER INT; 
 	DECLARE @RAPOR_YETKI INT 
 	DECLARE @RAPOR_SQL VARCHAR(100) 
 	SET @LOG_USR = @KULLANICI; 
 	SET @LOG_DRC = @DERECE;   
 	--SELECT @VEKALET_ADI=KL.VEKIL,@VEKALET_DRC=K1.DERECE  
 	--FROM   dbo.KULLANICI KL  
 	--LEFT JOIN dbo.KULLANICI K1 ON KL.VEKIL=K1.ADI  
 	--WHERE  KL.ADI=@USER   
 	--IF @VEKALET_ADI<>''  
 	--   AND @VEKALET_ADI IS NOT NULL  
 	--   BEGIN   
 	--         SET @VKL_USER_ADI=@KULLANICI   
 	--         SET @VKL_USER_DRC=@DERECE   
 	--         SET @USER=@VEKALET_ADI   
 	--         SET @DERECE=@VEKALET_DRC   
 	--   END   
 	SELECT @POST_USER = ISNULL(CAST(POST_USER AS int), 0),@RAPOR_USER=RAPOR_USER,@RAPOR_YETKI=RAPOR_YETKI FROM DBO.KULLANICI WHERE ADI = @USER; 
 	IF @POST_USER = 1 
 		SET @KL_DERECE = @SON_YETKI 
 	ELSE 
 		SET @KL_DERECE = @DERECE; 
 	 
 	IF @KL_DERECE = NULL 
 		SET @KL_DERECE = 1 
 	--* KULLANICININ YETKI DERECESINI BULUYORUM*   
 	DECLARE @KLTURU varchar(5); 
 	EXEC .DBO.ONY_USERTIPI @KULLANICI = @USER, @KLTURU = @KLTURU OUTPUT; 
 	IF @KLTURU = 'P' 
 	BEGIN 
 		INSERT INTO ##WR_YETKI( KLADI, SRKODU, SICILNO ) VALUES( @USER, @SIRKET, @USER ); 
 	END; 
 	ELSE 
 	BEGIN	 
 		IF @RAPOR_USER=0  
 			SET @RAPOR_SQL=' AND Y.ADMIN IN (0) ' 
 		ELSE 
 			SET @RAPOR_SQL=' AND Y.ADMIN IN (0,1) ' 
 		DECLARE @YETKILER varchar(1000); 
 		DECLARE @SQL varchar(8000); 
 		DECLARE @SORGULA varchar(8000); 
 		SET @YETKILER = 'DECLARE CR_SIRKET CURSOR FOR SELECT  SRKODU,TURU,DEGER FROM WR_USER_YETKI WHERE DEGER IN ('+@SIRKET+') AND TURU=''SIRKET'' AND KLADI='''+@USER+''''; 
 		EXEC (@YETKILER); 
 		OPEN CR_SIRKET; 
 		FETCH NEXT FROM CR_SIRKET INTO @SRKODU, @TURU, @DEGER; 
 		WHILE @@FETCH_STATUS = 0 
 		BEGIN 
 			SET @SQL = 'INSERT INTO ##WR_YETKI(KLADI,SRKODU,SICILNO)'; 
 			SET @SQL = @SQL+'SELECT '''+@USER+''' KLADI,'+@SRKODU+' SRKODU,SICILNO FROM dbo.PERSONEL'+@SRKODU+' P WHERE 1=1    
      AND (EXISTS (SELECT * FROM dbo.WR_USER_YETKI Y WHERE Y.KLADI='''+@USER+''' AND Y.DEGER =P.POSTA    AND Y.TURU=''POSTA''     AND Y.SRKODU='+@SRKODU+' '+@RAPOR_SQL+')    
        OR EXISTS (SELECT * FROM dbo.WR_USER_YETKI Y WHERE Y.KLADI='''+@USER+''' AND Y.DEGER =P.SICILNO  AND Y.TURU=''SICILNO''   AND Y.SRKODU='+@SRKODU+' '+@RAPOR_SQL+')    
        OR EXISTS (SELECT * FROM dbo.WR_USER_YETKI Y WHERE Y.KLADI='''+@USER+''' AND Y.DEGER =P.DEPART   AND Y.TURU=''DEPARTMAN'' AND Y.SRKODU='+@SRKODU+' '+@RAPOR_SQL+')    
        OR EXISTS (SELECT * FROM dbo.WR_USER_YETKI Y WHERE Y.KLADI='''+@USER+''' AND Y.DEGER =P.KADRO    AND Y.TURU=''KADRO''     AND Y.SRKODU='+@SRKODU+' '+@RAPOR_SQL+')    
        OR EXISTS (SELECT * FROM dbo.WR_USER_YETKI Y WHERE Y.KLADI='''+@USER+''' AND Y.DEGER =P.MASRAF   AND Y.TURU=''MASRAF''    AND Y.SRKODU='+@SRKODU+' '+@RAPOR_SQL+')    
        OR EXISTS (SELECT * FROM dbo.WR_USER_YETKI Y WHERE Y.KLADI='''+@USER+''' AND Y.DEGER =P.MESLEK   AND Y.TURU=''MESLEK''    AND Y.SRKODU='+@SRKODU+' '+@RAPOR_SQL+')    
        OR EXISTS (SELECT * FROM dbo.WR_USER_YETKI Y WHERE Y.KLADI='''+@USER+''' AND Y.DEGER =P.PERTIP   AND Y.TURU=''PERTiPi''   AND Y.SRKODU='+@SRKODU+' '+@RAPOR_SQL+')    
        OR EXISTS (SELECT * FROM dbo.WR_USER_YETKI Y WHERE Y.KLADI='''+@USER+''' AND Y.DEGER =P.SERVIS   AND Y.TURU=''SERVIS''    AND Y.SRKODU='+@SRKODU+' '+@RAPOR_SQL+')    
        OR EXISTS (SELECT * FROM dbo.WR_USER_YETKI Y WHERE Y.KLADI='''+@USER+''' AND (Y.DEGER =P.AMIR1 OR Y.DEGER =P.AMIR2 OR Y.DEGER =P.AMIR3 OR Y.DEGER =P.AMIR4 OR Y.DEGER =P.AMIR5)  AND Y.TURU=''AMİR''    AND Y.SRKODU='+@SRKODU+' '+@RAPOR_SQL+')    
        OR EXISTS (SELECT * FROM dbo.WR_USER_YETKI Y WHERE Y.KLADI='''+@USER+''' AND Y.DEGER =P.GOREV    AND Y.TURU=''GOREV''     AND Y.SRKODU='+@SRKODU+' '+@RAPOR_SQL+') )'; 
 			EXEC (@SQL); 
 			FETCH NEXT FROM CR_SIRKET INTO @SRKODU, @TURU, @DEGER; 
 		END; 
 		CLOSE CR_SIRKET; 
 		DEALLOCATE CR_SIRKET; 
 	END; 
 	UPDATE KULLANICI SET RAPOR_YETKI=0 WHERE ADI=@USER AND RAPOR_USER=1 
END; 

GO


 
 /****** Object:  StoredProcedure [dbo].[ONY_USERTIPI]    Script Date: 11.02.2022 17:30:47 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ONY_USERTIPI]
         @KULLANICI VARCHAR(50),  
         @KLTURU VARCHAR(5) OUTPUT  
   AS  
         BEGIN  
               SET DATEFORMAT DMY  
               SET ANSI_WARNINGS OFF         
 	    
  
               IF (SELECT ISNULL(COUNT(*),0) 
                     FROM dbo.KULLANICI 
                     WHERE ADI=@KULLANICI AND DERECE<>99)<>0 
                  SET @KLTURU='K'  
               ELSE 
                  IF (SELECT ISNULL(COUNT(*),0) 
                         FROM dbo.KULLANICI 
                         WHERE ADI=@KULLANICI AND DERECE=99)<>0 
                     SET @KLTURU='R'  
                  ELSE 
                     IF (SELECT ADI 
                             FROM dbo.KULLANICI 
                             WHERE VEKIL IS NOT NULL AND ADI=(SELECT VEKILADI 
                                                               FROM 
                                                               dbo.ONY_VEKALET 
                                                               WHERE 
                                                               VEKILADI= 
                                                               @KULLANICI))<>0 
                        SET @KLTURU='V'  
                     ELSE 
                        SET @KLTURU='P'	 
  	END  

GO
  
CREATE PROCEDURE [dbo].[WR_GIZ_OTE] @SIRKET INT,
  	@SICILNO VARCHAR(30),  
  	@NEDEN INT,  
  	@BASTARIH DATETIME=null,  
  	@GUN FLOAT=null,  
  	@BITTARIH DATETIME=null,  
  	@ISBASI DATETIME,  
  	@SEBEP VARCHAR(250),  
  	@ACIKLAMA VARCHAR(250),  
  	@IDNO INT=NULL,  
  	@USER VARCHAR(50)  
AS  
BEGIN  
	SET DATEFORMAT DMY  
	SET ANSI_WARNINGS OFF  
	DECLARE @HATASEBEP VARCHAR(4000);  
  	DECLARE @AYSLMT INT;  
  	DECLARE @YILLMT INT;  
  	DECLARE @TTLLMT INT;  
  	DECLARE @IZIN_VARMI INT;  
  	DECLARE @PER_AYSLMT INT;  
  	DECLARE @PER_YILLMT INT;  
  	DECLARE @PER_TTLLMT INT;  
  	DECLARE @GIZ_AYSLMT INT;  
  	DECLARE @GIZ_YILLMT INT;  
  	DECLARE @GIZ_TTLLMT INT;  
  	DECLARE @GIZTABLO VARCHAR(20)  
	DECLARE @SQL1 NVARCHAR(4000)  
	DECLARE @KNT_SAYI INT
	DECLARE @SQL VARCHAR(4000)
	DECLARE @PERTIP VARCHAR(20)
	DECLARE @PUANTAJ VARCHAR(20)
	DECLARE @TARIH DATETIME
	DECLARE @TURU VARCHAR(20)
	--DECLARE @IZN_GUN FLOAT
	DECLARE @SONRAKI_TURU VARCHAR(20)

	DECLARE @HAFTA_GUNU INT
	DECLARE @SIRKET_USER INT
	DECLARE @PERTIPI VARCHAR(20)
	DECLARE @KNT_TARIH DATETIME

	SET @GIZ_AYSLMT=0;  
  	SET @GIZ_YILLMT=0;  
  	SET @GIZ_TTLLMT=0;  
  	SET @ISBASI=NULL  
	
	DECLARE @HATAVER INT;  
	DECLARE @GUN_INT INT 
	SET @GUN_INT=ROUND(@GUN,0) 
  	SET @GIZTABLO='GUNIZIN'+CONVERT(VARCHAR,@SIRKET)  
	IF @BASTARIH=NULL  
  	BEGIN  
  		SET @HATASEBEP='IZIN BASLAMA TARIHI BOS OLAMAZ';  
  			GOTO LABEL_HATAVER;  
  	END;  
  	
	IF @BITTARIH IS NULL AND @GUN_INT IS NULL  
  	BEGIN  
  		SET @HATASEBEP='IZIN SURE VEYA BITIS TARIHI BOS OLAMAZ';  
  			GOTO LABEL_HATAVER;  
  	END;  
	
	IF @BITTARIH IS NOT NULL AND (@GUN_INT='' OR @GUN_INT IS NULL)  
  		SET @GUN_INT=NULL  
	IF @BITTARIH IS NOT NULL AND @GUN_INT IS NOT NULL  
  		SET @BITTARIH=NULL  
   
	DECLARE @DURUM VARCHAR(1000);  
  	
	EXEC WR_IZN_LMT @SIRKET=@SIRKET,@SICILNO=@SICILNO,@NEDEN=@NEDEN,@USER=@USER;  
  	
	SELECT @AYSLMT=AYSLMT,@YILLMT=YILLMT,@TTLLMT=TTLLMT FROM ##LIMIT;  
  	SELECT @PER_AYSLMT=ISNULL(LIMIT_SURE,0) FROM dbo.IZINLIMIT WHERE SRKODU=@SIRKET AND CLKODU=@NEDEN AND SEC='AYLIK';  
  	SELECT @PER_YILLMT=ISNULL(LIMIT_SURE,0) FROM dbo.IZINLIMIT WHERE SRKODU=@SIRKET AND CLKODU=@NEDEN AND SEC='YILLIK';  
  	SELECT @PER_TTLLMT=ISNULL(LIMIT_SURE,0) FROM dbo.IZINLIMIT WHERE SRKODU=@SIRKET AND CLKODU=@NEDEN AND SEC='TOPLAM';  
  	
	IF @AYSLMT>=@PER_AYSLMT  
  		SET @GIZ_AYSLMT=@AYSLMT-@PER_AYSLMT;  
  	IF @YILLMT>=@PER_YILLMT  
  		SET @GIZ_YILLMT=@YILLMT-@PER_YILLMT;  
  	IF @TTLLMT>=@PER_TTLLMT  
  		SET @GIZ_TTLLMT=@TTLLMT-@PER_YILLMT;  
  	
	DECLARE @TABLO TABLE (SRKODU INT,  
						  SICILNO VARCHAR(50),  
						  KARTNO VARCHAR(50),  
						  ISGIRT DATETIME,  
						  ADI VARCHAR(50),  
						  SOYADI VARCHAR(50),  
						  PERTIP VARCHAR(20));  
  	
	DECLARE @ISGIRT DATETIME;  
  	INSERT INTO @TABLO EXEC WR_PER_TUM @SRKODU=@SIRKET,@SICILNO=@SICILNO;  
  	
	SELECT @ISGIRT=ISGIRT FROM @TABLO WHERE SICILNO=@SICILNO AND SRKODU=@SIRKET;  
  	
	IF @ISGIRT>@BASTARIH  
  	BEGIN  
  		SET @HATASEBEP='ISBASI TARIHINDEN ONCE IZIN GIRILEMEZ';  
  			SET @DURUM='HATA'  
  		GOTO LABEL_HATAVER;  
  	END;  
  	
	DECLARE @KRITER VARCHAR(100);  

	SET @KRITER=' AND PER.SICILNO='''+CONVERT(VARCHAR,@SICILNO)+'''';  

	SET @SQL='DECLARE CR_PERTIP CURSOR FOR SELECT PR.PERTIP,PT.PUANTAJ FROM PERSONEL'+CAST(@SIRKET AS VARCHAR)+' PR LEFT OUTER JOIN PERTIPI PT ON (PR.PERTIP=PT.PERTIPI AND PT.SRKODU='+CAST(@SIRKET AS VARCHAR)+') WHERE SICILNO='''+@SICILNO+''''
	EXEC(@SQL)

	OPEN CR_PERTIP
	FETCH NEXT FROM CR_PERTIP INTO @PERTIP,@PUANTAJ

	CLOSE CR_PERTIP
	DEALLOCATE CR_PERTIP
	
	DECLARE @CMT_OTE VARCHAR(5);  
  	DECLARE @HFT_OTE VARCHAR(5);  
  	DECLARE @GNT_OTE VARCHAR(5);  
  	
	SELECT @GNT_OTE=ISNULL(GTATIL,'HAYIR'),@HFT_OTE=ISNULL(HTATIL,'HAYIR'),@CMT_OTE=ISNULL(CMT,'HAYIR') FROM OTELEME WHERE SRKODU=@SIRKET AND CLKODU=@NEDEN  AND PERTIP=@PERTIP
  	
	IF @CMT_OTE IS NULL  OR @CMT_OTE<>'EVET'  
  		SET @CMT_OTE='HAYIR';  
  	IF @HFT_OTE IS NULL OR  @HFT_OTE<>'EVET'  
  		SET @HFT_OTE='HAYIR';  
  	IF @GNT_OTE IS NULL OR @GNT_OTE<>'EVET'  
  		SET @GNT_OTE='HAYIR';  
  	
	DECLARE @X FLOAT
	SET @X=1

	IF @PUANTAJ='POSTA'
	BEGIN
		IF @GUN IS NOT NULL AND @GUN>0
		BEGIN
			IF @GUN=0.5
				SET @BITTARIH=@BASTARIH
			ELSE
				SET @BITTARIH=DATEADD(DAY,-1,@BASTARIH)

			SET @TARIH=@BASTARIH
			WHILE @X<=@GUN
			BEGIN
				SET @TURU=NULL
				SET @SQL='DECLARE CR_VRTURU CURSOR FOR SELECT TURU FROM VARDIYA WHERE SRKODU='+CAST(@SIRKET AS VARCHAR)+' AND KODU=(SELECT VRKODU FROM TAKVIM WHERE SRKODU='+CAST(@SIRKET AS VARCHAR)+' AND TARIH='''+CONVERT(VARCHAR,@TARIH)+''' AND PSKODU=(SELECT TOP 1 DEGER FROM PERARSIV'+CAST(@SIRKET AS VARCHAR)+' WHERE PRSICIL='''+@SICILNO+''' AND BILGI=''POSTA'' AND TARIH<='''+CONVERT(VARCHAR,@BASTARIH)+''' ORDER BY TARIH DESC))'
				EXEC(@SQL)
				
				OPEN CR_VRTURU
				FETCH NEXT FROM CR_VRTURU INTO @TURU
				
				CLOSE CR_VRTURU
				DEALLOCATE CR_VRTURU

				IF @TURU IS NULL
				BEGIN
					SET @HATASEBEP='PERSONELIN ARSIVI YADA VARDIYA BILGISI YOK';  
  					GOTO LABEL_HATAVER;  
				END

				SET @TURU=LTRIM(RTRIM(@TURU))

				IF (@TURU='Hafta İçi') OR (@TURU='Serbest Vardiya') OR (@TURU='Cumartesi' AND @CMT_OTE='HAYIR') OR (@TURU='Hafta Tatili' AND @HFT_OTE='HAYIR') OR (@TURU='Resmi/Dini Tatil' AND @GNT_OTE='HAYIR')
					SET @X=@X+1
				ELSE IF (@TURU='Arefe' AND @GNT_OTE='HAYIR')
					SET @X=@X+0.5

				SET @BITTARIH=DATEADD(DAY,1,@BITTARIH)
				SET @TARIH=DATEADD(DAY,1,@TARIH)
			END
		END
		ELSE
		BEGIN
			SET @GUN=0
			SET @TARIH=@BASTARIH
			WHILE @TARIH<=@BITTARIH
			BEGIN
				SET @TURU=NULL
				SET @SQL='DECLARE CR_VRTURU CURSOR FOR SELECT TURU FROM VARDIYA WHERE SRKODU='+CAST(@SIRKET AS VARCHAR)+' AND KODU=(SELECT VRKODU FROM TAKVIM WHERE SRKODU='+CAST(@SIRKET AS VARCHAR)+' AND TARIH='''+CONVERT(VARCHAR,@TARIH)+''' AND PSKODU=(SELECT TOP 1 DEGER FROM PERARSIV'+CAST(@SIRKET AS VARCHAR)+' WHERE PRSICIL='''+@SICILNO+''' AND BILGI=''POSTA'' AND TARIH<='''+CONVERT(VARCHAR,@BASTARIH)+''' ORDER BY TARIH DESC))'
				EXEC(@SQL)
				
				OPEN CR_VRTURU
				FETCH NEXT FROM CR_VRTURU INTO @TURU
				
				CLOSE CR_VRTURU
				DEALLOCATE CR_VRTURU

				IF @TURU IS NULL
				BEGIN
					SET @HATASEBEP='PERSONELIN ARSIVI YADA VARDIYA BILGISI YOK';  
  					GOTO LABEL_HATAVER;  
				END

				IF LTRIM(RTRIM(@TURU))='Hafta İçi'								SET @GUN=@GUN+1  
  				IF LTRIM(RTRIM(@TURU))='Cumartesi'    AND @CMT_OTE='HAYIR'    	SET @GUN=@GUN+1  
  				IF LTRIM(RTRIM(@TURU))='Hafta Tatili' AND @HFT_OTE='HAYIR'		SET @GUN=@GUN+1  
  				IF LTRIM(RTRIM(@TURU))='Resmi/Dini Tatil' AND @GNT_OTE='HAYIR'	SET @GUN=@GUN+1  
				IF LTRIM(RTRIM(@TURU))='Serbest Vardiya'						SET @GUN=@GUN+1
				IF LTRIM(RTRIM(@TURU))='Arefe'									SET @GUN=@GUN+0.5
			SET @TARIH=DATEADD(DAY,1,@TARIH)
			END
		END
	END
	ELSE
	BEGIN
		IF @GUN IS NOT NULL AND @GUN>0
		BEGIN
			IF @GUN=0.5
				SET @BITTARIH=@BASTARIH
			ELSE
				SET @BITTARIH=DATEADD(DAY,-1,@BASTARIH)

			SET @TARIH=@BASTARIH
			WHILE @X<=@GUN
			BEGIN
				SET @TURU=NULL
				SET @SQL='DECLARE CR_VRTURU CURSOR FOR SELECT TURU FROM VARDIYA WHERE SRKODU='+CAST(@SIRKET AS VARCHAR)+' AND KODU=(SELECT TOP 1 VRKODU FROM PERVARDIYA'+CAST(@SIRKET AS VARCHAR)+' WHERE PRSICIL='''+@SICILNO+''' AND TARIH<='''+CONVERT(VARCHAR,@TARIH)+''' ORDER BY TARIH DESC)'
				EXEC(@SQL)
				
				OPEN CR_VRTURU
				FETCH NEXT FROM CR_VRTURU INTO @TURU
				
				CLOSE CR_VRTURU
				DEALLOCATE CR_VRTURU

				IF @TURU IS NULL
				BEGIN
					SET @HATASEBEP='PERSONELIN ARSIVI YADA VARDIYA BILGISI YOK';  
  					GOTO LABEL_HATAVER;  
				END

				IF (@CMT_OTE='EVET' AND @TURU='Cumartesi') OR (@HFT_OTE='EVET' AND @TURU='Hafta Tatili') OR (@GNT_OTE='EVET' AND @TURU='Resmi/Dini Tatil') 
				BEGIN
					SET @SONRAKI_TURU=NULL
					SET @SQL='DECLARE CR_SONRA_VRTURU CURSOR FOR SELECT TURU FROM VARDIYA WHERE SRKODU='+CAST(@SIRKET AS VARCHAR)+' AND KODU=(SELECT TOP 1 VRKODU FROM PERVARDIYA'+CAST(@SIRKET AS VARCHAR)+' WHERE PRSICIL='''+@SICILNO+''' AND TARIH>'''+CONVERT(VARCHAR,@TARIH)+''' ORDER BY TARIH)'
					EXEC(@SQL)

					OPEN CR_SONRA_VRTURU
					FETCH NEXT FROM CR_SONRA_VRTURU INTO @SONRAKI_TURU
				
					CLOSE CR_SONRA_VRTURU
					DEALLOCATE CR_SONRA_VRTURU

					IF @SONRAKI_TURU IS NULL
					BEGIN
						SET @HATASEBEP='PERSONELIN HAFTA İÇİ VARDİYASI TANIMLI DEĞİL. ÖTELEME YAPILAMIYOR';  
  						GOTO LABEL_HATAVER;  
					END
				END
				
				IF (@TURU='Hafta İçi') OR (@TURU='Serbest Vardiya') OR (@TURU='Cumartesi' AND @CMT_OTE='HAYIR') OR (@TURU='Hafta Tatili' AND @HFT_OTE='HAYIR') OR (@TURU='Resmi/Dini Tatil' AND @GNT_OTE='HAYIR')
					SET @X=@X+1
				ELSE IF (@TURU='Arefe' AND @GNT_OTE='HAYIR')
					SET @X=@X+0.5

				SET @BITTARIH=DATEADD(DAY,1,@BITTARIH)
				SET @TARIH=DATEADD(DAY,1,@TARIH)
			END
		END
		ELSE
		BEGIN
			SET @GUN=0
			SET @TARIH=@BASTARIH
			WHILE @TARIH<=@BITTARIH
			BEGIN
				SET @TURU=NULL
				SET @SQL='DECLARE CR_VRTURU CURSOR FOR SELECT TURU FROM VARDIYA WHERE SRKODU='+CAST(@SIRKET AS VARCHAR)+' AND KODU=(SELECT TOP 1 VRKODU FROM PERVARDIYA'+CAST(@SIRKET AS VARCHAR)+' WHERE PRSICIL='''+@SICILNO+''' AND TARIH<='''+CONVERT(VARCHAR,@TARIH)+''' ORDER BY TARIH DESC)'
				EXEC(@SQL)
				
				OPEN CR_VRTURU
				FETCH NEXT FROM CR_VRTURU INTO @TURU
				
				CLOSE CR_VRTURU
				DEALLOCATE CR_VRTURU

				IF @TURU IS NULL
				BEGIN
					SET @HATASEBEP='PERSONELIN ARSIVI YADA VARDIYA BILGISI YOK';  
  					GOTO LABEL_HATAVER;  
				END

				IF @TURU='Hafta İçi'								SET @GUN=@GUN+1  
  				IF @TURU='Cumartesi'    AND @CMT_OTE='HAYIR'    	SET @GUN=@GUN+1  
  				IF @TURU='Hafta Tatili' AND @HFT_OTE='HAYIR'		SET @GUN=@GUN+1  
  				IF @TURU='Resmi/Dini Tatil' AND @GNT_OTE='HAYIR'	SET @GUN=@GUN+1  
				IF @TURU='Serbest Vardiya'							SET @GUN=@GUN+1
				IF @TURU='Arefe' AND @GNT_OTE='HAYIR'				SET @GUN=@GUN+0.5
			SET @TARIH=DATEADD(DAY,1,@TARIH)
			END

			IF @GUN=0
			BEGIN
				SET @HATASEBEP='PERSONELIN HAFTA İÇİ VARDİYASI TANIMLI DEĞİL. ÖTELEME YAPILAMIYOR';  
  				GOTO LABEL_HATAVER;  
			END
		END
	END

	SET @ISBASI=DATEADD(DAY,1,@BITTARIH)

	IF @PUANTAJ='POSTA'
	BEGIN
		SET @TURU=NULL
		SET @SQL='DECLARE CR_VRTURU CURSOR FOR SELECT TURU FROM VARDIYA WHERE SRKODU='+CAST(@SIRKET AS VARCHAR)+' AND KODU=(SELECT VRKODU FROM TAKVIM WHERE SRKODU='+CAST(@SIRKET AS VARCHAR)+' AND TARIH='''+CONVERT(VARCHAR,@ISBASI)+''' AND PSKODU=(SELECT TOP 1 DEGER FROM PERARSIV'+CAST(@SIRKET AS VARCHAR)+' WHERE PRSICIL='''+@SICILNO+''' AND BILGI=''POSTA'' AND TARIH<='''+CONVERT(VARCHAR,@ISBASI)+''' ORDER BY TARIH DESC))'
		EXEC(@SQL)
				
		OPEN CR_VRTURU
		FETCH NEXT FROM CR_VRTURU INTO @TURU
				
		CLOSE CR_VRTURU
		DEALLOCATE CR_VRTURU

		IF @TURU IS NULL
		BEGIN
			SET @HATASEBEP='(İŞBAŞI TARİHİ KONTROL) PERSONELIN ARSIVI YADA VARDIYA BILGISI YOK';  
  			GOTO LABEL_HATAVER;  
		END
	END
	ELSE
	BEGIN
		SET @TURU=NULL
		SET @SQL='DECLARE CR_VRTURU CURSOR FOR SELECT TURU FROM VARDIYA WHERE SRKODU='+CAST(@SIRKET AS VARCHAR)+' AND KODU=(SELECT TOP 1 VRKODU FROM PERVARDIYA'+CAST(@SIRKET AS VARCHAR)+' WHERE PRSICIL='''+@SICILNO+''' AND TARIH<='''+CONVERT(VARCHAR,@ISBASI)+''' ORDER BY TARIH DESC)'
		EXEC(@SQL)
				
		OPEN CR_VRTURU
		FETCH NEXT FROM CR_VRTURU INTO @TURU
				
		CLOSE CR_VRTURU
		DEALLOCATE CR_VRTURU

		IF @TURU IS NULL
		BEGIN
			SET @HATASEBEP='(İŞBAŞI TARİHİ KONTROL) PERSONELIN ARSIVI YADA VARDIYA BILGISI YOK';  
  			GOTO LABEL_HATAVER;  
		END
	END

	SET @KNT_SAYI=0

	WHILE ((@TURU='Cumartesi' OR @TURU='Hafta Tatili' OR  @TURU='Resmi/Dini Tatil') AND (@KNT_SAYI<=50))
	BEGIN
		SET @ISBASI=DATEADD(DAY,1,@ISBASI)
		SET @KNT_SAYI=@KNT_SAYI+1

		IF @PUANTAJ='POSTA'
		BEGIN
			SET @TURU=NULL
			SET @SQL='DECLARE CR_VRTURU CURSOR FOR SELECT TURU FROM VARDIYA WHERE SRKODU='+CAST(@SIRKET AS VARCHAR)+' AND KODU=(SELECT VRKODU FROM TAKVIM WHERE SRKODU='+CAST(@SIRKET AS VARCHAR)+' AND TARIH='''+CONVERT(VARCHAR,@ISBASI)+''' AND PSKODU=(SELECT TOP 1 DEGER FROM PERARSIV'+CAST(@SIRKET AS VARCHAR)+' WHERE PRSICIL='''+@SICILNO+''' AND BILGI=''POSTA'' AND TARIH<='''+CONVERT(VARCHAR,@ISBASI)+''' ORDER BY TARIH DESC))'
			EXEC(@SQL)
				
			OPEN CR_VRTURU
			FETCH NEXT FROM CR_VRTURU INTO @TURU
				
			CLOSE CR_VRTURU
			DEALLOCATE CR_VRTURU

			IF @TURU IS NULL
			BEGIN
				SET @HATASEBEP='(İŞBAŞI TARİHİ KONTROL) PERSONELIN ARSIVI YADA VARDIYA BILGISI YOK';  
  				GOTO LABEL_HATAVER;  
			END
		END
		ELSE
		BEGIN
			SET @TURU=NULL
			SET @SQL='DECLARE CR_VRTURU CURSOR FOR SELECT TURU FROM VARDIYA WHERE SRKODU='+CAST(@SIRKET AS VARCHAR)+' AND KODU=(SELECT TOP 1 VRKODU FROM PERVARDIYA'+CAST(@SIRKET AS VARCHAR)+' WHERE PRSICIL='''+@SICILNO+''' AND TARIH<='''+CONVERT(VARCHAR,@ISBASI)+''' ORDER BY TARIH DESC)'
			EXEC(@SQL)
				
			OPEN CR_VRTURU
			FETCH NEXT FROM CR_VRTURU INTO @TURU
				
			CLOSE CR_VRTURU
			DEALLOCATE CR_VRTURU

			IF @TURU IS NULL
			BEGIN
				SET @HATASEBEP='(İŞBAŞI TARİHİ KONTROL) PERSONELIN ARSIVI YADA VARDIYA BILGISI YOK';  
  				GOTO LABEL_HATAVER;  
			END
		END
	END

	EXEC WR_GIZ @SIRKET=@SIRKET,@KRITER=@KRITER,@CIHAZ='',@TARIH1=@BASTARIH,@TARIH2=@BITTARIH,@USER=@USER,@GRUP=1,@DURUM=1;  
  	
	IF @IDNO=0 OR @IDNO IS NULL
  	BEGIN  
  		SELECT @IZIN_VARMI=COUNT(*) FROM ##WR_GIZ_TBL G WHERE SICILNO=@SICILNO AND
		((BASTARIH>=@BASTARIH AND BASTARIH<=@BASTARIH) OR (BITTARIH>=@BASTARIH AND BITTARIH<=@BASTARIH) OR (BASTARIH<=@BASTARIH AND BITTARIH>=@BITTARIH))
  		
		IF @IZIN_VARMI<>0  
  		BEGIN  
  			SET @HATASEBEP='GIRILEN TARIHTE KAYITLI IZIN VAR';  
  			SET @DURUM='HATA'  
  			GOTO LABEL_HATAVER;  
  		END
		ELSE
		BEGIN
  			SELECT @IZIN_VARMI=COUNT(*) FROM ONY_GUNIZIN G WHERE PRSICIL=@SICILNO AND (POST IS NULL OR POST=0) AND (RET IS NULL OR RET=0) AND 
			((BASTARIH>=@BASTARIH AND BASTARIH<=@BASTARIH) OR (BITTARIH>=@BASTARIH AND BITTARIH<=@BASTARIH) OR (BASTARIH<=@BASTARIH AND BITTARIH>=@BITTARIH))

			IF @IZIN_VARMI>0  
  			BEGIN  
  				SET @HATASEBEP='GIRILEN TARIHTE ONAY BEKLEYEN IZIN VAR';  
  				SET @DURUM='HATA'  
  				GOTO LABEL_HATAVER;  
  			END
		END  
  	END  
	ELSE  
  	BEGIN  
  		SET @SQL1='SELECT @IZIN_VARMI=COUNT(*) FROM '+@GIZTABLO+' WHERE IDNO<>'''+CONVERT(VARCHAR,@IDNO)+'''  
			AND PRSICIL='''+@SICILNO+''' AND 
			((BASTARIH>='''+CONVERT(VARCHAR,@BASTARIH)+''' AND BASTARIH<='''+CONVERT(VARCHAR,@BITTARIH)+''')
			OR (BITTARIH>='''+CONVERT(VARCHAR,@BASTARIH)+''' AND BITTARIH<='''+CONVERT(VARCHAR,@BITTARIH)+''')
			OR (BASTARIH<='''+CONVERT(VARCHAR,@BASTARIH)+''' AND BITTARIH>='''+CONVERT(VARCHAR,@BITTARIH)+'''))'
  		EXEC sp_ExecuteSQL @SQL1,N' @IZIN_VARMI INT OUTPUT',@IZIN_VARMI OUTPUT  
  			
		IF @IZIN_VARMI<>0  
  		BEGIN  
  			SET @HATASEBEP='GIRILEN TARIHTE KAYITLI BIR IZIN VAR';  
  			SET @DURUM='HATA'  
  			GOTO LABEL_HATAVER;  
  		END
		ELSE
		BEGIN
  			SET @SQL1='SELECT @IZIN_VARMI=COUNT(*) FROM ONY_GUNIZIN WHERE PRSICIL='''+@SICILNO+''' AND (POST IS NULL OR POST=0) AND (RET IS NULL OR RET=0) AND 
				((BASTARIH>='''+CONVERT(VARCHAR,@BASTARIH)+''' AND BASTARIH<='''+CONVERT(VARCHAR,@BITTARIH)+''')
				OR (BITTARIH>='''+CONVERT(VARCHAR,@BASTARIH)+''' AND BITTARIH<='''+CONVERT(VARCHAR,@BITTARIH)+''')
				OR (BASTARIH<='''+CONVERT(VARCHAR,@BASTARIH)+''' AND BITTARIH>='''+CONVERT(VARCHAR,@BITTARIH)+'''))'
  			EXEC sp_ExecuteSQL @SQL1,N' @IZIN_VARMI INT OUTPUT',@IZIN_VARMI OUTPUT  
  			
			IF @IZIN_VARMI<>0  
  			BEGIN  
  				SET @HATASEBEP='GIRILEN TARIHTE ONAY BEKLEYEN BIR IZIN VAR';  
  				SET @DURUM='HATA'  
  				GOTO LABEL_HATAVER;  
  			END
		END  
  	END  
  	
	IF @GIZ_AYSLMT>0  
  	BEGIN  
  		SET @HATASEBEP='AYLIK LIMIT ASILDI';  
  			SET @DURUM='UYARI'  
  		GOTO LABEL_HATAVER;  
  	END;  
  	
	IF @GIZ_YILLMT>0  
  	BEGIN  
  		SET @HATASEBEP='YILLIK LIMIT ASILDI';  
  			SET @DURUM='UYARI'  
  		GOTO LABEL_HATAVER;  
  	END;  
  	
	IF @GIZ_TTLLMT>0  
  	BEGIN  
  		SET @HATASEBEP='TOTAL LIMIT ASILDI';  
  			SET @DURUM='UYARI'  
  		GOTO LABEL_HATAVER;  
  	END;  
  	
	LABEL_BILGIVER:  
		SET @HATASEBEP='TAMAM'  
		SET @DURUM='TAMAM'  
		
		SELECT @HATASEBEP SEBEP,@DURUM SONUC,@SIRKET SRKODU,@SICILNO SICILNO,@NEDEN NEDEN,@BASTARIH BASTARIH,@GUN GUN,@BITTARIH BITTARIH,@ISBASI ISBASI,  
  			@GIZ_AYSLMT AYS_LMT,@GIZ_YILLMT YIL_LMT,@GIZ_TTLLMT TTL_LMT;  
  		RETURN;  
  	LABEL_HATAVER:  
		SELECT @HATASEBEP SEBEP,@DURUM SONUC,@SIRKET SRKODU,@SICILNO SICILNO,@NEDEN NEDEN,@BASTARIH BASTARIH,@GUN GUN,@BITTARIH BITTARIH,@ISBASI ISBASI,  
  		@GIZ_AYSLMT AYS_LMT,@GIZ_YILLMT YIL_LMT,@GIZ_TTLLMT TTL_LMT;  
  		RETURN;  
END


 
GO
/****** Object:  StoredProcedure [dbo].[BCS_GET_TEMPLATE]    Script Date: 19.09.2021 07:07:13 ******/
--DECLARE @begindate datetime='20210608';
--DECLARE @begintime datetime='19:00';
--DECLARE @enddate datetime='20210608';
--DECLARE @endtime datetime='22:00';
--DECLARE @startdate datetime='20210608';
--exec [dbo].[BCS_GET_TEMPLATE] '0016',2,'1',@begindate,@enddate,@startdate,@begintime,@endtime,2,'','0002'

CREATE PROC  [dbo].[BCS_GET_TEMPLATE]
		   @user varchar(50)=null,
		   @type int=null,
           @reason varchar(5)=null,
		   @begindate datetime=null,
		   @enddate datetime=null,
		   @startdate datetime=null,
		   @begintime datetime=null,
		   @endtime datetime=null,	
		   @time datetime=null,	 		   
		   @days decimal(18,1)=null,
		   @desc varchar(200)=null,
		   @approver varchar(50)=null
AS
BEGIN 

 


DECLARE @typeDscr nvarchar(50)=case when @TYPE=1 then 'Günlük İzin ' 
							when @TYPE=2 then 'Saatlik İzin  ' 
							when @TYPE=3 then 'Fazla Mesai ' 
							else 'Günlük İzin' end; 

DECLARE @SQL1 NVARCHAR(500)='';
DECLARE @SQL2 NVARCHAR(500)='';
DECLARE @preReason int=0;

DECLARE @SQL_RESULT NVARCHAR(500)='';
DECLARE @FORM_ALAN VARCHAR(100);
DECLARE @Table as TABLE(col1 NVARCHAR(100),col2 NVARCHAR(500),col3 NVARCHAR(500));

IF NOT EXISTS (select * from dbo.ONY_FORM nolock where CLKODU=@reason) 
SET @preReason=0;
else
SET @preReason=@reason;


	
DECLARE frm_cursor CURSOR FOR SELECT  FORM_ALAN,REPLACE(REPLACE(REPLACE(SORGU,'#SICILNO#',@user),'#SRKODU#','1'),'#YILIZIN_YIL#','1') QUERY1,REPLACE(REPLACE(REPLACE(SORGU,'#SICILNO#',@user),'#SRKODU#','1'),'#YILIZIN_YIL#','1') QUERY2 FROM dbo.ONY_FORM_ALAN  ---where IDNO<=16
OPEN frm_cursor;
FETCH NEXT FROM frm_cursor into @FORM_ALAN, @SQL1,@SQL2 
WHILE @@FETCH_STATUS = 0  
BEGIN  	

BEGIN TRY  
	DECLARE @ValueTable TABLE ( Value VARCHAR (100) )
	INSERT INTO @ValueTable
	EXEC sp_executesql @SQL1;
	SET @SQL_RESULT = (SELECT TOP 1  Value FROM @ValueTable)
	insert into @Table values (@FORM_ALAN,@SQL1, @SQL_RESULT) 
	DELETE FROM @ValueTable
	FETCH NEXT FROM frm_cursor into @FORM_ALAN,  @SQL1,@SQL2  
END TRY 
BEGIN CATCH 
FETCH NEXT FROM frm_cursor into @FORM_ALAN,  @SQL1,@SQL2  
END CATCH;
END  
 
 --DECLARE @YILIZ_KALAN decimal ;
 -- if exists(SELECT TOPLAMKALAN FROM YILIZHESAP1 WHERE PRSICIL=@user AND YIL=1)
 -- SET @YILIZ_KALAN=(SELECT TOPLAMKALAN FROM YILIZHESAP1 WHERE PRSICIL=@user AND YIL=1)
 -- else
 -- SET @YILIZ_KALAN=0

 
 DECLARE @YILIZ_KALAN decimal(8,1)=(SELECT sum(isnull(TOPLAMKALAN,0)) FROM YILIZHESAP1 WHERE PRSICIL=@user AND YIL=(select max(YIL) YIL from dbo.YILIZHESAP1 (nolock) WHERE PRSICIL=@user group by PRSICIL))

CLOSE frm_cursor;  
DEALLOCATE frm_cursor;  
  
DECLARE @TC_KIMLIK_NO varchar(100) = (select col3 from @Table where col1='#TC_KIMLIK_NO#');
DECLARE @BIRIM_ADI varchar(100) = (select col3 from @Table where col1='#BIRIM_ADI#');
DECLARE @YILIZ_HESAPTAR varchar(100) = (select col3 from @Table where col1='#YILIZ_HESAPTAR#');
--DECLARE @AMIR1 varchar(100) = (select top 1 col3 from @Table where col1='#AMIR1#');
--DECLARE @YILIZ_HAKED varchar(100) = (select col3 from @Table where col1='#YILIZ_HAKED#');
--DECLARE @YILIZ_KULLAN varchar(100) = (select col3 from @Table where col1='#YILIZ_KULLAN#');
--DECLARE @YILIZ_KALAN varchar(100) = (select col3 from @Table where col1='#YILIZ_KALAN#');
DECLARE @IS_KANUNU varchar(100) = (select col3 from @Table where col1='#IS_KANUNU#');
DECLARE @MAZERET_LIMIT varchar(100) = (select col3 from @Table where col1='#MAZERET_LIMIT#');
DECLARE @IS_KANUNU_BASLIK varchar(100) = (select col3 from @Table where col1='#IS_KANUNU_BASLIK#');
--DECLARE @YILIZ_DEVIRBASLIK varchar(100) = (select col3 from @Table where col1='#YILIZ_DEVIRBASLIK#');
--DECLARE @YILIZ_IZIN_GUNUBASLIK varchar(100) = (select col3 from @Table where col1='#YILIZ_IZIN_GUNUBASLIK#');
--DECLARE @YILIZ_HAKED_BASLIK varchar(100) = (select col3 from @Table where col1='#YILIZ_HAKED_BASLIK#');
--DECLARE @YILIZ_KULLANBASLIK varchar(100) = (select col3 from @Table where col1='#YILIZ_KULLANBASLIK#');
--DECLARE @YILIZ_KALANBASLIK varchar(100) = (select col3 from @Table where col1='#YILIZ_KALANBASLIK#');
DECLARE @MAZERET_KULLAN varchar(100) = (select col3 from @Table where col1='#MAZERET_KULLAN#');
DECLARE @GOREV_ADI varchar(100) = (select col3 from @Table where col1='#GOREV_ADI#');
DECLARE @YILIZ_DEVIR_YIL varchar(100) = (select col3 from @Table where col1='#YILIZ_DEVIR_YIL#');
DECLARE @MAZERET_KALAN varchar(100) = (select col3 from @Table where col1='#MAZERET_KALAN#');

  

select top 1
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
--REPLACE(
--REPLACE(
--REPLACE(
--REPLACE(
--REPLACE(
--REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
--REPLACE(
--REPLACE(
case when @type=1 then f.GUNLUK_IZIN 
when @type=2 then f.SAATLIK_IZIN  
when @type=3 then f.MESAI  else f.GUNLUK_IZIN end
,'#ADISOYADI#',isnull(p.ADI+' '+p.SOYADI,''))
,'#SICILNO#',isnull(p.SICILNO,''))
,'#DEPARTMAN#',isnull(d.ADI,''))
,'#SIRKET_ADI#',isnull(s.UNVAN,''))
,'#NEDEN#', case when @TYPE=3 then isnull(fm.TURU,'') else isnull(c.ADI,'') end) 
,'#BIRIM_ADI#',isnull(b.BIRIM_ADI,''))
--,'#GOREV_ADI#',isnull(g.TURU,''))
,'#TC_KIMLIK_NO#',isnull(@TC_KIMLIK_NO,''))
,'#IZIN_BASLAMA_TARIHI#',isnull(convert(varchar,@begindate,103),''))
,'#IZIN_BITIS_TARIHI#',isnull(convert(varchar,@enddate,103),''))
,'#ISBASI_TARIHI#',isnull(convert(varchar,@startdate,103),''))
,'#IZIN_BASLAMA_SAATI#',isnull(convert(varchar,@begintime,8),''))
,'#IZIN_BITIS_SAATI#',isnull(convert(varchar,@endtime,8),''))
,'#GUN#',isnull(convert(varchar,@days),'0'))
,'#SAAT#',isnull(convert(varchar,@endtime-@begintime,108),case when @time is null then '' else substring(convert(varchar,@time,108),0,6) end) ) 
,'#IZIN_GUNU#',isnull(@days,''))
,'#ACIKLAMA#',isnull(@desc,''))
,'#TC_KIMLIK_NO#',isnull(@TC_KIMLIK_NO,''))
,'#BIRIM_ADI#',isnull(@BIRIM_ADI,''))
,'#YILIZ_HESAPTAR#',isnull(@YILIZ_HESAPTAR,''))
,'#AMIR1#',isnull(a.AMIR_KODU+' '+a.AMIR_ADI,''))
,'#DEPARTMAN_ADI#',isnull( d.ADI ,''))
--,'#YILIZ_HAKED#',isnull(@YILIZ_HAKED,''))
--,'#YILIZ_KULLAN#',isnull(@YILIZ_KULLAN,''))
,'#YILIZ_KALAN#',isnull(convert(float,@YILIZ_KALAN),''))
,'#IS_KANUNU#',isnull(@IS_KANUNU,''))
,'#MAZERET_LIMIT#',isnull(@MAZERET_LIMIT,''))
,'#IS_KANUNU_BASLIK#',isnull(@IS_KANUNU_BASLIK,''))
--,'#YILIZ_DEVIRBASLIK#',isnull(@YILIZ_DEVIRBASLIK,''))
--,'#YILIZ_IZIN_GUNUBASLIK#',isnull(@YILIZ_IZIN_GUNUBASLIK,''))
--,'#YILIZ_HAKED_BASLIK#',isnull(@YILIZ_HAKED_BASLIK,''))
--,'#YILIZ_KULLANBASLIK#',isnull(@YILIZ_KULLANBASLIK,''))
--,'#YILIZ_KALANBASLIK#',isnull(@YILIZ_KALANBASLIK,''))
,'#MAZERET_KULLAN#',isnull(@MAZERET_KULLAN,''))
,'#GOREV_ADI#',isnull(k.TURU,''))
,'#ISE_GIRIS_TARIHI#',isnull(convert(varchar,p.ISGIRT,103),''))
,'#MASRAF_ADI#',isnull(b.BIRIM_ADI,''))
--,'#YILIZ_DEVIR_YIL#',isnull(@YILIZ_DEVIR_YIL,''))
,'#MAZERET_KALAN#',isnull(@MAZERET_KALAN,''))
,'#IZIN_ADI#',c.ADI)
,'#Izin#',@typeDscr)
,'#IzinFormu#',@typeDscr+'FORMU')
as TEMPLATE
from dbo.ONY_FORM f (nolock) 
left join dbo.PERSONEL1 p (nolock) on p.SICILNO=@user
left join dbo.PERSONEL_AMIR a (nolock) on a.AMIR_KODU=p.AMIR1
left join dbo.SIRKET s (nolock) on s.KODU='1'
left join dbo.CALISMA c (nolock) on c.KODU=(case when @TYPE=3 then c.KODU else @reason end)
left join dbo.FMNED fm (nolock) on fm.KODU=@reason
left join dbo.MASRAF_MERKEZI m (nolock) on p.MASRAF=m.KODU
left join dbo.KADRO k (nolock) on p.KADRO=k.KODU
left join dbo.DEPARTMAN d (nolock) on d.KODU=p.DEPART
--left join dbo.BIRIM b (nolock) on b.SRKODU=s.KODU
left join dbo.BIRIM b (nolock) on p.BIRIM_KODU=b.BIRIM_KODU
left join dbo.GOREV g (nolock) on g.KODU=p.GOREV and g.SRKODU=s.KODU
where f.CLKODU=@preReason 
   
END 

GO

/****** Object:  StoredProcedure [dbo].[BCS_GUNIZIN_INSERT]    Script Date: 19.09.2021 07:07:13 ******/
 
--select * from PERSONEL_AMIR where AMIR_KODU='069'

 --declare @ReturnCode varchar(20);
 --exec [dbo].[BCS_GUNIZIN_INSERT] '1',1,'0016','19','20191111',1,'20191111','20191112','asas',null,'',null,null,
 --null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0,0,0,'028',@ReturnCode output

 
--declare @ReturnCode varchar(20);
--exec [dbo].[BCS_GUNIZIN_INSERT] '1','1','0016','19','20201022',1.5,'20201022','20201023','sdas','sdsa','sdadsa',null,null,
--null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,
--0,0,1,'0014', @ReturnCode  output



CREATE PROC  [dbo].[BCS_GUNIZIN_INSERT]
		   @TYPE varchar(50)=null,
		   @SRKODU int,
           @PRSICIL varchar(15),
           @NEDEN  varchar(10),
           @BASTARIH smalldatetime,
           @GUN decimal,
           @BITTARIH smalldatetime,
           @ISBASI smalldatetime,
           @SEBEP varchar(100)='',
           @SEBEP2 varchar(100)='',
           @ACIKLAMA varchar(100)='',
           @ONAY1 bit=null,
           @ONAY1KL varchar(50)=null,
           @ONAY2 bit=null,
           @ONAY2KL varchar(50)=null,
           @ONAY3 bit=null,
           @ONAY3KL varchar(50)=null,
           @ONAY4 bit=null,
           @ONAY4KL varchar(50)=null,
           @ONAY5 bit=null,
           @ONAY5KL varchar(50)=null,
           @ONAY6 bit=null,
           @ONAY6KL varchar(50)=null,
           @ONAY7 bit=null,
           @ONAY7KL varchar(50)=null,
           @ONAY8 bit=null,
           @ONAY8KL varchar(50)=null,
           @ONAY9 bit=null,
           @ONAY9KL varchar(50)=null,
           @ONAY10 bit=null,
           @ONAY10KL varchar(50)=null,
           @POST bit,
           @RET int,
		   @AMIR bit=0,
		   @AMIR_KODU varchar(50)=null,
           @ReturnCode varchar(20) output
AS
BEGIN
DECLARE @SQL nvarchar(MAX);
DECLARE @Table nvarchar(50)=  'dbo.ONY_GUNIZIN' 
DECLARE @DEGREE_AMIR int=0;
DECLARE @IDNO  bigint=0;
DECLARE @ISPOST bit=0;

SET @ReturnCode='500'

BEGIN TRY
select 
@DEGREE_AMIR=(
case 
when AMIR1=@AMIR_KODU then 1
when AMIR2=@AMIR_KODU then 2
when AMIR3=@AMIR_KODU then 3
when AMIR4=@AMIR_KODU then 4
when AMIR5=@AMIR_KODU then 5 end) from dbo.PERSONEL1 nolock where SICILNO=@PRSICIL


INSERT INTO [dbo].[ONY_GUNIZIN]
           ([SRKODU],[PRSICIL],[NEDEN],[BASTARIH],[GUN],[BITTARIH],[ISBASI],[SEBEP],[SEBEP2],[ACIKLAMA]
           ,[ONAY1]
           ,[ONAY1KL]
           ,[ONAY2]
           ,[ONAY2KL]
           ,[ONAY3]
           ,[ONAY3KL]
           ,[ONAY4]
           ,[ONAY4KL]
           ,[ONAY5]
           ,[ONAY5KL]
           ,[ONAY6]
           ,[ONAY6KL]
           ,[ONAY7]
           ,[ONAY7KL]
           ,[ONAY8]
           ,[ONAY8KL]
           ,[ONAY9]
           ,[ONAY9KL]
           ,[ONAY10]
           ,[ONAY10KL]
           ,[POST]
           ,[RET]
		   ,[CREATEUSER])
     VALUES (
		   @SRKODU ,
           @PRSICIL ,
           @NEDEN ,
           @BASTARIH ,
           @GUN ,
           @BITTARIH ,
           @ISBASI ,
           @SEBEP ,
           @SEBEP2,
           @ACIKLAMA,
     --      (case when @AMIR=1 then 1 else @ONAY1 end), 
		   --(case when @AMIR=1 then @AMIR_KODU else @ONAY1KL end), 
		   (case when @DEGREE_AMIR=1 then (case when @AMIR=1 then 1 else @ONAY1 end) else 
		   (case when @DEGREE_AMIR>1 then 1 else @ONAY1  end) end), 
		   (case when @DEGREE_AMIR=1 then (case when @AMIR=1 then @AMIR_KODU else @ONAY1KL end) else 
		   (case when @DEGREE_AMIR>1 then @AMIR_KODU else @ONAY1KL  end)  end), 
		   (case when @DEGREE_AMIR=2 then (case when @AMIR=1 then 1 else @ONAY2 end) else 
		   (case when @DEGREE_AMIR>2 then 1 else @ONAY2  end) end), 		  
		   (case when @DEGREE_AMIR=2 then (case when @AMIR=1 then @AMIR_KODU else @ONAY2KL end) else 
		   (case when @DEGREE_AMIR>2 then @AMIR_KODU else @ONAY2KL  end)  end), 
		   (case when @DEGREE_AMIR=3 then (case when @AMIR=1 then 1 else @ONAY3 end) else 
		   (case when @DEGREE_AMIR>3 then 1 else @ONAY3  end) end), 		  
		   (case when @DEGREE_AMIR=3 then (case when @AMIR=1 then @AMIR_KODU else @ONAY3KL end) else 
		   (case when @DEGREE_AMIR>3 then @AMIR_KODU else @ONAY3KL  end)  end), 
		   (case when @DEGREE_AMIR=4 then (case when @AMIR=1 then 1 else @ONAY4 end) else
		   (case when @DEGREE_AMIR>4 then 1 else @ONAY4  end) end), 		  
		   (case when @DEGREE_AMIR=4 then (case when @AMIR=1 then @AMIR_KODU else @ONAY4KL end) else 
		   (case when @DEGREE_AMIR>4 then @AMIR_KODU else @ONAY4KL  end)  end), 
		   (case when @DEGREE_AMIR=5 then (case when @AMIR=1 then 1 else @ONAY5 end) else 
		   (case when @DEGREE_AMIR>5 then 1 else @ONAY5  end) end), 		  
		   (case when @DEGREE_AMIR=5 then (case when @AMIR=1 then @AMIR_KODU else @ONAY5KL end) else 
		   (case when @DEGREE_AMIR>5 then @AMIR_KODU else @ONAY5KL  end)  end), 
           @ONAY6, 
           @ONAY6KL, 
           @ONAY7, 
           @ONAY7KL,
           @ONAY8, 
           @ONAY8KL,
           @ONAY9, 
           @ONAY9KL,
           @ONAY10, 
           @ONAY10KL,
           @POST, 
           @RET,
		   (case when @AMIR=1 then @AMIR_KODU else @PRSICIL end))

		    SET @IDNO=scope_identity();
		 
		 	

		 	SET @SQL=' update m set [POST]=1  from '+@Table+' m 
			inner join dbo.PERSONEL1 p on m.PRSICIL=p.SICILNO 
			inner join dbo.PERSONEL_AMIR a on a.AMIR_KODU='''+convert(varchar,@AMIR_KODU)+''' 
			where m.IDNO='+convert(varchar,@IDNO)+'  and  
			(
			((case when p.AMIR1 is null then 0 else 1 end+
			case when p.AMIR2 is null then 0 else 1 end+
			case when p.AMIR3 is null then 0 else 1 end+
			case when p.AMIR4 is null then 0 else 1 end+
			case when p.AMIR5 is null then 0 else 1 end) =
			(case when m.ONAY1 is null then 0 else 1 end+ 
			case when m.ONAY2 is null then 0 else 1 end+
			case when m.ONAY3 is null then 0 else 1 end+ 
			case when m.ONAY4 is null then 0 else 1 end+ 
			case when m.ONAY5 is null then 0 else 1 end) ) or 
			a.POST_USER_GUNIZIN=1)'; 
			

			EXEC (@SQL);

			INSERT INTO ONY_LOG_GUNIZIN 
			SELECT IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,CREATEUSER,(case when @AMIR=1 then 1 else 0 end),1,GETDATE() from ONY_GUNIZIN where IDNO=@IDNO

			IF EXISTS( select * from ONY_GUNIZIN where IDNO=@IDNO and POST=1)
			BEGIN
			SET @ISPOST=1;
			DECLARE @G_IDNO int;
			DECLARE @G_PRSICIL varchar(50);
			DECLARE @G_NEDEN varchar(50);
			DECLARE @G_BASTARIH datetime;
			DECLARE @G_GUN float;
			DECLARE @G_BITTARIH datetime;
			DECLARE @G_SEBEP varchar(50);
			DECLARE @G_ISBASI datetime;
			
			select @G_PRSICIL=PRSICIL,
			@G_NEDEN=NEDEN,
			@G_BASTARIH=BASTARIH,
			@G_GUN=GUN,
			@G_BITTARIH=BITTARIH,
			@G_SEBEP=SEBEP,
			@G_ISBASI=ISBASI from ONY_GUNIZIN where IDNO=@IDNO and POST=1

			IF NOT EXISTS(select * from GUNIZIN1 where PRSICIL=@G_PRSICIL 
			and ( (BASTARIH>=@G_BASTARIH and BASTARIH<=@G_BASTARIH)
			and  (BITTARIH>=@G_BITTARIH and BITTARIH<=@G_BITTARIH))
			)
			BEGIN
			
			select @G_IDNO=MAX(IDNO)+1 from GUNIZIN1;
			SET @G_IDNO=isnull(@G_IDNO,1);
			INSERT INTO GUNIZIN1 ([IDNO],[LINKID],[PRSICIL],[NEDEN],[BASTARIH],[GUN],[BITTARIH],[SEBEP],[TRNID],[ISBASI])
			select @G_IDNO,0,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,SEBEP,null,ISBASI from ONY_GUNIZIN where IDNO=@IDNO and POST=1

			END
			ELSE
			UPDATE GUNIZIN1 set NEDEN=@G_NEDEN,BASTARIH=@G_BASTARIH,GUN=@G_GUN,BITTARIH=@G_BITTARIH,SEBEP=@G_SEBEP,ISBASI=@G_ISBASI where 
			PRSICIL=@G_PRSICIL 
			and ( (BASTARIH>=@G_BASTARIH and BASTARIH<=@G_BASTARIH)
			and  (BITTARIH>=@G_BITTARIH and BITTARIH<=@G_BITTARIH))

			END


			SET @SQL='select m.IDNO, p.SICILNO PERSONEL,
		    P.ADI+'' ''+P.SOYADI PERSONELADI, 
			isnull((case when m.ONAY1KL is null then p.AMIR1 
			when m.ONAY2KL is null then p.AMIR2 
			when m.ONAY3KL is null then p.AMIR3 
			when m.ONAY4KL is null then p.AMIR4 
			when m.ONAY5KL is null then p.AMIR5 end),'''') AMIR, 
			'''' AMIRADI, 
			isnull(a.EMAIL,'''') EMAIL, 
			(select top 1  isnull(EMAIL,'''') from dbo.ADRES1 where PRSICIL=p.SICILNO and isnull(EMAIL,'''')<>'''') PERSONELMAIL,
			p.AMIR1 , (select top 1 EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR1) AMIR1_EMAIL ,
			p.AMIR2 , (select top 1 EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR2) AMIR2_EMAIL ,
			p.AMIR3 , (select top 1 EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR3) AMIR3_EMAIL ,
			p.AMIR4 , (select top 1 EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR4) AMIR4_EMAIL ,
			p.AMIR5, (select top 1 EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR5) AMIR5_EMAIL, 
		    m.NEDEN,
			isnull(c.ADI,'''') NEDEN_ACIK,
			m.SEBEP,
			m.SEBEP2,
			m.ACIKLAMA,
			BASTARIH,
			null BASSAAT,
			BITTARIH,
			null  BITSAAT,	
			GETDATE() ISBASI,
			GUN,
			null SAAT,
			m.RET ,
			m.RET_ACIK ,
			POST [STATE],
			(select top 1 sum(TOPLAMKALAN)/count(1) from [dbo].[YILIZHESAP1] where YIL in ( select MAX(YIL) from [dbo].[YILIZHESAP1] where PRSICIL='''+convert(varchar,@PRSICIL)+''' ) 
			and PRSICIL='''+convert(varchar,@PRSICIL)+''' ) IZINBAKIYE
			from '+@Table+' m (nolock) 
			left join dbo.PERSONEL1 (nolock) p on m.PRSICIL=p.SICILNO
			left join dbo.PERSONEL_AMIR (nolock) a on 
			(case when m.ONAY1KL is null then p.AMIR1 
			 when m.ONAY2KL is null then p.AMIR2 
			when m.ONAY3KL is null then p.AMIR3 
			when m.ONAY4KL is null then p.AMIR4 
			when m.ONAY5KL is null then p.AMIR5 end)=AMIR_KODU
			left join dbo.PERSONEL1 (nolock) p2 on AMIR_KODU=p2.SICILNO
			left join dbo.CALISMA (nolock) c on convert(varchar,c.KODU)=convert(varchar,m.NEDEN) and c.TIPI=''İZİN''  
			where 
			 (m.ONAY1KL is null or m.ONAY2KL is null or m.ONAY3KL is null or m.ONAY4KL is null or m.ONAY5KL is null) 
			  and m.IDNO='+convert(varchar,@IDNO)+''; 

			  --print (@SQL);

			  EXEC (@SQL);


		
			 

		 --   select p.SICILNO PERSONEL,P.ADI+' '+P.SOYADI PERSONELADI, (case when s.ONAY1KL is null then p.AMIR1 
			--when s.ONAY2KL is null then p.AMIR2 
			--when s.ONAY3KL is null then p.AMIR3 
			--when s.ONAY4KL is null then p.AMIR4 
			--when s.ONAY5KL is null then p.AMIR5 end) AMIR,
			--isnull(p2.ADI,'''')+' '+ isnull(p2.SOYADI,'') AMIRADI, 
			--a.EMAIL, p.EMAIL PERSONELMAIL,
			--p.AMIR1 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR1) AMIR1_EMAIL ,
			--p.AMIR2 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR2) AMIR2_EMAIL ,
			--p.AMIR3 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR3) AMIR3_EMAIL ,
			--p.AMIR4 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR4) AMIR4_EMAIL ,
			--p.AMIR5, (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR5) AMIR5_EMAIL ,
			--s.NEDEN,
			--s.SEBEP,
			--s.SEBEP2,
			--s.ACIKLAMA,
			--GETDATE() BASTARIH,
			--BASSAAT,
			--GETDATE() BITTARIH,
			--BITSAAT,			
			--GETDATE() ISBASI,
			--0 GUN,
			--SAAT,
			--s.RET ,
			--s.RET_ACIK ,
			--POST [STATE] 
		 --   from dbo.ONY_SAATIZIN s (nolock) 
			--inner join dbo.PERSONEL1 (nolock) p on s.PRSICIL=p.SICILNO
			--inner join dbo.PERSONEL_AMIR (nolock) a on 
			--(case when s.ONAY1KL is null then p.AMIR1 
			-- when s.ONAY2KL is null then p.AMIR2 
			--when s.ONAY3KL is null then p.AMIR3 
			--when s.ONAY4KL is null then p.AMIR4 
			--when s.ONAY4KL is null then p.AMIR5 end)=AMIR_KODU
			--left join dbo.PERSONEL1 (nolock) p2 on AMIR_KODU=p2.SICILNO
			--where 
			-- (s.ONAY1KL is null or s.ONAY2KL is null or s.ONAY3KL is null or s.ONAY4KL is null or s.ONAY5KL is null) 
			--  and s.IDNO=scope_identity() 
			IF (@ISPOST=1) SET @ReturnCode='201'
			ELSE
			SET @ReturnCode='200'
END TRY  
BEGIN CATCH

SET @ReturnCode='500'
END CATCH 			  
			  
END

 
GO
/****** Object:  StoredProcedure [dbo].[BCS_HAREKET_INSERT]    Script Date: 19.09.2021 07:07:13 ******/
 

CREATE PROC  [dbo].[BCS_HAREKET_INSERT]
		   @TYPE varchar(50)=null,
		   @SRKODU int,
           @PRSICIL varchar(15),
           @IOSTARTDATE smalldatetime,
           @IOSTARTTIME smalldatetime,
           @INOUTPUT int,
		   @NEDEN  varchar(10),
           @SEBEP varchar(100)='',
           @SEBEP2 varchar(100)='',
           @ACIKLAMA varchar(100)='',
           @ONAY1 bit=null,
           @ONAY1KL varchar(50)=null,
           @ONAY2 bit=null,
           @ONAY2KL varchar(50)=null,
           @ONAY3 bit=null,
           @ONAY3KL varchar(50)=null,
           @ONAY4 bit=null,
           @ONAY4KL varchar(50)=null,
           @ONAY5 bit=null,
           @ONAY5KL varchar(50)=null,
           @ONAY6 bit=null,
           @ONAY6KL varchar(50)=null,
           @ONAY7 bit=null,
           @ONAY7KL varchar(50)=null,
           @ONAY8 bit=null,
           @ONAY8KL varchar(50)=null,
           @ONAY9 bit=null,
           @ONAY9KL varchar(50)=null,
           @ONAY10 bit=null,
           @ONAY10KL varchar(50)=null,
           @POST bit,
           @RET int,
		   @AMIR bit=0,
		   @AMIR_KODU varchar(50)=null,
           @ReturnCode varchar(20) output
AS
BEGIN
DECLARE @SQL nvarchar(MAX);
DECLARE @Table nvarchar(50)=  'dbo.ONY_HAREKET' 
DECLARE @DEGREE_AMIR int=0;
DECLARE @IDNO  bigint=0;
DECLARE @GECMISPOSTUSR int=0;
DECLARE @GECMISISLEMSURE int=0;
SET @ReturnCode='500'

BEGIN TRY
select 
@DEGREE_AMIR=(
case 
when AMIR1=@AMIR_KODU then 1
when AMIR2=@AMIR_KODU then 2
when AMIR3=@AMIR_KODU then 3
when AMIR4=@AMIR_KODU then 4
when AMIR5=@AMIR_KODU then 5 end) from dbo.PERSONEL1 nolock where SICILNO=@PRSICIL


INSERT INTO [dbo].[ONY_HAREKET]
           ([SRKODU],[PRSICIL],[TARIH],[ZAMAN],[GCKODU],[NEDEN],[SEBEP],[SEBEP2],[ACIKLAMA]
           ,[ONAY1]
           ,[ONAY1KL]
           ,[ONAY2]
           ,[ONAY2KL]
           ,[ONAY3]
           ,[ONAY3KL]
           ,[ONAY4]
           ,[ONAY4KL]
           ,[ONAY5]
           ,[ONAY5KL]
           ,[ONAY6]
           ,[ONAY6KL]
           ,[ONAY7]
           ,[ONAY7KL]
           ,[ONAY8]
           ,[ONAY8KL]
           ,[ONAY9]
           ,[ONAY9KL]
           ,[ONAY10]
           ,[ONAY10KL]
           ,[POST]
           ,[RET]
		   ,[CREATEUSER])
     VALUES (
		   @SRKODU ,
           @PRSICIL ,
           @IOSTARTDATE ,
           @IOSTARTTIME,
           case when @INOUTPUT=0 then 'G' else 'C' end ,
           @NEDEN ,
           @SEBEP ,
           @SEBEP2,
           @ACIKLAMA,
     --      (case when @AMIR=1 then 1 else @ONAY1 end), 
		   --(case when @AMIR=1 then @AMIR_KODU else @ONAY1KL end), 
		   (case when @DEGREE_AMIR=1 then (case when @AMIR=1 then 1 else @ONAY1 end) else 
		   (case when @DEGREE_AMIR>1 then 1 else @ONAY1  end) end), 
		   (case when @DEGREE_AMIR=1 then (case when @AMIR=1 then @AMIR_KODU else @ONAY1KL end) else 
		   (case when @DEGREE_AMIR>1 then @AMIR_KODU else @ONAY1KL  end)  end), 
		   (case when @DEGREE_AMIR=2 then (case when @AMIR=1 then 1 else @ONAY2 end) else 
		   (case when @DEGREE_AMIR>2 then 1 else @ONAY2  end) end), 		  
		   (case when @DEGREE_AMIR=2 then (case when @AMIR=1 then @AMIR_KODU else @ONAY2KL end) else 
		   (case when @DEGREE_AMIR>2 then @AMIR_KODU else @ONAY2KL  end)  end), 
		   (case when @DEGREE_AMIR=3 then (case when @AMIR=1 then 1 else @ONAY3 end) else 
		   (case when @DEGREE_AMIR>3 then 1 else @ONAY3  end) end), 		  
		   (case when @DEGREE_AMIR=3 then (case when @AMIR=1 then @AMIR_KODU else @ONAY3KL end) else 
		   (case when @DEGREE_AMIR>3 then @AMIR_KODU else @ONAY3KL  end)  end), 
		   (case when @DEGREE_AMIR=4 then (case when @AMIR=1 then 1 else @ONAY4 end) else
		   (case when @DEGREE_AMIR>4 then 1 else @ONAY4  end) end), 		  
		   (case when @DEGREE_AMIR=4 then (case when @AMIR=1 then @AMIR_KODU else @ONAY4KL end) else 
		   (case when @DEGREE_AMIR>4 then @AMIR_KODU else @ONAY4KL  end)  end), 
		   (case when @DEGREE_AMIR=5 then (case when @AMIR=1 then 1 else @ONAY5 end) else 
		   (case when @DEGREE_AMIR>5 then 1 else @ONAY5  end) end), 		  
		   (case when @DEGREE_AMIR=5 then (case when @AMIR=1 then @AMIR_KODU else @ONAY5KL end) else 
		   (case when @DEGREE_AMIR>5 then @AMIR_KODU else @ONAY5KL  end)  end), 
           @ONAY6, 
           @ONAY6KL, 
           @ONAY7, 
           @ONAY7KL,
           @ONAY8, 
           @ONAY8KL,
           @ONAY9, 
           @ONAY9KL,
           @ONAY10, 
           @ONAY10KL,
           @POST, 
           @RET,
		   (case when @AMIR=1 then @AMIR_KODU else @PRSICIL end))

		    SET @IDNO=scope_identity();
		 
			select @GECMISISLEMSURE=HktGecmisIslemSure, @GECMISPOSTUSR=GecmisPostUser from BCS_PARAMETERS nolock where ID=1
			and HktGecmisIslem=1

			IF (isnull(@GECMISPOSTUSR,0)=0 or (isnull(@GECMISPOSTUSR,0)=1 and @GECMISISLEMSURE>DATEDIFF(DAY,@IOSTARTDATE,GETDATE()))) 
			BEGIN
		 	SET @SQL='IF EXISTS(select * from '+@Table+' m 
			inner join dbo.PERSONEL1 p on m.PRSICIL=p.SICILNO  inner join dbo.PERSONEL_AMIR a on a.AMIR_KODU='''+convert(varchar,@AMIR_KODU)+'''
			where m.IDNO='+convert(varchar,scope_identity())+' 
			and 
			((case when p.AMIR1 is null then 0 else 1 end+
			case when p.AMIR2 is null then 0 else 1 end+
			case when p.AMIR3 is null then 0 else 1 end+
			case when p.AMIR4 is null then 0 else 1 end+
			case when p.AMIR5 is null then 0 else 1 end) =
			(case when m.ONAY1 is null then 0 else 1 end+ 
			case when m.ONAY2 is null then 0 else 1 end+
			case when m.ONAY3 is null then 0 else 1 end+ 
			case when m.ONAY4 is null then 0 else 1 end+ 
			case when m.ONAY5 is null then 0 else 1 end) ) or a.POST_USER_HAREKET=1 )
			update m set [POST]=1  from '+@Table+' m inner join dbo.PERSONEL1 p on m.PRSICIL=p.SICILNO inner join dbo.PERSONEL_AMIR a on a.AMIR_KODU='''+convert(varchar,@AMIR_KODU)+''' where m.IDNO='+convert(varchar,@IDNO)+'  and 
			((case when p.AMIR1 is null then 0 else 1 end+
			case when p.AMIR2 is null then 0 else 1 end+
			case when p.AMIR3 is null then 0 else 1 end+
			case when p.AMIR4 is null then 0 else 1 end+
			case when p.AMIR5 is null then 0 else 1 end) =
			(case when m.ONAY1 is null then 0 else 1 end+ 
			case when m.ONAY2 is null then 0 else 1 end+
			case when m.ONAY3 is null then 0 else 1 end+ 
			case when m.ONAY4 is null then 0 else 1 end+ 
			case when m.ONAY5 is null then 0 else 1 end)) or a.POST_USER_HAREKET=1';
			
			EXEC (@SQL);

			END

			INSERT INTO ONY_LOG_HAREKET
			SELECT IDNO,SRKODU,PRSICIL,TARIH,ZAMAN, NEDEN,ACIKLAMA,SEBEP,SEBEP2,CREATEUSER,(case when @AMIR=1 then 1 else 0 end),1,GETDATE() from ONY_HAREKET 
			where IDNO=@IDNO

			SET @SQL='select m.IDNO, p.SICILNO PERSONEL,
		    P.ADI+'' ''+P.SOYADI PERSONELADI, 
			isnull((case when m.ONAY1KL is null then p.AMIR1 
			when m.ONAY2KL is null then p.AMIR2 
			when m.ONAY3KL is null then p.AMIR3 
			when m.ONAY4KL is null then p.AMIR4 
			when m.ONAY5KL is null then p.AMIR5 end),'''') AMIR, 
			isnull(p2.ADI,'''')+'' ''+ isnull(p2.SOYADI,'''') AMIRADI, 
			isnull(a.EMAIL,'''') EMAIL, 
			(select top 1  isnull(EMAIL,'''') from dbo.ADRES1 where PRSICIL=p.SICILNO and isnull(EMAIL,'''')<>'''') PERSONELMAIL,
			p.AMIR1 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR1) AMIR1_EMAIL ,
			p.AMIR2 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR2) AMIR2_EMAIL ,
			p.AMIR3 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR3) AMIR3_EMAIL ,
			p.AMIR4 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR4) AMIR4_EMAIL ,
			p.AMIR5, (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR5) AMIR5_EMAIL, 
		    m.NEDEN,
			isnull(c.ADI,'''') NEDEN_ACIK,
			m.SEBEP,
			m.SEBEP2,
			m.ACIKLAMA,
			GETDATE() BASTARIH,
			null BASSAAT,
			GETDATE() BITTARIH,
			null  BITSAAT,	
			GETDATE() ISBASI,
			0 GUN,
			null SAAT,
			m.RET ,
			m.RET_ACIK ,
			POST [STATE],
			(select top 1 sum(TOPLAMKALAN)/count(1) from [dbo].[YILIZHESAP1] where YIL in ( select MAX(YIL) from [dbo].[YILIZHESAP1] where PRSICIL='''+convert(varchar,@PRSICIL)+''' ) 
			and PRSICIL='''+convert(varchar,@PRSICIL)+''' ) IZINBAKIYE
			from '+@Table+' m (nolock) 
			left join dbo.PERSONEL1 (nolock) p on m.PRSICIL=p.SICILNO
			left join dbo.PERSONEL_AMIR (nolock) a on 
			(case when m.ONAY1KL is null then p.AMIR1 
			 when m.ONAY2KL is null then p.AMIR2 
			when m.ONAY3KL is null then p.AMIR3 
			when m.ONAY4KL is null then p.AMIR4 
			when m.ONAY5KL is null then p.AMIR5 end)=AMIR_KODU
			left join dbo.PERSONEL1 (nolock) p2 on AMIR_KODU=p2.SICILNO
			left join dbo.CALISMA (nolock) c on convert(varchar,c.KODU)=convert(varchar,m.NEDEN) and c.TIPI=''İZİN''  
			where 
			 (m.ONAY1KL is null or m.ONAY2KL is null or m.ONAY3KL is null or m.ONAY4KL is null or m.ONAY5KL is null) 
			  and m.IDNO='+convert(varchar,@IDNO)+''; 

			  EXEC (@SQL);


			IF EXISTS( select * from ONY_HAREKET where IDNO=@IDNO and POST=1)
			BEGIN
			 
			DECLARE @H_IDNO int;
			DECLARE @H_PRSICIL varchar(50);
			DECLARE @H_GCKODU varchar(1);
			DECLARE @H_GCKODU2 varchar(1);
			DECLARE @H_NEDEN varchar(50);
			DECLARE @H_NEDEN2 varchar(50);
			DECLARE @H_TARIH datetime;			
			DECLARE @H_ZAMAN datetime;
			
			select @H_PRSICIL=PRSICIL,
			@H_GCKODU=GCKODU,
			@H_NEDEN=NEDEN,
			@H_TARIH=TARIH,
			@H_ZAMAN=ZAMAN  from ONY_HAREKET where IDNO=@IDNO and POST=1
			
			DECLARE @H_BARKOD varchar(15)=(select distinct KARTNO from PERSONEL1 where SICILNO=@H_PRSICIL);
			select @H_IDNO=MAX(IDNO)+1 from HAREKET1;		
			IF NOT EXISTS(select * from HAREKET1 where PRSICIL=@H_PRSICIL and TARIH=@H_TARIH and ZAMAN=@H_ZAMAN)
			INSERT INTO HAREKET1
			select @H_IDNO, 0,@H_BARKOD,PRSICIL,GCKODU,NEDEN,'z',TARIH,ZAMAN,null,null,'PDKS' from ONY_HAREKET where IDNO=@IDNO and POST=1
			ELSE
			BEGIN
			select distinct @H_GCKODU2=GCKODU, @H_NEDEN2= NEDEN from HAREKET1 where PRSICIL=@H_PRSICIL and TARIH=@H_TARIH and ZAMAN=@H_ZAMAN
			if (@H_GCKODU=@H_GCKODU2 and @H_NEDEN=@H_NEDEN2)
			update HAREKET1 set NEDEN=@H_NEDEN, GCKODU=@H_GCKODU where PRSICIL=@H_PRSICIL and TARIH=@H_TARIH and ZAMAN=@H_ZAMAN
			else 
			update HAREKET1 set NEDEN=@H_NEDEN, GCKODU=@H_GCKODU,TERMKODU='x' where PRSICIL=@H_PRSICIL and TARIH=@H_TARIH and ZAMAN=@H_ZAMAN
			END

			END

		 --   select p.SICILNO PERSONEL,P.ADI+' '+P.SOYADI PERSONELADI, (case when s.ONAY1KL is null then p.AMIR1 
			--when s.ONAY2KL is null then p.AMIR2 
			--when s.ONAY3KL is null then p.AMIR3 
			--when s.ONAY4KL is null then p.AMIR4 
			--when s.ONAY5KL is null then p.AMIR5 end) AMIR,
			--isnull(p2.ADI,'''')+' '+ isnull(p2.SOYADI,'') AMIRADI, 
			--a.EMAIL, p.EMAIL PERSONELMAIL,
			--p.AMIR1 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR1) AMIR1_EMAIL ,
			--p.AMIR2 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR2) AMIR2_EMAIL ,
			--p.AMIR3 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR3) AMIR3_EMAIL ,
			--p.AMIR4 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR4) AMIR4_EMAIL ,
			--p.AMIR5, (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR5) AMIR5_EMAIL ,
			--s.NEDEN,
			--s.SEBEP,
			--s.SEBEP2,
			--s.ACIKLAMA,
			--GETDATE() BASTARIH,
			--BASSAAT,
			--GETDATE() BITTARIH,
			--BITSAAT,			
			--GETDATE() ISBASI,
			--0 GUN,
			--SAAT,
			--s.RET ,
			--s.RET_ACIK ,
			--POST [STATE] 
		 --   from dbo.ONY_SAATIZIN s (nolock) 
			--inner join dbo.PERSONEL1 (nolock) p on s.PRSICIL=p.SICILNO
			--inner join dbo.PERSONEL_AMIR (nolock) a on 
			--(case when s.ONAY1KL is null then p.AMIR1 
			-- when s.ONAY2KL is null then p.AMIR2 
			--when s.ONAY3KL is null then p.AMIR3 
			--when s.ONAY4KL is null then p.AMIR4 
			--when s.ONAY4KL is null then p.AMIR5 end)=AMIR_KODU
			--left join dbo.PERSONEL1 (nolock) p2 on AMIR_KODU=p2.SICILNO
			--where 
			-- (s.ONAY1KL is null or s.ONAY2KL is null or s.ONAY3KL is null or s.ONAY4KL is null or s.ONAY5KL is null) 
			--  and s.IDNO=scope_identity() 

			SET @ReturnCode='200'
END TRY  
BEGIN CATCH

SET @ReturnCode='500'
END CATCH 			  
			  
END

GO 
/****** Object:  StoredProcedure [dbo].[BCS_IZIN_INSERT]    Script Date: 19.09.2021 07:07:13 ******/
 

CREATE PROC  [dbo].[BCS_IZIN_INSERT]
		   @TYPE varchar(50),
		   @SRKODU int,
           @PRSICIL varchar(15),
           @NEDEN  varchar(10),
           @BASTARIH smalldatetime,
           @GUN float,
           @BITTARIH smalldatetime,
           @ISBASI smalldatetime,
           @SEBEP varchar(100)='',
           @SEBEP2 varchar(100)='',
           @ACIKLAMA varchar(100)='',
           @ONAY1 bit=null,
           @ONAY1KL varchar(50)=null,
           @ONAY2 bit=null,
           @ONAY2KL varchar(50)=null,
           @ONAY3 bit=null,
           @ONAY3KL varchar(50)=null,
           @ONAY4 bit=null,
           @ONAY4KL varchar(50)=null,
           @ONAY5 bit=null,
           @ONAY5KL varchar(50)=null,
           @ONAY6 bit=null,
           @ONAY6KL varchar(50)=null,
           @ONAY7 bit=null,
           @ONAY7KL varchar(50)=null,
           @ONAY8 bit=null,
           @ONAY8KL varchar(50)=null,
           @ONAY9 bit=null,
           @ONAY9KL varchar(50)=null,
           @ONAY10 bit=null,
           @ONAY10KL varchar(50)=null,
           @POST bit,
           @RET int,
		   @AMIR bit=0,
		   @AMIR_KODU varchar(50)=null,
           @ReturnCode varchar(20) output
AS
BEGIN
DECLARE @SQL nvarchar(MAX);
DECLARE @DEGREE_AMIR int=0;
DECLARE @IDNO  bigint=0;
SET @ReturnCode='500'

BEGIN TRY

DECLARE @Table nvarchar(50)=case when @TYPE=1 then 'dbo.ONY_GUNIZIN' 
							when @TYPE=2 then 'dbo.ONY_SAATIZIN' 
							when @TYPE=3 then 'dbo.ONY_MESAI' 
							when @TYPE=4 then 'dbo.ONY_VARDIYA' 
							else 'dbo.ONY_GUNIZIN' end; 

DECLARE @LogTable nvarchar(50)=case when @TYPE=1 then 'dbo.ONY_LOG_GUNIZIN' 
when @TYPE=2 then 'dbo.ONY_LOG_SAATIZIN' 
when @TYPE=3 then 'dbo.ONY_LOG_MESAI' 
when @TYPE=4 then 'dbo.ONY_LOG_VARDIYA' 
else 'dbo.ONY_LOG_GUNIZIN' end; 

DECLARE @LogSQLSelect nvarchar(MAX)=case when @TYPE=1 then '[SRKODU],[PRSICIL],[NEDEN],[BASTARIH],[GUN],[BITTARIH],[ISBASI],[SEBEP],[SEBEP2],[ACIKLAMA]' 
when @TYPE=2 then '[SRKODU],[PRSICIL],[NEDEN],[TARIH],[BASSAAT],[SAAT],[BITSAAT],[SEBEP],[SEBEP2],[ACIKLAMA]'
when @TYPE=3 then '[SRKODU],[PRSICIL],[TARIH],[SURE],[ACIKLAMA],[NEDEN],[GELIS_SERVIS_KULLANIM],[GELIS_SERVISI],[GELIS_SAATI],[DONUS_SERVIS_KULLANIM],[DONUS_SERVISI],[DONUS_SAATI]' end; 


DECLARE @LogSQLValues nvarchar(MAX)='INSERT INTO [dbo].[ONY_GUNIZIN] ('+@LogSQLSelect+',[ONAY1],[ONAY1KL],[ONAY2],[ONAY2KL],[ONAY3],[ONAY3KL]
           ,[ONAY4],[ONAY4KL],[ONAY5],[ONAY5KL],[ONAY6],[ONAY6KL],[ONAY7],[ONAY7KL],[ONAY8],[ONAY8KL],[ONAY9],[ONAY9KL],[ONAY10],[ONAY10KL],[POST],[RET],[CREATEUSER])
			VALUES ('+case when @TYPE=1 then 
''''+isnull(convert(varchar,@SRKODU),'')+''',
'''+isnull(@PRSICIL,'')+''',
'''+isnull(@NEDEN,'')+''',
'''+isnull(convert(varchar,@BASTARIH,112),'')+''',
'''+isnull(convert(varchar,@GUN),'')+''',
'''+isnull(convert(varchar,@BITTARIH,112),'')+''',
'''+isnull(convert(varchar,@ISBASI,112),'')+''',
'''+isnull(@SEBEP,'')+''',
'''+isnull(@SEBEP2,'')+''',
'''+isnull(@ACIKLAMA,'')+
'(case when '+convert(varchar,@DEGREE_AMIR)+'=1 then   (case when '+convert(varchar,@AMIR)+'=1 then 1 

'
end


--print @LogSQLValues
--return;





select 
@DEGREE_AMIR=(
case 
when AMIR1=@AMIR_KODU then 1
when AMIR2=@AMIR_KODU then 2
when AMIR3=@AMIR_KODU then 3
when AMIR4=@AMIR_KODU then 4
when AMIR5=@AMIR_KODU then 5 end) from dbo.PERSONEL1 nolock where SICILNO=@PRSICIL

SET @SQL='INSERT INTO [dbo].[ONY_GUNIZIN] ('+@LogSQLSelect+',[ONAY1],[ONAY1KL],[ONAY2],[ONAY2KL],[ONAY3],[ONAY3KL]
           ,[ONAY4],[ONAY4KL],[ONAY5],[ONAY5KL],[ONAY6],[ONAY6KL],[ONAY7],[ONAY7KL],[ONAY8],[ONAY8KL],[ONAY9],[ONAY9KL],[ONAY10],[ONAY10KL],[POST],[RET],[CREATEUSER])
			VALUES ('+@LogSQLValues+',
           (case when '+@DEGREE_AMIR+'=1 then (case when '+@AMIR+'=1 then 1 else '+@ONAY1+' end) else 
		   (case when '+@DEGREE_AMIR+'>1 then 1 else '+@ONAY1+'  end) end), 
		   (case when '+@DEGREE_AMIR+'=1 then (case when '+@AMIR+'=1 then '+@AMIR_KODU+' else '+@ONAY1KL+' end) else 
		   (case when '+@DEGREE_AMIR+'>1 then '+@AMIR_KODU+' else '+@ONAY1KL+'  end)  end), 
		   (case when '+@DEGREE_AMIR+'=2 then (case when '+@AMIR+'=1 then 1 else '+@ONAY2+' end) else 
		   (case when '+@DEGREE_AMIR+'>2 then 1 else '+@ONAY2+'  end) end), 		  
		   (case when '+@DEGREE_AMIR+'=2 then (case when '+@AMIR+'=1 then '+@AMIR_KODU+' else '+@ONAY2KL+' end) else 
		   (case when '+@DEGREE_AMIR+'>2 then '+@AMIR_KODU+' else '+@ONAY2KL+'  end)  end), 
		   (case when '+@DEGREE_AMIR+'=3 then (case when '+@AMIR+'=1 then 1 else '+@ONAY3+' end) else 
		   (case when '+@DEGREE_AMIR+'>3 then 1 else '+@ONAY3+'  end) end), 		  
		   (case when '+@DEGREE_AMIR+'=3 then (case when '+@AMIR+'=1 then '+@AMIR_KODU+' else '+@ONAY3KL+' end) else 
		   (case when '+@DEGREE_AMIR+'>3 then '+@AMIR_KODU+' else '+@ONAY3KL+'  end)  end), 
		   (case when '+@DEGREE_AMIR+'=4 then (case when '+@AMIR+'=1 then 1 else '+@ONAY4+' end) else
		   (case when '+@DEGREE_AMIR+'>4 then 1 else '+@ONAY4+'  end) end), 		  
		   (case when '+@DEGREE_AMIR+'=4 then (case when '+@AMIR+'=1 then '+@AMIR_KODU+' else '+@ONAY4KL+' end) else 
		   (case when '+@DEGREE_AMIR+'>4 then '+@AMIR_KODU+' else '+@ONAY4KL+'  end)  end), 
		   (case when '+@DEGREE_AMIR+'=5 then (case when '+@AMIR+'=1 then 1 else '+@ONAY5+' end) else 
		   (case when '+@DEGREE_AMIR+'>5 then 1 else '+@ONAY5+'  end) end), 		  
		   (case when '+@DEGREE_AMIR+'=5 then (case when '+@AMIR+'=1 then '+@AMIR_KODU+' else '+@ONAY5KL+' end) else 
		   (case when '+@DEGREE_AMIR+'>5 then '+@AMIR_KODU+' else '+@ONAY5KL+'  end)  end), 
           '+@ONAY6+', '+@ONAY6KL+', '+@ONAY7+', '+@ONAY7KL+','+@ONAY8+', '+@ONAY8KL+','+@ONAY9+', '+@ONAY9KL+','+@ONAY10+', '+@ONAY10KL+','+@POST+', '+@RET+',(case when '+@AMIR+'=1 then '+@AMIR_KODU+' else '+@PRSICIL+' end))';
 
		   exec(@SQL);


		   SET @IDNO=scope_identity();
		    
			SET @SQL='IF EXISTS(select * from '+@Table+' m 
			inner join dbo.PERSONEL1 p on m.PRSICIL=p.SICILNO
			where m.IDNO='+convert(varchar,scope_identity())+' 
			and 
			(case when p.AMIR1 is null then 0 else 1 end+
			case when p.AMIR2 is null then 0 else 1 end+
			case when p.AMIR3 is null then 0 else 1 end+
			case when p.AMIR4 is null then 0 else 1 end+
			case when p.AMIR5 is null then 0 else 1 end) =
			(case when m.ONAY1 is null then 0 else 1 end+ 
			case when m.ONAY2 is null then 0 else 1 end+
			case when m.ONAY3 is null then 0 else 1 end+ 
			case when m.ONAY4 is null then 0 else 1 end+ 
			case when m.ONAY5 is null then 0 else 1 end))
			update m set [POST]=1  from '+@Table+' m inner join dbo.PERSONEL1 p on m.PRSICIL=p.SICILNO where m.IDNO='+convert(varchar,@IDNO)+'  and 
			(case when p.AMIR1 is null then 0 else 1 end+
			case when p.AMIR2 is null then 0 else 1 end+
			case when p.AMIR3 is null then 0 else 1 end+
			case when p.AMIR4 is null then 0 else 1 end+
			case when p.AMIR5 is null then 0 else 1 end) =
			(case when m.ONAY1 is null then 0 else 1 end+ 
			case when m.ONAY2 is null then 0 else 1 end+
			case when m.ONAY3 is null then 0 else 1 end+ 
			case when m.ONAY4 is null then 0 else 1 end+ 
			case when m.ONAY5 is null then 0 else 1 end)';
			
			EXEC (@SQL);
			
				
	        INSERT INTO ONY_LOG_GUNIZIN (ONY_IDNO, SRKODU, PRSICIL, NEDEN, BASTARIH, GUN, BITTARIH, ISBASI, SEBEP, SEBEP2, ACIKLAMA,   
					KULLANICI, DERECE, ONAY, ISLEM_ZAMANI)   
						VALUES (@IDNO, @SRKODU, @PRSICIL, @NEDEN, @BASTARIH, @GUN, @BITTARIH, @ISBASI, @SEBEP, @SEBEP2, @ACIKLAMA,
					    (case when @AMIR=1 then  @AMIR_KODU else @PRSICIL end),
						isnull(@DEGREE_AMIR,0), 
						1, GETDATE())  
		
			SET @SQL='select m.IDNO, p.SICILNO PERSONEL,
		    P.ADI+'' ''+P.SOYADI PERSONELADI, 
			isnull((case when m.ONAY1KL is null then p.AMIR1 
			when m.ONAY2KL is null then p.AMIR2 
			when m.ONAY3KL is null then p.AMIR3 
			when m.ONAY4KL is null then p.AMIR4 
			when m.ONAY5KL is null then p.AMIR5 end),'''') AMIR, 
			isnull(p2.ADI,'''')+'' ''+ isnull(p2.SOYADI,'''') AMIRADI, 
			isnull(a.EMAIL,'''') EMAIL, 
			(select top 1  isnull(EMAIL,'''') from dbo.ADRES1 where PRSICIL=p.SICILNO and isnull(EMAIL,'''')<>'''') PERSONELMAIL,
			p.AMIR1 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR1) AMIR1_EMAIL ,
			p.AMIR2 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR2) AMIR2_EMAIL ,
			p.AMIR3 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR3) AMIR3_EMAIL ,
			p.AMIR4 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR4) AMIR4_EMAIL ,
			p.AMIR5, (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR5) AMIR5_EMAIL, 
		    m.NEDEN,
			isnull(c.ADI,'''') NEDEN_ACIK,
			m.SEBEP,
			m.SEBEP2,
			m.ACIKLAMA,
			m.BASTARIH,
			m.BITTARIH,
			m.ISBASI,
			m.GUN,
			m.RET ,
			m.RET_ACIK ,
			POST [STATE],
			(select distinct TOPLAMKALAN from [dbo].[YILIZHESAP1] where YIL in ( select MAX(YIL) from [dbo].[YILIZHESAP1] where PRSICIL='''+convert(varchar,@PRSICIL)+''' ) 
			and PRSICIL='''+convert(varchar,@PRSICIL)+''' ) IZINBAKIYE
			from '+@Table+' m (nolock) 
			left join dbo.PERSONEL1 (nolock) p on m.PRSICIL=p.SICILNO
			left join dbo.PERSONEL_AMIR (nolock) a on 
			(case when m.ONAY1KL is null then p.AMIR1 
			 when m.ONAY2KL is null then p.AMIR2 
			when m.ONAY3KL is null then p.AMIR3 
			when m.ONAY4KL is null then p.AMIR4 
			when m.ONAY5KL is null then p.AMIR5 end)=AMIR_KODU
			left join dbo.PERSONEL1 (nolock) p2 on AMIR_KODU=p2.SICILNO
			left join dbo.CALISMA (nolock) c on convert(varchar,c.KODU)=convert(varchar,m.NEDEN) and c.TIPI=''İZİN''  
			where 
			 (m.ONAY1KL is null or m.ONAY2KL is null or m.ONAY3KL is null or m.ONAY4KL is null or m.ONAY5KL is null) 
			  and m.IDNO='+convert(varchar,@IDNO)+''; 
			 
			 
			  EXEC (@SQL);


			SET @ReturnCode='200'
END TRY  
BEGIN CATCH

SET @ReturnCode='500'
END CATCH 
			  

END

 GO
/****** Object:  StoredProcedure [dbo].[BCS_IZIN_REPORT]    Script Date: 19.09.2021 07:07:13 ******/
 
CREATE   PROC  [dbo].[BCS_IZIN_REPORT]
		@ReportType varchar(50)=null,
        @UserName varchar(50)=null,
		@UserType varchar(10)=null,
		@Flow varchar(50)=null,
		@StartDate datetime=null,
		@EndDate datetime=null,
		@ReturnCode varchar(20) output
AS
BEGIN
DECLARE @SQL varchar(500)='';
set @ReturnCode='200';
if @ReportType='demandtrack' 
begin



if (RTRIM(@Flow)='Günlük İzin')
	begin
		select * from (select @Flow IZIN_TURU,
	    i.NEDEN+'-'+c.ADI NEDEN,
		i.SEBEP ACIK,
		i.IDNO, 
		i.PRSICIL,
		p.ADI+' '+p.SOYADI ADI,
		p.SOYADI,
		i.BASTARIH,
		null BASSAAT,
		i.BITTARIH,
		null BITSAAT,
		i.GUN SURE,
		0 YEMEK_YER,
		0 SERVIS,
		ISNULL((case ONAY1 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end), case when POST=1 then '' else 'Bekliyor' end) ONAY1,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY1KL ),'') ONAY1KL,
		ISNULL((case ONAY2 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY2,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY2KL ),'') ONAY2KL,
		ISNULL((case ONAY3 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY3,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY3KL ),'') ONAY3KL,
		ISNULL((case ONAY4 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY4,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY4KL ),'') ONAY4KL,
		ISNULL((case ONAY5 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY5,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY5KL ),'') ONAY5KL,
		 case when i.RET>0 then 
			(case when i.ONAY5=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY5KL ),'') 
			when i.ONAY4=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY4KL ),'') 
			when i.ONAY3=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY3KL ),'') 
			when i.ONAY2=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY2KL ),'') 
			when i.ONAY1=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY1KL ),'')  else '' end)+ ' Tarafından ' + i.RET_ACIK+' Açıklamasıyla Reddedildi.'
		when i.POST=1 then 
			(case when i.ONAY5=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY5KL ),'') 
			when i.ONAY4=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY4KL ),'') 
			when i.ONAY3=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY3KL ),'') 
			when i.ONAY2=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY2KL ),'') 
			when i.ONAY1=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY1KL ),'')  else '' end) +' Tarafından Onaylandı.' else 
		(case when i.ONAY4=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR5 ),'') 
			when i.ONAY3=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR4 ),'') 
			when i.ONAY2=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR3 ),'') 
			when i.ONAY1=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR2 ),'') 
			when i.ONAY1 is null then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR1 ),'') 
			else '' end) + ' Onayında Bekliyor...' end DURUM,
			l.ISLEM_ZAMANI
		from [dbo].[ONY_GUNIZIN] i (nolock) 
		left join dbo.PERSONEL1 p (nolock) on i.PRSICIL=p.SICILNO 
		left join dbo.CALISMA c (nolock) on c.KODU=i.NEDEN
		--left join dbo.ONY_LOG_GUNIZIN l (nolock) on l.ONY_IDNO=i.IDNO and convert(varchar,ISLEM_ZAMANI,112)>'20201001'
		OUTER APPLY (select top 1 * from dbo.ONY_LOG_GUNIZIN l (nolock) where l.ONY_IDNO=i.IDNO and convert(varchar,ISLEM_ZAMANI,112)>'20201001' 
		order by ISLEM_ZAMANI desc) l
		where 1=1 and i.PRSICIL in  (select SICILNO from dbo.PERSONEL1 nolock where
		(AMIR1=case when @UserType='A' then @Username else '999999' end
		or AMIR2=case when @UserType='A' then @Username else '999999' end
		or AMIR3=case when @UserType='A' then @Username else '999999' end
		or AMIR4=case when @UserType='A' then @Username else '999999' end
		or AMIR5=case when @UserType='A' then @Username else '999999' end)
		union all
	    select @Username) 
		and (i.BASTARIH>=@StartDate and i.BITTARIH<=@EndDate)) t where DURUM not in (' Onayında Bekliyor...',' Tarafından Onaylandı.')
	end
	if (RTRIM(@Flow)='Saatlik İzin')
	begin
		select * from ( select @Flow IZIN_TURU,
		i.NEDEN+'-'+c.ADI NEDEN,
		i.SEBEP ACIK,
		i.IDNO, 
		i.PRSICIL,
		p.ADI+' '+p.SOYADI ADI,
		p.SOYADI,
		i.TARIH BASTARIH,
		i.BASSAAT,
		i.TARIH BITTARIH,
		i.BITSAAT,
		--DATEDIFF(HOUR,BASSAAT,BITSAAT) SURE,
		CONVERT(DECIMAL(10,1),cast(DATEDIFF(minute, i.BASSAAT, i.BITSAAT) as decimal)/60) SURE,
		0 YEMEK_YER,
		0 SERVIS,
		ISNULL((case ONAY1 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end), case when POST=1 then '' else 'Bekliyor' end) ONAY1,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY1KL ),'') ONAY1KL,
		ISNULL((case ONAY2 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY2,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY2KL ),'') ONAY2KL,
		ISNULL((case ONAY3 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY3,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY3KL ),'') ONAY3KL,
		ISNULL((case ONAY4 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY4,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY4KL ),'') ONAY4KL,
		ISNULL((case ONAY5 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY5,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY5KL ),'') ONAY5KL,
	 case when i.RET>0 then 
			(case when i.ONAY5=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY5KL ),'') 
			when i.ONAY4=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY4KL ),'') 
			when i.ONAY3=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY3KL ),'') 
			when i.ONAY2=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY2KL ),'') 
			when i.ONAY1=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY1KL ),'')  else '' end)+ ' Tarafından ' + i.RET_ACIK+' Açıklamasıyla Reddedildi.'
		when i.POST=1 then 
			(case when i.ONAY5=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY5KL ),'') 
			when i.ONAY4=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY4KL ),'') 
			when i.ONAY3=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY3KL ),'') 
			when i.ONAY2=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY2KL ),'') 
			when i.ONAY1=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY1KL ),'')  else '' end) +' Tarafından Onaylandı.' else 
		(case when i.ONAY4=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR5 ),'') 
			when i.ONAY3=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR4 ),'') 
			when i.ONAY2=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR3 ),'') 
			when i.ONAY1=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR2 ),'') 
			when i.ONAY1 is null then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR1 ),'') 
			else '' end) + ' Onayında Bekliyor...' end DURUM,
			l.ISLEM_ZAMANI
		from [dbo].[ONY_SAATIZIN] i (nolock) 
	    left join dbo.CALISMA c (nolock) on c.KODU=i.NEDEN	
		left join dbo.PERSONEL1 p (nolock) on i.PRSICIL=p.SICILNO 
		--left join dbo.ONY_LOG_SAATIZIN l (nolock) on l.ONY_IDNO=i.IDNO and convert(varchar,ISLEM_ZAMANI,112)>'20201001'
		OUTER APPLY (select top 1 * from dbo.ONY_LOG_SAATIZIN l (nolock) where l.ONY_IDNO=i.IDNO and convert(varchar,ISLEM_ZAMANI,112)>'20201001' 
		order by ISLEM_ZAMANI desc) l
		where 1=1 and i.PRSICIL in  (select SICILNO from dbo.PERSONEL1 nolock where
		(AMIR1=case when @UserType='A' then @Username else '999999' end
		or AMIR2=case when @UserType='A' then @Username else '999999' end
		or AMIR3=case when @UserType='A' then @Username else '999999' end
		or AMIR4=case when @UserType='A' then @Username else '999999' end
		or AMIR5=case when @UserType='A' then @Username else '999999' end)
		union all
	    select @Username) 
		and (i.TARIH>=@StartDate and i.TARIH<=@EndDate)) t where DURUM not in (' Onayında Bekliyor...',' Tarafından Onaylandı.')
	end


	if (RTRIM(@Flow)='Fazla Mesai')
	begin
	 	select @Flow IZIN_TURU,
		i.NEDEN+'-'+c.TURU NEDEN,
		i.ACIKLAMA ACIK,	
		i.IDNO, 
		i.PRSICIL,
		p.ADI+' '+p.SOYADI ADI,
		p.SOYADI,
		i.TARIH BASTARIH,
		i.BASZAMAN BASSAAT,
		i.TARIH BITTARIH,
		i.BITZAMAN BITSAAT,
		SUBSTRING(convert(varchar,i.SURE,108),0,6) SURE,
		i.YEMEKYER YEMEK_YER,
		i.GELIS_SERVIS_KULLANIM SERVIS,
		ISNULL((case ONAY1 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end), case when POST=1 then '' else 'Bekliyor' end) ONAY1,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY1KL ),'') ONAY1KL,
		ISNULL((case ONAY2 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY2,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY2KL ),'') ONAY2KL,
		ISNULL((case ONAY3 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY3,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY3KL ),'') ONAY3KL,
		ISNULL((case ONAY4 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY4,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY4KL ),'') ONAY4KL,
		ISNULL((case ONAY5 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY5,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY5KL ),'') ONAY5KL,
	 case when i.RET>0 then 
			(case when i.ONAY5=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY5KL ),'') 
			when i.ONAY4=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY4KL ),'') 
			when i.ONAY3=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY3KL ),'') 
			when i.ONAY2=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY2KL ),'') 
			when i.ONAY1=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY1KL ),'')  else '' end)+ ' Tarafından ' + i.RET_ACIK+' Açıklamasıyla Reddedildi.'
		when i.POST=1 then 
			(case when i.ONAY5=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY5KL ),'') 
			when i.ONAY4=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY4KL ),'') 
			when i.ONAY3=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY3KL ),'') 
			when i.ONAY2=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY2KL ),'') 
			when i.ONAY1=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY1KL ),'')  else '' end) +' Tarafından Onaylandı.' else 
		(case when i.ONAY4=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR5 ),'') 
			when i.ONAY3=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR4 ),'') 
			when i.ONAY2=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR3 ),'') 
			when i.ONAY1=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR2 ),'') 
			when i.ONAY1 is null then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR1 ),'') 
			else '' end) + ' Onayında Bekliyor...' end DURUM,
			l.ISLEM_ZAMANI
		from [dbo].[ONY_MESAI] i (nolock) 
        left join dbo.FMNED c (nolock) on c.KODU=i.NEDEN	
		left join dbo.PERSONEL1 p (nolock) on i.PRSICIL=p.SICILNO 
		--left join dbo.ONY_LOG_MESAI l (nolock) on l.ONY_IDNO=i.IDNO
		OUTER APPLY (select top 1 * from dbo.ONY_LOG_MESAI l (nolock) where l.ONY_IDNO=i.IDNO and convert(varchar,ISLEM_ZAMANI,112)>'20201001' 
		order by ISLEM_ZAMANI desc) l
		 where 1=1 and i.PRSICIL in  (select SICILNO from dbo.PERSONEL1 nolock where
		(AMIR1=case when @UserType='A' then @Username else '999999' end
		or AMIR2=case when @UserType='A' then @Username else '999999' end
		or AMIR3=case when @UserType='A' then @Username else '999999' end
		or AMIR4=case when @UserType='A' then @Username else '999999' end
		or AMIR5=case when @UserType='A' then @Username else '999999' end)
		union all
		select @Username) 
		and (i.TARIH>=@StartDate and i.TARIH<=@EndDate)
	end


	if (RTRIM(@Flow)='Personel Güncelleme')
	begin
	 	select @Flow+'-'+
		case 
			when i.TIP='01' then 'PERTIP'
			when i.TIP='02' then 'DEPARTMAN'
			when i.TIP='03' then 'MASRAF'
			when i.TIP='04' then 'KADRO'
			when i.TIP='05' then 'MESLEK' 
			when i.TIP='06' then 'GOREV'
			when i.TIP='07' then 'GRUP'
			when i.TIP='08' then 'SUBE'
			when i.TIP='09' then 'BIRIM'
			when i.TIP='10' then 'SERVIS' 
			when i.TIP='11' then 'DURAK' 
			else ''
		end
		IZIN_TURU,
		KODU NEDEN,
		i.ACIKLAMA ACIK,	
		i.IDNO, 
		i.PRSICIL,
		p.ADI+' '+p.SOYADI ADI,
		p.SOYADI,
		i.BASTARIH,
		'00:00' BASSAAT,
		i.BASTARIH BITTARIH,
		'00:00' BITSAAT,
		--DATEDIFF(HOUR,GELIS_SAATI,DONUS_SAATI) SURE,
		'00:00' SURE,
		0 YEMEK_YER,
		0 SERVIS,
		ISNULL((case ONAY1 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end), case when POST=1 then '' else 'Bekliyor' end) ONAY1,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY1KL ),'') ONAY1KL,
		ISNULL((case ONAY2 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY2,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY2KL ),'') ONAY2KL,
		ISNULL((case ONAY3 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY3,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY3KL ),'') ONAY3KL,
		ISNULL((case ONAY4 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY4,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY4KL ),'') ONAY4KL,
		ISNULL((case ONAY5 when 1 then 'Onaylandı' when 0 then  'Reddedildi' end),case when POST=1 then '' else 'Bekliyor' end) ONAY5,
		ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY5KL ),'') ONAY5KL,
		 case when i.RET>0 then 
			(case when i.ONAY5=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY5KL ),'') 
			when i.ONAY4=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY4KL ),'') 
			when i.ONAY3=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY3KL ),'') 
			when i.ONAY2=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY2KL ),'') 
			when i.ONAY1=0 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY1KL ),'')  else '' end)+ ' Tarafından ' + i.RET_ACIK+' Açıklamasıyla Reddedildi.'
		when i.POST=1 then 
			(case when i.ONAY5=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY5KL ),'') 
			when i.ONAY4=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY4KL ),'') 
			when i.ONAY3=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY3KL ),'') 
			when i.ONAY2=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY2KL ),'') 
			when i.ONAY1=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=i.ONAY1KL ),'')  else '' end) +' Tarafından Onaylandı.' else 
		(case when i.ONAY4=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR5 ),'') 
			when i.ONAY3=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR4 ),'') 
			when i.ONAY2=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR3 ),'') 
			when i.ONAY1=1 then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR2 ),'') 
			when i.ONAY1 is null then ISNULL((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=p.AMIR1 ),'') 
			else '' end) + ' Onayında Bekliyor...' end DURUM,
			'00:00' ISLEM_ZAMANI
		from [dbo].[ONY_PERGUNCELLEME] i (nolock) 
		left join dbo.PERSONEL1 p (nolock) on i.PRSICIL=p.SICILNO 
		 where 1=1 and i.PRSICIL in  (select SICILNO from dbo.PERSONEL1 nolock where
		(AMIR1=case when @UserType='A' then @Username else '999999' end
		or AMIR2=case when @UserType='A' then @Username else '999999' end
		or AMIR3=case when @UserType='A' then @Username else '999999' end
		or AMIR4=case when @UserType='A' then @Username else '999999' end
		or AMIR5=case when @UserType='A' then @Username else '999999' end)
		union all
		select @Username) 
		and (i.BASTARIH>=@StartDate and i.BASTARIH<=@EndDate)
	end

end

if @ReportType='inandout'
begin
if (@UserType='P')
SET @SQL=' and PR.SICILNO='''+@UserName+'''';
if (@UserType='A')
SET @SQL=' and ((PR.AMIR1='''+@UserName+''' or PR.AMIR2='''+@UserName+''' or PR.AMIR3='''+@UserName+''' or PR.AMIR4='''+@UserName+''' or PR.AMIR5='''+@UserName+'''  ) or PR.SICILNO='''+@UserName+''')';
exec dbo.HARGOSTER1 @StartDate,@EndDate,@SQL

 end
 end
 
GO
/****** Object:  StoredProcedure [dbo].[BCS_IZIN_UPDATE]    Script Date: 1.01.2022 18:06:33 ******/
 
CREATE PROC  [dbo].[BCS_IZIN_UPDATE]
		   @IDNO int=0,
		   @ONAY bit=0,
           @RET bit=0,
           @ONAYKL varchar(50)='',
		   @RET_ACIK varchar(300)=null,
		   @TYPE int=0,
		   @ReturnCode varchar(20) output
AS
BEGIN
DECLARE @SQL varchar(MAX);
DECLARE @SQL2 varchar(MAX);
DECLARE @ISPOST bit=0;

--DECLARE @True bit=1;
DECLARE @DEGREE_AMIR varchar(5)='0';
DECLARE @Table nvarchar(50)=case when @TYPE=1 then 'dbo.ONY_GUNIZIN' 
							when @TYPE=2 then 'dbo.ONY_SAATIZIN' 
							when @TYPE=3 then 'dbo.ONY_MESAI' 
							when @TYPE=4 then 'dbo.ONY_VARDIYA' 
							when @TYPE=5 then 'dbo.ONY_HAREKET' 
							when @TYPE=6 then 'dbo.ONY_POSTA' 
							else 'dbo.ONY_GUNIZIN' end; 

--SET @True=1;

DECLARE @LogTable nvarchar(50)=case when @TYPE=1 then 'dbo.ONY_LOG_GUNIZIN' 
when @TYPE=2 then 'dbo.ONY_LOG_SAATIZIN' 
when @TYPE=3 then 'dbo.ONY_LOG_MESAI' 
when @TYPE=4 then 'dbo.ONY_LOG_VARDIYA' 
when @TYPE=5 then 'dbo.ONY_LOG_HAREKET' 

else 'dbo.ONY_LOG_GUNIZIN' end; 

DECLARE @PostUserField nvarchar(50)=case when @TYPE=1 then 'a.POST_USER_GUNIZIN' 
when @TYPE=2 then 'a.POST_USER_SAATIZIN'
when @TYPE=3 then 'a.POST_USER_MESAI' 
when @TYPE=4 then 'a.POST_USER_VARDIYA' 
when @TYPE=5 then 'a.POST_USER_HAREKET'
when @TYPE=6 then 'a.POST_USER_POSTA'
else 'a.POST_USER_GUNIZIN' end; 


DECLARE @LogSQLSelect nvarchar(MAX)=case when @TYPE=1 then ' IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,' 
when @TYPE=2 then 'IDNO,SRKODU,PRSICIL,NEDEN,TARIH,BASSAAT,SAAT,BITSAAT,SEBEP,SEBEP2,ACIKLAMA,'
when @TYPE=3 then 'IDNO,SRKODU,PRSICIL,TARIH,SURE,BASZAMAN,BITZAMAN,YEMEKYER,ACIKLAMA,NEDEN,GELIS_SERVIS_KULLANIM,GELIS_SERVISI,GELIS_SAATI,DONUS_SERVIS_KULLANIM,DONUS_SERVISI,DONUS_SAATI,' 
else 'IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,' end; 

DECLARE @@PRSICIL varchar(50)=''; 
SET @ReturnCode='500'

BEGIN TRY

declare @S nvarchar(max) = 'select @PRSICIL=PRSICIL from  '+@Table+' where IDNO='+convert(varchar,@IDNO);
exec sp_executesql @S, N'@PRSICIL varchar(50) out', @@PRSICIL out

select @DEGREE_AMIR = (case 
when AMIR1=@ONAYKL then 1
when AMIR2=@ONAYKL then 2
when AMIR3=@ONAYKL then 3
when AMIR4=@ONAYKL  then 4
when AMIR5=@ONAYKL then 5 end) from dbo.PERSONEL1 nolock 
where SICILNO=@@PRSICIL;

--DECLARE @ReturnCode varchar(20)
--exec BCS_IZIN_UPDATE 3708,1,0,'069',null,1, @ReturnCode out  
--DECLARE @SICIL varchar(50)= (select ADI+' '+SOYADI from dbo.PERSONEL1 where SICILNO=@ONAYKL);

--INSERT INTO ONY_LOG_GUNIZIN 
--select IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,'''+convert(varchar,@ONAYKL)+''',1,1,'''+convert(varchar,GETDATE(),112)+''' from '+@Table+' where IDNO='+convert(varchar,@IDNO)+'
--INSERT INTO ONY_LOG_GUNIZIN 
--select IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,'''+convert(varchar,@ONAYKL)+''',2,1,'''+convert(varchar,GETDATE(),112)+''' from '+@Table+' where IDNO='+convert(varchar,@IDNO)+'
--INSERT INTO ONY_LOG_GUNIZIN 
--select IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,'''+convert(varchar,@ONAYKL)+''',3,1,'''+convert(varchar,GETDATE(),112)+''' from '+@Table+' where IDNO='+convert(varchar,@IDNO)+'
--INSERT INTO ONY_LOG_GUNIZIN 
--select IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,'''+convert(varchar,@ONAYKL)+''',4,1,'''+convert(varchar,GETDATE(),112)+''' from '+@Table+' where IDNO='+convert(varchar,@IDNO)+'
--INSERT INTO ONY_LOG_GUNIZIN 
--select IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,'''+convert(varchar,@ONAYKL)+''',5,1,'''+convert(varchar,GETDATE(),112)+''' from '+@Table+' where IDNO='+convert(varchar,@IDNO)+' 

SET @SQL=' IF ('+convert(varchar,@ONAY)+'=1) BEGIN 
IF (select count(1) from [dbo].PERSONEL1 nolock where SICILNO in (select PRSICIL from  '+@Table+' nolock where IDNO='+convert(varchar,@IDNO)+') and RTRIM(AMIR1)='+convert(varchar,@ONAYKL)+')>0 
update '+@Table+' set ONAY1='+convert(varchar,@ONAY)+',ONAY1KL='''+convert(varchar,@ONAYKL)+''',RET=0, RET_ACIK='''' where IDNO='+convert(varchar,@IDNO)+' 

 IF (select count(1) from [dbo].PERSONEL1 nolock where SICILNO in (select PRSICIL from  '+@Table+' nolock where IDNO='+convert(varchar,@IDNO)+') and RTRIM(AMIR2)='+convert(varchar,@ONAYKL)+')>0 
update '+@Table+' set ONAY2='+convert(varchar,@ONAY)+',ONAY2KL='''+convert(varchar,@ONAYKL)+''',RET=0, RET_ACIK='''' where IDNO='+convert(varchar,@IDNO)+' 

IF (select count(1) from [dbo].PERSONEL1 nolock where SICILNO in (select PRSICIL from  '+@Table+' nolock where IDNO='+convert(varchar,@IDNO)+') and RTRIM(AMIR3)='+convert(varchar,@ONAYKL)+')>0 
update '+@Table+' set ONAY3='+convert(varchar,@ONAY)+',ONAY3KL='''+convert(varchar,@ONAYKL)+''',RET=0, RET_ACIK='''' where IDNO='+convert(varchar,@IDNO)+' 

IF (select count(1) from [dbo].PERSONEL1 nolock where SICILNO in (select PRSICIL from  '+@Table+' nolock where IDNO='+convert(varchar,@IDNO)+') and RTRIM(AMIR4)='+convert(varchar,@ONAYKL)+')>0  
update '+@Table+' set ONAY4='+convert(varchar,@ONAY)+',ONAY4KL='''+convert(varchar,@ONAYKL)+''',RET=0, RET_ACIK='''' where IDNO='+convert(varchar,@IDNO)+' 

IF (select count(1) from [dbo].PERSONEL1 nolock where SICILNO in (select PRSICIL from  '+@Table+' nolock where IDNO='+convert(varchar,@IDNO)+') and RTRIM(AMIR5)='+convert(varchar,@ONAYKL)+')>0  
update '+@Table+' set ONAY5='+convert(varchar,@ONAY)+',ONAY5KL='''+convert(varchar,@ONAYKL)+''',RET=0, RET_ACIK='''' where IDNO='+convert(varchar,@IDNO)+' 

END';
 
--print @SQL;
--return;

EXEC (@SQL);

--INSERT INTO ONY_LOG_GUNIZIN 
--select IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,'''+convert(varchar,@ONAYKL)+''',1,0,'''+convert(varchar,GETDATE(),112)+''' from '+@Table+' where IDNO='+convert(varchar,@IDNO)+'
--INSERT INTO ONY_LOG_GUNIZIN 
--select IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,'''+convert(varchar,@ONAYKL)+''',2,0,'''+convert(varchar,GETDATE(),112)+''' from '+@Table+' where IDNO='+convert(varchar,@IDNO)+'
--INSERT INTO ONY_LOG_GUNIZIN 
--select IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,'''+convert(varchar,@ONAYKL)+''',3,0,'''+convert(varchar,GETDATE(),112)+''' from '+@Table+' where IDNO='+convert(varchar,@IDNO)+'
--INSERT INTO ONY_LOG_GUNIZIN 
--select IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,'''+convert(varchar,@ONAYKL)+''',4,0,'''+convert(varchar,GETDATE(),112)+''' from '+@Table+' where IDNO='+convert(varchar,@IDNO)+'
--INSERT INTO ONY_LOG_GUNIZIN 
--select IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,'''+convert(varchar,@ONAYKL)+''',5,0,'''+convert(varchar,GETDATE(),112)+''' from '+@Table+' where IDNO='+convert(varchar,@IDNO)+'

SET @SQL =' if ('+convert(varchar,@RET)+'=1) BEGIN 
IF (select count(1) from [dbo].PERSONEL1 nolock where SICILNO in (select PRSICIL from  '+@Table+' nolock where IDNO='+convert(varchar,@IDNO)+') and RTRIM(AMIR1)='+convert(varchar,@ONAYKL)+')>0 BEGIN
update '+@Table+' set ONAY1=0, ONAY1KL='''+@ONAYKL+''',RET='+convert(varchar,@DEGREE_AMIR)+', RET_ACIK='''+isnull(@RET_ACIK,'')+''' where IDNO='+convert(varchar,@IDNO)+'  END
IF (select count(1) from [dbo].PERSONEL1 nolock where SICILNO in (select PRSICIL from  '+@Table+' nolock where IDNO='+convert(varchar,@IDNO)+') and RTRIM(AMIR2)='+convert(varchar,@ONAYKL)+')>0 BEGIN
update '+@Table+' set ONAY2=0,ONAY2KL='''+@ONAYKL+''',RET='+convert(varchar,@DEGREE_AMIR)+', RET_ACIK='''+isnull(@RET_ACIK,'')+''' where IDNO='+convert(varchar,@IDNO)+'  END 
IF (select count(1) from [dbo].PERSONEL1 nolock where SICILNO in (select PRSICIL from  '+@Table+' nolock where IDNO='+convert(varchar,@IDNO)+') and RTRIM(AMIR3)='+convert(varchar,@ONAYKL)+')>0  BEGIN 
update '+@Table+' set ONAY3=0,ONAY3KL='''+@ONAYKL+''',RET='+convert(varchar,@DEGREE_AMIR)+', RET_ACIK='''+isnull(@RET_ACIK,'')+''' where IDNO='+convert(varchar,@IDNO)+'  END  
IF (select count(1) from [dbo].PERSONEL1 nolock where SICILNO in (select PRSICIL from  '+@Table+' nolock where IDNO='+convert(varchar,@IDNO)+') and RTRIM(AMIR4)='+convert(varchar,@ONAYKL)+')>0 BEGIN
update '+@Table+' set ONAY4=0,ONAY4KL='''+@ONAYKL+''',RET='+convert(varchar,@DEGREE_AMIR)+', RET_ACIK='''+isnull(@RET_ACIK,'')+''' where IDNO='+convert(varchar,@IDNO)+'  END 
IF (select count(1) from [dbo].PERSONEL1 nolock where SICILNO in (select PRSICIL from  '+@Table+' nolock where IDNO='+convert(varchar,@IDNO)+') and RTRIM(AMIR5)='+convert(varchar,@ONAYKL)+')>0 BEGIN
update '+@Table+' set ONAY5=0,ONAY5KL='''+@ONAYKL+''',RET='+convert(varchar,@DEGREE_AMIR)+', RET_ACIK='''+isnull(@RET_ACIK,'')+''' where IDNO='+convert(varchar,@IDNO)+ ' 
 END END';
 
 EXEC (@SQL);

--declare @ReturnCode varchar(20);
--exec BCS_IZIN_UPDATE 8554,1,0,'069',null,3,@ReturnCode output

	--use Sar_PersonelCI2
	--select * from dbo.ONY_GUNIZIN nolock

  --  SET @SQL='INSERT INTO ONY_LOG_GUNIZIN 
		--select IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,@'''+convert(varchar,@ONAYKL)+''', from '+@Table+' where IDNO='+convert(varchar,@IDNO)+'';
		
		--(ONY_IDNO, SRKODU, PRSICIL, NEDEN, BASTARIH, GUN, BITTARIH, ISBASI, SEBEP, SEBEP2, ACIKLAMA,   
		--			KULLANICI, DERECE, ONAY, ISLEM_ZAMANI)   
		--				VALUES (@IDNO, @SRKODU, @PRSICIL, @NEDEN, @BASTARIH, @GUN, @BITTARIH, @ISBASI, @SEBEP, @SEBEP2, @ACIKLAMA,
		--			   (select ADI+' '+SOYADI from dbo.PERSONEL1 where SICILNO=(case when @AMIR=1 then  @AMIR_KODU else @PRSICIL end)),
		--				@DEGREE_AMIR, 
		--				1, GETDATE())  

		--select * from dbo.PERSONEL_AMIR nolock



		 IF (@Table='dbo.ONY_MESAI' AND 'YERINE CALISMA'= (select NEDEN from ONY_MESAI where IDNO=@IDNO))
		 update m set [POST]=1,[RET]=1 from dbo.ONY_MESAI m
		inner join dbo.PERSONEL1 p on m.PRSICIL=p.SICILNO 
		inner join dbo.PERSONEL_AMIR a on a.AMIR_KODU=@ONAYKL 
		where m.IDNO=@IDNO and @RET<>1 and 
			(((case when p.AMIR1 is null then 0 else 1 end+
			case when p.AMIR2 is null then 0 else 1 end+
			case when p.AMIR3 is null then 0 else 1 end+
			case when p.AMIR4 is null then 0 else 1 end+
			case when p.AMIR5 is null then 0 else 1 end
			) =
			(case when m.ONAY1 is null then 0 else 1 end+ 
			case when m.ONAY2 is null then 0 else 1 end+
			case when m.ONAY3 is null then 0 else 1 end+
			case when m.ONAY4 is null then 0 else 1 end+
			case when m.ONAY5 is null then 0 else 1 end)) or a.POST_USER_MESAI=1);
			ELSE
			BEGIN

			--IF (@Table='dbo.ONY_GUNIZIN' or @Table='dbo.ONY_SAATIZIN')
			--BEGIN

			
			--DECLARE @DEGREE_AMIR_KOD nvarchar(50)=
			--(select 
			--case when AMIR5 is not null then AMIR4 
			--when AMIR4 is not null then AMIR3 
			--when AMIR3 is not null then AMIR2
			--when AMIR2 is not null then AMIR1 
			--when AMIR1 is not null then AMIR1 
			--end DEGREE_AMIR_KOD from PERSONEL1 where SICILNO=@@PRSICIL);

			--SET @SQL='update m set [POST]=1  from '+@Table+' m 
			--inner join dbo.PERSONEL1 p on m.PRSICIL=p.SICILNO inner join dbo.PERSONEL_AMIR a on a.AMIR_KODU='''+convert(varchar,@ONAYKL)+''' where m.IDNO='+convert(varchar,@IDNO)+'  and '+convert(varchar,@RET)+'<>1  and 
			--('+convert(varchar,@ONAYKL)+'='+convert(varchar,@DEGREE_AMIR_KOD)+'  or '+@PostUserField+'=1)';
			--EXEC (@SQL);
			----print @SQL;
			--END
			--ELSE
			--BEGIN

			SET @SQL='update m set [POST]=1  from '+@Table+' m 
			inner join dbo.PERSONEL1 p on m.PRSICIL=p.SICILNO inner join dbo.PERSONEL_AMIR a on a.AMIR_KODU='''+convert(varchar,@ONAYKL)+''' where m.IDNO='+convert(varchar,@IDNO)+'  and '+convert(varchar,@RET)+'<>1  and 
			(((case when p.AMIR1 is null then 0 else 1 end+
			case when p.AMIR2 is null then 0 else 1 end+
			case when p.AMIR3 is null then 0 else 1 end+
			case when p.AMIR4 is null then 0 else 1 end+
			case when p.AMIR5 is null then 0 else 1 end
			) =
			(case when m.ONAY1 is null then 0 else 1 end+ 
			case when m.ONAY2 is null then 0 else 1 end+
			case when m.ONAY3 is null then 0 else 1 end+
			case when m.ONAY4 is null then 0 else 1 end+
			case when m.ONAY5 is null then 0 else 1 end)) or '+@PostUserField+'=1)';
			EXEC (@SQL);
			 
		
			--END

			END
		

		 
			if (@TYPE=1)
			INSERT INTO ONY_LOG_GUNIZIN 
			([ONY_IDNO],[SRKODU],[PRSICIL],[NEDEN],[BASTARIH],[GUN],[BITTARIH],[ISBASI],[SEBEP],[SEBEP2],[ACIKLAMA],[KULLANICI],[DERECE],[ONAY],[ISLEM_ZAMANI])
			SELECT IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,@ONAYKL,@DEGREE_AMIR,(case when  @ONAY=1 then 1 else 0 end),GETDATE() from ONY_GUNIZIN where IDNO=@IDNO
			if (@TYPE=2)
			INSERT INTO ONY_LOG_SAATIZIN 
			([ONY_IDNO],[SRKODU],[PRSICIL],[NEDEN],[TARIH],[BASSAAT],[SAAT],[BITSAAT],[SEBEP],[SEBEP2],[ACIKLAMA],[KULLANICI],[DERECE],[ONAY],[ISLEM_ZAMANI])
			SELECT IDNO,SRKODU,PRSICIL,NEDEN,TARIH,BASSAAT,SAAT,BITSAAT,SEBEP,SEBEP2,ACIKLAMA,@ONAYKL,@DEGREE_AMIR,(case when  @ONAY=1 then 1 else 0 end),GETDATE() from ONY_SAATIZIN where IDNO=@IDNO
			if (@TYPE=3)
			INSERT INTO ONY_LOG_MESAI 
			([ONY_IDNO],[SRKODU],[PRSICIL],[TARIH],[SURE],[BASZAMAN],[BITZAMAN],[YEMEKYER],[ACIKLAMA],[NEDEN],[GELIS_SERVIS_KULLANIM],[GELIS_SERVISI],[GELIS_SAATI]
			,[DONUS_SERVIS_KULLANIM],[DONUS_SERVISI],[DONUS_SAATI],[KULLANICI],[DERECE],[ONAY],[ISLEM_ZAMANI])
			SELECT IDNO,SRKODU,PRSICIL,TARIH, SURE,BASZAMAN,BITZAMAN,YEMEKYER,ACIKLAMA,NEDEN,GELIS_SERVIS_KULLANIM,
			GELIS_SERVISI,GELIS_SAATI,DONUS_SERVIS_KULLANIM,DONUS_SERVISI,DONUS_SAATI,@ONAYKL,@DEGREE_AMIR,(case when  @ONAY=1 then 1 else 0 end),GETDATE() from ONY_MESAI where IDNO=@IDNO
			if (@TYPE=5)
			INSERT INTO ONY_LOG_HAREKET
			([ONY_IDNO],[SRKODU],[PRSICIL],[TARIH],[ZAMAN],[NEDEN],[ACIKLAMA],[SEBEP],[SEBEP2],[KULLANICI],[DERECE],[ONAY],[ISLEM_ZAMANI])
			SELECT IDNO,SRKODU,PRSICIL,TARIH,ZAMAN, NEDEN,ACIKLAMA,SEBEP,SEBEP2,@ONAYKL,@DEGREE_AMIR,(case when  @ONAY=1 then 1 else 0 end),GETDATE() from ONY_HAREKET 
			where IDNO=@IDNO
 
 	

			if (@TYPE=1)
			IF EXISTS( select * from ONY_GUNIZIN where IDNO=@IDNO and POST=1)
			BEGIN
			SET @ISPOST=1;
			DECLARE @G_IDNO int;
			DECLARE @G_PRSICIL varchar(50);
			DECLARE @G_NEDEN varchar(50);
			DECLARE @G_BASTARIH datetime;
			DECLARE @G_GUN float;
			DECLARE @G_BITTARIH datetime;
			DECLARE @G_SEBEP varchar(50);
			DECLARE @G_ISBASI datetime;
			
			select @G_PRSICIL=PRSICIL,
			@G_NEDEN=NEDEN,
			@G_BASTARIH=BASTARIH,
			@G_GUN=GUN,
			@G_BITTARIH=BITTARIH,
			@G_SEBEP=SEBEP,
			@G_ISBASI=ISBASI from ONY_GUNIZIN where IDNO=@IDNO and POST=1

			IF NOT EXISTS(select * from GUNIZIN1 where PRSICIL=@G_PRSICIL 
			and ( (BASTARIH>=@G_BASTARIH and BASTARIH<=@G_BASTARIH)
			and  (BITTARIH>=@G_BITTARIH and BITTARIH<=@G_BITTARIH))
			)
			BEGIN
			
			select @G_IDNO=MAX(IDNO)+1 from GUNIZIN1;
			SET @G_IDNO=isnull(@G_IDNO,1);
			INSERT INTO GUNIZIN1 ([IDNO],[LINKID],[PRSICIL],[NEDEN],[BASTARIH],[GUN],[BITTARIH],[SEBEP],[TRNID],[ISBASI])
			select @G_IDNO,0,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,SEBEP,null,ISBASI from ONY_GUNIZIN where IDNO=@IDNO and POST=1

			END
			ELSE
			UPDATE GUNIZIN1 set NEDEN=@G_NEDEN,BASTARIH=@G_BASTARIH,GUN=@G_GUN,BITTARIH=@G_BITTARIH,SEBEP=@G_SEBEP,ISBASI=@G_ISBASI where 
			PRSICIL=@G_PRSICIL 
			and ( (BASTARIH>=@G_BASTARIH and BASTARIH<=@G_BASTARIH)
			and  (BITTARIH>=@G_BITTARIH and BITTARIH<=@G_BITTARIH))

			END
			 
	

			if (@TYPE=2)
			IF EXISTS( select * from ONY_SAATIZIN where IDNO=@IDNO and POST=1)
			BEGIN
			SET @ISPOST=1;
			DECLARE @S_IDNO int;
			DECLARE @S_TARIH datetime;			
			DECLARE @S_PRSICIL varchar(50);
			DECLARE @S_NEDEN varchar(50);
			DECLARE @S_BASSAAT datetime;
			DECLARE @S_SAAT datetime;
			DECLARE @S_BITSAAT datetime;
			DECLARE @S_SEBEP varchar(50);
			
			select @S_PRSICIL=PRSICIL,
			@S_TARIH=TARIH,
			@S_NEDEN=NEDEN,
			@S_BASSAAT=BASSAAT,
			@S_SAAT=SAAT,
			@S_BITSAAT=BITSAAT,
			@S_SEBEP=SEBEP  from ONY_SAATIZIN where IDNO=@IDNO and POST=1

			IF NOT EXISTS(select * from SAATIZIN1 where PRSICIL=@S_PRSICIL 
			and ( (BASSAAT>=@S_BASSAAT and BASSAAT<=@S_BASSAAT)
			and  (BITSAAT>=@S_BITSAAT and BITSAAT<=@S_BITSAAT)) and TARIH=@S_TARIH
			)
			BEGIN
			select @S_IDNO=MAX(IDNO)+1 from SAATIZIN1;
			SET @S_IDNO=isnull(@S_IDNO,1);
			INSERT INTO SAATIZIN1 ([IDNO],[PRSICIL],[NEDEN],[TARIH],[BASSAAT],[SAAT],[BITSAAT],[SEBEP],[TRNID])
			select @S_IDNO,PRSICIL,NEDEN,TARIH,BASSAAT,SAAT,BITSAAT,SEBEP,null  from ONY_SAATIZIN where IDNO=@IDNO and POST=1
			END
			ELSE
			UPDATE SAATIZIN1 set NEDEN=@S_NEDEN, BASSAAT=@S_BASSAAT,SAAT=@S_SAAT,BITSAAT=@S_BITSAAT,SEBEP=@S_SEBEP where 
			PRSICIL=@S_PRSICIL 
			and ( (BASSAAT>=@S_BASSAAT and BASSAAT<=@S_BASSAAT)
			and  (BITSAAT>=@S_BITSAAT and BITSAAT<=@S_BITSAAT)) and TARIH=@S_TARIH

			END
	 
	 		IF (@TYPE=3)
			IF EXISTS( select * from ONY_MESAI where IDNO=@IDNO and POST=1) SET @ISPOST=1;
		

 			if (@TYPE=5)
			IF EXISTS( select * from ONY_HAREKET where IDNO=@IDNO and POST=1)
			BEGIN
			 SET @ISPOST=1;
			DECLARE @H_IDNO int;
			DECLARE @H_PRSICIL varchar(50);
			DECLARE @H_GCKODU varchar(1);
			DECLARE @H_GCKODU2 varchar(1);
			DECLARE @H_NEDEN varchar(50);
			DECLARE @H_NEDEN2 varchar(50);
			DECLARE @H_TARIH datetime;			
			DECLARE @H_ZAMAN datetime;
			
			select @H_PRSICIL=PRSICIL,
			@H_GCKODU=GCKODU,
			@H_NEDEN=NEDEN,
			@H_TARIH=TARIH,
			@H_ZAMAN=ZAMAN  from ONY_HAREKET where IDNO=@IDNO and POST=1
			
			DECLARE @H_BARKOD varchar(15)=(select distinct KARTNO from PERSONEL1 where SICILNO=@H_PRSICIL);
			select @H_IDNO=MAX(IDNO)+1 from HAREKET1;	
			SET @H_IDNO=isnull(@H_IDNO,1);
			IF NOT EXISTS(select * from HAREKET1 where PRSICIL=@H_PRSICIL and TARIH=@H_TARIH and ZAMAN=@H_ZAMAN)
			INSERT INTO HAREKET1
			select @H_IDNO, 0,@H_BARKOD,PRSICIL,GCKODU,NEDEN,'z',TARIH,ZAMAN,null,null,'PDKS' from ONY_HAREKET where IDNO=@IDNO and POST=1
			ELSE
			BEGIN
			select distinct @H_GCKODU2=GCKODU, @H_NEDEN2= NEDEN from HAREKET1 where PRSICIL=@H_PRSICIL and TARIH=@H_TARIH and ZAMAN=@H_ZAMAN
			if (@H_GCKODU=@H_GCKODU2 and @H_NEDEN=@H_NEDEN2)
			update HAREKET1 set NEDEN=@H_NEDEN, GCKODU=@H_GCKODU where PRSICIL=@H_PRSICIL and TARIH=@H_TARIH and ZAMAN=@H_ZAMAN
			else 
			update HAREKET1 set NEDEN=@H_NEDEN, GCKODU=@H_GCKODU,TERMKODU='x' where PRSICIL=@H_PRSICIL and TARIH=@H_TARIH and ZAMAN=@H_ZAMAN
			END

			END
			 
			if (@TYPE=6)
			BEGIN
			SET @ISPOST=1;
			DECLARE @P_IDNO int;
			DECLARE @P_PRSICIL varchar(50);			
			DECLARE @P_TARIH datetime;
			DECLARE @P_POSTA_KODU varchar(20);
			DECLARE @P_ACIKLAMA varchar(100);

			select @P_PRSICIL=PRSICIL,			
			@P_TARIH=TARIH,
			@P_POSTA_KODU=POSTA_KODU,
			@P_ACIKLAMA=ACIKLAMA from ONY_POSTA where IDNO=@IDNO and POST=1
							
			IF EXISTS( select * from ONY_POSTA nolock where IDNO=@IDNO and POST=1)
				BEGIN
					select @P_IDNO=MAX(IDNO)+1 from PERARSIV1;		
					--IF EXISTS(select * from PERARSIV1 nolock where PRSICIL=@H_PRSICIL and TARIH>=@H_TARIH and BILGI='POSTA' and DEGER=@P_POSTA_KODU)
					DELETE FROM PERARSIV1 where PRSICIL=@H_PRSICIL and TARIH>=@H_TARIH and BILGI='POSTA' 
					INSERT INTO PERARSIV1 
					select @P_IDNO, PRSICIL,'POSTA',TARIH,POSTA_KODU,null,null  from ONY_POSTA where IDNO=@IDNO and POST=1
				END

			END
	  
			----onaylanan biten akış amir bilgisi yok...
			SET @SQL='IF EXISTS(select * from '+@Table+' m inner join dbo.PERSONEL1 p on m.PRSICIL=p.SICILNO where m.IDNO='+convert(varchar,@IDNO)+' 
			and (case when p.AMIR1 is null then 0 else 1 end+ case when p.AMIR2 is null then 0 else 1 end+
			case when p.AMIR3 is null then 0 else 1 end+ case when p.AMIR4 is null then 0 else 1 end+ case when p.AMIR5 is null then 0 else 1 end) =
			(case when m.ONAY1 is null then 0 else 1 end+  case when m.ONAY2 is null then 0 else 1 end+case when m.ONAY3 is null then 0 else 1 end+ 
			case when m.ONAY4 is null then 0 else 1 end+ case when m.ONAY5 is null then 0 else 1 end))
			select m.IDNO, p.SICILNO PERSONEL,P.ADI+'' ''+ P.SOYADI PERSONELADI,'''' AMIR, case when '+convert(varchar,@RET)+'=1 then (select AMIR_ADI from PERSONEL_AMIR where AMIR_KODU='''+convert(varchar,@ONAYKL)+''')
			 else '''' end AMIRADI,'''' EMAIL, 
			(select top 1 isnull(EMAIL,'''') from dbo.ADRES1 where PRSICIL=p.SICILNO and isnull(EMAIL,'''')<>'''') PERSONELMAIL,
			p.AMIR1 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR1) AMIR1_EMAIL ,
			p.AMIR2 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR2) AMIR2_EMAIL ,
			p.AMIR3 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR3) AMIR3_EMAIL ,
			p.AMIR4 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR4) AMIR4_EMAIL ,
			p.AMIR5, (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR5) AMIR5_EMAIL, 
			m.NEDEN,isnull(c.ADI,'''') NEDEN_ACIK, m.ACIKLAMA,
			'+case when @Table='dbo.ONY_SAATIZIN' then 'm.TARIH BASTARIH, m.BASSAAT,m.BITSAAT,m.SAAT,m.SEBEP,m.SEBEP2,' 
			 when @Table='dbo.ONY_GUNIZIN' then 'm.BASTARIH,m.BITTARIH,m.ISBASI,m.GUN,m.SEBEP,m.SEBEP2,'
			 when @Table='dbo.ONY_MESAI' then 'm.TARIH BASTARIH, m.SURE SAAT, m.GELIS_SAATI, m.BASZAMAN BASSAAT, m.BITZAMAN BITSAAT, m.GELIS_SERVISI,m.GELIS_SERVIS_KULLANIM,m.DONUS_SAATI,m.DONUS_SERVISI,m.DONUS_SERVIS_KULLANIM,'
			 end+' 
			m.RET, m.RET_ACIK, POST [STATE]  from '+@Table+' m (nolock)  left join dbo.PERSONEL1 (nolock) p on m.PRSICIL=p.SICILNO 
			 left join dbo.PERSONEL_AMIR (nolock) a on (case when m.ONAY1KL is null then p.AMIR1 when m.ONAY2KL is null then p.AMIR2 
			when m.ONAY3KL is null then p.AMIR3 when m.ONAY4KL is null then p.AMIR4 when m.ONAY5KL is null then p.AMIR5 end)=AMIR_KODU 
			left join dbo.CALISMA (nolock) c on convert(varchar,c.KODU)=convert(varchar,m.NEDEN) and c.TIPI=''İZİN'' where  m.IDNO='+convert(varchar,@IDNO)+' ';
			
			SET @SQL2=' ELSE
			select m.IDNO, p.SICILNO PERSONEL,P.ADI+'' ''+P.SOYADI PERSONELADI, isnull((
			case when m.ONAY1KL is null then p.AMIR1 
			when m.ONAY2KL is null then p.AMIR2 
			when m.ONAY3KL is null then p.AMIR3 
			when m.ONAY4KL is null then p.AMIR4 
			when m.ONAY5KL is null then p.AMIR5 end),'''') AMIR,
			case when '+convert(varchar,@RET)+'=1 then (select AMIR_ADI from PERSONEL_AMIR where AMIR_KODU='''+convert(varchar,@ONAYKL)+''') else isnull(a.AMIR_ADI,'''') end AMIRADI,
			isnull(a.EMAIL,'''') EMAIL, 
			(select top 1 isnull(EMAIL,'''') from dbo.ADRES1 where PRSICIL=p.SICILNO and isnull(EMAIL,'''')<>'''') PERSONELMAIL,p.AMIR1 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR1) AMIR1_EMAIL ,
			p.AMIR2 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR2) AMIR2_EMAIL , p.AMIR3 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR3) AMIR3_EMAIL ,p.AMIR4 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR4) AMIR4_EMAIL ,
			p.AMIR5, (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR5) AMIR5_EMAIL, m.NEDEN,isnull(c.ADI,'''') NEDEN_ACIK,
			 m.ACIKLAMA, '+case when @Table='dbo.ONY_SAATIZIN' then 'm.TARIH BASTARIH,m.BASSAAT,m.BITSAAT,m.SAAT,m.SEBEP,m.SEBEP2,' 
			 when @Table='dbo.ONY_GUNIZIN' then 'm.BASTARIH,m.BITTARIH,m.ISBASI,m.GUN,m.SEBEP,m.SEBEP2,'	
			 when @Table='dbo.ONY_MESAI' then 'm.TARIH BASTARIH, m.SURE SAAT, m.GELIS_SAATI, m.BASZAMAN BASSAAT, m.BITZAMAN BITSAAT, m.GELIS_SERVISI,m.GELIS_SERVIS_KULLANIM,m.DONUS_SAATI,m.DONUS_SERVISI,m.DONUS_SERVIS_KULLANIM,'
			 end+' 
			m.RET, m.RET_ACIK, POST [STATE] from '+@Table+' m (nolock) left join dbo.PERSONEL1 (nolock) p on m.PRSICIL=p.SICILNO
			left join dbo.PERSONEL_AMIR (nolock) a on (
			case when m.ONAY1KL is null then p.AMIR1 
			when m.ONAY2KL is null then p.AMIR2 
			when m.ONAY3KL is null then p.AMIR3 
			when m.ONAY4KL is null then p.AMIR4 
			when m.ONAY5KL is null then p.AMIR5 end)=AMIR_KODU
			left join dbo.PERSONEL1 (nolock) p2 on AMIR_KODU=p2.SICILNO left join dbo.CALISMA (nolock) c on convert(varchar,c.KODU)=convert(varchar,m.NEDEN) and c.TIPI=''İZİN'' where (m.ONAY1KL is null or m.ONAY2KL is null or m.ONAY3KL is null or m.ONAY4KL is null or m.ONAY5KL is null) 
			  and m.IDNO='+convert(varchar,@IDNO);
			
			--print @SQL+@SQL2;
			EXEC (@SQL+@SQL2);
			IF (@ISPOST=1) SET @ReturnCode='201'
			ELSE
			SET @ReturnCode='200'
END TRY  
BEGIN CATCH

SET @ReturnCode='500'
END CATCH 
END
 

GO
/****** Object:  StoredProcedure [dbo].[BCS_LABEL_SELECT]    Script Date: 19.09.2021 07:07:13 ******/
 

CREATE PROC  [dbo].[BCS_LABEL_SELECT]  
(
@Lng int,
@ReturnCode varchar(20) output
)
AS



select * from [dbo].[BCS_LABEL] nolock ---where Lng=@Lng; 
where Lng in  (select RTRIM(KODU) from WR_DILLER nolock where ID=@Lng )

set @ReturnCode='200';

 
GO
/****** Object:  StoredProcedure [dbo].[BCS_LICENSE_INSERT]    Script Date: 19.09.2021 07:09:59 ******/
 

CREATE PROC  [dbo].[BCS_LICENSE_INSERT]
(
@CompanyCode varchar(50),
@CompanyName varchar(250),
@ServerAddress varchar(250),
@UserCount varchar(250),
@BarkodesNum varchar(250),
@ValidNum varchar(250),
@SecureNum varchar(250),
@Description varchar(250),
@TranDate datetime=GETDATE
)
AS
 

--update [dbo].[BCS_LICENSE] set [Status]=0 where CompanyCode=@CompanyCode

---delete from [dbo].[BCS_LICENSE] where CompanyCode=@CompanyCode

INSERT INTO [dbo].[BCS_LICENSE]
VALUES (
@CompanyCode,@CompanyName,@ServerAddress,
@UserCount, 
@BarkodesNum,@ValidNum,@SecureNum,
@Description ,GETDATE(),1)

SELECT @@IDENTITY AS 'ID'; 


 
GO
/****** Object:  StoredProcedure [dbo].[BCS_LICENSE_SELECT]    Script Date: 19.09.2021 07:09:59 ******/
 

CREATE PROC  [dbo].[BCS_LICENSE_SELECT]
(
@CompanyID int=0,
@UserName varchar(50)=null
)
AS

select s.LOGO,l.* from [dbo].[BCS_LICENSE] l (nolock) 
left join [dbo].[SIRKET] s (nolock) on l.CompanyCode=s.KODU 


 
GO
/****** Object:  StoredProcedure [dbo].[BCS_LIMIT_CONTROL]    Script Date: 19.09.2021 07:09:59 ******/
 
CREATE PROCEDURE [dbo].[BCS_LIMIT_CONTROL] 
	@SIRKET INT,
	@TYPE INT,
  	@SICILNO VARCHAR(30),  
  	@NEDEN INT,  
  	@BASTARIH DATETIME=null,  
  	@GUN FLOAT=null,  
  	@BITTARIH DATETIME=null,  
  	@ISBASI DATETIME=null,  
  	@SEBEP VARCHAR(250),  
  	@ACIKLAMA VARCHAR(250),  
  	@IDNO INT=NULL,  
  	@USER VARCHAR(50) ,
	@BASSAAT DATETIME=null ,
	@BITSAAT DATETIME=null ,
	@WEEKEND BIT=null 
  AS  
BEGIN  


DECLARE @IZIN_TURU varchar(50)=''
DECLARE @LIMIT_VALID bit=1;
DECLARE @CALISMA_ADI varchar(50)='';


select @CALISMA_ADI=ADI from CALISMA nolock where KODU=@NEDEN

IF @NEDEN<>21  
GOTO LABEL_BILGIVER
ELSE
BEGIN

select 
@LIMIT_VALID=(case when LIMIT_SURE>=(KULIZIN_SAAT+SAAT+ (@GUN*7.5*60) +DATEDIFF(MINUTE,
isnull(@BASSAAT,'00:00'),isnull(@BITSAAT,'00:00'))) then 1 else 0 end)

from (
select SICILNO,sum((isnull(g.GUN,0) *7.5*60)) KULIZIN_SAAT,
sum(isnull(s.SAAT,0)) SAAT,
sum(isnull(l.LIMIT_SURE,0)*60) LIMIT_SURE from PERSONEL1 p (nolock) 
left join 
(select g.PRSICIL,sum(g.GUN) GUN from GUNIZIN1 (nolock) g 
inner join IZINLIMIT (nolock) i on i.IZIN_TURU in ('Günlük / Saatlik','Günlük')  and CLKODU in (21)  and g.NEDEN=i.CLKODU 
where DATEPART(YEAR,g.BASTARIH)=DATEPART(YEAR,GETDATE()) 
and DATEPART(YEAR,g.BITTARIH)=DATEPART(YEAR,GETDATE()) 
and g.NEDEN=@NEDEN
group by PRSICIL)  g on p.SICILNO=g.PRSICIL 
left join (select s.PRSICIL,sum(DATEDIFF(minute,'00:00',convert(datetime,convert(varchar,s.SAAT,108)))) SAAT 
from SAATIZIN1 (nolock) s 
inner join IZINLIMIT (nolock) i2 on i2.IZIN_TURU in ('Günlük / Saatlik','Saatlik')  and CLKODU in (21) and i2.CLKODU=s.NEDEN 
where DATEPART(YEAR,s.TARIH)=DATEPART(YEAR,GETDATE()) 
and s.NEDEN=@NEDEN
group by PRSICIL) s on p.SICILNO=s.PRSICIL 
left join (select CLKODU, LIMIT_SURE from IZINLIMIT l (nolock)) l on l.CLKODU in (21)
where 1=1  
and p.SICILNO=@SICILNO
and (ISCIKT is  null or ISCIKT>GETDATE()) 
group by SICILNO
 ) t

IF @LIMIT_VALID =1 GOTO LABEL_BILGIVER 
IF @LIMIT_VALID =0 GOTO LABEL_HATAVER 

END

	LABEL_BILGIVER:  
  		SELECT '' SEBEP,'TAMAM' SONUC,'01' SRKODU,@SICILNO SICILNO,@NEDEN NEDEN,
		@BASTARIH BASTARIH,@GUN GUN,@BITTARIH BITTARIH,@ISBASI ISBASI,  
		0 AYS_LMT,0 YIL_LMT,0 TTL_LMT;    		
  		RETURN;  

  	LABEL_HATAVER:  
		SELECT @CALISMA_ADI+' '+'LIMIT YETERSIZ' SEBEP,'HATA' SONUC,'01' SRKODU,@SICILNO SICILNO,@NEDEN NEDEN,
		@BASTARIH BASTARIH,@GUN GUN,@BITTARIH BITTARIH,@ISBASI ISBASI,  
		0 AYS_LMT,0 YIL_LMT,0 TTL_LMT;   
  		RETURN;  
 END;  

 
 GO
/****** Object:  StoredProcedure [dbo].[BCS_LOGIN_NEW]    Script Date: 19.09.2021 07:09:59 ******/
--exec [dbo].[BCS_LOGIN_NEW] '0104','34ts1142',null

CREATE PROC  [dbo].[BCS_LOGIN_NEW]
(
@Username varchar(50)=null,
@Password varchar(50)=null,
@Domain varchar(50)=null
)
AS

DECLARE @_Username varchar(50) = null, 
@_Password varchar(50) = null,
@ReturnCode varchar(3) = null,
@Dscr varchar(100) = null,
@UserType varchar(5) = null,
@PrsBazli bit = null


IF (@Domain is not null) BEGIN



	if EXISTS(select * from PERSONEL1 nolock where DOMAIN_USERNAME=@Username)
	begin select @Username=SICILNO,@Password =ONY_SIFRE from PERSONEL1 nolock where DOMAIN_USERNAME=@Username 
	set @ReturnCode='200' set @Dscr='Basarili' end
	--else SET @Password ='';

	if EXISTS(select * from PERSONEL_AMIR nolock where DOMAIN_USERNAME=@Username)
	begin select @Username=AMIR_KODU,@Password =SIFRE  from PERSONEL_AMIR nolock where DOMAIN_USERNAME=@Username and SRKODU='1';;
	set @ReturnCode='200' set @Dscr='Basarili' end
	--else SET @Password ='';


	 
END

--select *,DOMAIN_USERNAME from PERSONEL_AMIR where AMIR_KODU='0016'
--select *,DOMAIN_USERNAME from PERSONEL1 where SICILNO='0016'


SET @Username=RTRIM(@Username)
SET @Password=RTRIM(@Password)

select top 1 @PrsBazli=PrsBazli from dbo.BCS_PARAMETERS nolock 



IF @Username='ADMIN' 
set @UserType='A';
else 
set @UserType='P';


--AMIR
select distinct @UserType=(case when IDNO is not null then 'A' else '' end), 
@_Username=RTRIM(a.AMIR_KODU), @_Password = RTRIM(a.SIFRE) from dbo.PERSONEL_AMIR a
where RTRIM(a.AMIR_KODU) in (@Username)  and SRKODU='1';;


-----Personel şifre yok
IF NOT EXISTS(select * from dbo.PERSONEL1 (nolock) p where SICILNO=@Username ) and @UserType='P' 
begin
set @ReturnCode='555'  set @Dscr='Personel bilgisi bulunamadı.' 
GOTO Response;
end

---Amir yok
IF (@_Username is null and @_Password is null)
begin set @ReturnCode='501' set @Dscr='Amir yok' end

-----Personel şifre yok
IF (@_Username=@Username and (@_Password is null or @_Password='')) 
begin
set @ReturnCode='506'  set @Dscr='Personel şifre yok. Şifre belirleme ekranına yönlendirildiniz..' 
GOTO Response;
end

---Amir şifre hatalı
IF (@_Username=@Username and isnull(@_Password,'')<>@Password) 
begin set @ReturnCode='502'  set @Dscr='Amir şifre hatalı' set @UserType='A' end


---Amir yok
IF (@_Username is null)
BEGIN

select distinct @UserType=(case when IDNO is not null then 'P' else '' end),
 @_Username=RTRIM(p.SICILNO), @_Password = p.ONY_SIFRE from dbo.PERSONEL1 p
where RTRIM(p.SICILNO) in (@Username)
and (ISCIKT is  null or ISCIKT>GETDATE())

---Personel yok
IF (@_Username is null and @_Password is null)
begin set @ReturnCode='504' set @Dscr='Hatalı giriş'  end

if (@PrsBazli=0 and @UserType='P') 
BEGIN
begin set @ReturnCode='504' set @Dscr='Giriş yetkisi yok. Sistem yöneticisine başvurunuz.'  end
GOTO Response
END

---Personel şifre hatalı
IF (@_Username=@Username and isnull(@_Password,'')<>@Password) 
begin set @ReturnCode='505'  set @Dscr='Personel şifre hatalı. Tekrar deneyiniz.' set @UserType='P' end

-----Personel şifre yok
IF (@_Username=@Username and @_Password is null) 
begin set @ReturnCode='506'  set @Dscr='Personel şifre yok. Şifre belirleme ekranına yönlendirildiniz..' 
set @UserType='P' end
END

IF (@_Username=@Username and @_Password=@Password) 
begin set @ReturnCode='200' set @Dscr='Basarili' end

Response:
select @ReturnCode ReturnCode, @Dscr ReturnDscr, @_Username Username,isnull(@_Password,'') [Password], @UserType [UserType],
(select FirmName from dbo.BCS_PARAMETERS nolock where ID=1) FirmName,

case when @UserType='P' then
isnull((select ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=@_Username),'')
else
isnull((select AMIR_ADI from dbo.PERSONEL_AMIR nolock where AMIR_KODU=@_Username  and SRKODU='1'),'')
end UserInfo

 
 
GO
/****** Object:  StoredProcedure [dbo].[BCS_MAIL_INSERT]    Script Date: 19.09.2021 07:09:59 ******/
 

CREATE PROC  [dbo].[BCS_MAIL_INSERT]
		   @PerSicilNo  varchar(100),
		   @AmirSicilNo  varchar(100),
           @MailTo  varchar(100),
		   @MailBody  nvarchar(max),
		   @Dscr varchar(500),
		   @Status int,
           @ReturnCode varchar(20) output
AS
BEGIN

BEGIN TRY

INSERT INTO dbo.BCS_ONY_MAIL_LOG VALUES(
@PerSicilNo,@AmirSicilNo,@MailTo,@MailBody,@Dscr,@Status,GETDATE())
SET @ReturnCode='200'

END TRY  
BEGIN CATCH

SET @ReturnCode='500'
END CATCH 
			  

END

 
 GO
/****** Object:  StoredProcedure [dbo].[BCS_MESAI_INSERT]    Script Date: 19.09.2021 07:09:59 ******/
 
CREATE PROC  [dbo].[BCS_MESAI_INSERT]
		   @SRKODU int=null,
           @PRSICIL varchar(15)=null,
           @TARIH smalldatetime=null,
		   @SURE datetime=null,
		   @ACIKLAMA varchar(100)=null,
		   @NEDEN  varchar(10)=null,   
		   @GELIS_SERVIS_KULLANIM bit=0,
		   @GELIS_SERVISI varchar(20)=null,
		   @GELIS_SAATI smalldatetime=null,		   
		   @DONUS_SERVIS_KULLANIM bit=0,
		   @DONUS_SERVISI varchar(20)=null,
		   @DONUS_SAATI smalldatetime=null,
		   @ONAY1 bit=null,
           @ONAY1KL varchar(50)=null,
           @ONAY2 bit=null,
           @ONAY2KL varchar(50)=null,
           @ONAY3 bit=null,
           @ONAY3KL varchar(50)=null,
           @ONAY4 bit=null,
           @ONAY4KL varchar(50)=null,
           @ONAY5 bit=null,
           @ONAY5KL varchar(50)=null,
           @ONAY6 bit=null,
           @ONAY6KL varchar(50)=null,
           @ONAY7 bit=null,
           @ONAY7KL varchar(50)=null,
           @ONAY8 bit=null,
           @ONAY8KL varchar(50)=null,
           @ONAY9 bit=null,
           @ONAY9KL varchar(50)=null,
           @ONAY10 bit=null,
           @ONAY10KL varchar(50)=null,
           @POST bit=null,
           @RET int=null,
		   @AMIR bit=0,
		   @AMIR_KODU varchar(50)=null,
		   @BASZAMAN datetime=null,
		   @BITZAMAN datetime=null,
		   @YEMEK bit=0,
		   @ReturnCode varchar(20) output
     --      @ReturnCode varchar(20) ='' output,
		   --@Mail varchar(100)='' output

AS
BEGIN
DECLARE @SQL nvarchar(MAX);
DECLARE @Table nvarchar(50)=  'dbo.ONY_MESAI' 
DECLARE @DEGREE_AMIR int=0;
DECLARE @IDNO  bigint=0;
DECLARE @ISPOST bit=0;
SET @ReturnCode='500'


------NABER32

BEGIN TRY
select 
@DEGREE_AMIR=(
case 
when AMIR1=@AMIR_KODU then 1
when AMIR2=@AMIR_KODU then 2
when AMIR3=@AMIR_KODU then 3
when AMIR4=@AMIR_KODU then 4
when AMIR5=@AMIR_KODU then 5 end) from dbo.PERSONEL1 nolock where SICILNO=@PRSICIL
 
 
--DECLARE @BASSZAMAN datetime= convert(datetime,'30-12-1899 '+convert(varchar,@BASZAMAN,114));
--DECLARE @BITTZAMAN datetime=  convert(datetime,'30-12-1899 '+convert(varchar,@BITZAMAN,114));

--DECLARE @BASSZAMAN datetime=  TRY_PARSE('1899-12-30 '+convert(varchar,@BASZAMAN,114) as DATETIME)
--DECLARE @BITTZAMAN datetime=   TRY_PARSE('1899-12-30 '+convert(varchar,@BITZAMAN,114) as DATETIME)

SET @BASZAMAN = DATEADD(day,-2,@BASZAMAN)
SET @BITZAMAN = DATEADD(day,-2,@BITZAMAN)
SET @SURE=DATEADD(day,-2,@SURE)
 
if EXISTS (select * from [dbo].[ONY_MESAI] where TARIH= @TARIH  and 
( (BASZAMAN>= @BASZAMAN and  BASZAMAN<= @BITZAMAN) or 
(BITZAMAN>= @BASZAMAN and  BITZAMAN<= @BITZAMAN)) 
and RET=0  
and PRSICIL=@PRSICIL
) 
BEGIN
SET @ReturnCode='450'
return;
END

INSERT INTO  [dbo].[ONY_MESAI]
           ([SRKODU]
           ,[PRSICIL]
           ,[TARIH]
		   ,[SURE]
           ,[ACIKLAMA]
		   ,[NEDEN]
           ,[GELIS_SERVIS_KULLANIM]
           ,[GELIS_SERVISI]
           ,[GELIS_SAATI]
           ,[DONUS_SERVIS_KULLANIM]
           ,[DONUS_SERVISI]
           ,[DONUS_SAATI]
           ,[ONAY1]
           ,[ONAY1KL]
           ,[ONAY2]
           ,[ONAY2KL]
           ,[ONAY3]
           ,[ONAY3KL]
           ,[ONAY4]
           ,[ONAY4KL]
           ,[ONAY5]
           ,[ONAY5KL]
           ,[ONAY6]
           ,[ONAY6KL]
           ,[ONAY7]
           ,[ONAY7KL]
           ,[ONAY8]
           ,[ONAY8KL]
           ,[ONAY9]
           ,[ONAY9KL]
           ,[ONAY10]
           ,[ONAY10KL]
           ,[POST]
           ,[RET]
		   ,[BASZAMAN]
           ,[BITZAMAN]
		   ,[YEMEKYER]
		   ,[CREATEUSER]
		   )
     VALUES (
		   @SRKODU,
           @PRSICIL,
           @TARIH ,
		   --DATEDIFF(minute, convert(datetime,@GELIS_SAATI),convert(datetime,@DONUS_SAATI)),
		   --convert(datetime,@DONUS_SAATI)-convert(datetime,@GELIS_SAATI),
		   @SURE,
		   @ACIKLAMA,
		   (select  TURU from [FMNED] where KODU=@NEDEN ),   
		   @GELIS_SERVIS_KULLANIM ,
		   @GELIS_SERVISI ,
		   @GELIS_SAATI ,		   
		   @DONUS_SERVIS_KULLANIM ,
		   @DONUS_SERVISI ,
		   @DONUS_SAATI,
             (case when @DEGREE_AMIR=1 then (case when @AMIR=1 then 1 else @ONAY1 end) else 
		   (case when @DEGREE_AMIR>1 then 1 else @ONAY1  end) end), 
		   (case when @DEGREE_AMIR=1 then (case when @AMIR=1 then @AMIR_KODU else @ONAY1KL end) else 
		   (case when @DEGREE_AMIR>1 then @AMIR_KODU else @ONAY1KL  end)  end), 
		   (case when @DEGREE_AMIR=2 then (case when @AMIR=1 then 1 else @ONAY2 end) else 
		   (case when @DEGREE_AMIR>2 then 1 else @ONAY2  end) end), 		  
		   (case when @DEGREE_AMIR=2 then (case when @AMIR=1 then @AMIR_KODU else @ONAY2KL end) else 
		   (case when @DEGREE_AMIR>2 then @AMIR_KODU else @ONAY2KL  end)  end), 
		   (case when @DEGREE_AMIR=3 then (case when @AMIR=1 then 1 else @ONAY3 end) else 
		   (case when @DEGREE_AMIR>3 then 1 else @ONAY3  end) end), 		  
		   (case when @DEGREE_AMIR=3 then (case when @AMIR=1 then @AMIR_KODU else @ONAY3KL end) else 
		   (case when @DEGREE_AMIR>3 then @AMIR_KODU else @ONAY3KL  end)  end), 
		   (case when @DEGREE_AMIR=4 then (case when @AMIR=1 then 1 else @ONAY4 end) else
		   (case when @DEGREE_AMIR>4 then 1 else @ONAY4  end) end), 		  
		   (case when @DEGREE_AMIR=4 then (case when @AMIR=1 then @AMIR_KODU else @ONAY4KL end) else 
		   (case when @DEGREE_AMIR>4 then @AMIR_KODU else @ONAY4KL  end)  end), 
		   (case when @DEGREE_AMIR=5 then (case when @AMIR=1 then 1 else @ONAY5 end) else 
		   (case when @DEGREE_AMIR>5 then 1 else @ONAY5  end) end), 		  
		   (case when @DEGREE_AMIR=5 then (case when @AMIR=1 then @AMIR_KODU else @ONAY5KL end) else 
		   (case when @DEGREE_AMIR>5 then @AMIR_KODU else @ONAY5KL  end)  end), 
           @ONAY6 ,
           @ONAY6KL ,
           @ONAY7 ,
           @ONAY7KL ,
           @ONAY8 ,
           @ONAY8KL ,
           @ONAY9 ,
           @ONAY9KL,
           @ONAY10 ,
           @ONAY10KL,
           @POST,
           @RET ,
		   @BASZAMAN ,
		   @BITZAMAN ,
		   @YEMEK,
		   (case when @AMIR=1 then @AMIR_KODU else @PRSICIL end)
		   )

		    SET @IDNO=scope_identity();
			
			
			SET @SQL=' update m set [POST]=1  from '+@Table+' m 
			inner join dbo.PERSONEL1 p on m.PRSICIL=p.SICILNO 
			inner join dbo.PERSONEL_AMIR a on a.AMIR_KODU='''+convert(varchar,@AMIR_KODU)+''' 
			where m.IDNO='+convert(varchar,@IDNO)+'  and  a.POST_USER_MESAI=1'; 
			
			

			EXEC (@SQL);
			
			IF EXISTS( select * from ONY_MESAI where IDNO=@IDNO and POST=1)
			SET @ISPOST=1;
				
			INSERT INTO ONY_LOG_MESAI 
			([ONY_IDNO],[SRKODU],[PRSICIL],[TARIH],[SURE],[BASZAMAN],[BITZAMAN],[YEMEKYER],[ACIKLAMA],[NEDEN],[GELIS_SERVIS_KULLANIM],[GELIS_SERVISI],[GELIS_SAATI]
			,[DONUS_SERVIS_KULLANIM],[DONUS_SERVISI],[DONUS_SAATI],[KULLANICI],[DERECE],[ONAY],[ISLEM_ZAMANI])
			SELECT IDNO,SRKODU,PRSICIL,TARIH, SURE,BASZAMAN,BITZAMAN,YEMEKYER,ACIKLAMA,NEDEN,GELIS_SERVIS_KULLANIM,
			GELIS_SERVISI,GELIS_SAATI,DONUS_SERVIS_KULLANIM,DONUS_SERVISI,DONUS_SAATI,CREATEUSER,(CASE WHEN @AMIR=1 THEN 1 ELSE 0 END),1,GETDATE()
			FROM ONY_MESAI WHERE IDNO=@IDNO

			
				SET @SQL='select m.IDNO, p.SICILNO PERSONEL,
		    P.ADI+'' ''+P.SOYADI PERSONELADI, 
			isnull((case when m.ONAY1KL is null then p.AMIR1 
			when m.ONAY2KL is null then p.AMIR2 
			when m.ONAY3KL is null then p.AMIR3 
			when m.ONAY4KL is null then p.AMIR4 
			when m.ONAY5KL is null then p.AMIR5 end),'''') AMIR, 
			isnull(p2.ADI,'''')+'' ''+ isnull(p2.SOYADI,'''') AMIRADI, 
			isnull(a.EMAIL,'''') EMAIL, 
			(select top 1  isnull(EMAIL,'''') from dbo.ADRES1 where PRSICIL=p.SICILNO and isnull(EMAIL,'''')<>'''') PERSONELMAIL,
			p.AMIR1 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR1) AMIR1_EMAIL ,
			p.AMIR2 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR2) AMIR2_EMAIL ,
			p.AMIR3 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR3) AMIR3_EMAIL ,
			p.AMIR4 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR4) AMIR4_EMAIL ,
			p.AMIR5, (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR5) AMIR5_EMAIL, 
		    m.NEDEN,
			isnull(c.ADI,'''') NEDEN_ACIK,
			'' SEBEP,
			'' SEBEP2,
			GELIS_SERVIS_KULLANIM,
			GELIS_SERVISI,
			GELIS_SAATI,
			m.ACIKLAMA,
			TARIH BASTARIH,
			BASZAMAN BASSAAT,
			GETDATE() BITTARIH,
			BITZAMAN BITSAAT,	
		    DONUS_SERVIS_KULLANIM,
			DONUS_SERVISI,
			DONUS_SAATI,
			GETDATE() ISBASI,
			0 GUN,
			SURE SAAT,
			m.RET ,
			m.RET_ACIK ,
			POST [STATE],
			(select distinct TOPLAMKALAN from [dbo].[YILIZHESAP1] where YIL in ( select MAX(YIL) from [dbo].[YILIZHESAP1] where PRSICIL='''+convert(varchar,@PRSICIL)+''' ) 
			and PRSICIL='''+convert(varchar,@PRSICIL)+''' ) IZINBAKIYE
			from '+@Table+' m (nolock) 
			left join dbo.PERSONEL1 (nolock) p on m.PRSICIL=p.SICILNO
			left join dbo.PERSONEL_AMIR (nolock) a on 
			(case when m.ONAY1KL is null then p.AMIR1 
			 when m.ONAY2KL is null then p.AMIR2 
			when m.ONAY3KL is null then p.AMIR3 
			when m.ONAY4KL is null then p.AMIR4 
			when m.ONAY5KL is null then p.AMIR5 end)=AMIR_KODU
			left join dbo.PERSONEL1 (nolock) p2 on AMIR_KODU=p2.SICILNO
			left join dbo.CALISMA (nolock) c on convert(varchar,c.KODU)=convert(varchar,m.NEDEN) and c.TIPI=''İZİN''  
			where 
			 (m.ONAY1KL is null or m.ONAY2KL is null or m.ONAY3KL is null or m.ONAY4KL is null or m.ONAY5KL is null) 
			  and m.IDNO='+convert(varchar,@IDNO)+''; 

			
			  EXEC (@SQL);

			--select p.SICILNO PERSONEL,P.ADI+' '+P.SOYADI PERSONELADI, (case when m.ONAY1KL is null then p.AMIR1 
			--when m.ONAY2KL is null then p.AMIR2 
			--when m.ONAY3KL is null then p.AMIR3 
			--when m.ONAY4KL is null then p.AMIR4 
			--when m.ONAY5KL is null then p.AMIR5 end) AMIR,
			--isnull(p2.ADI,'''')+' '+ isnull(p2.SOYADI,'') AMIRADI, 
			--a.EMAIL, p.EMAIL PERSONELMAIL,
			--p.AMIR1 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR1) AMIR1_EMAIL ,
			--p.AMIR2 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR2) AMIR2_EMAIL ,
			--p.AMIR3 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR3) AMIR3_EMAIL ,
			--p.AMIR4 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR4) AMIR4_EMAIL ,
			--p.AMIR5, (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR5) AMIR5_EMAIL ,
			--m.NEDEN,
			--'' SEBEP,
			--'' SEBEP2,
			--GELIS_SERVIS_KULLANIM,
			--GELIS_SERVISI,
			--GELIS_SAATI,
			--m.ACIKLAMA,
			--GETDATE() BASTARIH,
			--GETDATE() BASSAAT,
			--GETDATE() BITTARIH,
			--GETDATE() BITSAAT,	
		 --   DONUS_SERVIS_KULLANIM,
			--DONUS_SERVISI,
			--DONUS_SAATI,
			--GETDATE() ISBASI,
			--0 GUN,
			--GETDATE() SAAT,
			--m.RET ,
			--m.RET_ACIK ,
			--POST [STATE] 
	  --      from dbo.ONY_MESAI m (nolock) 
			--inner join dbo.PERSONEL1 (nolock) p on m.PRSICIL=p.SICILNO
			--inner join dbo.PERSONEL_AMIR (nolock) a on 
			--(case when m.ONAY1KL is null then p.AMIR1 
			-- when m.ONAY2KL is null then p.AMIR2 
			--when m.ONAY3KL is null then p.AMIR3 
			--when m.ONAY4KL is null then p.AMIR4 
			--when m.ONAY4KL is null then p.AMIR5 end)=AMIR_KODU
			--left join dbo.PERSONEL1 (nolock) p2 on AMIR_KODU=p2.SICILNO
			--where 
			-- (m.ONAY1KL is null or m.ONAY2KL is null or m.ONAY3KL is null or m.ONAY4KL is null or m.ONAY5KL is null) 
			--  and m.IDNO=scope_identity() 
			IF (@ISPOST=1) SET @ReturnCode='201'
			ELSE 
 			SET @ReturnCode='200'
END TRY  
BEGIN CATCH

SET @ReturnCode='500'
END CATCH 	
           
END

 
GO
/****** Object:  StoredProcedure [dbo].[BCS_PARAMETER_INSERT]    Script Date: 19.09.2021 07:09:59 ******/
 
CREATE PROC  [dbo].[BCS_PARAMETER_INSERT]  
(
@firmName varchar(200)=null,
@onayTuru smallint=null,
@limitDash bit=null,
@reportDash bit=null,
@prsBazli bit=null,
@ret bit=null,
@sendMail bit=null,
@sendMailForm bit=null,
@sendMailFormTxt varchar(200)=null,
@gecmisPostUser bit=null,
@mailONay bit=null,
@domain varchar(50)=null,
@smtp varchar(50)=null,
@port varchar(5)=null,
@smtpUser varchar(50)=null,
@smtpPass varchar(50)=null,
@ssl bit=null,
@mail varchar(50)=null,
@mailFrom varchar(50)=null,
@mailSubject varchar(50)=null,
@reportUrl varchar(200)=null,
@reportUrlSecure bit=null,
@language varchar(200)=null,
@transferDate varchar(200)=null,
@fmTip smallint=null,
@fmServis bit=null,
@fmYemek bit =null,
@fmAcik bit =null,
@fmNeden bit =null,
@fmGecmisIslem bit =null,
@fmGecmisIslemSure int =null,
@fmTemplate varchar(Max) =null,
@fmUserMailBody varchar(Max) =null,
@fmFormOnay smallint=null,
@fmUseForm smallint=null,
@giYemek bit =null,
@giAcik bit =null,
@giNeden bit =null,
@giGecmisIslem bit =null,
@giGecmisIslemSure int =null,
@giFormOnay smallint=null,
@giUseForm smallint=null,
@giYillikIzin smallint=null,
@siYemek bit =null,
@siAcik bit =null,
@siNeden bit =null,
@siGecmisIslem bit =null,
@siGecmisIslemSure int =null,
@siFormOnay smallint=null,
@siUseForm smallint=null,
@siSaat bit =null,
@hktUseForm bit= NULL,
@hktFormOnay bit= NULL,
@hktNeden bit= NULL,
@hktAcik bit= NULL,
@hktGecmisIslem bit= NULL,
@hktGecmisIslemSure int =NULL,
@pstAcik bit= NULL,
@pstGecmisIslem bit= NULL,
@pstGecmisIslemSure int =NULL,
@link1Name varchar(50) =null,
@link1Url varchar(200) =null,
@link2Name varchar(50) =null,
@link2Url varchar(200) =null,
@link3Name varchar(50) =null,
@link3Url varchar(200) =null,
@link4Name varchar(50) =null,
@link4Url varchar(200) =null,
@link5Name varchar(50) =null,
@link5Url varchar(200) =null,
@ReturnCode varchar(20) output
)
AS


if EXISTS(select * from [dbo].[BCS_PARAMETERS])
update [dbo].[BCS_PARAMETERS] set 
FirmName=@firmName,
OnayTuru=@onayTuru,
LimitDash=@limitDash,
ReportDash=@reportDash,
PrsBazli=@prsBazli,
Ret=@ret,
SendMail=@SendMail,
SendMailForm=@sendMailForm,
SendMailFormTxt=@sendMailFormTxt,
GecmisPostUser=@gecmisPostUser,
MailONay=@mailONay,
[Domain]=case when @domain='' then null else @domain end,
Smtp=@smtp,
[Port]=@port,
SmtpUser=@smtpUser,
SmtpPass= @smtpPass,
[Ssl]= @ssl,
Mail= @mail,
MailFrom= @mailFrom,
MailSubject= @mailSubject,
ReportUrl= @reportUrl,
ReportUrlSecure= @reportUrlSecure,
[Language]= @language,
TransferDate= @transferDate,
FmTip=@fmTip,
FmServis=@fmServis,
FmYemek=@fmYemek,
FmAcik=@fmAcik,
FmNeden=@fmNeden,
FmGecmisIslem=@fmGecmisIslem,
FmGecmisIslemSure=@fmGecmisIslemSure,
FmTemplate=@fmTemplate,
FmUserMailBody=@fmUserMailBody,
FmFormOnay=@fmFormOnay,
FmUseForm=@fmUseForm,
GiYemek=@giYemek,
GiAcik=@giAcik,
GiNeden=@giNeden,
GiGecmisIslem=@giGecmisIslem,
GiGecmisIslemSure=@giGecmisIslemSure,
GiFormOnay=@giFormOnay,
GiUseForm=@giUseForm,
GiYillikIzin=@giYillikIzin,
SiYemek=@siYemek,
SiAcik=@siAcik,
SiNeden=@siNeden ,
SiGecmisIslem=@siGecmisIslem,
SiGecmisIslemSure=@siGecmisIslemSure,
SiFormOnay=@siFormOnay,
SiUseForm=@siUseForm,
SiSaat=@siSaat,
HktUseForm=@hktUseForm,
HktFormOnay=@hktFormOnay,
HktNeden=@hktNeden,
HktAcik=@hktAcik,
HktGecmisIslem=@hktGecmisIslem,
HktGecmisIslemSure=@hktGecmisIslemSure,
PstAcik=@pstAcik,
PstGecmisIslem=@pstGecmisIslem,
PstGecmisIslemSure=@pstGecmisIslemSure,
link1Name=@link1Name,
link1Url=@link1Url,
link2Name=@link2Name,
link2Url=@link2Url,
link3Name=@link3Name,
link3Url=@link3Url,
link4Name=@link4Name,
link4Url=@link4Url,
link5Name=@link5Name,
link5Url=@link5Url
else 
INSERT INTO [dbo].[BCS_PARAMETERS] ([FirmName]
      ,[OnayTuru]
      ,[LimitDash]
      ,[ReportDash]
      ,[PrsBazli]
      ,[Ret]
      ,[SendMail]
      ,[SendMailForm]
      ,[SendMailFormTxt]
      ,[GecmisPostUser]
      ,[MailOnay]
      ,[Domain]
      ,[Smtp]
      ,[Port]
      ,[SmtpUser]
      ,[SmtpPass]
      ,[Ssl]
      ,[Mail]
      ,[MailFrom]
      ,[MailSubject]
      ,[ReportUrl]
      ,[ReportUrlSecure]
      ,[Language]
      ,[TransferDate]
      ,[FmTip]
      ,[FmServis]
      ,[FmYemek]
      ,[FmAcik]
      ,[FmNeden]
      ,[FmGecmisIslem]
      ,[FmGecmisIslemSure]
      ,[FmTemplate]
      ,[FmUserMailBody]
      ,[FmFormOnay]
      ,[FmUseForm]
      ,[GiYemek]
      ,[GiAcik]
      ,[GiNeden]
      ,[GiGecmisIslem]
      ,[GiGecmisIslemSure]
      ,[GiFormOnay]
      ,[GiUseForm]
      ,[GiYillikIzin]
      ,[SiYemek]
      ,[SiAcik]
      ,[SiNeden]
      ,[SiGecmisIslem]
      ,[SiGecmisIslemSure]
      ,[SiFormOnay]
      ,[SiUseForm]
      ,[SiSaat]
      ,[HktUseForm]
      ,[HktFormOnay]
      ,[HktNeden]
      ,[HktAcik]
      ,[HktGecmisIslem]
      ,[HktGecmisIslemSure]
      ,[PstAcik]
      ,[PstGecmisIslem]
      ,[PstGecmisIslemSure]
      ,[link1Name]
      ,[link1Url]
      ,[link2Name]
      ,[link2Url]
      ,[link3Name]
      ,[link3Url]
      ,[link4Name]
      ,[link4Url]
      ,[link5Name]
      ,[link5Url]) VALUES (
@firmName,@onayTuru,@limitDash,@reportDash,@prsBazli,@ret,@sendMail,@sendMailForm,@sendMailFormTxt,@gecmisPostUser,@mailONay,@smtp,@port,@domain,@smtpUser,@smtpPass,@ssl,@mail,@mailFrom,@mailSubject,@reportUrl, @reportUrlSecure,
@language, @transferDate, @fmTip,@fmServis,@fmYemek,@fmAcik,@fmNeden,@fmGecmisIslem,@fmGecmisIslemSure,@fmTemplate,@fmUserMailBody,@fmFormOnay,@fmUseForm,@giYemek,@giAcik,@giNeden,
@giGecmisIslem,@giGecmisIslemSure,@giFormOnay,@giUseForm,@giYillikIzin, @siYemek,@siAcik,@siNeden ,@siGecmisIslem,@siGecmisIslemSure,@siFormOnay,@siUseForm,@siSaat,
@hktUseForm,@hktFormOnay,@hktNeden,@hktAcik,@hktGecmisIslem,@hktGecmisIslemSure,@pstAcik,@pstGecmisIslem,@pstGecmisIslemSure,
@link1Name,@link1Url,@link2Name,@link2Url,@link3Name,@link3Url,@link4Name,@link4Url,@link5Name,@link5Url) ;
set @ReturnCode='200';
 GO
/****** Object:  StoredProcedure [dbo].[BCS_PARAMETER_SELECT]    Script Date: 19.09.2021 07:09:59 ******/
 
CREATE PROC  [dbo].[BCS_PARAMETER_SELECT]  
(
@ReturnCode varchar(20) output
)
AS

select * from [dbo].[BCS_PARAMETERS] nolock

set @ReturnCode='200';
 
 GO
/****** Object:  StoredProcedure [dbo].[BCS_PERSONEL_GET_NEW]    Script Date: 19.09.2021 07:13:53 ******/
 
CREATE PROC  [dbo].[BCS_PERSONEL_GET_NEW]
(
@Username varchar(50)=null,
@Type varchar(5)=null
)
AS
BEGIN
DECLARE 
@ReturnCode varchar(3) = null,
@Dscr varchar(100) = null

select 
ID,
SICILNO,
ADI,
DEPARTADI,
DEPART,
GOREV,
TOTAL_PERIOD,
APPROVE,
AMIR,
TOPLAMKALAN,
POSTA,
--case 
--when PARSENAME(YILLIK_FAZLA_MESAI,1)=0  then convert(varchar,PARSENAME(YILLIK_FAZLA_MESAI,2))+'.00'
--when PARSENAME(YILLIK_FAZLA_MESAI,1)>0 and PARSENAME(YILLIK_FAZLA_MESAI,1)<=15 then convert(varchar,PARSENAME(YILLIK_FAZLA_MESAI,2))+'.15'
--	   when PARSENAME(YILLIK_FAZLA_MESAI,1)>15 and PARSENAME(YILLIK_FAZLA_MESAI,1)<=30 then convert(varchar,PARSENAME(YILLIK_FAZLA_MESAI,2))+'.30'
--	   when PARSENAME(YILLIK_FAZLA_MESAI,1)>30 and PARSENAME(YILLIK_FAZLA_MESAI,1)<=45 then convert(varchar,PARSENAME(YILLIK_FAZLA_MESAI,2))+'.45'
--	   when PARSENAME(YILLIK_FAZLA_MESAI,1)>45 and PARSENAME(YILLIK_FAZLA_MESAI,1)<=59 then convert(varchar,PARSENAME(YILLIK_FAZLA_MESAI,2)+1)+'.00' end 
--YILLIK_FAZLA_MESAI
0 YILLIK_FAZLA_MESAI

from 
(
select p.IDNO ID, p.SICILNO, p.ADI+' '+p.SOYADI ADI,RTRIM(d.ADI) DEPARTADI,RTRIM(d.KODU)+' '+d.ADI DEPART, m1.TURU GOREV , 100 [TOTAL_PERIOD],0 APPROVE,  
isnull(AMIR1,isnull(AMIR2,isnull(AMIR3,isnull(AMIR4,isnull(AMIR5,''))))) AMIR, 
TOPLAMKALAN, 0 YILLIK_FAZLA_MESAI, p1.ADI POSTA
--CONVERT(char(5), DATEADD(MINUTE, convert(int,isnull(f.FazlaMesai,0)+isnull(ptj.SURE,0)), '19000101'), 108) YILLIK_FAZLA_MESAI
--CAST(((convert(int,isnull(f.FazlaMesai,0)+isnull(ptj.SURE,0))) / 60) AS VARCHAR(10)) + '.' + CAST ((convert(int,isnull(f.FazlaMesai,0)+isnull(ptj.SURE,0)))%60 AS VARCHAR(10)) YILLIK_FAZLA_MESAI
from dbo.PERSONEL1 p (nolock) 
left join POSTA p1 (nolock) on p.POSTA=p1.KODU and p1.SRKODU='1'
left join GOREV m1 (nolock) on p.GOREV=m1.KODU and m1.SRKODU='1'

left join (select PRSICIL, max(YIL) YIL from dbo.YILIZHESAP1 (nolock) group by PRSICIL) y on y.PRSICIL=p.SICILNO
left join BCS_FAZLA_MESAI f (nolock) on p.SICILNO=f.Sicil
left join (select YIL, PRSICIL,sum(TOPLAMKALAN) TOPLAMKALAN from dbo.YILIZHESAP1 (nolock) group by YIL, PRSICIL) y2  on y2.PRSICIL=p.SICILNO and y2.YIL=y.YIL 
left join DEPARTMAN (nolock) d on p.DEPART=d.KODU and d.SRKODU='1'
left join (select PRSICIL,ISNULL(SUM((DATEPART(HOUR, SURE) * 60) + DATEPART(MINUTE, SURE)), 0) SURE from  PUANTAJ1 (nolock) 
where CLKODU IN(SELECT KODU FROM CALISMA WHERE TIPI = 'MESAİ') AND ONAY = 'EVET'  and convert(varchar,TARIH,112)>(select TransferDate from BCS_PARAMETERS nolock)
and TARIH >= DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)  AND TARIH <= GETDATE() 
group by PRSICIL) ptj on ptj.PRSICIL=p.SICILNO 
where 1=1 
and SICILNO=(case when @Type='P' then @Username else SICILNO end) 
and 
(AMIR1=(case when @Type='A' then @Username else AMIR1 end) or 
AMIR2=(case when @Type='A' then @Username else AMIR2 end) or 
AMIR3=(case when @Type='A' then @Username else AMIR3 end) or 
AMIR4=(case when @Type='A' then @Username else AMIR4 end) or 
AMIR5=(case when @Type='A' then @Username else AMIR5 end) )
and (ISCIKT is  null or ISCIKT>GETDATE())

--and SICILNO<>@Username

union all

select p.IDNO ID, p.SICILNO, p.ADI+' '+p.SOYADI ADI, RTRIM(d.ADI) DEPARTADI,RTRIM(p.DEPART)+' '+RTRIM(d.ADI) DEPART, m1.TURU GOREV , 
100 [TOTAL_PERIOD],0 APPROVE, 
isnull(AMIR1,isnull(AMIR2,isnull(AMIR3,isnull(AMIR4,isnull(AMIR5,''))))) AMIR, TOPLAMKALAN, 
--CONVERT(char(5), DATEADD(MINUTE, convert(int,isnull(f.FazlaMesai,0)+isnull(ptj.SURE,0)), '19000101'), 108) YILLIK_FAZLA_MESAI
CAST(((convert(int,isnull(f.FazlaMesai,0)+isnull(ptj.SURE,0))) / 60) AS VARCHAR(10)) + '.' + CAST ((convert(int,isnull(f.FazlaMesai,0)+isnull(ptj.SURE,0)))%60 AS VARCHAR(10)) YILLIK_FAZLA_MESAI, p1.ADI POSTA
from dbo.PERSONEL1 p (nolock) 
left join POSTA p1 (nolock) on p.POSTA=p1.KODU and p1.SRKODU='1'
left join GOREV m1 (nolock) on p.GOREV=m1.KODU and m1.SRKODU='1'
left join (select PRSICIL, max(YIL) YIL from dbo.YILIZHESAP1 (nolock) group by PRSICIL) y on y.PRSICIL=p.SICILNO 
left join BCS_FAZLA_MESAI f (nolock) on p.SICILNO=f.Sicil
left join (select YIL, PRSICIL,sum(TOPLAMKALAN) TOPLAMKALAN from dbo.YILIZHESAP1 (nolock) group by YIL, PRSICIL) y2  on y2.PRSICIL=p.SICILNO and y2.YIL=y.YIL
left join DEPARTMAN (nolock) d on p.DEPART=d.KODU and d.SRKODU='1'
left join (select PRSICIL,ISNULL(SUM((DATEPART(HOUR, SURE) * 60) + DATEPART(MINUTE, SURE)), 0) SURE from  PUANTAJ1 (nolock) 
where CLKODU IN(SELECT KODU FROM CALISMA WHERE TIPI = 'MESAİ') AND ONAY = 'EVET' and convert(varchar,TARIH,112)>(select TransferDate from BCS_PARAMETERS nolock)
and TARIH >= DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)  AND TARIH <= GETDATE() 
group by PRSICIL) ptj on ptj.PRSICIL=p.SICILNO 
where 1=1 
and p.SICILNO=(case when @Type='A' then @Username end) 
and 1= (case when @Type='P' then 2 else 1 end) 
and (ISCIKT is null or ISCIKT>GETDATE()) 
--and SICILNO<>@Username
) as t order by DEPARTADI


END

GO
/****** Object:  StoredProcedure [dbo].[BCS_PERSONEL_GET_LIMITS]    Script Date: 19.09.2021 07:13:53 ******/
 
CREATE PROC  [dbo].[BCS_PERSONEL_GET_LIMITS]
(
@Username varchar(50)=null,
@Type varchar(5)=null
)
AS
BEGIN
DECLARE 
@ReturnCode varchar(3) = null,
@Dscr varchar(100) = null

select 
ID,
SICILNO,
ADI,
DEPARTADI,
DEPART,
AMIR,
ISGIRT, 
(isnull(LIMIT_SURE,0)/60) LIMIT_SURE,

case when (KULIZIN_SAAT/60)<10 and (KULIZIN_SAAT/60)>-10 then 
	'0'+CONVERT(varchar,convert(int,KULIZIN_SAAT/60)) 
	else CONVERT(varchar,(convert(int,KULIZIN_SAAT))/60) 
	end 
	+':'+ 
	case when (KULIZIN_SAAT)-((convert(int,KULIZIN_SAAT/60))*60)<10 then 
	'0'+CONVERT(varchar, (KULIZIN_SAAT)-((convert(int,KULIZIN_SAAT/60))*60))
	else CONVERT(varchar, (KULIZIN_SAAT)-((convert(int,KULIZIN_SAAT)/60)*60)) 
	end
	+':00' KULIZIN_SAAT,
	case when (convert(int,(LIMIT_SURE-KULIZIN_SAAT)/60))<0 or 
	((LIMIT_SURE-KULIZIN_SAAT)-((convert(int,(LIMIT_SURE-KULIZIN_SAAT)/60))*60))<0 then 
	'-' else '' end +
	case when (convert(int,(LIMIT_SURE-KULIZIN_SAAT)/60))<10 and (convert(int,(LIMIT_SURE-KULIZIN_SAAT)/60))>-9 then 
	'0' else '' end +	
	CONVERT(varchar,ABS(convert(int,LIMIT_SURE-KULIZIN_SAAT)/60)) 
	+':'+ 
	case when ((LIMIT_SURE-KULIZIN_SAAT)-((convert(int,(LIMIT_SURE-KULIZIN_SAAT)/60))*60)<10
	and (LIMIT_SURE-KULIZIN_SAAT)-((convert(int,(LIMIT_SURE-KULIZIN_SAAT)/60))*60)>-9) 
	and (LIMIT_SURE-KULIZIN_SAAT)-((convert(int,(LIMIT_SURE-KULIZIN_SAAT)/60))*60)=0 
	then
		'0'+CONVERT(varchar, ABS((LIMIT_SURE-KULIZIN_SAAT)-(convert(int,(LIMIT_SURE-KULIZIN_SAAT)/60))*60))
		else
		CONVERT(varchar, ABS((LIMIT_SURE-KULIZIN_SAAT)-(convert(int,(LIMIT_SURE-KULIZIN_SAAT)/60))*60))
		end
	+':00' KALAN_SURE,
isnull(TOPLAMKALAN,0) YILIZIN_KALAN
from 
( 

select IDNO ID, SICILNO, PER_ADI+' '+SOYADI ADI,
RTRIM(DEPT_ADI) DEPARTADI,
RTRIM(DEPT_KODU)+' '+DEPT_ADI DEPART,  
AMIR_KODU+' '+AMIR_ADI AMIR,
ISGIRT,
sum((isnull(GUN,0)*7.5*60)+(isnull(SAAT,0))) /COUNT(1) KULIZIN_SAAT,
sum(isnull(LIMIT_SURE,0)*60) LIMIT_SURE,
sum(TOPLAMKALAN)  TOPLAMKALAN,
SIRA
from 
(
select t.* from (
select 0 SIRA,p.SICILNO,
p.IDNO,  p.ADI PER_ADI ,p.SOYADI ,d.KODU DEPT_KODU,d.ADI DEPT_ADI,amr.AMIR_KODU,amr.AMIR_ADI,p.ISGIRT
,GUN,
s.SAAT,
l.LIMIT_SURE,
TOPLAMKALAN
from dbo.PERSONEL1 p (nolock) left join PERSONEL_AMIR amr (nolock) on amr.AMIR_KODU=isnull(AMIR1,isnull(AMIR2,isnull(AMIR3,isnull(AMIR4,isnull(AMIR5,'')))))
left join DEPARTMAN (nolock) d on p.DEPART=d.KODU
left join (select PRSICIL, max(YIL) YIL from dbo.YILIZHESAP1 (nolock) group by PRSICIL) y on y.PRSICIL=p.SICILNO
left join (select YIL, PRSICIL,sum(TOPLAMKALAN) TOPLAMKALAN from dbo.YILIZHESAP1 (nolock) group by YIL, PRSICIL) y2  
on y2.PRSICIL=p.SICILNO and y2.YIL=y.YIL 
left join (select g.PRSICIL,sum(g.GUN) GUN from GUNIZIN1 (nolock) g 
inner join IZINLIMIT (nolock) i on i.IZIN_TURU in ('Günlük / Saatlik','Günlük')  and CLKODU in (54,19)
and g.NEDEN=i.CLKODU 
where DATEPART(YEAR,g.BASTARIH)=DATEPART(YEAR,GETDATE()) 
and DATEPART(YEAR,g.BITTARIH)=DATEPART(YEAR,GETDATE())
group by PRSICIL) g on p.SICILNO=g.PRSICIL 
left join (select s.PRSICIL,sum(DATEDIFF(minute,'00:00',convert(datetime,convert(varchar,s.SAAT,108)))) SAAT 
from SAATIZIN1 (nolock) s 
inner join IZINLIMIT (nolock) i2 on i2.IZIN_TURU in ('Günlük / Saatlik','Saatlik')  and CLKODU in (54,19) 
and s.NEDEN=i2.CLKODU  
where DATEPART(YEAR,s.TARIH)=DATEPART(YEAR,GETDATE()) 
group by PRSICIL) s on p.SICILNO=s.PRSICIL 
left join (select CLKODU, LIMIT_SURE from IZINLIMIT l (nolock)) l on l.CLKODU in (54,19)
where 1=1  
and p.SICILNO=@Username
and (ISCIKT is  null or ISCIKT>GETDATE()) ) t

union all

select t.* from (
select 1 SIRA,p.SICILNO,
p.IDNO,  p.ADI PER_ADI ,p.SOYADI ,d.KODU DEPT_KODU,d.ADI DEPT_ADI,amr.AMIR_KODU,amr.AMIR_ADI,p.ISGIRT
,GUN,
s.SAAT,
l.LIMIT_SURE,
TOPLAMKALAN
from dbo.PERSONEL1 p (nolock) left join PERSONEL_AMIR amr (nolock) on amr.AMIR_KODU=isnull(AMIR1,isnull(AMIR2,isnull(AMIR3,isnull(AMIR4,isnull(AMIR5,'')))))
left join DEPARTMAN (nolock) d on p.DEPART=d.KODU
left join (select PRSICIL, max(YIL) YIL from dbo.YILIZHESAP1 (nolock) group by PRSICIL) y on y.PRSICIL=p.SICILNO
left join (select YIL, PRSICIL,sum(TOPLAMKALAN) TOPLAMKALAN from dbo.YILIZHESAP1 (nolock) group by YIL, PRSICIL) y2  
on y2.PRSICIL=p.SICILNO and y2.YIL=y.YIL 
left join (select g.PRSICIL,sum(g.GUN) GUN from GUNIZIN1 (nolock) g 
inner join IZINLIMIT (nolock) i on i.IZIN_TURU in ('Günlük / Saatlik','Günlük')  and CLKODU in (54,19)
and (g.NEDEN=i.CLKODU) 
group by PRSICIL) g on p.SICILNO=g.PRSICIL 
left join (select s.PRSICIL,sum(DATEDIFF(MINUTE,'00:00',convert(datetime,convert(varchar,s.SAAT,108)))) SAAT 
from SAATIZIN1 (nolock) s 
inner join IZINLIMIT (nolock) i2 on i2.IZIN_TURU in ('Günlük / Saatlik','Saatlik')  and CLKODU in (54,19) 
and (s.NEDEN=i2.CLKODU ) 
group by PRSICIL) s on p.SICILNO=s.PRSICIL 
left join (select CLKODU, LIMIT_SURE from IZINLIMIT l (nolock)) l on l.CLKODU in (54,19)
where 1=1  and 'A'=@Type
and (AMIR1=(case when @Type='A' then @Username else AMIR1 end) or 
AMIR2=(case when @Type='A' then @Username else AMIR2 end) or 
AMIR3=(case when @Type='A' then @Username else AMIR3 end) or 
AMIR4=(case when @Type='A' then @Username else AMIR4 end) or 
AMIR5=(case when @Type='A' then @Username else AMIR5 end) )
and (ISCIKT is  null or ISCIKT>GETDATE()) ) t
 
) t group by SIRA,SICILNO,IDNO, PER_ADI,SOYADI ,DEPT_KODU,DEPT_ADI,AMIR_KODU,AMIR_ADI,ISGIRT ) as t  order by SIRA,SICILNO

END


 GO
/****** Object:  StoredProcedure [dbo].[BCS_PERSONEL_GET_VRD_NEW]    Script Date: 1.01.2022 19:26:13 ******/
 
CREATE PROC  [dbo].[BCS_PERSONEL_GET_VRD_NEW]
(
@Username varchar(50)=null,
@Type varchar(5)=null
)
AS
BEGIN
DECLARE 
@ReturnCode varchar(3) = null,
@Dscr varchar(100) = null

select 
ID,
SICILNO,
ADI,
DEPARTADI,
DEPART,
'' GOREV,
TOTAL_PERIOD,
APPROVE,
AMIR,
TOPLAMKALAN,
POSTA, 
0 YILLIK_FAZLA_MESAI
from 
(
select p.IDNO ID, p.SICILNO, p.ADI+' '+p.SOYADI ADI,RTRIM(d.ADI) DEPARTADI,RTRIM(d.KODU)+' '+d.ADI DEPART, 100 [TOTAL_PERIOD],0 APPROVE,  
isnull(AMIR1,isnull(AMIR2,isnull(AMIR3,isnull(AMIR4,isnull(AMIR5,''))))) AMIR, 
TOPLAMKALAN, 0 YILLIK_FAZLA_MESAI, p1.ADI POSTA
from dbo.PERSONEL1 p (nolock) 
left join POSTA p1 (nolock) on p.POSTA=p1.KODU
left join (select PRSICIL, max(YIL) YIL from dbo.YILIZHESAP1 (nolock) group by PRSICIL) y on y.PRSICIL=p.SICILNO
left join BCS_FAZLA_MESAI f (nolock) on p.SICILNO=f.Sicil
left join (select YIL, PRSICIL,sum(TOPLAMKALAN) TOPLAMKALAN from dbo.YILIZHESAP1 (nolock) group by YIL, PRSICIL) y2  on y2.PRSICIL=p.SICILNO and y2.YIL=y.YIL 
left join DEPARTMAN (nolock) d on p.DEPART=d.KODU
left join (select PRSICIL,ISNULL(SUM((DATEPART(HOUR, SURE) * 60) + DATEPART(MINUTE, SURE)), 0) SURE from  PUANTAJ1 (nolock) 
where CLKODU IN(SELECT KODU FROM CALISMA WHERE TIPI = 'MESAİ') AND ONAY = 'EVET'  and convert(varchar,TARIH,112)>(select TransferDate from BCS_PARAMETERS nolock)
and TARIH >= DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)  AND TARIH <= GETDATE() 
group by PRSICIL) ptj on ptj.PRSICIL=p.SICILNO 
where 1=1 
and 
(AMIR1=(case when @Type='V' then @Username else AMIR1 end) or 
AMIR2=(case when @Type='V' then @Username else AMIR2 end) or 
AMIR3=(case when @Type='V' then @Username else AMIR3 end) or 
AMIR4=(case when @Type='V' then @Username else AMIR4 end) or 
AMIR5=(case when @Type='V' then @Username else AMIR5 end) )
and (ISCIKT is  null or ISCIKT>GETDATE()) 
 


) as t order by DEPARTADI

END


GO 

/****** Object:  StoredProcedure [dbo].[BCS_POSTA_INSERT]    Script Date: 19.09.2021 07:13:53 ******/
 
CREATE PROC  [dbo].[BCS_POSTA_INSERT]
		   @TYPE varchar(50)=null,
		   @SRKODU int,
           @PRSICIL varchar(15),
           @STARTDATE smalldatetime,
		   @POSTA  varchar(10),
           @ACIKLAMA varchar(100)='',
           @ONAY1 bit=null,
           @ONAY1KL varchar(50)=null,
           @ONAY2 bit=null,
           @ONAY2KL varchar(50)=null,
           @ONAY3 bit=null,
           @ONAY3KL varchar(50)=null,
           @ONAY4 bit=null,
           @ONAY4KL varchar(50)=null,
           @ONAY5 bit=null,
           @ONAY5KL varchar(50)=null,
           @ONAY6 bit=null,
           @ONAY6KL varchar(50)=null,
           @ONAY7 bit=null,
           @ONAY7KL varchar(50)=null,
           @ONAY8 bit=null,
           @ONAY8KL varchar(50)=null,
           @ONAY9 bit=null,
           @ONAY9KL varchar(50)=null,
           @ONAY10 bit=null,
           @ONAY10KL varchar(50)=null,
           @POST bit,
           @RET int,
		   @AMIR bit=0,
		   @AMIR_KODU varchar(50)=null,
           @ReturnCode varchar(20) output
AS
BEGIN
DECLARE @SQL nvarchar(MAX);
DECLARE @Table nvarchar(50)=  'dbo.ONY_POSTA' 
DECLARE @DEGREE_AMIR int=0;
DECLARE @IDNO  bigint=0;
SET @ReturnCode='500'

BEGIN TRY
select 
@DEGREE_AMIR=(
case 
when AMIR1=@AMIR_KODU then 1
when AMIR2=@AMIR_KODU then 2
when AMIR3=@AMIR_KODU then 3
when AMIR4=@AMIR_KODU then 4
when AMIR5=@AMIR_KODU then 5 end) from dbo.PERSONEL1 nolock where SICILNO=@PRSICIL



--select * from ONY_POSTA


INSERT INTO [dbo].[ONY_POSTA]
           ([SRKODU],[PRSICIL],[TARIH],[POSTA_KODU],[ACIKLAMA]
           ,[ONAY1]
           ,[ONAY1KL]
           ,[ONAY2]
           ,[ONAY2KL]
           ,[ONAY3]
           ,[ONAY3KL]
           ,[ONAY4]
           ,[ONAY4KL]
           ,[ONAY5]
           ,[ONAY5KL]
           ,[ONAY6]
           ,[ONAY6KL]
           ,[ONAY7]
           ,[ONAY7KL]
           ,[ONAY8]
           ,[ONAY8KL]
           ,[ONAY9]
           ,[ONAY9KL]
           ,[ONAY10]
           ,[ONAY10KL]
           ,[POST]
           ,[RET]
		   ,[CREATEUSER]
		   )
     VALUES (
		   @SRKODU ,
           @PRSICIL ,
           @STARTDATE ,
           @POSTA,
           @ACIKLAMA,
     --      (case when @AMIR=1 then 1 else @ONAY1 end), 
		   --(case when @AMIR=1 then @AMIR_KODU else @ONAY1KL end), 
		   (case when @DEGREE_AMIR=1 then (case when @AMIR=1 then 1 else @ONAY1 end) else 
		   (case when @DEGREE_AMIR>1 then 1 else @ONAY1  end) end), 
		   (case when @DEGREE_AMIR=1 then (case when @AMIR=1 then @AMIR_KODU else @ONAY1KL end) else 
		   (case when @DEGREE_AMIR>1 then @AMIR_KODU else @ONAY1KL  end)  end), 
		   (case when @DEGREE_AMIR=2 then (case when @AMIR=1 then 1 else @ONAY2 end) else 
		   (case when @DEGREE_AMIR>2 then 1 else @ONAY2  end) end), 		  
		   (case when @DEGREE_AMIR=2 then (case when @AMIR=1 then @AMIR_KODU else @ONAY2KL end) else 
		   (case when @DEGREE_AMIR>2 then @AMIR_KODU else @ONAY2KL  end)  end), 
		   (case when @DEGREE_AMIR=3 then (case when @AMIR=1 then 1 else @ONAY3 end) else 
		   (case when @DEGREE_AMIR>3 then 1 else @ONAY3  end) end), 		  
		   (case when @DEGREE_AMIR=3 then (case when @AMIR=1 then @AMIR_KODU else @ONAY3KL end) else 
		   (case when @DEGREE_AMIR>3 then @AMIR_KODU else @ONAY3KL  end)  end), 
		   (case when @DEGREE_AMIR=4 then (case when @AMIR=1 then 1 else @ONAY4 end) else
		   (case when @DEGREE_AMIR>4 then 1 else @ONAY4  end) end), 		  
		   (case when @DEGREE_AMIR=4 then (case when @AMIR=1 then @AMIR_KODU else @ONAY4KL end) else 
		   (case when @DEGREE_AMIR>4 then @AMIR_KODU else @ONAY4KL  end)  end), 
		   (case when @DEGREE_AMIR=5 then (case when @AMIR=1 then 1 else @ONAY5 end) else 
		   (case when @DEGREE_AMIR>5 then 1 else @ONAY5  end) end), 		  
		   (case when @DEGREE_AMIR=5 then (case when @AMIR=1 then @AMIR_KODU else @ONAY5KL end) else 
		   (case when @DEGREE_AMIR>5 then @AMIR_KODU else @ONAY5KL  end)  end), 
           @ONAY6, 
           @ONAY6KL, 
           @ONAY7, 
           @ONAY7KL,
           @ONAY8, 
           @ONAY8KL,
           @ONAY9, 
           @ONAY9KL,
           @ONAY10, 
           @ONAY10KL,
           @POST, 
           @RET,
		   (case when @AMIR=1 then @AMIR_KODU else @PRSICIL end)
		   
		   )

		    SET @IDNO=scope_identity();
		 
			SET @SQL='IF EXISTS(select * from '+@Table+' m 
			inner join dbo.PERSONEL1 p on m.PRSICIL=p.SICILNO 
			inner join dbo.PERSONEL_AMIR a on a.AMIR_KODU='''+convert(varchar,@AMIR_KODU)+''' 
			where m.IDNO='+convert(varchar,scope_identity())+' 
			and 
			(((case when p.AMIR1 is null then 0 else 1 end+
			case when p.AMIR2 is null then 0 else 1 end+
			case when p.AMIR3 is null then 0 else 1 end+
			case when p.AMIR4 is null then 0 else 1 end+
			case when p.AMIR5 is null then 0 else 1 end) =
			(case when m.ONAY1 is null then 0 else 1 end+ 
			case when m.ONAY2 is null then 0 else 1 end+
			case when m.ONAY3 is null then 0 else 1 end+ 
			case when m.ONAY4 is null then 0 else 1 end+ 
			case when m.ONAY5 is null then 0 else 1 end)) or POST_USER_POSTA=1))
			update m set [POST]=1  from '+@Table+' m 
			inner join dbo.PERSONEL1 p  on m.PRSICIL=p.SICILNO 
			inner join dbo.PERSONEL_AMIR a on a.AMIR_KODU='''+convert(varchar,@AMIR_KODU)+''' 
			where m.IDNO='+convert(varchar,@IDNO)+' and 
			(((case when p.AMIR1 is null then 0 else 1 end+
			case when p.AMIR2 is null then 0 else 1 end+
			case when p.AMIR3 is null then 0 else 1 end+
			case when p.AMIR4 is null then 0 else 1 end+
			case when p.AMIR5 is null then 0 else 1 end) =
			(case when m.ONAY1 is null then 0 else 1 end+ 
			case when m.ONAY2 is null then 0 else 1 end+
			case when m.ONAY3 is null then 0 else 1 end+ 
			case when m.ONAY4 is null then 0 else 1 end+ 
			case when m.ONAY5 is null then 0 else 1 end)) or POST_USER_POSTA=1)';
			
			EXEC (@SQL);

			

			INSERT INTO ONY_LOG_POSTA ( [ONY_IDNO],[SRKODU],[PRSICIL],[TARIH],[POSTA_KODU],[ACIKLAMA],[KULLANICI],[DERECE],[ONAY],[ISLEM_ZAMANI])
			SELECT IDNO,SRKODU,PRSICIL,TARIH,POSTA_KODU,ACIKLAMA,ONAY1KL,1,1,GETDATE() from ONY_POSTA 
			where IDNO=@IDNO


				  		DECLARE @P_IDNO int;
			DECLARE @P_PRSICIL varchar(50);			
			DECLARE @P_TARIH datetime;
			DECLARE @P_POSTA_KODU varchar(20);
			DECLARE @P_ACIKLAMA varchar(100);

			select @P_PRSICIL=PRSICIL,			
			@P_TARIH=TARIH,
			@P_POSTA_KODU=POSTA_KODU,
			@P_ACIKLAMA=ACIKLAMA from ONY_POSTA where IDNO=@IDNO and POST=1
							
			IF EXISTS( select * from ONY_POSTA nolock where IDNO=@IDNO and POST=1)
				BEGIN
					select @P_IDNO=MAX(IDNO)+1 from PERARSIV1;		
					--IF EXISTS(select * from PERARSIV1 nolock where PRSICIL=@H_PRSICIL and TARIH>=@H_TARIH and BILGI='POSTA' and DEGER=@P_POSTA_KODU)
					DELETE FROM PERARSIV1 where PRSICIL=@P_PRSICIL and TARIH>=@P_TARIH and BILGI='POSTA' 
					INSERT INTO PERARSIV1 
					select @P_IDNO, PRSICIL,'POSTA',TARIH,POSTA_KODU,null,null  from ONY_POSTA where IDNO=@IDNO and POST=1
				

					update PERSONEL1 set POSTAR=@P_TARIH,POSTA=@P_POSTA_KODU WHERE SICILNO=@P_PRSICIL
				
				
				END


			SET @SQL='select m.IDNO, p.SICILNO PERSONEL,
		    P.ADI+'' ''+P.SOYADI PERSONELADI, 
			isnull((case when m.ONAY1KL is null then p.AMIR1 
			when m.ONAY2KL is null then p.AMIR2 
			when m.ONAY3KL is null then p.AMIR3 
			when m.ONAY4KL is null then p.AMIR4 
			when m.ONAY5KL is null then p.AMIR5 end),'''') AMIR, 
			isnull(p2.ADI,'''')+'' ''+ isnull(p2.SOYADI,'''') AMIRADI, 
			isnull(a.EMAIL,'''') EMAIL, 
			(select top 1  isnull(EMAIL,'''') from dbo.ADRES1 where PRSICIL=p.SICILNO and isnull(EMAIL,'''')<>'''') PERSONELMAIL,
			p.AMIR1 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR1) AMIR1_EMAIL ,
			p.AMIR2 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR2) AMIR2_EMAIL ,
			p.AMIR3 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR3) AMIR3_EMAIL ,
			p.AMIR4 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR4) AMIR4_EMAIL ,
			p.AMIR5, (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR5) AMIR5_EMAIL, 
		    '''' NEDEN,
			'''' NEDEN_ACIK,
			'''' SEBEP,
			'''' SEBEP2,
			m.ACIKLAMA,
			GETDATE() BASTARIH,
			null BASSAAT,
			GETDATE() BITTARIH,
			null  BITSAAT,	
			GETDATE() ISBASI,
			0 GUN,
			null SAAT,
			m.RET ,
			m.RET_ACIK ,
			POST [STATE],
			(select top 1 sum(TOPLAMKALAN)/count(1) from [dbo].[YILIZHESAP1] where YIL in ( select MAX(YIL) from [dbo].[YILIZHESAP1] where PRSICIL='''+convert(varchar,@PRSICIL)+''' ) 
			and PRSICIL='''+convert(varchar,@PRSICIL)+''' ) IZINBAKIYE
			from '+@Table+' m (nolock) 
			left join dbo.PERSONEL1 (nolock) p on m.PRSICIL=p.SICILNO
			left join dbo.PERSONEL_AMIR (nolock) a on 
			(case when m.ONAY1KL is null then p.AMIR1 
			 when m.ONAY2KL is null then p.AMIR2 
			when m.ONAY3KL is null then p.AMIR3 
			when m.ONAY4KL is null then p.AMIR4 
			when m.ONAY5KL is null then p.AMIR5 end)=AMIR_KODU
			left join dbo.PERSONEL1 (nolock) p2 on AMIR_KODU=p2.SICILNO
			where 
			 (m.ONAY1KL is null or m.ONAY2KL is null or m.ONAY3KL is null or m.ONAY4KL is null or m.ONAY5KL is null) 
			  and m.IDNO='+convert(varchar,@IDNO)+''; 

			  EXEC (@SQL);

		 --   select p.SICILNO PERSONEL,P.ADI+' '+P.SOYADI PERSONELADI, (case when s.ONAY1KL is null then p.AMIR1 
			--when s.ONAY2KL is null then p.AMIR2 
			--when s.ONAY3KL is null then p.AMIR3 
			--when s.ONAY4KL is null then p.AMIR4 
			--when s.ONAY5KL is null then p.AMIR5 end) AMIR,
			--isnull(p2.ADI,'''')+' '+ isnull(p2.SOYADI,'') AMIRADI, 
			--a.EMAIL, p.EMAIL PERSONELMAIL,
			--p.AMIR1 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR1) AMIR1_EMAIL ,
			--p.AMIR2 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR2) AMIR2_EMAIL ,
			--p.AMIR3 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR3) AMIR3_EMAIL ,
			--p.AMIR4 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR4) AMIR4_EMAIL ,
			--p.AMIR5, (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR5) AMIR5_EMAIL ,
			--s.NEDEN,
			--s.SEBEP,
			--s.SEBEP2,
			--s.ACIKLAMA,
			--GETDATE() BASTARIH,
			--BASSAAT,
			--GETDATE() BITTARIH,
			--BITSAAT,			
			--GETDATE() ISBASI,
			--0 GUN,
			--SAAT,
			--s.RET ,
			--s.RET_ACIK ,
			--POST [STATE] 
		 --   from dbo.ONY_SAATIZIN s (nolock) 
			--inner join dbo.PERSONEL1 (nolock) p on s.PRSICIL=p.SICILNO
			--inner join dbo.PERSONEL_AMIR (nolock) a on 
			--(case when s.ONAY1KL is null then p.AMIR1 
			-- when s.ONAY2KL is null then p.AMIR2 
			--when s.ONAY3KL is null then p.AMIR3 
			--when s.ONAY4KL is null then p.AMIR4 
			--when s.ONAY4KL is null then p.AMIR5 end)=AMIR_KODU
			--left join dbo.PERSONEL1 (nolock) p2 on AMIR_KODU=p2.SICILNO
			--where 
			-- (s.ONAY1KL is null or s.ONAY2KL is null or s.ONAY3KL is null or s.ONAY4KL is null or s.ONAY5KL is null) 
			--  and s.IDNO=scope_identity() 


			


			SET @ReturnCode='200'
END TRY  
BEGIN CATCH

SET @ReturnCode='500'
END CATCH 			  
			  
END

 GO
/****** Object:  StoredProcedure [dbo].[BCS_POSTA_SELECT]    Script Date: 19.09.2021 07:13:53 ******/
 
CREATE PROC  [dbo].[BCS_POSTA_SELECT]
(
@User varchar(50)=null,
@type varchar(10)=null

)
AS

select * from dbo.POSTA nolock where TURU<>'Yedek'

 GO
/****** Object:  StoredProcedure [dbo].[BCS_REASON_SELECT]    Script Date: 19.09.2021 07:13:53 ******/
 
CREATE PROC  [dbo].[BCS_REASON_SELECT]
(
@User varchar(50)=null,
@type varchar(10)=null

)
AS




if (@type=1 )
select RTRIM(KODU) KODU,ADI TURU from dbo.CALISMA nolock where TIPI='İZİN' --- AND RAPOR_KODU='1'
else if (@type=2 )
select RTRIM(KODU) KODU,ADI TURU from dbo.CALISMA nolock where TIPI='İZİN' ---AND RAPOR_KODU='1'
else if (@type=3)
select RTRIM(KODU) KODU,TURU from dbo.[FMNED] nolock 
else if (@type=5)
select RTRIM(KODU) KODU,TURU from dbo.[HARFMNED] nolock 
else
select RTRIM(KODU) KODU,ADI TURU from dbo.CALISMA nolock where TIPI='İZİN'


 GO
/****** Object:  StoredProcedure [dbo].[BCS_REPASSWORD]    Script Date: 19.09.2021 07:13:53 ******/
 
 --[dbo].[BCS_GET_TEMPLATE] '028',1,40
 
CREATE PROC  [dbo].[BCS_REPASSWORD]
		   @UserName varchar(50)=null,
		   @NewPassword varchar(50)=null,
		   @ReturnCode varchar(20) output
AS
BEGIN



if EXISTS(select * from dbo.PERSONEL_AMIR nolock where AMIR_KODU=@UserName) 
update dbo.PERSONEL_AMIR set SIFRE=@NewPassword where AMIR_KODU=@UserName

 if EXISTS(select * from dbo.PERSONEL1 nolock where SICILNO=@UserName) 
update dbo.PERSONEL1  set ONY_SIFRE=@NewPassword where SICILNO=@UserName

set @ReturnCode='200';

END

 
GO
/****** Object:  StoredProcedure [dbo].[BCS_SAATIZIN_INSERT]    Script Date: 19.09.2021 07:13:53 ******/ 
--declare @ReturnCode varchar(20);
--exec [dbo].[BCS_SAATIZIN_INSERT] 1,'028','10','20190924','12:00','02:00','13:00','asas',null,'sdsd',null,null,
--null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,
--0,0,0,'028',@ReturnCode output

CREATE PROC  [dbo].[BCS_SAATIZIN_INSERT]
		   @SRKODU int=null,
           @PRSICIL varchar(15)=null,
           @NEDEN  varchar(10)=null,
           @TARIH smalldatetime=null,
           @BASSAAT datetime=null,
           @SAAT datetime=null,
           @BITSAAT datetime=null,
           @SEBEP varchar(100)=null,
           @SEBEP2 varchar(100)=null,
           @ACIKLAMA varchar(100)=null,	
           @ONAY1 bit=null,
           @ONAY1KL varchar(50)=null,
           @ONAY2 bit=null,
           @ONAY2KL varchar(50)=null,
           @ONAY3 bit=null,
           @ONAY3KL varchar(50)=null,
           @ONAY4 bit=null,
           @ONAY4KL varchar(50)=null,
           @ONAY5 bit=null,
           @ONAY5KL varchar(50)=null,
           @ONAY6 bit=null,
           @ONAY6KL varchar(50)=null,
           @ONAY7 bit=null,
           @ONAY7KL varchar(50)=null,
           @ONAY8 bit=null,
           @ONAY8KL varchar(50)=null,
           @ONAY9 bit=null,
           @ONAY9KL varchar(50)=null,
           @ONAY10 bit=null,
           @ONAY10KL varchar(50)=null,
           @POST bit,
           @RET int,
		   @AMIR bit=0,
		   @AMIR_KODU varchar(50)=null,
		   @ReturnCode varchar(20) output
AS
BEGIN
DECLARE @SQL nvarchar(MAX);
DECLARE @Table nvarchar(50)=  'dbo.ONY_SAATIZIN' 
DECLARE @DEGREE_AMIR int=0;
DECLARE @IDNO  bigint=0;
DECLARE @ISPOST bit=0;
SET @ReturnCode='500'

BEGIN TRY
select 
@DEGREE_AMIR=(
case 
when AMIR1=@AMIR_KODU then 1
when AMIR2=@AMIR_KODU then 2
when AMIR3=@AMIR_KODU then 3
when AMIR4=@AMIR_KODU then 4
when AMIR5=@AMIR_KODU then 5 end) from dbo.PERSONEL1 nolock where SICILNO=@PRSICIL

SET @BASSAAT = DATEADD(day,-2,@BASSAAT)
SET @BITSAAT = DATEADD(day,-2,@BITSAAT)
SET @SAAT=DATEADD(day,-2,@SAAT)

if EXISTS (select * from [dbo].[ONY_SAATIZIN] where TARIH= @TARIH and (
(BASSAAT>= @BASSAAT and  BASSAAT<= @BITSAAT) or 
(BITSAAT>= @BASSAAT and  BITSAAT<= @BITSAAT)) and RET=0 and PRSICIL=@PRSICIL
) 
BEGIN
SET @ReturnCode='450'
return;
END



INSERT INTO [dbo].[ONY_SAATIZIN]
           ([SRKODU]
           ,[PRSICIL]
           ,[NEDEN]
           ,[TARIH]
           ,[BASSAAT]
           ,[SAAT]
           ,[BITSAAT]
           ,[SEBEP]
           ,[SEBEP2]
           ,[ACIKLAMA]
           ,[ONAY1]
           ,[ONAY1KL]
           ,[ONAY2]
           ,[ONAY2KL]
           ,[ONAY3]
           ,[ONAY3KL]
           ,[ONAY4]
           ,[ONAY4KL]
           ,[ONAY5]
           ,[ONAY5KL]
           ,[ONAY6]
           ,[ONAY6KL]
           ,[ONAY7]
           ,[ONAY7KL]
           ,[ONAY8]
           ,[ONAY8KL]
           ,[ONAY9]
           ,[ONAY9KL]
           ,[ONAY10]
           ,[ONAY10KL]
           ,[POST]
           ,[RET]
		   ,[CREATEUSER])
     VALUES (
		   @SRKODU ,
           @PRSICIL ,
           @NEDEN ,
           @TARIH ,
           @BASSAAT ,
           @SAAT ,
           @BITSAAT ,
           @SEBEP ,
           @SEBEP2,
           @ACIKLAMA,
     --      (case when @AMIR=1 then 1 else @ONAY1 end), 
		   --(case when @AMIR=1 then @AMIR_KODU else @ONAY1KL end), 
		   (case when @DEGREE_AMIR=1 then (case when @AMIR=1 then 1 else @ONAY1 end) else 
		   (case when @DEGREE_AMIR>1 then 1 else @ONAY1  end) end), 
		   (case when @DEGREE_AMIR=1 then (case when @AMIR=1 then @AMIR_KODU else @ONAY1KL end) else 
		   (case when @DEGREE_AMIR>1 then @AMIR_KODU else @ONAY1KL  end)  end), 
		   (case when @DEGREE_AMIR=2 then (case when @AMIR=1 then 1 else @ONAY2 end) else 
		   (case when @DEGREE_AMIR>2 then 1 else @ONAY2  end) end), 		  
		   (case when @DEGREE_AMIR=2 then (case when @AMIR=1 then @AMIR_KODU else @ONAY2KL end) else 
		   (case when @DEGREE_AMIR>2 then @AMIR_KODU else @ONAY2KL  end)  end), 
		   (case when @DEGREE_AMIR=3 then (case when @AMIR=1 then 1 else @ONAY3 end) else 
		   (case when @DEGREE_AMIR>3 then 1 else @ONAY3  end) end), 		  
		   (case when @DEGREE_AMIR=3 then (case when @AMIR=1 then @AMIR_KODU else @ONAY3KL end) else 
		   (case when @DEGREE_AMIR>3 then @AMIR_KODU else @ONAY3KL  end)  end), 
		   (case when @DEGREE_AMIR=4 then (case when @AMIR=1 then 1 else @ONAY4 end) else
		   (case when @DEGREE_AMIR>4 then 1 else @ONAY4  end) end), 		  
		   (case when @DEGREE_AMIR=4 then (case when @AMIR=1 then @AMIR_KODU else @ONAY4KL end) else 
		   (case when @DEGREE_AMIR>4 then @AMIR_KODU else @ONAY4KL  end)  end), 
		   (case when @DEGREE_AMIR=5 then (case when @AMIR=1 then 1 else @ONAY5 end) else 
		   (case when @DEGREE_AMIR>5 then 1 else @ONAY5  end) end), 		  
		   (case when @DEGREE_AMIR=5 then (case when @AMIR=1 then @AMIR_KODU else @ONAY5KL end) else 
		   (case when @DEGREE_AMIR>5 then @AMIR_KODU else @ONAY5KL  end)  end), 
           @ONAY6, 
           @ONAY6KL, 
           @ONAY7, 
           @ONAY7KL,
           @ONAY8, 
           @ONAY8KL,
           @ONAY9, 
           @ONAY9KL,
           @ONAY10, 
           @ONAY10KL,
           @POST, 
           @RET,
		   (case when @AMIR=1 then @AMIR_KODU else @PRSICIL end))

		    SET @IDNO=scope_identity();
		 
		 	SET @SQL=' update m set [POST]=1  from '+@Table+' m 
			inner join dbo.PERSONEL1 p on m.PRSICIL=p.SICILNO 
			inner join dbo.PERSONEL_AMIR a on a.AMIR_KODU='''+convert(varchar,@AMIR_KODU)+''' 
			where m.IDNO='+convert(varchar,@IDNO)+'  and  a.POST_USER_SAATIZIN=1'; 
			
			
			EXEC (@SQL);

			INSERT INTO ONY_LOG_SAATIZIN 
			SELECT IDNO,SRKODU,PRSICIL,NEDEN,TARIH,BASSAAT,SAAT,BITSAAT,SEBEP,SEBEP2,ACIKLAMA,CREATEUSER,(case when @AMIR=1 then 1 else 0 end),1,GETDATE() from ONY_SAATIZIN where IDNO=@IDNO

			 
			IF EXISTS( select * from ONY_SAATIZIN where IDNO=@IDNO and POST=1)
			BEGIN
			SET @ISPOST=1;
			DECLARE @S_IDNO int;
			DECLARE @S_TARIH datetime;			
			DECLARE @S_PRSICIL varchar(50);
			DECLARE @S_NEDEN varchar(50);
			DECLARE @S_BASSAAT datetime;
			DECLARE @S_SAAT datetime;
			DECLARE @S_BITSAAT datetime;
			DECLARE @S_SEBEP varchar(50);
			
			select @S_PRSICIL=PRSICIL,
			@S_TARIH=TARIH,
			@S_NEDEN=NEDEN,
			@S_BASSAAT=BASSAAT,
			@S_SAAT=SAAT,
			@S_BITSAAT=BITSAAT,
			@S_SEBEP=SEBEP  from ONY_SAATIZIN where IDNO=@IDNO and POST=1

			IF NOT EXISTS(select * from SAATIZIN1 where PRSICIL=@S_PRSICIL 
			and ( (BASSAAT>=@S_BASSAAT and BASSAAT<=@S_BASSAAT)
			and  (BITSAAT>=@S_BITSAAT and BITSAAT<=@S_BITSAAT)) and TARIH=@S_TARIH
			)
			BEGIN
			select @S_IDNO=MAX(IDNO)+1 from SAATIZIN1;
			SET @S_IDNO=isnull(@S_IDNO,1);
			INSERT INTO SAATIZIN1 ([IDNO],[PRSICIL],[NEDEN],[TARIH],[BASSAAT],[SAAT],[BITSAAT],[SEBEP],[TRNID])
			select @S_IDNO,PRSICIL,NEDEN,TARIH,
			convert(datetime,'18991230 '+ convert(varchar,BASSAAT,114)),
			convert(datetime,'18991230 '+ convert(varchar,SAAT,114)),
			convert(datetime,'18991230 '+ convert(varchar,BITSAAT,114)),
			SEBEP,null  from ONY_SAATIZIN where IDNO=@IDNO and POST=1
			END
			ELSE
			UPDATE SAATIZIN1 set NEDEN=@S_NEDEN, 
			BASSAAT=convert(datetime,'18991230 '+ convert(varchar,@S_BASSAAT,114)),
			SAAT=convert(datetime,'18991230 '+ convert(varchar,@S_SAAT,114)),
			BITSAAT=convert(datetime,'18991230 '+ convert(varchar,@S_BITSAAT,114)),
			SEBEP=@S_SEBEP where 
			PRSICIL=@S_PRSICIL 
			and ( (BASSAAT>=@S_BASSAAT and BASSAAT<=@S_BASSAAT)
			and  (BITSAAT>=@S_BITSAAT and BITSAAT<=@S_BITSAAT)) and TARIH=@S_TARIH

			END

			SET @SQL='select m.IDNO, p.SICILNO PERSONEL,
		    P.ADI+'' ''+P.SOYADI PERSONELADI, 
			isnull((case when m.ONAY1KL is null then p.AMIR1 
			when m.ONAY2KL is null then p.AMIR2 
			when m.ONAY3KL is null then p.AMIR3 
			when m.ONAY4KL is null then p.AMIR4 
			when m.ONAY5KL is null then p.AMIR5 end),'''') AMIR, 
			isnull(p2.ADI,'''')+'' ''+ isnull(p2.SOYADI,'''') AMIRADI, 
			isnull(a.EMAIL,'''') EMAIL, 
			(select top 1  isnull(EMAIL,'''') from dbo.ADRES1 where PRSICIL=p.SICILNO and isnull(EMAIL,'''')<>'''') PERSONELMAIL,
			p.AMIR1 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR1) AMIR1_EMAIL ,
			p.AMIR2 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR2) AMIR2_EMAIL ,
			p.AMIR3 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR3) AMIR3_EMAIL ,
			p.AMIR4 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR4) AMIR4_EMAIL ,
			p.AMIR5, (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR5) AMIR5_EMAIL, 
		    m.NEDEN,
			isnull(c.ADI,'''') NEDEN_ACIK,
			m.SEBEP,
			m.SEBEP2,
			m.ACIKLAMA,
			TARIH BASTARIH,
			m.BASSAAT,
			GETDATE() BITTARIH,
			m.BITSAAT,	
			GETDATE() ISBASI,
			0 GUN,
			m.SAAT,
			m.RET ,
			m.RET_ACIK ,
			POST [STATE],
			(select distinct TOPLAMKALAN from [dbo].[YILIZHESAP1] where YIL in ( select MAX(YIL) from [dbo].[YILIZHESAP1] where PRSICIL='''+convert(varchar,@PRSICIL)+''' ) 
			and PRSICIL='''+convert(varchar,@PRSICIL)+''' ) IZINBAKIYE
			from '+@Table+' m (nolock) 
			left join dbo.PERSONEL1 (nolock) p on m.PRSICIL=p.SICILNO
			left join dbo.PERSONEL_AMIR (nolock) a on 
			(case when m.ONAY1KL is null then p.AMIR1 
			 when m.ONAY2KL is null then p.AMIR2 
			when m.ONAY3KL is null then p.AMIR3 
			when m.ONAY4KL is null then p.AMIR4 
			when m.ONAY5KL is null then p.AMIR5 end)=AMIR_KODU
			left join dbo.PERSONEL1 (nolock) p2 on AMIR_KODU=p2.SICILNO
			left join dbo.CALISMA (nolock) c on convert(varchar,c.KODU)=convert(varchar,m.NEDEN) and c.TIPI=''İZİN''  
			where 
			 (m.ONAY1KL is null or m.ONAY2KL is null or m.ONAY3KL is null or m.ONAY4KL is null or m.ONAY5KL is null) 
			  and m.IDNO='+convert(varchar,@IDNO)+''; 

			  EXEC (@SQL);



		 --   select p.SICILNO PERSONEL,P.ADI+' '+P.SOYADI PERSONELADI, (case when s.ONAY1KL is null then p.AMIR1 
			--when s.ONAY2KL is null then p.AMIR2 
			--when s.ONAY3KL is null then p.AMIR3 
			--when s.ONAY4KL is null then p.AMIR4 
			--when s.ONAY5KL is null then p.AMIR5 end) AMIR,
			--isnull(p2.ADI,'''')+' '+ isnull(p2.SOYADI,'') AMIRADI, 
			--a.EMAIL, p.EMAIL PERSONELMAIL,
			--p.AMIR1 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR1) AMIR1_EMAIL ,
			--p.AMIR2 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR2) AMIR2_EMAIL ,
			--p.AMIR3 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR3) AMIR3_EMAIL ,
			--p.AMIR4 , (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR4) AMIR4_EMAIL ,
			--p.AMIR5, (select EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR5) AMIR5_EMAIL ,
			--s.NEDEN,
			--s.SEBEP,
			--s.SEBEP2,
			--s.ACIKLAMA,
			--GETDATE() BASTARIH,
			--BASSAAT,
			--GETDATE() BITTARIH,
			--BITSAAT,			
			--GETDATE() ISBASI,
			--0 GUN,
			--SAAT,
			--s.RET ,
			--s.RET_ACIK ,
			--POST [STATE] 
		 --   from dbo.ONY_SAATIZIN s (nolock) 
			--inner join dbo.PERSONEL1 (nolock) p on s.PRSICIL=p.SICILNO
			--inner join dbo.PERSONEL_AMIR (nolock) a on 
			--(case when s.ONAY1KL is null then p.AMIR1 
			-- when s.ONAY2KL is null then p.AMIR2 
			--when s.ONAY3KL is null then p.AMIR3 
			--when s.ONAY4KL is null then p.AMIR4 
			--when s.ONAY4KL is null then p.AMIR5 end)=AMIR_KODU
			--left join dbo.PERSONEL1 (nolock) p2 on AMIR_KODU=p2.SICILNO
			--where 
			-- (s.ONAY1KL is null or s.ONAY2KL is null or s.ONAY3KL is null or s.ONAY4KL is null or s.ONAY5KL is null) 
			--  and s.IDNO=scope_identity() 
			IF (@ISPOST=1) SET @ReturnCode='201'
			ELSE
			SET @ReturnCode='200'
END TRY  
BEGIN CATCH

SET @ReturnCode='500'
END CATCH 			  
			  
END

 
GO
/****** Object:  StoredProcedure [dbo].[BCS_SHIFTS_SELECT]    Script Date: 19.09.2021 07:13:53 ******/
 
CREATE PROC  [dbo].[BCS_SHIFTS_SELECT]
(
@Srkodu varchar(50)=null
)
AS

select SRKODU,KODU,ADI,TURU,GRUP,BASSAAT,BITSAAT,DATEPART(HOUR, MAXCLIM)*60+DATEPART(MINUTE, MAXCLIM) MAXCLIM from dbo.VARDIYA nolock where SRKODU=isnull(@Srkodu,SRKODU)

 
 GO
/****** Object:  StoredProcedure [dbo].[BCS_VARDIYA_INSERT]    Script Date: 19.09.2021 07:15:40 ******/
 
--declare @D1 datetime=GETDATE();
--declare @D2 datetime=GETDATE()+10;
--declare  @ReturnCode varchar(20);
--exec [dbo].[BCS_VARDIYA_INSERT] 1,'0001','0002',@D1,@D2,
--null,null,' 08:00-16:00',' 08:00-16:00',null,null,null,null,null,null,
--null,null,null,null,null,null,null,null,null,null,
--null,null,null,null,null,null,null,null,null,null,@ReturnCode output
--select * from ONY_VARDIYA

CREATE PROC  [dbo].[BCS_VARDIYA_INSERT]
		   @SRKODU int,
		   @APPROVER varchar(15),
           @PRSICIL varchar(15),
           @BASTARIH smalldatetime,
		   @BITTARIH smalldatetime,
           @VRD1 varchar(100)=null,
		   @VRD2 varchar(100)=null,
		   @VRD3 varchar(100)=null,
		   @VRD4 varchar(100)=null,
		   @VRD5 varchar(100)=null,
		   @VRD6 varchar(100)=null,
		   @VRD7 varchar(100)=null,
		   @VRD8 varchar(100)=null,
		   @VRD9 varchar(100)=null,
		   @VRD10 varchar(100)=null,
		   @VRD11 varchar(100)=null,
		   @VRD12 varchar(100)=null,
		   @VRD13 varchar(100)=null,
		   @VRD14 varchar(100)=null,
		   @VRD15 varchar(100)=null,
		   @VRD16 varchar(100)=null,
		   @VRD17 varchar(100)=null,
		   @VRD18 varchar(100)=null,
		   @VRD19 varchar(100)=null,
		   @VRD20 varchar(100)=null,
		   @VRD21 varchar(100)=null,
		   @VRD22 varchar(100)=null,
		   @VRD23 varchar(100)=null,
		   @VRD24 varchar(100)=null,
		   @VRD25 varchar(100)=null,
		   @VRD26 varchar(100)=null,
		   @VRD27 varchar(100)=null,
		   @VRD28 varchar(100)=null,
		   @VRD29 varchar(100)=null,
		   @VRD30 varchar(100)=null,
		   @ReturnCode varchar(20) output
AS
BEGIN
DECLARE @IDNO int=0;

BEGIN TRY
 select @VRD1=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD1))
 select @VRD2=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD2))
 select @VRD3=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD3))
 select @VRD4=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD4))
 select @VRD5=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD5))
 select @VRD6=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD6))
 select @VRD7=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD7))
 select @VRD8=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD8))
 select @VRD9=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD9))
 select @VRD10=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD10))
 
 select @VRD11=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD11))
 select @VRD12=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD12))
 select @VRD13=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD13))
 select @VRD14=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD14))
 select @VRD15=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD15))
 select @VRD16=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD16))
 select @VRD17=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD17))
 select @VRD18=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD18))
 select @VRD19=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD19))
 select @VRD20=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD20))
 
 select @VRD21=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD21))
 select @VRD22=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD22))
 select @VRD23=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD23))
 select @VRD24=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD24))
 select @VRD25=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD25))
 select @VRD26=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD26))
 select @VRD27=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD27))
 select @VRD28=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD28))
 select @VRD29=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD29))
 select @VRD30=isnull(KODU,'') from VARDIYA where ADI=RTRIM(LTRIM(@VRD30))
 


if isnull(@VRD1,'')<>'' and ISNUMERIC(@VRD1)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=@BASTARIH )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,@BASTARIH,@VRD1,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD1 where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=@BASTARIH
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=@BASTARIH)
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD1)),@BASTARIH)
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD1) where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=@BASTARIH
END


if isnull(@VRD2,'')<>'' and ISNUMERIC(@VRD2)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=LTRIM(RTRIM(@PRSICIL)) and TARIH=DATEADD(day,1, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,1, @BASTARIH) ,@VRD2,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD2 where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,1, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,1, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD2)),DATEADD(day,1, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD2) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,1, @BASTARIH) 
 
END



if isnull(@VRD3,'')<>'' and ISNUMERIC(@VRD3)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=LTRIM(RTRIM(@PRSICIL)) and TARIH=DATEADD(day,2, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,2, @BASTARIH) ,@VRD3,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD3 where PRSICIL=LTRIM(RTRIM(@PRSICIL)) and TARIH=DATEADD(day,2, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,2, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD3)),DATEADD(day,2, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD3) where PRSICIL=LTRIM(RTRIM(@PRSICIL)) and TARIH=DATEADD(day,2, @BASTARIH) 
END
  
  

if isnull(@VRD4,'')<>'' and ISNUMERIC(@VRD4)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,3, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,3, @BASTARIH) ,@VRD4,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD4 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,3, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,3, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD4)),DATEADD(day,3, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD4) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,3, @BASTARIH) 
 
END
 
if isnull(@VRD5,'')<>'' and ISNUMERIC(@VRD5)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,4, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,4, @BASTARIH) ,@VRD5,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD5 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,4, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,4, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD5)),DATEADD(day,4, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD5) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,4, @BASTARIH) 
 
END



if isnull(@VRD6,'')<>'' and ISNUMERIC(@VRD6)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,5, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,5, @BASTARIH) ,@VRD6,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD6 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,5, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,5, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])   VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD6)),DATEADD(day,5, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD6) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,5, @BASTARIH) 
END



if isnull(@VRD7,'')<>'' and ISNUMERIC(@VRD7)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,6, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,6, @BASTARIH) ,@VRD7,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD7 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,6, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,6, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD7)),DATEADD(day,6, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD7) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,6, @BASTARIH) 
END



if isnull(@VRD8,'')<>'' and ISNUMERIC(@VRD8)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,7, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,7, @BASTARIH) ,@VRD8,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD8 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,7, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,7, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD8)),DATEADD(day,7, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD8) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,7, @BASTARIH) 
END



if isnull(@VRD9,'')<>'' and ISNUMERIC(@VRD9)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,8, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,8, @BASTARIH) ,@VRD9,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD9 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,8, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,8, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD9)),DATEADD(day,8, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD9) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,8, @BASTARIH) 
END



if isnull(@VRD10,'')<>'' and ISNUMERIC(@VRD10)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,9, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,9, @BASTARIH) ,@VRD10,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD10 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,9, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,9, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD10)),DATEADD(day,9, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD10) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,9, @BASTARIH) 
END
 
 

if isnull(@VRD11,'')<>'' and ISNUMERIC(@VRD11)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,10, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,10, @BASTARIH) ,@VRD11,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD11 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,10, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,10, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD11)),DATEADD(day,10, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD11) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,10, @BASTARIH) 
END
 
 

if isnull(@VRD12,'')<>'' and ISNUMERIC(@VRD12)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,11, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,11, @BASTARIH) ,@VRD12,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD12 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,11, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,11, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD12)),DATEADD(day,11, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD12) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,11, @BASTARIH) 
END



if isnull(@VRD13,'')<>'' and ISNUMERIC(@VRD13)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,12, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,12, @BASTARIH) ,@VRD13,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD13 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,12, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,12, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD13)),DATEADD(day,12, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD13) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,12, @BASTARIH) 
END



if isnull(@VRD14,'')<>'' and ISNUMERIC(@VRD14)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,13, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,13, @BASTARIH) ,@VRD14,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD14 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,13, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,13, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD14)),DATEADD(day,13, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD14) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,13, @BASTARIH) 
END


if isnull(@VRD15,'')<>'' and ISNUMERIC(@VRD15)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,14, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,14, @BASTARIH) ,@VRD15,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD15 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,14, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,14, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD15)),DATEADD(day,14, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD15) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,14, @BASTARIH) 
END



if isnull(@VRD16,'')<>'' and ISNUMERIC(@VRD16)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,15, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,15, @BASTARIH) ,@VRD16,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD16 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,15, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,15, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD16)),DATEADD(day,15, @BASTARIH))
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD16) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,15, @BASTARIH) 
END



if isnull(@VRD17,'')<>'' and ISNUMERIC(@VRD17)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,16, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,16, @BASTARIH) ,@VRD17,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD17 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,16, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,16, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD17)),DATEADD(day,16, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD17) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,16, @BASTARIH) 
END



if isnull(@VRD18,'')<>'' and ISNUMERIC(@VRD18)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,17, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,17, @BASTARIH) ,@VRD18,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD18 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,17, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,17, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD18)),DATEADD(day,17, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD18) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,17, @BASTARIH) 
END



if isnull(@VRD19,'')<>'' and ISNUMERIC(@VRD19)=1
BEGIN
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,18, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,18, @BASTARIH) ,@VRD19,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD19 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,18, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,18, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD19)),DATEADD(day,18, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD19) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,18, @BASTARIH) 
END



if isnull(@VRD20,'')<>'' and ISNUMERIC(@VRD20)=1
BEGIN

select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,19, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,19, @BASTARIH) ,@VRD20,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD20 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,19, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,19, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD20)),DATEADD(day,19, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD20) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,19, @BASTARIH) 
END



if isnull(@VRD21,'')<>'' and ISNUMERIC(@VRD21)=1
BEGIN

select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,20, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,20, @BASTARIH) ,@VRD21,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD21 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,20, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,20, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD21)),DATEADD(day,20, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD21) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,20, @BASTARIH) 
END



if isnull(@VRD22,'')<>'' and ISNUMERIC(@VRD22)=1
BEGIN

select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,21, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,21, @BASTARIH) ,@VRD22,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD22 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,21, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,21, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])   VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD22)),DATEADD(day,21, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD22) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,21, @BASTARIH) 

END
 
 

 if isnull(@VRD23,'')<>'' and ISNUMERIC(@VRD23)=1
BEGIN
 
 select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,22, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,22, @BASTARIH) ,@VRD23,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD23 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,22, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,22, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD23)),DATEADD(day,22, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD23) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,22, @BASTARIH) 

END
 
 

 if isnull(@VRD24,'')<>'' and ISNUMERIC(@VRD24)=1
BEGIN

 select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,23, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,23, @BASTARIH) ,@VRD24,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD24 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,23, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,23, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])   VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD24)),DATEADD(day,23, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD24) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,23, @BASTARIH) 

END
 
 

 if isnull(@VRD25,'')<>'' and ISNUMERIC(@VRD25)=1
BEGIN


 select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,24, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,24, @BASTARIH) ,@VRD25,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD25 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,24, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,24, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])   VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD25)),DATEADD(day,24, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD25) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,24, @BASTARIH) 

END
 
 
 if isnull(@VRD26,'')<>'' and ISNUMERIC(@VRD26)=1
BEGIN

 select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,25, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,25, @BASTARIH) ,@VRD26,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD26 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,25, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,25, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD26)),DATEADD(day,25, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD26) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,25, @BASTARIH) 

END
 
 

 if isnull(@VRD27,'')<>'' and ISNUMERIC(@VRD27)=1
BEGIN

 select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,26, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,26, @BASTARIH) ,@VRD27,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD27 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,26, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,26, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD27)),DATEADD(day,26, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD27) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,26, @BASTARIH) 

END


 
 if isnull(@VRD28,'')<>'' and ISNUMERIC(@VRD28)=1
BEGIN
 select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,27, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,27, @BASTARIH) ,@VRD28,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD28 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,27, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,27, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])   VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD28)),DATEADD(day,27, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD28) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,27, @BASTARIH) 


END


 
 if isnull(@VRD29,'')<>'' and ISNUMERIC(@VRD29)=1
BEGIN

 select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,28, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,28, @BASTARIH) ,@VRD29,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD29 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,28, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,28, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD29)),DATEADD(day,28, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD29) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,28, @BASTARIH) 




END
 
 if isnull(@VRD30,'')<>'' and ISNUMERIC(@VRD30)=1
BEGIN

 select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[ONY_VARDIYA]
IF NOT EXISTS (SELECT * FROM [dbo].[ONY_VARDIYA] nolock where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,29, @BASTARIH) )
INSERT INTO  [dbo].[ONY_VARDIYA]([SRKODU],[PRSICIL],[TARIH],[VRKODU],[ONAY1],[ONAY1KL],[POST]) VALUES (@SRKODU ,@PRSICIL ,DATEADD(day,29, @BASTARIH) ,@VRD30,1,@APPROVER,1) 
ELSE
UPDATE [dbo].[ONY_VARDIYA] set VRKODU=@VRD30 where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,29, @BASTARIH) 
select @IDNO=MAX(isnull(IDNO,0))+1 from [dbo].[PERVARDIYA1]
IF NOT EXISTS (SELECT * FROM PERVARDIYA1 nolock where PRSICIL=RTRIM(LTRIM(@PRSICIL)) and TARIH=DATEADD(day,29, @BASTARIH) )
INSERT INTO PERVARDIYA1 ([IDNO]
      ,[PRSICIL]
      ,[VRKODU]
      ,[TARIH])  VALUES (@IDNO,@PRSICIL,RTRIM(LTRIM(@VRD30)),DATEADD(day,29, @BASTARIH) )
ELSE
UPDATE PERVARDIYA1 set VRKODU=RTRIM(@VRD30) where PRSICIL=RTRIM(@PRSICIL) and TARIH=DATEADD(day,29, @BASTARIH) 



END

 
  		SET @ReturnCode='200'
END TRY  
BEGIN CATCH

SET @ReturnCode='500'
END CATCH 

END

 GO
/****** Object:  StoredProcedure [dbo].[BCS_VARDIYA_SELECT]    Script Date: 1.01.2022 20:21:10 ******/
 
CREATE PROC  [dbo].[BCS_VARDIYA_SELECT]
		  @Srkodu varchar(10),
		  @UserName varchar(50),
		  @Date1 datetime,
		  @Date2 datetime,
		  @ReturnCode varchar(20) output
AS
BEGIN


DECLARE @BasTarih datetime;
DECLARE @BitTarih datetime;
DECLARE @Neden varchar(50);
DECLARE @PrSicil varchar(50);

IF OBJECT_ID('tempdb..#Temporary') IS NOT NULL
    DROP TABLE #Temporary

CREATE TABLE #Temporary(TARIH DATETIME, NEDEN VARCHAR(50),PRSICIL VARCHAR(50))

DECLARE BCursor CURSOR FORWARD_ONLY FOR
select BASTARIH,BITTARIH,NEDEN,PRSICIL from  GUNIZIN1 g (nolock) where ((BASTARIH>=@Date1 and BASTARIH<=@Date2) or (BITTARIH>=@Date1 and BITTARIH<=@Date2) 
or (BITTARIH>=@Date1 and BITTARIH>=@Date2)) ;

OPEN BCursor;  
 
WHILE 1=1
   BEGIN  
    FETCH NEXT FROM BCursor INTO @BasTarih, @BitTarih,@Neden,@PrSicil;
   
		WITH theDates AS
			 (SELECT @BasTarih as theDate,@Neden as Neden,@PrSicil as PrSicil
			  UNION ALL
			  SELECT DATEADD(day, 1, theDate),Neden,PrSicil
				FROM theDates
			   WHERE DATEADD(day, 1, theDate) <= @BitTarih
			 )
		INSERT INTO #Temporary SELECT theDate,Neden,PrSicil
		  FROM theDates
		OPTION (MAXRECURSION 0);


     IF @@FETCH_STATUS < 0 BREAK

   
   END;  
    

CLOSE BCursor;  
DEALLOCATE BCursor;  
---- convert(varchar,c.KODU)+'#'+ c.ADI+'#'+ CONVERT(varchar,DATEPART(HOUR, MAXCLIM)*60+DATEPART(MINUTE, MAXCLIM)) 

select  * from  
(
  select convert(varchar,v.KODU)+'#'+ v.ADI+'#'+ 
  case when v.TURU='Hafta Tatili' then '0'
  else 
  CONVERT(varchar,DATEPART(HOUR, isnull(MAXCLIM,0))*60+DATEPART(MINUTE, isnull(v.MAXCLIM,0))) end
  
  DSCR, 'ffffff' COLOR,  DATEDIFF(day, @Date1,TARIH) DIFF, o.SRKODU,PRSICIL,TARIH,VRKODU,
case when v.TURU='Hafta Tatili' then 0 else 
DATEPART(HOUR, isnull(MAXCLIM,0))*60+DATEPART(MINUTE, isnull(MAXCLIM,0)) end
MAXCLIM,
ONAY1,ONAY1KL,ONAY2,ONAY2KL,ONAY3,ONAY3KL,ONAY4,ONAY4KL,ONAY5,ONAY5KL, POST,RET,RET_ACIK
from ONY_VARDIYA o (nolock) 
left join VARDIYA v (nolock) on o.VRKODU=v.KODU
left join PERSONEL1 p (nolock) on o.PRSICIL=p.SICILNO 
left join PERTIPI pt (nolock) on p.PERTIP=pt.PERTIPI
where TARIH>=@Date1 and TARIH<=@Date2 and  convert(varchar,v.KODU)+'#'+ v.ADI+'#'+ CONVERT(varchar,DATEPART(HOUR, isnull(MAXCLIM,0))*60+DATEPART(MINUTE, isnull(v.MAXCLIM,0))) is not null 
---and pt.PUANTAJ='PERSONEL'
union all
SELECT distinct  convert(varchar,c.KODU)+'#'+ c.ADI+'#'+ CONVERT(varchar,DATEPART(HOUR, isnull(MAXCLIM,0))*60+DATEPART(MINUTE, isnull(MAXCLIM,0)))  DSCR,
 'ff0000' COLOR, DATEDIFF(day, @Date1,TARIH) DIFF, 1 SRKODU,g.PRSICIL, TARIH,0 VRKODU,0 MAXCLIM, null ONAY1,
null ONAY1KL,null ONAY2,null ONAY2KL,null ONAY3,null ONAY3KL,null ONAY4,null ONAY4KL,null ONAY5,null ONAY5KL, 0 POST,0 RET,null RET_ACIK  from 
#Temporary as t
left join  GUNIZIN1 g (nolock) on ((BASTARIH>=@Date1 and BASTARIH<=@Date2) or (BITTARIH>=@Date1 and BITTARIH<=@Date2) 
or (BITTARIH>=@Date1 and BITTARIH>=@Date2)) and t.NEDEN=g.NEDEN 
and t.PRSICIL=g.PRSICIL 
left join PERSONEL1 p (nolock) on g.PRSICIL=p.SICILNO 
left join PERTIPI pt (nolock) on p.PERTIP=pt.PERTIPI
left join CALISMA c (nolock) on g.NEDEN=c.KODU 
where 1=1 and convert(varchar,c.KODU)+'#'+ c.ADI+'#'+ CONVERT(varchar,DATEPART(HOUR, isnull(MAXCLIM,0))*60+DATEPART(MINUTE, isnull(MAXCLIM,0))) is not null 
---and pt.PUANTAJ='PERSONEL'

) t 


OPTION (MAXRECURSION 0);

 
END
 

GO 
/****** Object:  StoredProcedure [dbo].[BCS_VEKALET_DELETE]    Script Date: 19.09.2021 07:15:40 ******/
 
CREATE PROC  [dbo].[BCS_VEKALET_DELETE]
(
@Id int,
@ReturnCode varchar(20) output
)
AS

SET @ReturnCode='200'

delete from dbo.ONY_VEKALET where IDNO=@Id 

GO 
/****** Object:  StoredProcedure [dbo].[BCS_VEKALET_INSERT]    Script Date: 19.09.2021 07:15:40 ******/
 
CREATE PROC  [dbo].[BCS_VEKALET_INSERT]
(
@User varchar(50),
@BasTarih datetime,
@BitTarih datetime,
@Vekil varchar(50),
@ReturnCode varchar(20) output
)
AS
DECLARE @UserName varchar(50);
DECLARE @VekilAdi varchar(50);
if EXISTS(
select * from dbo.ONY_VEKALET nolock where 1=1 
and (
(convert(varchar,BASTARIH,112)<=convert(varchar,@BasTarih,112) and convert(varchar,BITTARIH,112)>=convert(varchar,@BasTarih,112)) 
and 
(convert(varchar,BASTARIH,112)<=convert(varchar,@BitTarih,112) and convert(varchar,BITTARIH,112)>=convert(varchar,@BitTarih,112))
)
and KLADI=@User and VEKILADI=@Vekil
)
BEGIN

update dbo.ONY_VEKALET set BASTARIH=@BasTarih, BITTARIH=@BitTarih where 
1=1 
and (
(convert(varchar,BASTARIH,112)<=convert(varchar,@BasTarih,112) and convert(varchar,BITTARIH,112)>=convert(varchar,@BasTarih,112)) 
and 
(convert(varchar,BASTARIH,112)<=convert(varchar,@BitTarih,112) and convert(varchar,BITTARIH,112)>=convert(varchar,@BitTarih,112))
)
and KLADI=@User and VEKILADI=@Vekil

SET @ReturnCode='500'
return;
END
ELSE
BEGIN
select @UserName= ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=@User
select @VekilAdi= ADI+' '+SOYADI from dbo.PERSONEL1 nolock where SICILNO=@Vekil
insert into dbo.ONY_VEKALET values 
(@User,@UserName,@BasTarih,@BitTarih,@Vekil,@VekilAdi)
SET @ReturnCode='200'
END


 GO
/****** Object:  StoredProcedure [dbo].[BCS_VEKALET_SELECT]    Script Date: 19.09.2021 07:15:40 ******/
 
--[dbo].[BCS_VEKALET_SELECT] null,'095'

CREATE PROC  [dbo].[BCS_VEKALET_SELECT](
@UserName varchar(50)=null,
@Vekil varchar(50)=null)
AS

select v.*,isnull(a.SIFRE,p.ONY_SIFRE) SIFRE from  dbo.ONY_VEKALET v (nolock) 
left join dbo.PERSONEL_AMIR a (nolock) on v.KLADI=a.AMIR_KODU
left join dbo.PERSONEL1 p (nolock) on v.KLADI=p.SICILNO
where v.VEKILADI=isnull(@Vekil,v.VEKILADI) and v.KLADI=(case when @Vekil is not null then v.KLADI else @UserName end)
--and KLADI=(case when @UserName=null then KLADI else @UserName end)
 and convert(varchar,v.BASTARIH,112)<= CONVERT(varchar,GETDATE(),112)
 and convert(varchar,v.BITTARIH,112)>=CONVERT(varchar,GETDATE(),112)
--and convert(varchar,BASTARIH,112)>= (case when @Type=0 then  convert(varchar,BASTARIH,112) else CONVERT(varchar,GETDATE(),112) end) and 
--convert(varchar,BITTARIH,112)<= (case when @Type=0 then convert(varchar,BITTARIH,112) else CONVERT(varchar,GETDATE(),112) end)
--select * from dbo.PERSONEL_AMIR p

  
if not exists (select * from ONY_FORM (nolock) where CLKODU=0)
insert into ONY_FORM ( [CLKODU],[GUNLUK_IZIN],[SAATLIK_IZIN],[MESAI])
values (0,'<html>  <head>      <style>          /*table, td, th {                  border-collapse: collapse;              }*/            table {              border-collapse: collapse;              width: 95%;          }            th, td {              padding-left: 5px;              font-size: 9pt;              font-family: Calibri;          }            li {              font-size: 9pt;              font-family: Calibri;          }            .auto-style2 {              height: 20px;          }      </style>  </head>    <body>      <table border="1" align="center" width="90%">          <tr>              <td style="text-align:center;font-size: 12pt; font-family: Calibri;" colspan="4" rowspan="1">#IzinFormu#</td>          </tr>          <tr>      </table>      &nbsp      <table border="1" align="center">          <tr>              <td width="40%">Ad ve Soyad</td>              <td>#ADISOYADI#</td>          </tr>          <tr>              <td width="40%">İşyeri Sicil No</td>              <td>#SICILNO#</td>          </tr>          <tr>              <td width="40%">İşe Giriş Tarihi</td>              <td>#ISE_GIRIS_TARIHI#</td>          </tr>          <tr>              <td width="40%">İşletme</td>              <td>#DEPARTMAN_ADI#</td>          </tr>          <tr>              <td width="40%">Bölüm</td>              <td>#MASRAF_ADI#</td>          </tr>          <tr>              <td width="40%">Kadro</td>              <td>#GOREV_ADI#</td>          </tr>          <tr>                <td width="40%">#Izin# Türü</td>              <td>#IZIN_ADI#</td>          </tr>          <tr>                <td width="40%">#Izin# Başladığı Tarih</td>              <td>#IZIN_BASLAMA_TARIHI#</td>          </tr>          <tr>                <td width="40%">#Izin# İş Günü Sayısı</td>              <td>#IZIN_GUNU#</td>          </tr>          <tr>                <td width="40%">#Izin# Bitiş Tarihi</td>              <td>#IZIN_BITIS_TARIHI#</td>          </tr>          <tr>              <td width="40%">İşbaşı Tarihi</td>              <td>#ISBASI_TARIHI#</td>          </tr>          <tr>              <td width="40%">Yıllık İzin Bakiye</td>              <td>#YILIZ_KALAN#</td>          </tr>      </table>      &nbsp      <table border="1" align="center">                      <tr>              <td width="40%">Telefonum</td>              <td></td>          </tr>          <tr height="50px">              <td width="40%">Açıklama</td>              <td>#ACIKLAMA#</td>          </tr>      </table>      &nbsp      <table border="1" align="center">          <tr>              <td>                  <div>                      <center><b>Talep Eden (İsim ve İmza)</b></center>                  </div>              </td>              <td>                  <div>                      <center><b>Bölüm Yöneticisi (İsim ve İmza)</b></center>                  </div>              </td>              <td>                  <div>                      <center><b>İnsan Kaynakları Yöneticisi (İsim ve İmza)</b></center>                  </div>              </td>          </tr>          <tr>              <td>                  <div>                      <center>#ADISOYADI#</center>                  </div>                  <div>                      &nbsp                  </div>              </td>              <td>                  <div>                      <center>#AMIR1#</center>                  </div>              </td>              <td>                  <div>                      <center>&nbsp;</center>                  </div>              </td>          </tr>      </table>      &nbsp;      <table align="center">          <tr>              <td>                  #IzinFormu# çalışanın izne çıkış tarihinden en az üç iş günü öncesinde İnsan Kaynakları Bölümüne teslim edilmelidir.              </td>          </tr>      </table>  </body>  <script>          setTimeout(function () { window.print() }, 3000);  </script>  </html> ','<html>  <head>      <style>          /*table, td, th {                  border-collapse: collapse;              }*/            table {              border-collapse: collapse;              width: 95%;          }            th, td {              padding-left: 5px;              font-size: 9pt;              font-family: Calibri;          }            li {              font-size: 9pt;              font-family: Calibri;          }            .auto-style2 {              height: 20px;          }      </style>  </head>    <body>      <table border="1" align="center" width="90%">          <tr>              <td style="text-align:center;font-size: 12pt; font-family: Calibri;" colspan="4" rowspan="1">#IzinFormu#</td>          </tr>          <tr>      </table>      &nbsp      <table border="1" align="center">          <tr>              <td width="40%">Ad ve Soyad</td>              <td>#ADISOYADI#</td>          </tr>          <tr>              <td width="40%">İşyeri Sicil No</td>              <td>#SICILNO#</td>          </tr>          <tr>              <td width="40%">İşe Giriş Tarihi</td>              <td>#ISE_GIRIS_TARIHI#</td>          </tr>          <tr>              <td width="40%">İşletme</td>              <td>#DEPARTMAN_ADI#</td>          </tr>          <tr>              <td width="40%">Bölüm</td>              <td>#MASRAF_ADI#</td>          </tr>          <tr>              <td width="40%">Kadro</td>              <td>#GOREV_ADI#</td>          </tr>          <tr>                <td width="40%">#Izin# Türü</td>              <td>#IZIN_ADI#</td>          </tr>          <tr>                <td width="40%">#Izin# Başladığı Tarih</td>              <td>#IZIN_BASLAMA_TARIHI#</td>          </tr>          <tr>                <td width="40%">#Izin# Başladığı Saat</td>              <td>#IZIN_BASLAMA_SAATI#</td>          </tr>          <tr>                <td width="40%">#Izin# Bitiş Tarihi</td>              <td>#IZIN_BITIS_TARIHI#</td>          </tr>            <td width="40%">#Izin# Bitiş Saat</td>              <td>#IZIN_BITIS_SAATI#</td>          </tr>            <td width="40%">#Izin# Süre</td>              <td>#SAAT#</td>          </tr>                    <tr>              <td width="40%">Yıllık İzin Bakiye</td>              <td>#YILIZ_KALAN#</td>          </tr>      </table>      &nbsp      <table border="1" align="center">                      <tr>              <td width="40%">Telefonum</td>              <td></td>          </tr>          <tr height="50px">              <td width="40%">Açıklama</td>              <td>#ACIKLAMA#</td>          </tr>      </table>      &nbsp      <table border="1" align="center">          <tr>              <td>                  <div>                      <center><b>Talep Eden (İsim ve İmza)</b></center>                  </div>              </td>              <td>                  <div>                      <center><b>Bölüm Yöneticisi (İsim ve İmza)</b></center>                  </div>              </td>              <td>                  <div>                      <center><b>İnsan Kaynakları Yöneticisi (İsim ve İmza)</b></center>                  </div>              </td>          </tr>          <tr>              <td>                  <div>                      <center>#ADISOYADI#</center>                  </div>                  <div>                      &nbsp                  </div>              </td>              <td>                  <div>                      <center>#AMIR1#</center>                  </div>              </td>              <td>                  <div>                      <center>&nbsp;</center>                  </div>              </td>          </tr>      </table>      &nbsp;      <table align="center">          <tr>              <td>                  #IzinFormu# çalışanın izne çıkış tarihinden en az üç iş günü öncesinde İnsan Kaynakları Bölümüne teslim edilmelidir.              </td>          </tr>      </table>  </body>  <script>          setTimeout(function () { window.print() }, 3000);  </script>  </html> ','<html>  <head>      <style>          /*table, td, th {                  border-collapse: collapse;              }*/            table {              border-collapse: collapse;              width: 95%;          }            th, td {              padding-left: 5px;              font-size: 9pt;              font-family: Calibri;          }            li {              font-size: 9pt;              font-family: Calibri;          }            .auto-style2 {              height: 20px;          }      </style>  </head>    <body>      <table border="1" align="center" width="90%">          <tr>              <td style="text-align:center;font-size: 12pt; font-family: Calibri;" colspan="4" rowspan="1">#IzinFormu#</td>          </tr>          <tr>      </table>      &nbsp      <table border="1" align="center">          <tr>              <td width="40%">Ad ve Soyad</td>              <td>#ADISOYADI#</td>          </tr>          <tr>              <td width="40%">İşyeri Sicil No</td>              <td>#SICILNO#</td>          </tr>          <tr>              <td width="40%">İşe Giriş Tarihi</td>              <td>#ISE_GIRIS_TARIHI#</td>          </tr>          <tr>              <td width="40%">İşletme</td>              <td>#DEPARTMAN_ADI#</td>          </tr>          <tr>              <td width="40%">Bölüm</td>              <td>#MASRAF_ADI#</td>          </tr>          <tr>              <td width="40%">Pozisyon</td>              <td>#GOREV_ADI#</td>          </tr>          <tr>                <td width="40%">#Izin# Türü</td>              <td>#IZIN_ADI#</td>          </tr>          <tr>                <td width="40%">#Izin# Başladığı Tarih</td>              <td>#IZIN_BASLAMA_TARIHI#</td>          </tr>          <tr>                <td width="40%">#Izin# Başladığı Saat</td>              <td>#IZIN_BASLAMA_SAATI#</td>          </tr>          <tr>                <td width="40%">#Izin# Bitiş Tarihi</td>              <td>#IZIN_BITIS_TARIHI#</td>          </tr>            <td width="40%">#Izin# Bitiş Saat</td>              <td>#IZIN_BITIS_SAATI#</td>          </tr>            <td width="40%">#Izin# Süre</td>              <td>#SAAT#</td>          </tr>                    <tr>              <td width="40%">Kalan İş Günü Sayısı</td>              <td>#YILIZ_KALAN#</td>          </tr>      </table>      &nbsp      <table border="1" align="center">                      <tr>              <td width="40%">Telefonum</td>              <td></td>          </tr>          <tr height="50px">              <td width="40%">Açıklama</td>              <td>#ACIKLAMA#</td>          </tr>      </table>      &nbsp      <table border="1" align="center">          <tr>              <td>                  <div>                      <center><b>Talep Eden (İsim ve İmza)</b></center>                  </div>              </td>              <td>                  <div>                      <center><b>Bölüm Yöneticisi (İsim ve İmza)</b></center>                  </div>              </td>              <td>                  <div>                      <center><b>İnsan Kaynakları Yöneticisi (İsim ve İmza)</b></center>                  </div>              </td>          </tr>          <tr>              <td>                  <div>                      <center>#ADISOYADI#</center>                  </div>                  <div>                      &nbsp                  </div>              </td>              <td>                  <div>                      <center>#AMIR1#</center>                  </div>              </td>              <td>                  <div>                      <center>&nbsp;</center>                  </div>              </td>          </tr>      </table>      &nbsp;      <table align="center">          <tr>              <td>                  #IzinFormu# çalışanın izne çıkış tarihinden en az üç iş günü öncesinde İnsan Kaynakları Bölümüne teslim edilmelidir.              </td>          </tr>      </table>  </body>  <script>          setTimeout(function () { window.print() }, 3000);  </script>  </html> ')

GO

if not exists( select * from ONY_FORM_ALAN)
BEGIN

SET IDENTITY_INSERT [dbo].[ONY_FORM_ALAN] ON 

INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (1, 0, NULL, N'#MASRAF_ADI#', N'SELECT TURU FROM MASRAF_MERKEZI WHERE SRKODU=#SRKODU# AND KODU=(SELECT MASRAF FROM PERSONEL1 WHERE SICILNO=#SICILNO#)')

INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (2, 0, NULL, N'#YILIZ_KALAN#', N'SELECT TOPLAMKALAN FROM YILIZHESAP1 WHERE PRSICIL=#SICILNO# AND YIL=#YILIZIN_YIL#')
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (3, NULL, NULL, N'#AMIR1#', N'SELECT AMIR_ADI FROM PERSONEL_AMIR WHERE AMIR_KODU=(SELECT AMIR1 FROM PERSONEL1 WHERE SICILNO=#SICILNO#)')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (4, 100, N'GÜNLÜK İZİN', N'#AMIR1#', N'SELECT CASE WHEN UPPER(AMIR_ADI)=''UTKU ÖZTÜRK'' THEN ''Genel  Müdür  Adına ''+AMIR_ADI ELSE AMIR_ADI END FROM PERSONEL_AMIR WHERE SRKODU=#SRKODU# AND AMIR_KODU IN (SELECT AMIR1 FROM PERSONEL#SRKODU# WHERE SICILNO=''#SICILNO#'')')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (5, 100, N'GÜNLÜK İZİN', N'#YILIZ_HAKED#', N'SELECT HAKEDILEN FROM YILIZHESAP#SRKODU# WHERE PRSICIL=''#SICILNO#'' AND YIL=#YILIZIN_YIL#')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (6, 100, N'GÜNLÜK İZİN', N'#YILIZ_KULLAN#', N'SELECT KULLANILAN FROM YILIZHESAP#SRKODU# WHERE PRSICIL=''#SICILNO#'' AND YIL=#YILIZIN_YIL#')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (7, 100, N'GÜNLÜK İZİN', N'#YILIZ_KALAN#', N'SELECT TOPLAMKALAN FROM YILIZHESAP#SRKODU# WHERE PRSICIL=''#SICILNO#'' AND YIL=#YILIZIN_YIL#')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (8, 100, N'GÜNLÜK İZİN', N'#IS_KANUNU#', N'SELECT CASE WHEN CHARINDEX(UPPER(''BASIN''),(SELECT TURU FROM PERTIPI WHERE SRKODU=#SRKODU# AND PERTIPI IN (SELECT PERTIP FROM PERSONEL#SRKODU# WHERE SICILNO=''#SICILNO#'')))>0 THEN ''5953 Sayılı Basın İş Kanunu'' ELSE ''4857 Sayılı İş Kanunu'' END')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (9, NULL, NULL, N'#MAZERET_LIMIT#', N'SELECT 1 AS DEGER')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (10, NULL, NULL, N'#IS_KANUNU_BASLIK#', N'SELECT CASE WHEN CHARINDEX(UPPER(''BASIN''),(SELECT TURU FROM PERTIPI WHERE SRKODU=#SRKODU# AND PERTIPI IN (SELECT PERTIP FROM PERSONEL#SRKODU# WHERE SICILNO=''#SICILNO#'')))>0 THEN ''Tabi Olduğu Kanun ( Basın İş Kanunu )'' ELSE ''Tabi Olduğu Kanun ( İş Kanunu )'' END')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (11, NULL, NULL, N'#YILIZ_DEVIRBASLIK#', N'SELECT CASE WHEN CHARINDEX(UPPER(''BASIN''),(SELECT TURU FROM PERTIPI WHERE SRKODU=#SRKODU# AND PERTIPI IN (SELECT PERTIP FROM PERSONEL#SRKODU# WHERE SICILNO=''#SICILNO#'')))>0 THEN ''Önceki yıllardan devreden yıllık ücretli izin takvim günü'' ELSE ''Önceki yıllardan devreden yıllık ücretli izin iş günü'' END')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (12, NULL, NULL, N'#YILIZ_IZIN_GUNUBASLIK#', N'SELECT CASE WHEN CHARINDEX(UPPER(''BASIN''),(SELECT TURU FROM PERTIPI WHERE SRKODU=#SRKODU# AND PERTIPI IN (SELECT PERTIP FROM PERSONEL#SRKODU# WHERE SICILNO=''#SICILNO#'')))>0 THEN ''Bu yıllık ücretli izinde kullanacağı izin takvim günü'' ELSE ''Bu yıllık ücretli izinde kullanacağı izin iş günü'' END')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (13, NULL, NULL, N'#YILIZ_HAKED_BASLIK#', N'SELECT CASE WHEN CHARINDEX(UPPER(''BASIN''),(SELECT TURU FROM PERTIPI WHERE SRKODU=#SRKODU# AND PERTIPI IN (SELECT PERTIP FROM PERSONEL#SRKODU# WHERE SICILNO=''#SICILNO#'')))>0 THEN ''Bu yıl için hak ettiği yıllık ücretli izin takvim günü'' ELSE ''Bu yıl için hak ettiği yıllık ücretli izin iş günü'' END')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (14, NULL, NULL, N'#YILIZ_KULLANBASLIK#', N'SELECT CASE WHEN CHARINDEX(UPPER(''BASIN''),(SELECT TURU FROM PERTIPI WHERE SRKODU=#SRKODU# AND PERTIPI IN (SELECT PERTIP FROM PERSONEL#SRKODU# WHERE SICILNO=''#SICILNO#'')))>0 THEN ''Bu izin dâhil, bu yıl içinde kullandığı yıllık ücretli izin takvim günü'' ELSE ''Bu izin dâhil, bu yıl içinde kullandığı yıllık ücretli izin iş günü'' END')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (15, NULL, NULL, N'#YILIZ_KALANBASLIK#', N'SELECT CASE WHEN CHARINDEX(UPPER(''BASIN''),(SELECT TURU FROM PERTIPI WHERE SRKODU=#SRKODU# AND PERTIPI IN (SELECT PERTIP FROM PERSONEL#SRKODU# WHERE SICILNO=''#SICILNO#'')))>0 THEN ''Toplam kalan yıllık ücretli izin takvim günü'' ELSE ''Toplam kalan yıllık ücretli izin iş günü'' END')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (16, NULL, NULL, N'#MAZERET_KULLAN#', N'SELECT FORMAT(CAST((SELECT((SELECT ISNULL(SUM((DATEPART(HOUR,SAAT)*60)+(DATEPART(MINUTE,SAAT))),0) FROM SAATIZIN#SRKODU# WHERE PRSICIL=''#SICILNO#'' AND NEDEN=102))) AS INT)/60,''##00'')+'':''+FORMAT(CAST((SELECT((SELECT ISNULL(SUM((DATEPART(HOUR,SAAT)*60)+(DATEPART(MINUTE,SAAT))),0) FROM SAATIZIN#SRKODU# WHERE PRSICIL=''#SICILNO#'' AND NEDEN=102))) AS INT)%60,''##00'') AS KULLAN_MAZERET')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (17, NULL, NULL, N'#MAZERET_KALAN#', N'SELECT FORMAT(CAST((SELECT((SELECT ISNULL((LIMIT_SURE)*60,0) FROM IZINLIMIT WHERE SRKODU=#SRKODU# AND CLKODU=102)-(SELECT ISNULL(SUM((DATEPART(HOUR,SAAT)*60)+(DATEPART(MINUTE,SAAT))),0) FROM SAATIZIN#SRKODU# WHERE PRSICIL=''#SICILNO#'' AND NEDEN=102))) AS INT)/60,''##00'')+'':''+FORMAT(CAST((SELECT((SELECT ISNULL((LIMIT_SURE)*60,0) FROM IZINLIMIT WHERE SRKODU=#SRKODU# AND CLKODU=102)-(SELECT ISNULL(SUM((DATEPART(HOUR,SAAT)*60)+(DATEPART(MINUTE,SAAT))),0) FROM SAATIZIN#SRKODU# WHERE PRSICIL=''#SICILNO#'' AND NEDEN=102))) AS INT)%60,''##00'') AS KALAN_MAZERET')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (18, NULL, NULL, N'#GOREV_ADI#', N'SELECT TURU FROM GOREV WHERE SRKODU=#SRKODU# AND KODU IN (SELECT GOREV FROM PERSONEL#SRKODU# WHERE SICILNO=''#SICILNO#'')')
 
INSERT [dbo].[ONY_FORM_ALAN] ([IDNO], [CLKODU], [FORM_TIPI], [FORM_ALAN], [SORGU]) VALUES (19, 100, N'GÜNLÜK İZİN', N'#YILIZ_DEVIR_YIL#', N'SELECT DEVIR_YIL FROM YILIZHESAP#SRKODU# WHERE PRSICIL=''#SICILNO#'' AND YIL=#YILIZIN_YIL#')
 
SET IDENTITY_INSERT [dbo].[ONY_FORM_ALAN] OFF

END

GO
if not exists ( select * from PERSONEL_AMIR nolock where AMIR_KODU='ADMIN')
INSERT [dbo].[PERSONEL_AMIR] ([SRKODU], [AMIR_KODU], [AMIR_ADI], [KLADI], [SIFRE], [EMAIL], [DOMAIN_USERNAME], [FM_ONAY], [GUNLUK_IZIN_ONAY], [SAATLIK_IZIN_ONAY], [HAREKET_EKLEME_ONAY], [TAKSI_UCRETI_ONAY], [VARDIYA_ONAY], [HAFTA_TATILI_ONAY], [DIL], [FONT], [YMK_MODUL_DURUMU], [FM_GRUP], [IZN_GRUP], [POST_USER_MESAI], [POST_USER_GUNIZIN], [POST_USER_SAATIZIN], [POST_USER_HAREKET], [POST_USER_POSTA], [POST_USER_VARDIYA], [DOKUMAN_ONAY]) VALUES (1, N'ADMIN', N'ADMIN', NULL, N'ADMIN', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

