using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetCore5._0_CvProject
{
    public partial class Hakkimda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false) { 
            DataSet1TableAdapters.Tbl_HakkimdaTableAdapter dt = new DataSet1TableAdapters.Tbl_HakkimdaTableAdapter();
            tx_Ad.Text = dt.HakkimdaListele()[0].Ad;
            tx_Soyad.Text = dt.HakkimdaListele()[0].Soyad;
            tx_Adres.Text = dt.HakkimdaListele()[0].Adres;
            tx_Mail.Text = dt.HakkimdaListele()[0].Mail;
            tx_Telefon.Text = dt.HakkimdaListele()[0].Telefon;
            tx_Hakkimda.Text = dt.HakkimdaListele()[0].Hakkimda;
            tx_Foto.Text = dt.HakkimdaListele()[0].Fotograf;
            }
        }

        protected void btn_Guncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_HakkimdaTableAdapter dt1 = new DataSet1TableAdapters.Tbl_HakkimdaTableAdapter();
            dt1.HakkimdaGuncelle(tx_Ad.Text, tx_Soyad.Text, tx_Adres.Text, tx_Mail.Text, tx_Telefon.Text, tx_Hakkimda.Text, tx_Foto.Text);
            Response.Redirect("WebForm1.aspx");
        }
    }
}