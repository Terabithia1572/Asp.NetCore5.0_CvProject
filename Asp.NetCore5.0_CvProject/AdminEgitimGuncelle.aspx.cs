using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetCore5._0_CvProject
{
    public partial class AdminEgitimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            DataSet1TableAdapters.Tbl_EgitimTableAdapter dt = new DataSet1TableAdapters.Tbl_EgitimTableAdapter();
            tx_ID.Text = x.ToString();
            tx_ID.Enabled = false;
            tx_Baslik.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].Baslik;
            tx_AltBaslik.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].AltBaslik;
            tx_Aciklama.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].Aciklama;
            tx_NotOrtalamasi.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].NotOrtalamasi;
            tx_Tarih.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].Tarih;

        }

        protected void btn_Guncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_EgitimTableAdapter dt1 = new DataSet1TableAdapters.Tbl_EgitimTableAdapter();
            dt1.EgitimGuncelle(tx_Baslik.Text, tx_AltBaslik.Text, tx_Aciklama.Text, tx_NotOrtalamasi.Text, tx_Tarih.Text,Convert.ToInt16(tx_ID.Text));
            Response.Redirect("AdminEgitimler.aspx");
        }
    }
}