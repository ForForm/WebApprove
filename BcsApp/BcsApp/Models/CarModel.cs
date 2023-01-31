using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Threading.Tasks;

namespace BcsApp.Models
{

    public class MapDetails
    {
        public string type { get; set; }
        public List<Features> features { get; set; }
    }

    public class MailDetails
    {
        public string idNo { get; set; }        
        public string perSicil { get; set; }
        public string perName { get; set; }

        public string amirSicil { get; set; }
        public string amirName { get; set; }
        public string amirMail { get; set; }

        //public string amirSicilRet { get; set; }
        //public string amirNameRet { get; set; }
        //public string amirMailRet { get; set; }


        public string perMail { get; set; }
        public string neden { get; set; }
        public string nedenAcik { get; set; }
        public string sebep { get; set; }
        public string sebep2 { get; set; }
        public string aciklama { get; set; }
        public string gelisServis{ get; set; }
        public string donusServis{ get; set; }
        public DateTime bastarih { get; set; }
        public DateTime basSaat { get; set; }
        public DateTime bittarih { get; set; }
        public DateTime bitSaat { get; set; }
        public DateTime isbasi { get; set; }
        public DateTime saat { get; set; }
        public DateTime gelisSaat { get; set; }
        public DateTime donusSaat { get; set; }
        public decimal? gun { get; set; }
        public bool state { get; set; }
        public int ret { get; set; }
        public bool gelisServisKullan { get; set; }
        public bool donusServisKullan { get; set; }
        public string retAcik { get; set; }
        public decimal izinBakiye { get; set; }

    }

    public class Features
    {
        public string type { get; set; }
        public int id { get; set; }
        public Geometry geometry { get; set; }
        public Properties properties { get; set; }
    }

    public class Geometry
    {
        public string type { get; set; }
        public string[] coordinates { get; set; }

    }

    public class Properties
    {
        public string balloonContentHeader { get; set; }
        public string balloonContentBody { get; set; }
        public string balloonContentFooter { get; set; }
        public string clusterCaption { get; set; }
        public string hintContent { get; set; }
    }




}
