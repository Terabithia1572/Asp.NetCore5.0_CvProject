using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetCore5._0_CvProject
{
    public partial class AdminDeneyimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            tx_ID.Enabled = false;
            tx_ID.Text = x.ToString();

            if(Page.IsPostBack==false) { 
            DataSet1TableAdapters.Tbl_DeneyimTableAdapter dt = new DataSet1TableAdapters.Tbl_DeneyimTableAdapter();
            tx_Baslik.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].Baslik;
            tx_AltBaslik.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].AltBaslik;
            tx_Aciklama.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].Aciklama;
            tx_Tarih.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].Tarih;
            }
        }

        protected void btn_Guncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_DeneyimTableAdapter dt = new DataSet1TableAdapters.Tbl_DeneyimTableAdapter();
            dt.DeneyimGuncelle(tx_Baslik.Text, tx_AltBaslik.Text, tx_Aciklama.Text, tx_Tarih.Text,Convert.ToInt16(tx_ID.Text));
            Response.Redirect("AdminDeneyimler.aspx");
        }
    }
}