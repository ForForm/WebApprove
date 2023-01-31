using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Dynamic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BcsApp.Models;

namespace BcsApp.Translator
{
    public static class UserTranslator
    {
        

        #region Bcs

        public static UsersModel TranslateAsUser(this SqlDataReader reader, bool isList = false)
        {
            if (!isList)
            {
                if (!reader.HasRows)
                    return null;
                reader.Read();
            }
            var item = new UsersModel();


            if (reader.IsColumnExists("Name"))
                item.Name = SqlHelper.GetNullableString(reader, "Name");

            if (reader.IsColumnExists("UserName"))
                item.UserName = SqlHelper.GetNullableString(reader, "UserName");

            if (reader.IsColumnExists("Password"))
                item.Password = SqlHelper.GetNullableString(reader, "Password");

            if (reader.IsColumnExists("DepartmanID"))
                item.DepartmanID = SqlHelper.GetNullableString(reader, "DepartmanID");


            return item;
        }

        public static List<UsersModel> TranslateAsUsersList(this SqlDataReader reader)
        {
            var list = new List<UsersModel>();
            while (reader.Read())
            {
                list.Add(TranslateAsUser(reader, true));
            }
            return list;
        }

        public static List<UsersSelectModel> TranslateUserSelectModel(this SqlDataReader reader)
        {
            var list = new List<UsersSelectModel>();
            while (reader.Read())
            {
                UsersSelectModel item = new UsersSelectModel();
                item.id = SqlHelper.GetNullableInt32(reader, "ID");
                item.userName = SqlHelper.GetNullableString(reader, "UserName");
                item.password = SqlHelper.GetNullableString(reader, "Password");
                list.Add(item);
            }

            return list;
        }

        public static List<TodoModel> TranslateTodoSelectModel(this SqlDataReader reader)
        {
            var list = new List<TodoModel>();
            while (reader.Read())
            {
                TodoModel item = new TodoModel();
                item.Key = SqlHelper.GetNullableString(reader, "Key");
                item.Value = SqlHelper.GetNullableString(reader, "Value");
                list.Add(item);
            }

            return list;
        }

        public static List<MailDetails> TranslateApproveMailModel(this SqlDataReader reader)
        {
            var list = new List<MailDetails>();

            while (reader.Read())
            {
                MailDetails item = new MailDetails();
                item.idNo = SqlHelper.GetNullableString(reader, "IDNO");

                item.amirSicil = SqlHelper.GetNullableString(reader, "AMIR");
                item.amirName = SqlHelper.GetNullableString(reader, "AMIRADI");
                item.amirMail = SqlHelper.GetNullableString(reader, "EMAIL");

                //item.amirSicilRet = SqlHelper.GetNullableString(reader, "AMIR_RET");
                //item.amirNameRet = SqlHelper.GetNullableString(reader, "AMIRADI_RET");
                //item.amirMailRet = SqlHelper.GetNullableString(reader, "EMAIL_RET");

                item.perSicil = SqlHelper.GetNullableString(reader, "PERSONEL");
                item.perName = SqlHelper.GetNullableString(reader, "PERSONELADI");
                
                item.perMail = SqlHelper.GetNullableString(reader, "PERSONELMAIL");
                item.neden = SqlHelper.GetNullableString(reader, "NEDEN");
                item.nedenAcik = SqlHelper.GetNullableString(reader, "NEDEN_ACIK");
                if (SqlHelper.IsColumnExists(reader, "SEBEP"))
                    item.sebep = SqlHelper.GetNullableString(reader, "SEBEP");
                if (SqlHelper.IsColumnExists(reader, "SEBEP2"))
                    item.sebep2 = SqlHelper.GetNullableString(reader, "SEBEP2");
                item.aciklama = SqlHelper.GetNullableString(reader, "ACIKLAMA");
                if (SqlHelper.IsColumnExists(reader, "BASTARIH"))
                    item.bastarih = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BASTARIH"));
                if (SqlHelper.IsColumnExists(reader, "BITTARIH"))
                    item.bittarih = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BITTARIH"));
                if (SqlHelper.IsColumnExists(reader, "BASSAAT"))
                    item.basSaat = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BASSAAT"));
                if (SqlHelper.IsColumnExists(reader, "GELIS_SAATI"))
                    item.gelisSaat = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "GELIS_SAATI"));
                if (SqlHelper.IsColumnExists(reader, "GELIS_SERVISI"))
                    item.gelisServis = SqlHelper.GetNullableString(reader, "GELIS_SERVISI");
                if (SqlHelper.IsColumnExists(reader, "GELIS_SERVIS_KULLANIM"))
                    item.gelisServisKullan = SqlHelper.GetBoolean(reader, "GELIS_SERVIS_KULLANIM");
                if (SqlHelper.IsColumnExists(reader, "ISBASI"))
                    item.isbasi = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "ISBASI"));
                if (SqlHelper.IsColumnExists(reader, "BITSAAT"))
                    item.bitSaat = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BITSAAT"));
                if (SqlHelper.IsColumnExists(reader, "DONUS_SAATI"))
                    item.donusSaat = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "DONUS_SAATI"));
                if (SqlHelper.IsColumnExists(reader, "DONUS_SERVISI"))
                    item.donusServis = SqlHelper.GetNullableString(reader, "DONUS_SERVISI");
                if (SqlHelper.IsColumnExists(reader, "DONUS_SERVIS_KULLANIM"))
                    item.donusServisKullan = SqlHelper.GetBoolean(reader, "DONUS_SERVIS_KULLANIM");
                if (SqlHelper.IsColumnExists(reader, "GUN"))
                    item.gun = SqlHelper.GetNullableDecimal(reader, "GUN");
                if (SqlHelper.IsColumnExists(reader, "SAAT"))
                    item.saat = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "SAAT"));
                item.ret = SqlHelper.GetNullableInt32(reader, "RET");
                item.retAcik = SqlHelper.GetNullableString(reader, "RET_ACIK");
                item.state = SqlHelper.GetBoolean(reader, "STATE");
                if (SqlHelper.IsColumnExists(reader, "IZINBAKIYE"))
                    item.izinBakiye = Convert.ToDecimal(SqlHelper.GetNullableString(reader, "IZINBAKIYE"));
                list.Add(item);
            }
            return list;

        }

        public static MapDetails TranslateCarSelectModel(this SqlDataReader reader)
        {
            MapDetails mapDetails = new MapDetails();
            List<Features> features = new List<Features>();
            while (reader.Read())
            {
                mapDetails.type = "FeatureCollection";
                Features feature = new Features();
                feature.type = "Feature";
                feature.id = 0;

                Geometry geometry = new Geometry();
                geometry.type = "Point";
                string[] coordinates = new string[2];
                coordinates[0] = SqlHelper.GetNullableString(reader, "Latitude");
                coordinates[1] = SqlHelper.GetNullableString(reader, "Longitude");
                geometry.coordinates = coordinates;
                feature.geometry = geometry;

                Properties properties = new Properties();
                properties.balloonContentBody = SqlHelper.GetNullableString(reader, "BalloonContentBody");
                properties.balloonContentFooter = SqlHelper.GetNullableString(reader, "BalloonContentFooter");
                properties.balloonContentHeader = SqlHelper.GetNullableString(reader, "BalloonContentHeader");
                properties.clusterCaption = SqlHelper.GetNullableString(reader, "ClusterCaption");
                properties.hintContent = SqlHelper.GetNullableString(reader, "HintContent");
                feature.properties = properties;

                features.Add(feature);
            }

            mapDetails.features = features;
            return mapDetails;

        }

        public static SendPasswordResponse GetSendPassword(this SqlDataReader reader)
        {

            SendPasswordResponse item = new SendPasswordResponse();
            while (reader.Read())
            {
                item.user = SqlHelper.GetNullableString(reader, "USERNAME");
                item.mail = SqlHelper.GetNullableString(reader, "EMAIL");
                item.password = SqlHelper.GetNullableString(reader, "SIFRE");
            }
            return item;
        }

        public static List<GetShiftInfoReponse> GetShiftApproveInfoModel(this SqlDataReader reader)
        {

            List<GetShiftInfoReponse> list = new List<GetShiftInfoReponse>();
            while (reader.Read())
            {
                GetShiftInfoReponse item = new GetShiftInfoReponse();
                item.srkodu = SqlHelper.GetNullableString(reader, "SRKODU");
                item.depart = "0";// SqlHelper.GetNullableString(reader, "DEPART");
                item.username = SqlHelper.GetNullableString(reader, "PRSICIL");
                item.tarih = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "TARIH"));
                item.diff = SqlHelper.GetNullableInt32(reader, "DIFF");
                item.maxclim = SqlHelper.GetNullableInt32(reader, "MAXCLIM");
                item.color = SqlHelper.GetNullableString(reader, "COLOR"); //.Replace("\"", "'");
                item.dscr = SqlHelper.GetNullableString(reader, "DSCR");
                item.onay1 = SqlHelper.GetNullableInt32(reader, "ONAY2");
                item.onay1kl = SqlHelper.GetNullableString(reader, "ONAY1KL");
                item.onay2 = SqlHelper.GetNullableInt32(reader, "ONAY2");
                item.onay2kl = SqlHelper.GetNullableString(reader, "ONAY2KL");
                item.post = SqlHelper.GetNullableInt32(reader, "POST");
                item.ret = SqlHelper.GetNullableInt32(reader, "RET");
                item.retAcik = SqlHelper.GetNullableString(reader, "RET_ACIK");
                item.vrkodu = SqlHelper.GetNullableString(reader, "VRKODU");
                list.Add(item);

            }
            return list;
        }

        public static List<GetDateCalculationResponse> GetDateCalculation(this SqlDataReader reader)
        {

            List<GetDateCalculationResponse> list = new List<GetDateCalculationResponse>();
            while (reader.Read())
            {
                GetDateCalculationResponse item = new GetDateCalculationResponse();
                item.sebep = SqlHelper.GetNullableString(reader, "SEBEP");
                item.sonuc = SqlHelper.GetNullableString(reader, "SONUC");
                item.srKodu = SqlHelper.GetNullableString(reader, "SRKODU");
                item.sicilNo = SqlHelper.GetNullableString(reader, "SICILNO");
                item.neden = SqlHelper.GetNullableString(reader, "NEDEN");
                item.basTarih = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BASTARIH"));
                item.gun = Convert.ToDecimal(SqlHelper.GetNullableString(reader, "GUN"));
                item.bitTarih = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BITTARIH"));
                item.isBasiTarih = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "ISBASI"));
                item.ays_lmt = Convert.ToDecimal(SqlHelper.GetNullableString(reader, "AYS_LMT"));
                item.yil_lmt = Convert.ToDecimal(SqlHelper.GetNullableString(reader, "YIL_LMT"));
                item.ttl_lmt = Convert.ToDecimal(SqlHelper.GetNullableString(reader, "TTL_LMT"));
                list.Add(item);

            }

            return list;
        }

        public static List<GetLngModel> GetLngInfo(this SqlDataReader reader)
        {
            List<GetLngModel> list = new List<GetLngModel>();
            while (reader.Read())
            {
                GetLngModel item = new GetLngModel();
                item.Id = SqlHelper.GetNullableInt32(reader, "ID");
                item.Dil = SqlHelper.GetNullableString(reader, "KODU");
                item.Text = SqlHelper.GetNullableString(reader, "TEXT");
                list.Add(item);

            }

            return list;
        }

        public static List<GetLabelModel> GetLabelInfo(this SqlDataReader reader)
        {
            List<GetLabelModel> list = new List<GetLabelModel>();
            while (reader.Read())
            {
                GetLabelModel item = new GetLabelModel();
                item.Label = SqlHelper.GetNullableString(reader, "Label");
                item.LabelName = SqlHelper.GetNullableString(reader, "LabelName");
                list.Add(item);

            }

            return list;
        }

        public static List<PostParameterInfo> GetParameterInfo(this SqlDataReader reader)
        {

            List<PostParameterInfo> list = new List<PostParameterInfo>();
            while (reader.Read())
            {
                PostParameterInfo item = new PostParameterInfo();
                item.firmName = SqlHelper.GetNullableString(reader, "FirmName");
                item.onayTuru = SqlHelper.GetNullableInt32(reader, "OnayTuru");
                item.prsBazli = SqlHelper.GetBoolean(reader, "PrsBazli");
                item.limitDash = SqlHelper.GetBoolean(reader, "LimitDash");
                item.reportDash= SqlHelper.GetBoolean(reader, "ReportDash");
                item.ret = SqlHelper.GetBoolean(reader, "Ret"); 
                item.sendMail = SqlHelper.GetBoolean(reader, "SendMail");
                item.sendMailForm = SqlHelper.GetBoolean(reader, "SendMailForm");
                item.sendMailFormTxt = SqlHelper.GetNullableString(reader, "SendMailFormTxt");
                item.gecmisPostUser = SqlHelper.GetBoolean(reader, "GecmisPostUser");
                item.mailOnay = SqlHelper.GetBoolean(reader, "MailOnay");
                item.domain= SqlHelper.GetNullableString(reader, "Domain");
                item.smtp = SqlHelper.GetNullableString(reader, "Smtp");
                item.port = SqlHelper.GetNullableString(reader, "Port");
                item.smtpUser = SqlHelper.GetNullableString(reader, "SmtpUser");
                item.smtpPass = SqlHelper.GetNullableString(reader, "SmtpPass");
                item.ssl = SqlHelper.GetBoolean(reader, "Ssl");
                item.mail = SqlHelper.GetNullableString(reader, "Mail");
                item.mailFrom = SqlHelper.GetNullableString(reader, "MailFrom");
                item.mailSubject = SqlHelper.GetNullableString(reader, "MailSubject");
                item.reportUrl = SqlHelper.GetNullableString(reader, "ReportUrl");
                item.reportUrlSecure = SqlHelper.GetBoolean(reader, "ReportUrlSecure");
                item.language = SqlHelper.GetNullableString(reader, "Language");
                item.transferDate = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "TransferDate"));
                item.fmTip = SqlHelper.GetNullableInt32(reader, "FmTip");
                item.fmServis = SqlHelper.GetBoolean(reader, "FmServis");
                item.fmYemek = SqlHelper.GetBoolean(reader, "FmYemek");
                item.fmAcik = SqlHelper.GetBoolean(reader, "FmAcik");
                item.fmNeden = SqlHelper.GetBoolean(reader, "FmNeden");
                item.fmGecmisIslem = SqlHelper.GetBoolean(reader, "FmGecmisIslem");
                item.fmGecmisIslemSure = SqlHelper.GetNullableInt32(reader, "FmGecmisIslemSure");
                item.fmTemplate = SqlHelper.GetNullableString(reader, "FmTemplate");
                item.fmUserMailBody = SqlHelper.GetNullableString(reader, "FmUserMailBody");
                item.fmFormOnay = SqlHelper.GetBoolean(reader, "FmFormOnay");
                item.fmUseForm = SqlHelper.GetBoolean(reader, "FmUseForm");

                item.giYemek = SqlHelper.GetBoolean(reader, "GiYemek");
                item.giAcik = SqlHelper.GetBoolean(reader, "GiAcik");
                item.giNeden = SqlHelper.GetBoolean(reader, "GiNeden");
                item.giGecmisIslem = SqlHelper.GetBoolean(reader, "GiGecmisIslem");
                item.giGecmisIslemSure = SqlHelper.GetNullableInt32(reader, "GiGecmisIslemSure");
                item.giFormOnay = SqlHelper.GetBoolean(reader, "GiFormOnay");
                item.giUseForm = SqlHelper.GetBoolean(reader, "GiUseForm");
                item.giYillikIzin = SqlHelper.GetBoolean(reader, "GiYillikIzin");

                item.siYemek = SqlHelper.GetBoolean(reader, "SiYemek");
                item.siAcik = SqlHelper.GetBoolean(reader, "SiAcik");
                item.siNeden = SqlHelper.GetBoolean(reader, "SiNeden");
                item.siGecmisIslem = SqlHelper.GetBoolean(reader, "SiGecmisIslem");
                item.siGecmisIslemSure = SqlHelper.GetNullableInt32(reader, "SiGecmisIslemSure");
                item.siFormOnay = SqlHelper.GetBoolean(reader, "SiFormOnay");
                item.siUseForm = SqlHelper.GetBoolean(reader, "SiUseForm");
                item.siSaat = SqlHelper.GetBoolean(reader, "SiSaat");

                item.hktUseForm = SqlHelper.GetBoolean(reader, "HktUseForm");
                item.hktFormOnay = SqlHelper.GetBoolean(reader, "HktFormOnay");
                item.hktNeden = SqlHelper.GetBoolean(reader, "HktNeden");
                item.hktAcik = SqlHelper.GetBoolean(reader, "HktAcik");
                item.hktGecmisIslem = SqlHelper.GetBoolean(reader, "HktGecmisIslem");
                item.hktGecmisIslemSure = SqlHelper.GetNullableInt32(reader, "HktGecmisIslemSure");

                item.pstAcik = SqlHelper.GetBoolean(reader, "PstAcik");
                item.pstGecmisIslem = SqlHelper.GetBoolean(reader, "PstGecmisIslem");
                item.pstGecmisIslemSure = SqlHelper.GetNullableInt32(reader, "PstGecmisIslemSure");

                item.link1Name = SqlHelper.GetNullableString(reader, "link1Name");
                item.link1Url = SqlHelper.GetNullableString(reader, "link1Url");
                item.link2Name = SqlHelper.GetNullableString(reader, "link2Name");
                item.link2Url = SqlHelper.GetNullableString(reader, "link2Url");
                item.link3Name = SqlHelper.GetNullableString(reader, "link3Name");
                item.link3Url = SqlHelper.GetNullableString(reader, "link3Url");
                item.link4Name = SqlHelper.GetNullableString(reader, "link4Name");
                item.link4Url = SqlHelper.GetNullableString(reader, "link4Url");
                item.link5Name = SqlHelper.GetNullableString(reader, "link5Name");
                item.link5Url = SqlHelper.GetNullableString(reader, "link5Url");

                item.isDocument = SqlHelper.GetBoolean(reader, "IsDocument");
                item.shiftControl = SqlHelper.GetBoolean(reader, "ShiftControl");
                item.shiftHour = SqlHelper.GetNullableInt32(reader, "ShiftHour");
                item.shiftPartHour = SqlHelper.GetNullableInt32(reader, "ShiftPartHour");
                item.shiftPartHourTasks = SqlHelper.GetNullableString(reader, "ShiftPartHourTasks");

                item.shiftAuth= SqlHelper.GetBoolean(reader, "ShiftAuth");
                item.shiftAuthWeek= SqlHelper.GetNullableInt32(reader, "ShiftAuthWeek");


                list.Add(item);

            }

            return list;
        }

        public static List<GetIzinReportInfo> GetIzinReportInfo(this SqlDataReader reader)
        {

            List<GetIzinReportInfo> list = new List<GetIzinReportInfo>();
            while (reader.Read())
            {
                GetIzinReportInfo item = new GetIzinReportInfo();
                item.adi = SqlHelper.GetNullableString(reader, "ADI");
                item.soyadi = SqlHelper.GetNullableString(reader, "SOYADI");
                item.prSicil = SqlHelper.GetNullableString(reader, "PRSICIL");
                item.basSaat = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BASSAAT"));
                item.basTarih = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BASTARIH"));
                item.bitSaat = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BITSAAT"));
                item.bitTarih = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BITTARIH"));
                item.id = SqlHelper.GetNullableString(reader, "IDNO");
                item.IzinTuru = SqlHelper.GetNullableString(reader, "IZIN_TURU");
                item.neden = SqlHelper.GetNullableString(reader, "NEDEN");
                item.acik = SqlHelper.GetNullableString(reader, "ACIK");
                item.sure = SqlHelper.GetNullableString(reader, "SURE");
                item.yemekYer = SqlHelper.GetBoolean(reader, "YEMEK_YER");
                item.servis = SqlHelper.GetBoolean(reader, "SERVIS");
                item.onay1 = SqlHelper.GetNullableString(reader, "ONAY1");
                item.onay1kl = SqlHelper.GetNullableString(reader, "ONAY1KL");
                item.onay2 = SqlHelper.GetNullableString(reader, "ONAY2");
                item.onay2kl = SqlHelper.GetNullableString(reader, "ONAY2KL");
                item.onay3 = SqlHelper.GetNullableString(reader, "ONAY3");
                item.onay3kl = SqlHelper.GetNullableString(reader, "ONAY3KL");
                item.onay4 = SqlHelper.GetNullableString(reader, "ONAY4");
                item.onay4kl = SqlHelper.GetNullableString(reader, "ONAY4KL");
                item.onay5 = SqlHelper.GetNullableString(reader, "ONAY5");
                item.onay5kl = SqlHelper.GetNullableString(reader, "ONAY5KL");
                item.durum = SqlHelper.GetNullableString(reader, "DURUM");
                item.islemZaman= Convert.ToDateTime(SqlHelper.GetNullableString(reader, "ISLEM_ZAMANI"));
                list.Add(item);
            }

            return list;
        }

        public static List<GetPuantajReportInfoDtl> GetPuantajReportInfoDtl(this SqlDataReader reader)
        {

            List<GetPuantajReportInfoDtl> list = new List<GetPuantajReportInfoDtl>();
            while (reader.Read())
            {
                GetPuantajReportInfoDtl item = new GetPuantajReportInfoDtl();
                item.ay = SqlHelper.GetNullableString(reader, "AY");
                item.sube= SqlHelper.GetNullableString(reader, "SUBE");
                item.adi = SqlHelper.GetNullableString(reader, "ADI");
                item.raporKodu = SqlHelper.GetNullableString(reader, "RAPOR_KODU");

                list.Add(item);
            }

            return list;
        }

        public static List<GetPuantajReportInfo> GetPuantajReportInfo(this SqlDataReader reader)
        {

            List<GetPuantajReportInfo> list = new List<GetPuantajReportInfo>();
            while (reader.Read())
            {
                GetPuantajReportInfo item = new GetPuantajReportInfo();
                item.gorevi = SqlHelper.GetNullableString(reader, "GOREVI");
                item.sicil = SqlHelper.GetNullableString(reader, "SICILNO");
                item.depart = SqlHelper.GetNullableString(reader, "DEPART");
                item.name = SqlHelper.GetNullableString(reader, "ADISOYADI");
                item.gun1 = SqlHelper.GetNullableString(reader, "GUN1");
                item.gun2 = SqlHelper.GetNullableString(reader, "GUN2");
                item.gun3 = SqlHelper.GetNullableString(reader, "GUN3");
                item.gun4 = SqlHelper.GetNullableString(reader, "GUN4");
                item.gun5 = SqlHelper.GetNullableString(reader, "GUN5");
                item.gun6 = SqlHelper.GetNullableString(reader, "GUN6");
                item.gun7 = SqlHelper.GetNullableString(reader, "GUN7");
                item.gun8 = SqlHelper.GetNullableString(reader, "GUN8");
                item.gun9 = SqlHelper.GetNullableString(reader, "GUN9");
                item.gun10 = SqlHelper.GetNullableString(reader, "GUN10");
                item.gun11 = SqlHelper.GetNullableString(reader, "GUN11");
                item.gun12 = SqlHelper.GetNullableString(reader, "GUN12");
                item.gun13 = SqlHelper.GetNullableString(reader, "GUN13");
                item.gun14 = SqlHelper.GetNullableString(reader, "GUN14");
                item.gun15 = SqlHelper.GetNullableString(reader, "GUN15");
                item.gun16 = SqlHelper.GetNullableString(reader, "GUN16");
                item.gun17 = SqlHelper.GetNullableString(reader, "GUN17");
                item.gun18 = SqlHelper.GetNullableString(reader, "GUN18");
                item.gun19 = SqlHelper.GetNullableString(reader, "GUN19");
                item.gun20 = SqlHelper.GetNullableString(reader, "GUN20");
                item.gun21 = SqlHelper.GetNullableString(reader, "GUN21");
                item.gun22 = SqlHelper.GetNullableString(reader, "GUN22");
                item.gun23 = SqlHelper.GetNullableString(reader, "GUN23");
                item.gun24 = SqlHelper.GetNullableString(reader, "GUN24");
                item.gun25 = SqlHelper.GetNullableString(reader, "GUN25");
                item.gun26 = SqlHelper.GetNullableString(reader, "GUN26");
                item.gun27 = SqlHelper.GetNullableString(reader, "GUN27");
                item.gun28 = SqlHelper.GetNullableString(reader, "GUN28");
                item.gun29 = SqlHelper.GetNullableString(reader, "GUN29");
                item.gun30 = SqlHelper.GetNullableString(reader, "GUN30");
                item.gun31 = SqlHelper.GetNullableString(reader, "GUN31");
                item.fiilCalisma = SqlHelper.GetNullableString(reader, "FIILI_CALISMA");
                item.standartSaat = SqlHelper.GetNullableString(reader, "STANDART_SAAT");
                item.eksikCalisma = SqlHelper.GetNullableString(reader, "EKSIK_CALISMA");
                item.imza = SqlHelper.GetNullableString(reader, "IMZA");
                list.Add(item);
            }

            return list;
        }

        public static List<GetIOReportInfo> GetIOReportInfo(this SqlDataReader reader)
        {

            List<GetIOReportInfo> list = new List<GetIOReportInfo>();
            while (reader.Read())
            {
                GetIOReportInfo item = new GetIOReportInfo();
                item.sicil = SqlHelper.GetNullableString(reader, "PRSICIL");
                item.adi = SqlHelper.GetNullableString(reader, "ADI");
                item.soyadi= SqlHelper.GetNullableString(reader, "SOYADI");
                item.departman = SqlHelper.GetNullableString(reader, "DEPART");
                item.gorev = SqlHelper.GetNullableString(reader, "GOREV");
                item.masrafMerkez = SqlHelper.GetNullableString(reader, "MASRAF");
                item.girisTarih = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "GIRTARIH"));
                item.girisSaat = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "GIRZAMAN"));
                item.cikisTarih = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "CIKTARIH"));
                item.cikisSaat = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "CIKZAMAN"));


                list.Add(item);
            }

            return list;
        }

        public static PoolUserLoginModel TranslatePoolUserLogin(this SqlDataReader reader)
        {
            PoolUserLoginModel item = new PoolUserLoginModel();
            while (reader.Read())
            {
                item.returnCode = SqlHelper.GetNullableString(reader, "ReturnCode");
                item.returnDscr = SqlHelper.GetNullableString(reader, "ReturnDscr");
                item.userName = SqlHelper.GetNullableString(reader, "Username");
                item.password = SqlHelper.GetNullableString(reader, "Password");
                item.userType = SqlHelper.GetNullableString(reader, "UserType");
                item.firmName = SqlHelper.GetNullableString(reader, "firmName");
                item.userInfo = SqlHelper.GetNullableString(reader, "userInfo");
            }

            return item;
        }

        public static List<PoolChiefSelectModel> TranslatePoolChiefSelect(this SqlDataReader reader)
        {
            var list = new List<PoolChiefSelectModel>();
            while (reader.Read())
            {
                PoolChiefSelectModel item = new PoolChiefSelectModel();
                item.IDNO = SqlHelper.GetNullableInt32(reader, "ID");
                item.SICILNO= SqlHelper.GetNullableString(reader, "AMIR_KODU");
                item.ADI= SqlHelper.GetNullableString(reader, "AMIR_ADI");
                item.DEPARTADI= SqlHelper.GetNullableString(reader, "DEPART");
                item.MAIL_CC= SqlHelper.GetNullableString(reader, "MAIL_CC");
                list.Add(item);
            }

            return list;
        }

        public static List<PoolUserSelectModel> TranslatePoolUserSelect(this SqlDataReader reader)
        {
            var list = new List<PoolUserSelectModel>();
            while (reader.Read())
            {
                PoolUserSelectModel item = new PoolUserSelectModel();
                item.ID = SqlHelper.GetNullableInt32(reader, "ID");
                item.username = SqlHelper.GetNullableString(reader, "SICILNO");
                item.posta = SqlHelper.GetNullableString(reader, "POSTA");
                item.name = SqlHelper.GetNullableString(reader, "ADI");
                item.yillikFazlaMesai = Convert.ToDecimal(SqlHelper.GetNullableString(reader, "YILLIK_FAZLA_MESAI"));
                item.depart = SqlHelper.GetNullableString(reader, "DEPART");
                item.gorev = SqlHelper.GetNullableString(reader, "GOREV");
                item.approver = SqlHelper.GetNullableString(reader, "AMIR");
                item.YillikKalan = Convert.ToDecimal(SqlHelper.GetNullableString(reader, "TOPLAMKALAN"));
                item.Iodesc = string.Empty;
                //item.approved= SqlHelper.GetBoolean(reader, "APPROVE");
                //item.ID = SqlHelper.GetNullableInt32(reader, "ID");
                //item.CompanyID = SqlHelper.GetNullableInt32(reader, "CompanyID");
                //item.Username = SqlHelper.GetNullableString(reader, "UserName");
                //item.Password = SqlHelper.GetNullableString(reader, "Password");
                //item.Status = SqlHelper.GetNullableInt32(reader, "Status");
                //item.TranDate = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "TranDate"));
                //item.deneme = SqlHelper.GetNullableString(reader, "bbb");
                //item.deneme2 = "sdsdsdsdsds";
                list.Add(item);
            }

            return list;
        }



        public static List<GetUserLimitSelectModel> TranslatePoolUserLimitSelect(this SqlDataReader reader)
        {
            var list = new List<GetUserLimitSelectModel>();
            while (reader.Read())
            {
                GetUserLimitSelectModel item = new GetUserLimitSelectModel();
                item.ID = SqlHelper.GetNullableInt32(reader, "ID");
                item.username = SqlHelper.GetNullableString(reader, "SICILNO");
                item.name = SqlHelper.GetNullableString(reader, "ADI");
                item.depart = SqlHelper.GetNullableString(reader, "DEPART");
                item.isgirt= SqlHelper.GetNullableDateTime(reader, "ISGIRT");
                item.amir= SqlHelper.GetNullableString(reader, "AMIR");
                item.usageLimit= SqlHelper.GetNullableString(reader, "KULIZIN_SAAT");
                item.remainLimit= SqlHelper.GetNullableString(reader, "KALAN_SURE");
                item.remainYearly = SqlHelper.GetNullableString(reader, "YILIZIN_KALAN");
                //item.amirAdi = SqlHelper.GetNullableString(reader, "AMIR_ADI");


                list.Add(item);
            }

            return list;
        }

        public static List<GetUserDashReportsModel> TranslateGetUserDashReports(this SqlDataReader reader)
        {
            var list = new List<GetUserDashReportsModel>();
            while (reader.Read())
            {
                GetUserDashReportsModel item = new GetUserDashReportsModel();
                item.ID = SqlHelper.GetNullableInt32(reader, "ID");
                item.Column= SqlHelper.GetNullableInt32(reader, "Column");
                item.ReportName = SqlHelper.GetNullableString(reader, "ReportName");
                item.SPName = SqlHelper.GetNullableString(reader, "SPName");
                item.Params = SqlHelper.GetNullableString(reader, "Params");
                list.Add(item);
            }

            return list;
        }

        static IList<IDictionary<string, object>> Read(SqlDataReader reader)
        {
            var res = new List<IDictionary<string, object>>();
            foreach (var item in reader)
            {
                IDictionary<string, object> expando = new ExpandoObject();
                foreach (PropertyDescriptor propertyDescriptor in TypeDescriptor.GetProperties(item))
                {
                    var obj = propertyDescriptor.GetValue(item);
                    expando.Add(propertyDescriptor.Name, obj);
                }
                res.Add(expando);
            }
            return res;
        }

        public static object TranslateExecuteDashReports(this SqlDataReader reader)
        {
            return Read(reader).ToList();
        }

        public static List<PoolDelegationSelectModel> TranslatePoolDelegationSelect(this SqlDataReader reader)
        {
            var list = new List<PoolDelegationSelectModel>();
            while (reader.Read())
            {
                PoolDelegationSelectModel item = new PoolDelegationSelectModel();
                item.id = SqlHelper.GetNullableInt32(reader, "IDNO");
                item.user = SqlHelper.GetNullableString(reader, "KLADI");
                item.username = SqlHelper.GetNullableString(reader, "ISIM");
                item.userPassword = SqlHelper.GetNullableString(reader, "SIFRE");
                item.vekil = SqlHelper.GetNullableString(reader, "VEKILADI");
                item.vekiladi = SqlHelper.GetNullableString(reader, "VEKILISIM");
                item.bastarih = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BASTARIH"));
                item.bittarih = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BITTARIH"));
                item.bittarih = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BITTARIH"));
                list.Add(item);
            }

            return list;
        }

        public static PoolAuthSelectModel TranslateAuthSelect(this SqlDataReader reader)
        {
            PoolAuthSelectModel item = new PoolAuthSelectModel();
            while (reader.Read())
            {
                item.Gunluk = SqlHelper.GetBoolean(reader, "GUNLUK");
                item.Mesai = SqlHelper.GetBoolean(reader, "MESAI");
                item.Saat = SqlHelper.GetBoolean(reader, "SAATLIK");
                item.Vardiya = SqlHelper.GetBoolean(reader, "VARDIYA");
                item.Hareket = SqlHelper.GetBoolean(reader, "HAREKET");
                item.Posta = SqlHelper.GetBoolean(reader, "POSTA");
                item.Rotasyon = SqlHelper.GetBoolean(reader, "ROTASYON");
                item.Guncelleme = SqlHelper.GetBoolean(reader, "GUNCELLEME");
                item.Amir1= SqlHelper.GetBoolean(reader, "AMIR1");
            }
            return item;
        }


        public static PoolDocAuthSelectModel TranslateDocAuthSelect(this SqlDataReader reader)
        {
            PoolDocAuthSelectModel item = new PoolDocAuthSelectModel();
            while (reader.Read())
            {
                item.Yetki= SqlHelper.GetBoolean(reader, "YETKI");
            }
            return item;
        }


        public static List<PoolDocEmpSelectModel> TranslateDocEmpSelect(this SqlDataReader reader)
        {

            var list = new List<PoolDocEmpSelectModel>();
            while (reader.Read())
            {
                PoolDocEmpSelectModel item = new PoolDocEmpSelectModel();
                item.IDNO= SqlHelper.GetNullableInt32(reader, "IDNO");
                item.SICILNO = SqlHelper.GetNullableString(reader, "SICILNO");
                item.ADI = SqlHelper.GetNullableString(reader, "ADI");
                item.DEPARTADI= SqlHelper.GetNullableString(reader, "DEPARTADI");
                list.Add(item);
            }
            return list;
        }

        public static List<PoolDocSelectModel> TranslateDocSelect(this SqlDataReader reader)
        {

            var list = new List<PoolDocSelectModel>();
            while (reader.Read())
            {
                PoolDocSelectModel item = new PoolDocSelectModel();
                item.IDNO = SqlHelper.GetNullableInt32(reader, "IDNO");
                item.PRSICIL = SqlHelper.GetNullableString(reader, "PRSICIL");
                item.ADI = SqlHelper.GetNullableString(reader, "ADI");
                item.TIPI = SqlHelper.GetNullableString(reader, "TIPI");
                item.TARIH = SqlHelper.GetNullableString(reader, "TARIH");
                item.ACIKLAMA = SqlHelper.GetNullableString(reader, "ACIKLAMA");
                item.DOSYA = SqlHelper.GetNullableString(reader, "DOSYA");
                item.DOSYAYOLU = SqlHelper.GetNullableString(reader, "DOSYA_YOLU");
                list.Add(item);
            }
            return list;
        }

        public static List<PoolDocTypesModel> TranslateDocTypes(this SqlDataReader reader)
        {

            var list = new List<PoolDocTypesModel>();
            while (reader.Read())
            {
                PoolDocTypesModel item = new PoolDocTypesModel();
                item.ID = SqlHelper.GetNullableInt32(reader, "ID");
                item.CODE= SqlHelper.GetNullableString(reader, "CODE");
                item.NAME = SqlHelper.GetNullableString(reader, "NAME");   
                list.Add(item);
            }
            return list;
        }


        public static PoolSecureLoginSelectModel TranslateSecureLoginSelect(this SqlDataReader reader)
        {
            PoolSecureLoginSelectModel item = new PoolSecureLoginSelectModel();
            while (reader.Read())
            {
                item.userName = SqlHelper.GetNullableString(reader, "userName");
                item.userInfo = SqlHelper.GetNullableString(reader, "userInfo");
                item.userType = SqlHelper.GetNullableString(reader, "userType");
                item.password = SqlHelper.GetNullableString(reader, "password");
                item.firmName = SqlHelper.GetNullableString(reader, "firmName");
            }
            return item;
        }


        public static List<PoolReasonSelectModel> TranslateReasonSelect(this SqlDataReader reader)
        {
            var list = new List<PoolReasonSelectModel>();
            while (reader.Read())
            {
                PoolReasonSelectModel item = new PoolReasonSelectModel();
                //item.sirketKodu = SqlHelper.GetNullableString(reader, "SRKODU");
                item.key = SqlHelper.GetNullableString(reader, "KODU");
                item.value = SqlHelper.GetNullableString(reader, "TURU");
                list.Add(item);
            }

            return list;
        }

        public static List<PoolShiftsSelectModel> TranslateShiftsSelect(this SqlDataReader reader)
        {
            var list = new List<PoolShiftsSelectModel>();
            while (reader.Read())
            {
                PoolShiftsSelectModel item = new PoolShiftsSelectModel();
                item.srkodu = SqlHelper.GetNullableString(reader, "SRKODU");
                item.kodu = SqlHelper.GetNullableString(reader, "KODU");
                item.adi = SqlHelper.GetNullableString(reader, "ADI");
                item.turu = SqlHelper.GetNullableString(reader, "TURU");
                item.grup = SqlHelper.GetNullableString(reader, "GRUP");
                item.bassaat = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BASSAAT"));
                item.bitsaat = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BITSAAT"));
                item.maxclim = SqlHelper.GetNullableInt32(reader, "MAXCLIM");
                list.Add(item);
            }

            return list;
        }

        public static List<PoolPostaSelectModel> TranslatePostaSelect(this SqlDataReader reader)
        {
            var list = new List<PoolPostaSelectModel>();
            while (reader.Read())
            {
                PoolPostaSelectModel item = new PoolPostaSelectModel();
                item.kodu = SqlHelper.GetNullableString(reader, "KODU");
                item.adi = SqlHelper.GetNullableString(reader, "ADI");
                item.basTarih = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BASTAR"));
                item.turu = SqlHelper.GetNullableString(reader, "TURU");
                list.Add(item);
            }

            return list;
        }

        public static PoolFormsSelectModel TranslateFormsSelect(this SqlDataReader reader)
        {
            PoolFormsSelectModel item = new PoolFormsSelectModel();
            while (reader.Read())
            {
                item.template = SqlHelper.GetNullableString(reader, "TEMPLATE");
            }

            return item;
        }

        public static List<PoolApproveSelectModel> TranslateApproveSelect(this SqlDataReader reader)
        {
            var list = new List<PoolApproveSelectModel>();
            while (reader.Read())
            {
                PoolApproveSelectModel item = new PoolApproveSelectModel();
                item.Inoutput = SqlHelper.GetNullableString(reader, "INOUTPUT");
                item.id = SqlHelper.GetNullableInt32(reader, "IDNO");
                item.IzinTip = SqlHelper.GetNullableString(reader, "IZIN_TIP");
                item.UserName = SqlHelper.GetNullableString(reader, "PRSICIL");
                item.Name = SqlHelper.GetNullableString(reader, "NAME");
                item.ExplationCode = SqlHelper.GetNullableString(reader, "NEDEN");
                item.Date = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "TARIH"));
                item.StartDate = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BAS_TARIH"));
                item.EndDate = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "BIT_TARIH"));
                item.WorkDate = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "ISBASI"));
                item.YillikKalan = Convert.ToDecimal(SqlHelper.GetNullableString(reader, "TOPLAMKALAN"));
                item.YillikFazlaMesai = SqlHelper.GetNullableString(reader, "YILLIK_FAZLA_MESAI");
                item.Departman = "01"; //SqlHelper.GetNullableString(reader, "DEPARTMAN");
                try
                {
                    item.Time = SqlHelper.GetNullableString(reader, "SURE");
                }
                catch (Exception)
                { }
                item.Reason = SqlHelper.GetNullableString(reader, "SEBEP");
                item.Reason2 = SqlHelper.GetNullableString(reader, "SEBEP2");
                item.Description = SqlHelper.GetNullableString(reader, "ACIKLAMA");
                item.RetAcik = SqlHelper.GetNullableString(reader, "RET_ACIK");
                item.Auth = SqlHelper.GetBoolean(reader, "AUTH");
                item.Posta = SqlHelper.GetNullableString(reader, "POSTA");
                //item.Departman= SqlHelper.GetNullableString(reader, "DEPARTMAN");
                list.Add(item);
            }

            return list;
        }

        public static List<PoolApproveSelectModel> TranslateApproveTotalSelect(this SqlDataReader reader)
        {
            var list = new List<PoolApproveSelectModel>();
            while (reader.Read())
            {
                PoolApproveSelectModel item = new PoolApproveSelectModel();
                item.IzinTip = SqlHelper.GetNullableString(reader, "IZIN_TIP");
                item.Count = SqlHelper.GetNullableInt32(reader, "ADET");
                list.Add(item);
            }

            return list;
        }

        public static List<PoolGetFmservicesModel> TranslateFmservicesSelect(this SqlDataReader reader)
        {
            var list = new List<PoolGetFmservicesModel>();
            while (reader.Read())
            {
                PoolGetFmservicesModel item = new PoolGetFmservicesModel();
                item.Username = SqlHelper.GetNullableString(reader, "SICILNO");
                item.Kodu = SqlHelper.GetNullableString(reader, "KODU");
                item.Turu = SqlHelper.GetNullableString(reader, "TURU");
                list.Add(item);
            }

            return list;
        }

        public static List<MachineLicenseInfo> TranslatePoolLisansControlSelect(this SqlDataReader reader)
        {
            List<MachineLicenseInfo> items = new List<MachineLicenseInfo>();
            while (reader.Read())
            {
                MachineLicenseInfo item = new MachineLicenseInfo();
                item.ID = SqlHelper.GetNullableString(reader, "ID");
                item.companyCode = SqlHelper.GetNullableString(reader, "CompanyCode");
                item.companyName = SqlHelper.GetNullableString(reader, "CompanyName");
                item.macAddress = SqlHelper.GetNullableString(reader, "ServerAddress");
                item.userCount = SqlHelper.GetNullableString(reader, "UserCount");
                item.barkodesNum = SqlHelper.GetNullableString(reader, "BarkodesNum");
                item.validNum = SqlHelper.GetNullableString(reader, "ValidNum");
                item.SecureNum = SqlHelper.GetNullableString(reader, "SecureNum");
                item.status = SqlHelper.GetNullableString(reader, "Status");
                item.tranDate = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "TranDate"));
                item.barkodesSecureNum = "1945";
                string strImage = SqlHelper.GetNullableString(reader, "LOGO");
                item.logo = Encoding.ASCII.GetBytes(strImage);
                items.Add(item);
            }


            return items;
        }



        public static List<GetPersonnelUpdateTypesResponse> TranslatePersonnelUpdateTypesSelect(this SqlDataReader reader)
        {
            List<GetPersonnelUpdateTypesResponse> items = new List<GetPersonnelUpdateTypesResponse>();
            while (reader.Read())
            {
                GetPersonnelUpdateTypesResponse item = new GetPersonnelUpdateTypesResponse();
                if (SqlHelper.GetNullableString(reader, "Type")=="01")
                {
                    item.kodu = SqlHelper.GetNullableString(reader, "PERTIPI");
                    item.adi = SqlHelper.GetNullableString(reader, "TURU");
                }
                else if (SqlHelper.GetNullableString(reader, "Type") == "02")
                {
                    item.kodu = SqlHelper.GetNullableString(reader, "KODU");
                    item.adi = SqlHelper.GetNullableString(reader, "ADI");
                }
                else if (SqlHelper.GetNullableString(reader, "Type") == "03" 
                    || SqlHelper.GetNullableString(reader, "Type") == "04"
                    || SqlHelper.GetNullableString(reader, "Type") == "05"
                    || SqlHelper.GetNullableString(reader, "Type") == "06"
                    || SqlHelper.GetNullableString(reader, "Type") == "10")
                {
                    item.kodu = SqlHelper.GetNullableString(reader, "KODU");
                    item.adi = SqlHelper.GetNullableString(reader, "TURU");
                }
                else if (SqlHelper.GetNullableString(reader, "Type") == "07")
                {
                    item.kodu = SqlHelper.GetNullableString(reader, "GRUP_KODU");
                    item.adi = SqlHelper.GetNullableString(reader, "GRUP_ADI");
                }
                else if (SqlHelper.GetNullableString(reader, "Type") == "08")
                {
                    item.kodu = SqlHelper.GetNullableString(reader, "SUBE_KODU");
                    item.adi = SqlHelper.GetNullableString(reader, "SUBE_ADI");
                }
                else if (SqlHelper.GetNullableString(reader, "Type") == "09")
                {
                    item.kodu = SqlHelper.GetNullableString(reader, "BIRIM_KODU");
                    item.adi = SqlHelper.GetNullableString(reader, "BIRIM_ADI");
                }
                else if (SqlHelper.GetNullableString(reader, "Type") == "11")
                {
                    item.kodu = SqlHelper.GetNullableString(reader, "DURAK_KODU");
                    item.adi = SqlHelper.GetNullableString(reader, "DURAK_ADI");
                }
                items.Add(item);
            }


            return items;
        }


        public static List<PostMachineInfo> TranslatePoolLisansSelect(this SqlDataReader reader)
        {
            var list = new List<PostMachineInfo>();
            var macAddresses = new List<string>();
            PostMachineInfo item = new PostMachineInfo();
            while (reader.Read())
            {
                item.ID = SqlHelper.GetNullableString(reader, "ID");
                item.companyCode = SqlHelper.GetNullableString(reader, "CompanyCode");
                item.companyName = SqlHelper.GetNullableString(reader, "CompanyName");
                macAddresses.Add(SqlHelper.GetNullableString(reader, "ServerAddress"));
                item.userCount = SqlHelper.GetNullableString(reader, "UserCount");
                item.barkodesNum = SqlHelper.GetNullableString(reader, "BarkodesNum");
                item.validNum = SqlHelper.GetNullableString(reader, "ValidNum");
                item.SecureNum = SqlHelper.GetNullableString(reader, "SecureNum");
                item.status = SqlHelper.GetNullableString(reader, "Status");
                item.tranDate = Convert.ToDateTime(SqlHelper.GetNullableString(reader, "TranDate"));
                item.barkodesSecureNum = "1945";

            }

            item.macAddress = macAddresses;
            list.Add(item);
            return list;
        }

        #endregion
    }
}
