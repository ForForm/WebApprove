BEGIN TRY 
EXEC(N'ALTER TABLE PERSONEL_AMIR ADD DOKUMAN_ONAY bit DEFAULT null')
EXEC(N'update PERSONEL_AMIR set DOKUMAN_ONAY=0')
END TRY BEGIN CATCH END CATCH

BEGIN TRY 
EXEC(N'ALTER TABLE ONY_MESAI ADD ACIKLAMA2 varchar(100) DEFAULT null')
END TRY BEGIN CATCH END CATCH


BEGIN TRY 
EXEC(N'ALTER TABLE PERSONEL_AMIR ADD ROTASYON_ONAY bit DEFAULT null')
EXEC(N'update PERSONEL_AMIR set ROTASYON_ONAY=0')
END TRY BEGIN CATCH END CATCH

BEGIN TRY 
EXEC(N'ALTER TABLE PERSONEL_AMIR ADD MAIL_CC varchar(200)')
END TRY BEGIN CATCH END CATCH

BEGIN TRY 
EXEC(N'ALTER TABLE BCS_PARAMETERS ADD LimitDash bit null') 
EXEC(N'update BCS_PARAMETERS set LimitDash=0')
END TRY BEGIN CATCH END CATCH
BEGIN TRY 
EXEC(N'ALTER TABLE BCS_PARAMETERS ADD ReportDash bit null') 
EXEC(N'ALTER TABLE BCS_PARAMETERS ADD ReportDash bit null') 
EXEC(N'update BCS_PARAMETERS set ReportDash=0')
END TRY BEGIN CATCH END CATCH
BEGIN TRY 
EXEC(N'ALTER TABLE BCS_PARAMETERS ADD IsDocument bit null') 
EXEC(N'update BCS_PARAMETERS set IsDocument=0') 
END TRY 
BEGIN CATCH 
END CATCH

BEGIN TRY 
EXEC(N'ALTER TABLE BCS_PARAMETERS ADD SendMailForm bit')
END TRY BEGIN CATCH END CATCH

BEGIN TRY 
EXEC(N'ALTER TABLE BCS_PARAMETERS ADD SendMailFormTxt varchar(200)')
END TRY BEGIN CATCH END CATCH
	
BEGIN TRY 
EXEC(N'ALTER TABLE BCS_PARAMETERS ADD ShiftControl bit null,ShiftHour int,ShiftPartHour int,ShiftPartHourTasks varchar(200)') 
EXEC(N'update BCS_PARAMETERS set ShiftControl=0,ShiftHour=0, ShiftPartHour=0, ShiftPartHourTasks='''' ') 
END TRY 
BEGIN CATCH 
END CATCH 

BEGIN TRY 
EXEC(N'ALTER TABLE PERSONEL_AMIR ADD GUNCELLEME_ONAY bit DEFAULT null')
EXEC(N'update PERSONEL_AMIR set GUNCELLEME_ONAY=0')
END TRY BEGIN CATCH END CATCH

BEGIN TRY 
EXEC(N'ALTER TABLE CALISMA ADD WEB_ONAY bit DEFAULT null')
EXEC(N'update CALISMA set WEB_ONAY=1')
END TRY BEGIN CATCH END CATCH

BEGIN TRY 
EXEC(N'ALTER TABLE BCS_ONY_MAIL_LOG ADD MailCC nvarchar(50)')
END TRY BEGIN CATCH END CATCH

BEGIN TRY 
EXEC(N'ALTER TABLE BCS_PARAMETERS ADD ShiftAuth bit null,ShiftAuthWeek int') 
EXEC(N'update BCS_PARAMETERS set ShiftAuth=0,ShiftAuthWeek=0') 
END TRY 
BEGIN CATCH 
END CATCH 

BEGIN TRY	DROP PROC	[dbo].[BCS_TRIGGER_SELECT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_TRIGGER_UPDATE] 	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_DOCUMENT_DELETE]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_DOCUMENT_INSERT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_DOCUMENT_SELECT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_DOCUMENT_SELECT_USER]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_DOCUMENT_TYPES]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_DOC_AUTH]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_DASHREPORT_GET]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_LIMIT_CONTROL] 	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_PERSONEL_GET_LIMITS]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_PERSONEL_GET_VRD_NEW]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_ROTASYON_INSERT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_ROTASYON_TRIGGER]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_GET_PER_UPDATE_TYPES]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_PERGUNCELLEME_INSERT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_REASON_SELECT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_APPROVE_AUTH_NEW]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_IZIN_REPORT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[WR_GIZ_OTE]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_MESAI_INSERT]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_PERSONEL_AMIR_GET]	END TRY	BEGIN CATCH	END CATCH
BEGIN TRY	DROP PROC	[dbo].[BCS_MAIL_INSERT]	END TRY	BEGIN CATCH	END CATCH


GO

IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'ONY_PERGUNCELLEME'))
BEGIN

 

CREATE TABLE [dbo].[ONY_PERGUNCELLEME](
	[IDNO] [int] IDENTITY(1,1) NOT NULL,
	[SRKODU] [int] NOT NULL,
	[PRSICIL] [varchar](15) NOT NULL,
	[NEDEN] [varchar](10) NOT NULL,
	[BASTARIH] [datetime] NOT NULL,
	[TIP] [varchar](15) NOT NULL,
	[KODU] [varchar](50) NOT NULL,
	[ACIKLAMA] [varchar](100) NULL,
	[ACIKLAMA2] [varchar](100) NULL,
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
	[RET] [int] NULL,
	[CREATEUSER] [varchar](100) NULL,
	[RET_ACIK] [varchar](300) NULL,
 CONSTRAINT [PK_ONY_PERGUNCELLEME] PRIMARY KEY CLUSTERED 
(
	[IDNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
 
END


IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'ONY_DOCUMENT_TYPES'))
BEGIN

/****** Object:  Table [dbo].[ONY_ROTASYON]    Script Date: 11.01.2022 16:28:59 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[ONY_DOCUMENT_TYPES](
	[IDNO] [int] IDENTITY(1,1) NOT NULL,
	[SRKODU] [int] NULL,
	[KODU] [nvarchar](50) NULL,
	[ADI] [nvarchar](100) NULL
	
 CONSTRAINT [PK_ONY_DOCUMENT_TYPES] PRIMARY KEY CLUSTERED 
(
	[IDNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

END
 
IF ( NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'ONY_ROTASYON'))
BEGIN

/****** Object:  Table [dbo].[ONY_ROTASYON]    Script Date: 11.01.2022 16:28:59 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[ONY_ROTASYON](
	[IDNO] [int] IDENTITY(1,1) NOT NULL,
	[SRKODU] [int] NULL,
	[PRSICIL] [nvarchar](15) NULL,
	[AMIRORJ] [nvarchar](15) NULL,
	[AMIRROTA] [nvarchar](15) NULL,
	[BASTARIH] datetime NULL,
	[BITTARIH] datetime NULL,
	[ACIKLAMA] [nvarchar](200) NULL,
	[ACTIVE] [bit] NULL,
	[TRAN_DATE] [datetime] NULL,
 CONSTRAINT [PK_ONY_ROTASYON] PRIMARY KEY CLUSTERED 
(
	[IDNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

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

GO

ALTER PROC [dbo].[BCS_PARAMETER_INSERT]  
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
@IsDocument bit= NULL,
@ShiftControl bit =NULL,
@ShiftHour int=null,
@ShiftPartHour int=null,
@ShiftPartHourTasks varchar(200)=null,
@ShiftAuth bit =NULL,
@ShiftAuthWeek int=null,
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
link5Url=@link5Url,
IsDocument=@IsDocument,
ShiftControl=@ShiftControl,
ShiftHour=@ShiftHour,
ShiftPartHour=@ShiftPartHour,
ShiftPartHourTasks=@ShiftPartHourTasks,
ShiftAuth=@ShiftAuth,
ShiftAuthWeek=@ShiftAuthWeek

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
      ,[link5Url] 
	  ,[IsDocument]
	  ,[ShiftControl]
      ,[ShiftHour]
      ,[ShiftPartHour]
      ,[ShiftPartHourTasks]
	  ,[ShiftAuth]
      ,[ShiftAuthWeek]
      
	   ) VALUES (
@firmName,@onayTuru,@limitDash,@reportDash,@prsBazli,@ret,@sendMail,@sendMailForm,@sendMailFormTxt,@gecmisPostUser,@mailONay,@smtp,@port,@domain,@smtpUser,@smtpPass,@ssl,@mail,@mailFrom,@mailSubject,@reportUrl, @reportUrlSecure,
@language, @transferDate, @fmTip,@fmServis,@fmYemek,@fmAcik,@fmNeden,@fmGecmisIslem,@fmGecmisIslemSure,@fmTemplate,@fmUserMailBody,@fmFormOnay,@fmUseForm,@giYemek,@giAcik,@giNeden,
@giGecmisIslem,@giGecmisIslemSure,@giFormOnay,@giUseForm,@giYillikIzin, @siYemek,@siAcik,@siNeden ,@siGecmisIslem,@siGecmisIslemSure,@siFormOnay,@siUseForm,@siSaat,
@hktUseForm,@hktFormOnay,@hktNeden,@hktAcik,@hktGecmisIslem,@hktGecmisIslemSure,@pstAcik,@pstGecmisIslem,@pstGecmisIslemSure,
@link1Name,@link1Url,@link2Name,@link2Url,@link3Name,@link3Url,@link4Name,@link4Url,@link5Name,@link5Url,
@IsDocument,@ShiftControl,@ShiftHour,@ShiftPartHour,@ShiftPartHourTasks,@ShiftAuth,@ShiftAuthWeek
) ;

--if EXISTS(select * from [dbo].[BCS_PARAMETERS] where ParameterCode='OverTimeItem')
--update [dbo].[BCS_PARAMETERS] set ParameterValue=@OverTimeItem where ParameterCode='OverTimeItem'
--else 
--INSERT INTO [dbo].[BCS_PARAMETERS] VALUES ('OverTimeItem',@OverTimeItem) ;



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
select d.IDNO, d.SRKODU,d.PRSICIL,
t.ADI TIPI, case when isnull(d.ACIKLAMA,'')='null' then '' else isnull(d.ACIKLAMA,'') end ACIKLAMA,
d.TARIH,d.DOSYA,d.DOSYA_YOLU,d.[STATUS],d.[USER],d.TRAN_DATE, p.ADI+' '+p.SOYADI ADI from ONY_DOCUMENT d (nolock) 
left join PERSONEL1 p (nolock) on d.PRSICIL=p.SICILNO 
left join [ONY_DOCUMENT_TYPES] t (nolock) on d.TIPI=t.KODU and t.SRKODU=1
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

select IDNO ID, KODU CODE, ADI [NAME] from [ONY_DOCUMENT_TYPES] (nolock)
GO


/****** Object:  StoredProcedure [dbo].[BCS_DOC_AUTH]    Script Date: 7.03.2022 21:49:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE   PROC  [dbo].[BCS_DOC_AUTH]
(
@Username varchar(50)=null
)
AS 
 
select isnull(DOKUMAN_ONAY,0) YETKI from PERSONEL_AMIR nolock where AMIR_KODU=@Username

GO
/****** Object:  StoredProcedure [dbo].[BCS_DASHREPORT_GET]    Script Date: 30.12.2021 13:47:10 ******/
 
CREATE PROC  [dbo].[BCS_DASHREPORT_GET]
(
@Username varchar(50)=null
)
AS 
select * from BCS_DASHREPORT (nolock)

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

  
CREATE  PROC  [dbo].[BCS_PERSONEL_GET_VRD_NEW]
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
left join POSTA p1 (nolock) on p.POSTA=p1.KODU and p1.SRKODU=1
left join (select PRSICIL, max(YIL) YIL from dbo.YILIZHESAP1 (nolock) group by PRSICIL) y on y.PRSICIL=p.SICILNO
left join BCS_FAZLA_MESAI f (nolock) on p.SICILNO=f.Sicil
left join (select YIL, PRSICIL,sum(TOPLAMKALAN) TOPLAMKALAN from dbo.YILIZHESAP1 (nolock) group by YIL, PRSICIL) y2  on y2.PRSICIL=p.SICILNO and y2.YIL=y.YIL 
left join DEPARTMAN (nolock) d on p.DEPART=d.KODU and d.SRKODU=1
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
union all

select p.IDNO ID, p.SICILNO, p.ADI+' '+p.SOYADI ADI,RTRIM(d.ADI) DEPARTADI,RTRIM(d.KODU)+' '+d.ADI DEPART, 100 [TOTAL_PERIOD],0 APPROVE,  
isnull(AMIR1,isnull(AMIR2,isnull(AMIR3,isnull(AMIR4,isnull(AMIR5,''))))) AMIR, 
TOPLAMKALAN, 0 YILLIK_FAZLA_MESAI, p1.ADI POSTA
from dbo.PERSONEL1 p (nolock) 
left join POSTA p1 (nolock) on p.POSTA=p1.KODU  and p1.SRKODU=1
left join (select PRSICIL, max(YIL) YIL from dbo.YILIZHESAP1 (nolock) group by PRSICIL) y on y.PRSICIL=p.SICILNO
left join BCS_FAZLA_MESAI f (nolock) on p.SICILNO=f.Sicil
left join (select YIL, PRSICIL,sum(TOPLAMKALAN) TOPLAMKALAN from dbo.YILIZHESAP1 (nolock) group by YIL, PRSICIL) y2  on y2.PRSICIL=p.SICILNO and y2.YIL=y.YIL 
left join DEPARTMAN (nolock) d on p.DEPART=d.KODU and d.SRKODU=1
left join (select PRSICIL,ISNULL(SUM((DATEPART(HOUR, SURE) * 60) + DATEPART(MINUTE, SURE)), 0) SURE from  PUANTAJ1 (nolock) 
where CLKODU IN(SELECT KODU FROM CALISMA WHERE TIPI = 'MESAİ') AND ONAY = 'EVET'  and convert(varchar,TARIH,112)>(select TransferDate from BCS_PARAMETERS nolock)
and TARIH >= DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)  AND TARIH <= GETDATE() 
group by PRSICIL) ptj on ptj.PRSICIL=p.SICILNO 
where 1=1 
and p.SICILNO=@Username 
and (ISCIKT is  null or ISCIKT>GETDATE()) 
) as t order by DEPARTADI

END

GO



/****** Object:  StoredProcedure [dbo].[BCS_DOCUMENT_INSERT]    Script Date: 30.12.2021 13:50:06 ******/
CREATE  PROC  [dbo].[BCS_ROTASYON_INSERT]
(
@IDNO int=null,
@SIRKET int=null,
@PRSICIL nvarchar(15)=null,
@AMIRORJ nvarchar(15)=null,
@AMIRROTA nvarchar(15)=null,
@BASTARIH datetime=null,
@BITTARIH datetime=null,
@ACIKLAMA nvarchar(200)=null,
@ReturnCode varchar(20) output)
AS

SET @ReturnCode='200';
BEGIN TRY
IF NOT EXISTS (select * from ONY_ROTASYON (nolock) where PRSICIL=@PRSICIL and AMIRROTA=@AMIRROTA and AMIRORJ=@AMIRORJ 
and BASTARIH<=@BASTARIH and BITTARIH>=@BITTARIH ) 
insert into ONY_ROTASYON (SRKODU,PRSICIL,AMIRORJ, AMIRROTA, BASTARIH,BITTARIH,ACIKLAMA,ACTIVE,TRAN_DATE) 
VALUES (@SIRKET,@PRSICIL,@AMIRORJ,@AMIRROTA,@BASTARIH,@BITTARIH,@ACIKLAMA,0,GETDATE())
END TRY 
BEGIN CATCH 
SET @ReturnCode='500'
END CATCH
GO

/****** Object:  StoredProcedure [dbo].[BCS_ROTASYON_TRIGGER]    Script Date: 30.12.2021 13:50:06 ******/
CREATE PROC  [dbo].[BCS_ROTASYON_TRIGGER]
AS

IF EXISTS (select * from ONY_ROTASYON (nolock) where  BASTARIH<=GETDATE() and BITTARIH>=GETDATE() and ACTIVE=0)
BEGIN
update ONY_ROTASYON set ACTIVE=1 where BASTARIH<=GETDATE() and BITTARIH>=GETDATE() and ACTIVE=0;


update PERSONEL1 set AMIR1=r.AMIRROTA from 
PERSONEL1 p  INNER JOIN ONY_ROTASYON r on p.SICILNO=r.PRSICIL and r.SRKODU=1
where r.BASTARIH<=GETDATE() and r.BITTARIH>=GETDATE() and r.ACTIVE=1

END

IF EXISTS (select * from ONY_ROTASYON (nolock) where  BASTARIH<=GETDATE() and BITTARIH<=GETDATE() and ACTIVE=1)

BEGIN
update ONY_ROTASYON set ACTIVE=0 where BASTARIH<=GETDATE() and BITTARIH<=GETDATE() and ACTIVE=1;

update PERSONEL1 set AMIR1=r.AMIRORJ from 
PERSONEL1 p  INNER JOIN ONY_ROTASYON r on p.SICILNO=r.PRSICIL and r.SRKODU=1
where r.BASTARIH<=GETDATE() and r.BITTARIH<=GETDATE() and r.ACTIVE=0

END

GO


CREATE PROC  [dbo].[BCS_GET_PER_UPDATE_TYPES]
(
@Company nvarchar(10)=null,
@Type nvarchar(50)=null)
AS

IF (@Type='01')
select @Type [Type],* from PERTIPI (nolock) where 1=1 and SRKODU=@Company
ELSE IF (@Type='02') 
select @Type [Type],* from DEPARTMAN (nolock) where 1=1 and SRKODU=@Company
ELSE IF (@Type='03')
select @Type [Type],* from MASRAF_MERKEZI (nolock) where 1=1 and SRKODU=@Company
ELSE IF (@Type='04')
select @Type [Type],* from KADRO (nolock) where 1=1 and SRKODU=@Company
ELSE IF (@Type='05')
select @Type [Type],* from MESLEK (nolock) where 1=1 and SRKODU=@Company
ELSE IF (@Type='06')
select @Type [Type],* from GOREV (nolock) where 1=1 and SRKODU=@Company
ELSE IF (@Type='07')
select @Type [Type],* from GRUP (nolock) where 1=1 and SRKODU=@Company
ELSE IF (@Type='08')
select @Type [Type],* from SUBE (nolock) where 1=1 and SRKODU=@Company
ELSE IF (@Type='09')
select @Type [Type],* from BIRIM (nolock) where 1=1 and SRKODU=@Company
ELSE IF (@Type='10')
select @Type [Type],* from SERVIS (nolock) where 1=1 and SRKODU=@Company
ELSE IF (@Type='11')
select @Type [Type],* from DURAK (nolock) where 1=1 and SRKODU=@Company

GO


CREATE PROC  [dbo].[BCS_PERGUNCELLEME_INSERT]
		   @TYPE varchar(50)=null,
		   @SRKODU int,
           @PRSICIL varchar(15),
           @NEDEN  varchar(10),
           @BASTARIH datetime=null,
		   @TIP varchar(15)='',
		   @KODU varchar(50)='', 
		   @ACIKLAMA varchar(100)='',
		   @ACIKLAMA2 varchar(100)='',
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
SET @BASTARIH=GETDATE()
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

SET @POST=1

INSERT INTO [dbo].[ONY_PERGUNCELLEME]
           ([SRKODU]
		   ,[PRSICIL]
		   ,[NEDEN]
		   ,[BASTARIH]
		   ,[TIP]
		   ,[KODU]		   
		   ,[ACIKLAMA]
		   ,[ACIKLAMA2]
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
           @TIP ,
           @KODU, 
           @ACIKLAMA,
		   @ACIKLAMA2,
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

		   IF (@TIP='01')
		   BEGIN
		   UPDATE PERSONEL1 set PERTIP=@KODU, PERTIPTAR=@BASTARIH where SICILNO=@PRSICIL
		   END
		   IF (@TIP='02')
		   BEGIN
		   UPDATE PERSONEL1 set DEPART=@KODU, DEPTAR=@BASTARIH where SICILNO=@PRSICIL
		   END
		   IF (@TIP='03')
		   BEGIN
		   UPDATE PERSONEL1 set MASRAF=@KODU, MASRAFTAR=@BASTARIH where SICILNO=@PRSICIL
		   END
		   IF (@TIP='04')
		   BEGIN
		   UPDATE PERSONEL1 set KADRO=@KODU, KADROTAR=@BASTARIH where SICILNO=@PRSICIL
		   END
		   IF (@TIP='05')
		   BEGIN
		   UPDATE PERSONEL1 set MESLEK=@KODU, MESLEKTAR=@BASTARIH where SICILNO=@PRSICIL
		   END
		   IF (@TIP='06')
		   BEGIN
		   UPDATE PERSONEL1 set GOREV=@KODU,GOREVTAR=@BASTARIH where SICILNO=@PRSICIL
		   END
		   IF (@TIP='07')
		   BEGIN
		   UPDATE PERSONEL1 set GRUP_KODU=@KODU, GRUP_TARIHI=@BASTARIH where SICILNO=@PRSICIL
		   END
		   IF (@TIP='08')
		   BEGIN
		   UPDATE PERSONEL1 set SUBE_KODU=@KODU, SUBE_TARIHI=@BASTARIH where SICILNO=@PRSICIL
		   END
		   IF (@TIP='09')
		   BEGIN
		   UPDATE PERSONEL1 set BIRIM_KODU=@KODU, BIRIM_TARIHI=@BASTARIH where SICILNO=@PRSICIL
		   END
		   IF (@TIP='10')
		   BEGIN
		   UPDATE PERSONEL1 set SERVIS=@KODU, SERVISTAR=@BASTARIH where SICILNO=@PRSICIL
		   END
		   IF (@TIP='11')
		   BEGIN
		   UPDATE PERSONEL1 set DURAK=@KODU, DURAK_TARIHI=@BASTARIH where SICILNO=@PRSICIL
		   END


			  
			DECLARE @BILGI varchar(50)= case 
			when @TIP='01' then 'PERTİPİ'
			when @TIP='02' then 'DEPARTMAN'
			when @TIP='03' then 'MASRAF'
			when @TIP='04' then 'KADRO' 
			when @TIP='05' then 'MESLEK'
			when @TIP='06' then 'GÖREV' 
			when @TIP='07' then 'GRUP'
			when @TIP='08' then 'ŞUBE'   ---?
			when @TIP='09' then 'BİRİM'  ---?
			when @TIP='10' then 'SERVİS' 
			when @TIP='11' then 'DURAK?' ---? 
			else 'XXX' end
			
			---if NOT EXISTS (select * from PERARSIV1 where PRSICIL=@PRSICIL and @BASTARIH>TARIH and BILGI=@BILGI)
			DELETE FROM PERARSIV1 where PRSICIL=@PRSICIL and BILGI=@BILGI and TARIH>=@BASTARIH
			DECLARE @@ID int=1;
			if EXISTS(select * from PERARSIV1) select @@ID=max(IDNO)+1 from PERARSIV1
			INSERT INTO PERARSIV1 VALUES (@@ID,@PRSICIL,@BILGI,convert(varchar,@BASTARIH,112),@KODU,null,null)

		 --   SET @IDNO=scope_identity();
		 
		 	

		 --	SET @SQL=' update m set [POST]=1  from '+@Table+' m 
			--inner join dbo.PERSONEL1 p on m.PRSICIL=p.SICILNO 
			--inner join dbo.PERSONEL_AMIR a on a.AMIR_KODU='''+convert(varchar,@AMIR_KODU)+''' 
			--where m.IDNO='+convert(varchar,@IDNO)+'  and  
			--(
			--((case when p.AMIR1 is null then 0 else 1 end+
			--case when p.AMIR2 is null then 0 else 1 end+
			--case when p.AMIR3 is null then 0 else 1 end+
			--case when p.AMIR4 is null then 0 else 1 end+
			--case when p.AMIR5 is null then 0 else 1 end) =
			--(case when m.ONAY1 is null then 0 else 1 end+ 
			--case when m.ONAY2 is null then 0 else 1 end+
			--case when m.ONAY3 is null then 0 else 1 end+ 
			--case when m.ONAY4 is null then 0 else 1 end+ 
			--case when m.ONAY5 is null then 0 else 1 end) ) or 
			--a.POST_USER_GUNIZIN=1)'; 
			

			--EXEC (@SQL);

			--INSERT INTO ONY_LOG_GUNIZIN 
			--SELECT IDNO,SRKODU,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,ISBASI,SEBEP,SEBEP2,ACIKLAMA,CREATEUSER,(case when @AMIR=1 then 1 else 0 end),1,GETDATE() from ONY_GUNIZIN where IDNO=@IDNO

			--IF EXISTS( select * from ONY_GUNIZIN where IDNO=@IDNO and POST=1)
			--BEGIN
			--SET @ISPOST=1;
			--DECLARE @G_IDNO int;
			--DECLARE @G_PRSICIL varchar(50);
			--DECLARE @G_NEDEN varchar(50);
			--DECLARE @G_BASTARIH datetime;
			--DECLARE @G_GUN float;
			--DECLARE @G_BITTARIH datetime;
			--DECLARE @G_SEBEP varchar(50);
			--DECLARE @G_ISBASI datetime;
			
			--select @G_PRSICIL=PRSICIL,
			--@G_NEDEN=NEDEN,
			--@G_BASTARIH=BASTARIH,
			--@G_GUN=GUN,
			--@G_BITTARIH=BITTARIH,
			--@G_SEBEP=SEBEP,
			--@G_ISBASI=ISBASI from ONY_GUNIZIN where IDNO=@IDNO and POST=1

			--IF NOT EXISTS(select * from GUNIZIN1 where PRSICIL=@G_PRSICIL 
			--and ( (BASTARIH>=@G_BASTARIH and BASTARIH<=@G_BASTARIH)
			--and  (BITTARIH>=@G_BITTARIH and BITTARIH<=@G_BITTARIH))
			--)
			--BEGIN
			
			--select @G_IDNO=MAX(IDNO)+1 from GUNIZIN1;
			--SET @G_IDNO=isnull(@G_IDNO,1);
			--INSERT INTO GUNIZIN1 ([IDNO],[LINKID],[PRSICIL],[NEDEN],[BASTARIH],[GUN],[BITTARIH],[SEBEP],[TRNID],[ISBASI])
			--select @G_IDNO,0,PRSICIL,NEDEN,BASTARIH,GUN,BITTARIH,SEBEP,null,ISBASI from ONY_GUNIZIN where IDNO=@IDNO and POST=1

			--END
			--ELSE
			--UPDATE GUNIZIN1 set NEDEN=@G_NEDEN,BASTARIH=@G_BASTARIH,GUN=@G_GUN,BITTARIH=@G_BITTARIH,SEBEP=@G_SEBEP,ISBASI=@G_ISBASI where 
			--PRSICIL=@G_PRSICIL 
			--and ( (BASTARIH>=@G_BASTARIH and BASTARIH<=@G_BASTARIH)
			--and  (BITTARIH>=@G_BITTARIH and BITTARIH<=@G_BITTARIH))

			--END


			--SET @SQL='select m.IDNO, p.SICILNO PERSONEL,
		 --   P.ADI+'' ''+P.SOYADI PERSONELADI, 
			--isnull((case when m.ONAY1KL is null then p.AMIR1 
			--when m.ONAY2KL is null then p.AMIR2 
			--when m.ONAY3KL is null then p.AMIR3 
			--when m.ONAY4KL is null then p.AMIR4 
			--when m.ONAY5KL is null then p.AMIR5 end),'''') AMIR, 
			--'''' AMIRADI, 
			--isnull(a.EMAIL,'''') EMAIL, 
			--(select top 1  isnull(EMAIL,'''') from dbo.ADRES1 where PRSICIL=p.SICILNO and isnull(EMAIL,'''')<>'''') PERSONELMAIL,
			--p.AMIR1 , (select top 1 EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR1) AMIR1_EMAIL ,
			--p.AMIR2 , (select top 1 EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR2) AMIR2_EMAIL ,
			--p.AMIR3 , (select top 1 EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR3) AMIR3_EMAIL ,
			--p.AMIR4 , (select top 1 EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR4) AMIR4_EMAIL ,
			--p.AMIR5, (select top 1 EMAIL from dbo.PERSONEL_AMIR nolock where AMIR_KODU=p.AMIR5) AMIR5_EMAIL, 
		 --   m.NEDEN,
			--isnull(c.ADI,'''') NEDEN_ACIK,
			--m.SEBEP,
			--m.SEBEP2,
			--m.ACIKLAMA,
			--BASTARIH,
			--null BASSAAT,
			--BITTARIH,
			--null  BITSAAT,	
			--GETDATE() ISBASI,
			--GUN,
			--null SAAT,
			--m.RET ,
			--m.RET_ACIK ,
			--POST [STATE],
			--(select top 1 sum(TOPLAMKALAN)/count(1) from [dbo].[YILIZHESAP1] where YIL in ( select MAX(YIL) from [dbo].[YILIZHESAP1] where PRSICIL='''+convert(varchar,@PRSICIL)+''' ) 
			--and PRSICIL='''+convert(varchar,@PRSICIL)+''' ) IZINBAKIYE
			--from '+@Table+' m (nolock) 
			--left join dbo.PERSONEL1 (nolock) p on m.PRSICIL=p.SICILNO
			--left join dbo.PERSONEL_AMIR (nolock) a on 
			--(case when m.ONAY1KL is null then p.AMIR1 
			-- when m.ONAY2KL is null then p.AMIR2 
			--when m.ONAY3KL is null then p.AMIR3 
			--when m.ONAY4KL is null then p.AMIR4 
			--when m.ONAY5KL is null then p.AMIR5 end)=AMIR_KODU
			--left join dbo.PERSONEL1 (nolock) p2 on AMIR_KODU=p2.SICILNO
			--left join dbo.CALISMA (nolock) c on convert(varchar,c.KODU)=convert(varchar,m.NEDEN) and c.TIPI=''İZİN''  
			--where 
			-- (m.ONAY1KL is null or m.ONAY2KL is null or m.ONAY3KL is null or m.ONAY4KL is null or m.ONAY5KL is null) 
			--  and m.IDNO='+convert(varchar,@IDNO)+''; 

			--EXEC (@SQL);
			   
			IF (@ISPOST=1) SET @ReturnCode='201'
			ELSE
			SET @ReturnCode='200'
END TRY  
BEGIN CATCH

SET @ReturnCode='500'
END CATCH 			  
			  
END



GO


CREATE  PROC  [dbo].[BCS_REASON_SELECT]
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
else if (@type=9)
BEGIN
select '01' KODU,'PERTIP' TURU 
union all
select '02' KODU,'DEPART' TURU 
union all
select '03' KODU,'MASRAF' TURU 
union all
select '04' KODU,'KADRO' TURU 
union all
select '05' KODU,'MESLEK' TURU 
union all
select '06' KODU,'GOREV' TURU 
union all
select '07' KODU,'GRUP' TURU 
union all
select '08' KODU,'SUBE' TURU 
union all
select '09' KODU,'BIRIM' TURU 
union all
select '10' KODU,'SERVIS' TURU 
union all
select '11' KODU,'DURAK' TURU 

END
else
select RTRIM(KODU) KODU,ADI TURU from dbo.CALISMA nolock where TIPI='İZİN'

GO

CREATE  PROC [dbo].[BCS_APPROVE_AUTH_NEW]
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
@ROTASYON smallint = 0,
@GUNCELLEME smallint = 0,
@SQL NVARCHAR(4000)

IF @Type='P' 
select 
@MESAI=max(convert(smallint,isnull(FM_ONAY,0))),
@GUNLUK= max(convert(int,isnull(GUNLUK_IZIN_ONAY,0))) ,
@SAATLIK=max(convert(int,isnull(SAATLIK_IZIN_ONAY,0))) ,
@VARDIYA= max(convert(int,isnull(VARDIYA_ONAY,0))) ,
@HAREKET= max(convert(int,isnull(HAREKET_EKLEME_ONAY,0))) ,
@POSTA= max(convert(int,isnull(HAFTA_TATILI_ONAY,0))),
@ROTASYON= max(convert(int,isnull(ROTASYON_ONAY,0))),
@GUNCELLEME= max(convert(int,isnull(GUNCELLEME_ONAY,0)))
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
@POSTA=HAFTA_TATILI_ONAY,
@ROTASYON=ROTASYON_ONAY,
@GUNCELLEME=GUNCELLEME_ONAY
from  dbo.PERSONEL_AMIR (nolock) where AMIR_KODU in (@Username)
select @MESAI MESAI, @GUNLUK GUNLUK,@SAATLIK SAATLIK,@VARDIYA VARDIYA,@HAREKET HAREKET,@POSTA POSTA, @ROTASYON ROTASYON, 
@GUNCELLEME GUNCELLEME,
(select case when count(1)>0 then 1 else 0 end from PERSONEL1 where AMIR1=@Username) AMIR1

GO

/****** Object:  StoredProcedure [dbo].[BCS_IZIN_REPORT]    Script Date: 1.03.2022 16:30:37 ******/
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

DECLARE @PER_AYSLMT INT,  
@PER_YILLMT INT,  
@PER_TTLLMT INT,  
@AYSLMT INT,  
@YILLMT INT,  
@TTLLMT INT,  
@PERTIP VARCHAR(20),
@PUANTAJ VARCHAR(20),
@CMT_OTE VARCHAR(5),
@HFT_OTE VARCHAR(5),  
@GNT_OTE VARCHAR(5),
@HATASEBEP VARCHAR(4000),
@DURUM VARCHAR(1000),
@GUN_INT INT ,
@GIZ_AYSLMT INT,
@GIZ_YILLMT INT,  
@GIZ_TTLLMT INT,
@SONRAKI_TURU VARCHAR(20),
@KNT_SAYI INT,
@IZIN_VARMI INT,
@ISGIRT DATETIME;  

SET @IZIN_VARMI=0; 
SET @GUN_INT=ROUND(@GUN,0) 
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


SELECT @ISGIRT=ISGIRT FROM PERSONEL1 WHERE SICILNO=@SICILNO;  
  	
IF @ISGIRT>@BASTARIH  
  	BEGIN  
  		SET @HATASEBEP='ISBASI TARIHINDEN ONCE IZIN GIRILEMEZ';  
  			SET @DURUM='HATA'  
  		GOTO LABEL_HATAVER;  
  	END;  



----Limit hesaplama....
--SELECT @AYSLMT=AYSLMT,@YILLMT=YILLMT,@TTLLMT=TTLLMT FROM ##LIMIT;  
--SELECT @PER_AYSLMT=ISNULL(LIMIT_SURE,0) FROM dbo.IZINLIMIT WHERE SRKODU=@SIRKET AND CLKODU=@NEDEN AND SEC='AYLIK';  
--SELECT @PER_YILLMT=ISNULL(LIMIT_SURE,0) FROM dbo.IZINLIMIT WHERE SRKODU=@SIRKET AND CLKODU=@NEDEN AND SEC='YILLIK';  
--SELECT @PER_TTLLMT=ISNULL(LIMIT_SURE,0) FROM dbo.IZINLIMIT WHERE SRKODU=@SIRKET AND CLKODU=@NEDEN AND SEC='TOPLAM';  
  	
--IF @AYSLMT>=@PER_AYSLMT  
--  	SET @GIZ_AYSLMT=@AYSLMT-@PER_AYSLMT;  
--IF @YILLMT>=@PER_YILLMT  
--  	SET @GIZ_YILLMT=@YILLMT-@PER_YILLMT;  
--IF @TTLLMT>=@PER_TTLLMT  
--  	SET @GIZ_TTLLMT=@TTLLMT-@PER_YILLMT;  

SELECT @PERTIP= PERTIPI, @PUANTAJ= PUANTAJ from PERTIPI where PERTIPI in (select PERTIP from PERSONEL1 nolock where SICILNO=@SICILNO )
SELECT @GNT_OTE=ISNULL(GTATIL,'HAYIR'),@HFT_OTE=ISNULL(HTATIL,'HAYIR'),@CMT_OTE=ISNULL(CMT,'HAYIR') FROM OTELEME WHERE SRKODU=@SIRKET AND CLKODU=@NEDEN  AND PERTIP=@PERTIP
IF @CMT_OTE IS NULL  OR @CMT_OTE<>'EVET' SET @CMT_OTE='HAYIR';  
IF @HFT_OTE IS NULL OR  @HFT_OTE<>'EVET' SET @HFT_OTE='HAYIR';  
IF @GNT_OTE IS NULL OR @GNT_OTE<>'EVET'  SET @GNT_OTE='HAYIR';  

IF @GUN IS NOT NULL AND @GUN>0
BEGIN

	DECLARE @TARIH DATETIME,
	@TURU VARCHAR(20);	
	
	DECLARE @X FLOAT
	SET @X=1
	
	IF @GUN=0.5 SET @BITTARIH=@BASTARIH
	ELSE SET @BITTARIH=DATEADD(DAY,-1,@BASTARIH)
	SET @TARIH=@BASTARIH
	WHILE @X<=@GUN
	BEGIN
		IF (@PUANTAJ='POSTA')
		SELECT @TURU=TURU FROM VARDIYA WHERE SRKODU=1 AND KODU=(SELECT VRKODU FROM TAKVIM WHERE SRKODU=1 AND TARIH=@TARIH
		AND PSKODU=(SELECT TOP 1 DEGER FROM PERARSIV1 WHERE PRSICIL=@SICILNO AND BILGI=@PUANTAJ AND TARIH<=@TARIH ORDER BY TARIH DESC))
		ELSE
		SELECT @TURU=TURU FROM VARDIYA WHERE SRKODU=1 AND KODU=(SELECT TOP 1 VRKODU FROM PERVARDIYA1 WHERE PRSICIL=@SICILNO AND TARIH<=@TARIH ORDER BY TARIH DESC)
	
		IF @TURU IS NULL
		BEGIN
			SET @HATASEBEP='PERSONELIN ARSIVI YADA VARDIYA BILGISI YOK';  
  			GOTO LABEL_HATAVER;  
		END
		
		IF (@PUANTAJ<>'POSTA')
		BEGIN
			IF (@CMT_OTE='EVET' AND @TURU='Cumartesi') OR (@HFT_OTE='EVET' AND @TURU='Hafta Tatili') OR (@GNT_OTE='EVET' AND @TURU='Resmi/Dini Tatil') 
			BEGIN
			SET @SONRAKI_TURU=NULL;
			SELECT @SONRAKI_TURU=TURU FROM VARDIYA WHERE SRKODU=1 AND KODU=(SELECT TOP 1 VRKODU FROM PERVARDIYA1 WHERE PRSICIL=@SICILNO AND TARIH>@TARIH ORDER BY TARIH DESC)

				IF @SONRAKI_TURU IS NULL
				BEGIN
					SET @HATASEBEP='PERSONELIN HAFTA İÇİ VARDİYASI TANIMLI DEĞİL. ÖTELEME YAPILAMIYOR';  
  					GOTO LABEL_HATAVER;  
				END
			END
		END

		SET @TURU=LTRIM(RTRIM(@TURU))

		IF (@TURU='Hafta İçi') OR (@TURU='Serbest Vardiya') OR (@TURU='Cumartesi' AND @CMT_OTE='HAYIR') OR (@TURU='Hafta Tatili' AND @HFT_OTE='HAYIR') OR (@TURU='Resmi/Dini Tatil' AND @GNT_OTE='HAYIR')
					SET @X=@X+1
				ELSE IF (@TURU='Arefe' AND @GNT_OTE='HAYIR')
					SET @X=@X+0.5

		SET @BITTARIH=DATEADD(DAY,1,@BITTARIH)
	    SET @TARIH=DATEADD(DAY,1,@TARIH)	 
	END

	SET @ISBASI=DATEADD(DAY,1,@BITTARIH)
END 
ELSE
BEGIN

	SET @GUN=0
	SET @TARIH=@BASTARIH
	WHILE @TARIH<=@BITTARIH
	BEGIN
		IF (@PUANTAJ='POSTA') 
			SELECT @TURU=TURU FROM VARDIYA WHERE SRKODU=1 AND KODU=(SELECT VRKODU FROM TAKVIM WHERE SRKODU=1 AND TARIH=@TARIH
			AND PSKODU=(SELECT TOP 1 DEGER FROM PERARSIV1 WHERE PRSICIL=@SICILNO AND BILGI=@PUANTAJ AND TARIH<=@TARIH ORDER BY TARIH DESC))
		ELSE
			SELECT @TURU=TURU FROM VARDIYA WHERE SRKODU=1 AND KODU=(SELECT TOP 1 VRKODU FROM PERVARDIYA1 WHERE PRSICIL=@SICILNO AND TARIH<=@TARIH ORDER BY TARIH DESC)

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

		SET @TARIH=DATEADD(DAY,1,@TARIH);

		IF (@PUANTAJ<>'POSTA') 
		BEGIN
			IF @GUN=0
			BEGIN
				SET @HATASEBEP='PERSONELIN HAFTA İÇİ VARDİYASI TANIMLI DEĞİL. ÖTELEME YAPILAMIYOR';  
  				GOTO LABEL_HATAVER;  
			END
		END


	END
END

SET @ISBASI=DATEADD(DAY,1,@BITTARIH)

SET @TURU=NULL		

IF (@PUANTAJ='POSTA')
	SELECT @TURU=TURU FROM VARDIYA WHERE SRKODU=@SIRKET AND KODU=(SELECT VRKODU FROM TAKVIM WHERE SRKODU=@SIRKET AND TARIH=@ISBASI 
	AND PSKODU=(SELECT TOP 1 DEGER FROM PERARSIV1 WHERE PRSICIL=@SICILNO AND BILGI=@PUANTAJ AND TARIH<=@ISBASI ORDER BY TARIH DESC))
ELSE
	SELECT @TURU=TURU FROM VARDIYA WHERE SRKODU=@SIRKET AND KODU=(SELECT TOP 1 VRKODU FROM PERVARDIYA1 WHERE PRSICIL=@SICILNO  AND TARIH<=@ISBASI ORDER BY TARIH DESC)

		IF @TURU IS NULL
		BEGIN
			SET @HATASEBEP='(İŞBAŞI TARİHİ KONTROL) PERSONELIN ARSIVI YADA VARDIYA BILGISI YOK';  
  			GOTO LABEL_HATAVER;  
		END	

SET @KNT_SAYI=0

WHILE ((@TURU='Cumartesi' OR @TURU='Hafta Tatili' OR  @TURU='Resmi/Dini Tatil') AND (@KNT_SAYI<=50))
BEGIN
SET @ISBASI=DATEADD(DAY,1,@ISBASI)
SET @KNT_SAYI=@KNT_SAYI+1
SET @TURU=NULL
	IF @PUANTAJ='POSTA'
	SELECT @TURU=TURU FROM VARDIYA WHERE SRKODU=@SIRKET AND KODU=(SELECT VRKODU FROM TAKVIM WHERE SRKODU=@SIRKET AND TARIH=@ISBASI 
	AND PSKODU=(SELECT TOP 1 DEGER FROM PERARSIV1 WHERE PRSICIL=@SICILNO AND BILGI=@PUANTAJ AND TARIH<=@ISBASI ORDER BY TARIH DESC))
	ELSE
	SELECT @TURU=TURU FROM VARDIYA WHERE SRKODU=@SIRKET AND KODU=(SELECT TOP 1 VRKODU FROM PERVARDIYA1 WHERE PRSICIL=@SICILNO AND TARIH<=@ISBASI ORDER BY TARIH DESC)
		
	IF @TURU IS NULL
	BEGIN
	SET @HATASEBEP='(İŞBAŞI TARİHİ KONTROL) PERSONELIN ARSIVI YADA VARDIYA BILGISI YOK';  
  	GOTO LABEL_HATAVER;  
	END

END

SELECT @IZIN_VARMI=count(1) FROM dbo.GUNIZIN1 G 
WHERE ((BASTARIH>=@BASTARIH AND BASTARIH<=@BASTARIH) OR (BITTARIH>=@BASTARIH AND BITTARIH<=@BASTARIH) OR (BASTARIH<=@BASTARIH AND BITTARIH>=@BITTARIH)) 
AND NEDEN=@NEDEN AND PRSICIL=@SICILNO

IF @IZIN_VARMI<>0  
BEGIN  
  	SET @HATASEBEP='GIRILEN TARIHTE KAYITLI IZIN VAR';  
  	SET @DURUM='HATA'  
  	GOTO LABEL_HATAVER;  
END
ELSE
BEGIN
  	SELECT @IZIN_VARMI=count(1) FROM ONY_GUNIZIN G WHERE PRSICIL=@SICILNO AND (POST IS NULL OR POST=0) AND (RET IS NULL OR RET=0) AND 
	((BASTARIH>=@BASTARIH AND BASTARIH<=@BASTARIH) OR (BITTARIH>=@BASTARIH AND BITTARIH<=@BASTARIH) OR (BASTARIH<=@BASTARIH AND BITTARIH>=@BITTARIH))

	IF @IZIN_VARMI>0  
  	BEGIN  
  		SET @HATASEBEP='GIRILEN TARIHTE ONAY BEKLEYEN IZIN VAR';  
  		SET @DURUM='HATA'  
  		GOTO LABEL_HATAVER;  
  	END
END  

	--IF @GIZ_AYSLMT>0  
 -- 	BEGIN  
 -- 		SET @HATASEBEP='AYLIK LIMIT ASILDI';  
 -- 			SET @DURUM='UYARI'  
 -- 		GOTO LABEL_HATAVER;  
 -- 	END;  
  	
	--IF @GIZ_YILLMT>0  
 -- 	BEGIN  
 -- 		SET @HATASEBEP='YILLIK LIMIT ASILDI';  
 -- 			SET @DURUM='UYARI'  
 -- 		GOTO LABEL_HATAVER;  
 -- 	END;  
  	
	--IF @GIZ_TTLLMT>0  
 -- 	BEGIN  
 -- 		SET @HATASEBEP='TOTAL LIMIT ASILDI';  
 -- 			SET @DURUM='UYARI'  
 -- 		GOTO LABEL_HATAVER;  
 -- 	END;  

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

CREATE PROC  [dbo].[BCS_MESAI_INSERT]
		   @SRKODU int=null,
           @PRSICIL varchar(15)=null,
           @TARIH smalldatetime=null,
		   @SURE datetime=null,
		   @ACIKLAMA varchar(100)=null,
		   @ACIKLAMA2 varchar(100)=null,
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
 
  
SET @GELIS_SAATI = DATEADD(day,-2,@GELIS_SAATI);
SET @DONUS_SAATI = DATEADD(day,-2,@DONUS_SAATI);
SET @BASZAMAN = DATEADD(day,-2,@BASZAMAN)
SET @BITZAMAN = DATEADD(day,-2,@BITZAMAN)
SET @SURE=DATEADD(day,-2,@SURE)
 
if EXISTS (select * from [dbo].[ONY_MESAI] where TARIH= @TARIH  
--and 
--( (BASZAMAN>= @BASZAMAN and  BASZAMAN<= @BITZAMAN) or 
--(BITZAMAN>= @BASZAMAN and  BITZAMAN<= @BITZAMAN)) 
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
		   ,[ACIKLAMA2]
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
		   @ACIKLAMA2,
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
 
			IF (@ISPOST=1) SET @ReturnCode='201'
			ELSE 
 			SET @ReturnCode='200'
END TRY  
BEGIN CATCH

SET @ReturnCode='500'
END CATCH 	
           
END

GO

CREATE   PROC [dbo].[BCS_PERSONEL_AMIR_GET]
(
@Username varchar(50)=null,
@AmirKodu varchar(50)=null
--@PerKodu varchar(50)=null
)
AS

if (@Username is not null)
select a.IDNO ID, a.AMIR_KODU,a.AMIR_ADI, a.MAIL_CC,  p.DEPART from PERSONEL_AMIR a (nolock) 
inner join PERSONEL1 p (nolock) on a.AMIR_KODU=p.SICILNO 
where SRKODU=1 and (p.ISCIKT is  null or p.ISCIKT>GETDATE()) 
and AMIR_KODU<>@Username
if (@AmirKodu is not null)
select a.IDNO ID, a.AMIR_KODU,a.AMIR_ADI, a.MAIL_CC, '' DEPART from PERSONEL_AMIR a (nolock) where AMIR_KODU=@AmirKodu
--if (@PerKodu is not null)
--select a.IDNO ID, a.AMIR_KODU,a.AMIR_ADI, a.MAIL_CC, '' DEPART from PERSONEL_AMIR a (nolock) where AMIR_KODU in (
--select top 1 isnull(AMIR5,isnull(AMIR4,isnull(AMIR3,isnull(AMIR2,AMIR1)))) from PERSONEL1 (nolock) where SICILNO=@PerKodu)

GO

CREATE   PROC  [dbo].[BCS_MAIL_INSERT]
		   @PerSicilNo  varchar(100),
		   @AmirSicilNo  varchar(100),
           @MailTo  varchar(100),	
		   @MailCC  varchar(100)=null,
		   @MailBody  nvarchar(max),
		   @Dscr varchar(500),
		   @Status int,
           @ReturnCode varchar(20) output
AS
BEGIN

BEGIN TRY

INSERT INTO dbo.BCS_ONY_MAIL_LOG VALUES(
@PerSicilNo,@AmirSicilNo,@MailTo,@MailBody,@Dscr,@Status,GETDATE(),@MailCC)
SET @ReturnCode='200'

END TRY  
BEGIN CATCH

SET @ReturnCode='500'
END CATCH 
			  

END


GO
/****** Object:  StoredProcedure [dbo].[BCS_VARDIYA_SELECT]    Script Date: 1.01.2022 20:21:10 ******/
 
ALTER PROC  [dbo].[BCS_VARDIYA_SELECT]
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
or (BITTARIH>=@Date1 and BITTARIH>=@Date2)) and t.NEDEN COLLATE Turkish_CI_AS=g.NEDEN COLLATE Turkish_CI_AS
and t.PRSICIL COLLATE Turkish_CI_AS=g.PRSICIL COLLATE Turkish_CI_AS
left join PERSONEL1 p (nolock) on g.PRSICIL=p.SICILNO 
left join PERTIPI pt (nolock) on p.PERTIP=pt.PERTIPI
left join CALISMA c (nolock) on g.NEDEN=c.KODU 
where 1=1 and convert(varchar,c.KODU)+'#'+ c.ADI+'#'+ CONVERT(varchar,DATEPART(HOUR, isnull(MAXCLIM,0))*60+DATEPART(MINUTE, isnull(MAXCLIM,0))) is not null 
---and pt.PUANTAJ='PERSONEL'

) t 


OPTION (MAXRECURSION 0);

 
END


GO
ALTER   PROC  [dbo].[BCS_REASON_SELECT]
(
@User varchar(50)=null,
@type varchar(10)=null

)
AS




if (@type=1 )
select RTRIM(KODU) KODU,ADI TURU from dbo.CALISMA nolock where TIPI='İZİN' and WEB_ONAY is not null--- AND RAPOR_KODU='1'
else if (@type=2 )
select RTRIM(KODU) KODU,ADI TURU from dbo.CALISMA nolock where TIPI='İZİN' and WEB_ONAY is not null---AND RAPOR_KODU='1'
else if (@type=3)
select RTRIM(KODU) KODU,TURU from dbo.[FMNED] nolock 
else if (@type=5)
select RTRIM(KODU) KODU,TURU from dbo.[HARFMNED] nolock 
else if (@type=9)
BEGIN
select '01' KODU,'PERTIP' TURU 
union all
select '02' KODU,'DEPART' TURU 
union all
select '03' KODU,'MASRAF' TURU 
union all
select '04' KODU,'KADRO' TURU 
union all
select '05' KODU,'MESLEK' TURU 
union all
select '06' KODU,'GOREV' TURU 
union all
select '07' KODU,'GRUP' TURU 
union all
select '08' KODU,'SUBE' TURU 
union all
select '09' KODU,'BIRIM' TURU 
union all
select '10' KODU,'SERVIS' TURU 
union all
select '11' KODU,'DURAK' TURU 

END
else
select RTRIM(KODU) KODU,ADI TURU from dbo.CALISMA nolock where TIPI='İZİN'


GO
IF NOT EXISTS (select * from BCS_LABEL nolock where [Label]='lblRotation') 
BEGIN
INSERT [dbo].[BCS_LABEL] ([Lng], [Label], [LabelName]) VALUES (N'en-US', N'lblRotation', N'Rotation Entry')
INSERT [dbo].[BCS_LABEL] ([Lng], [Label], [LabelName]) VALUES ( N'tr-TR', N'lblRotation', N'Rotasyon Giriş')
END



IF NOT EXISTS (select * from BCS_LABEL nolock where [Label]='lblUpdate') 
BEGIN
INSERT [dbo].[BCS_LABEL] ([Lng], [Label], [LabelName]) VALUES (N'en-US', N'lblUpdate', N'Update Entry')
INSERT [dbo].[BCS_LABEL] ([Lng], [Label], [LabelName]) VALUES ( N'tr-TR', N'lblUpdate', N'Güncelleme Giriş')
END

IF NOT EXISTS (select * from BCS_LABEL nolock where [Label]='lblAmir') 
BEGIN
INSERT [dbo].[BCS_LABEL] ([Lng], [Label], [LabelName]) VALUES (N'en-US', N'lblAmir', N'Chief')
INSERT [dbo].[BCS_LABEL] ([Lng], [Label], [LabelName]) VALUES ( N'tr-TR', N'lblAmir', N'Amir')
END


IF NOT EXISTS (select * from BCS_LABEL nolock where [Label]='lblAmirName') 
BEGIN
INSERT [dbo].[BCS_LABEL] ([Lng], [Label], [LabelName]) VALUES (N'en-US', N'lblAmirName', N'ChiefName')
INSERT [dbo].[BCS_LABEL] ([Lng], [Label], [LabelName]) VALUES ( N'tr-TR', N'lblAmirName', N'AmirAdı')
END

IF NOT EXISTS (select * from BCS_LABEL nolock where [Label]='lblReason') 
BEGIN

INSERT INTO [dbo].[BCS_LABEL]([Lng],[Label],[LabelName]) VALUES ('tr-TR','lblReason','Açıklama 1')
INSERT INTO [dbo].[BCS_LABEL]([Lng],[Label],[LabelName]) VALUES ('en-US','lblReason','Reason 1')
END

IF NOT EXISTS (select * from BCS_LABEL nolock where [Label]='lblReason2') 
BEGIN
INSERT INTO [dbo].[BCS_LABEL]([Lng],[Label],[LabelName]) VALUES ('tr-TR','lblReason2','Açıklama 2')
INSERT INTO [dbo].[BCS_LABEL]([Lng],[Label],[LabelName]) VALUES ('en-US','lblReason2','Reason 2')
END

IF NOT EXISTS (select * from ONY_DOCUMENT_TYPES nolock) 
BEGIN
INSERT [dbo].[ONY_DOCUMENT_TYPES] ([SRKODU], [KODU], [ADI]) VALUES (1,N'01', N'IKAMETGAH')
INSERT [dbo].[ONY_DOCUMENT_TYPES] ( [SRKODU], [KODU], [ADI]) VALUES (1, N'02', N'KIMLIK')
INSERT [dbo].[ONY_DOCUMENT_TYPES] ( [SRKODU], [KODU], [ADI]) VALUES (1, N'03', N'ADLI SICIL')
INSERT [dbo].[ONY_DOCUMENT_TYPES] ([SRKODU], [KODU], [ADI]) VALUES (1, N'04', N'MEZUN BELGESI')
INSERT [dbo].[ONY_DOCUMENT_TYPES] ([SRKODU], [KODU], [ADI]) VALUES (1, N'05', N'SERTIFIKA')
INSERT [dbo].[ONY_DOCUMENT_TYPES] ([SRKODU], [KODU], [ADI]) VALUES (1, N'06', N'FOTOGRAF')
INSERT [dbo].[ONY_DOCUMENT_TYPES] ([SRKODU], [KODU], [ADI]) VALUES (1, N'07', N'ISE GIRIS')
INSERT [dbo].[ONY_DOCUMENT_TYPES] ([SRKODU], [KODU], [ADI]) VALUES (1, N'08', N'SOZLESME')
INSERT [dbo].[ONY_DOCUMENT_TYPES] ([SRKODU], [KODU], [ADI]) VALUES (1, N'09', N'MUAYENE FORMU')
INSERT [dbo].[ONY_DOCUMENT_TYPES] ([SRKODU], [KODU], [ADI]) VALUES (1, N'10', N'DIGER')

END


