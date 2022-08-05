using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetCore5._0_CvProject
{
    public partial class AdminKonferanslarGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            DataSet1TableAdapters.Tbl_KonferanslarTableAdapter dt = new DataSet1TableAdapters.Tbl_KonferanslarTableAdapter();
            tx_ID.Text = x.ToString();
            tx_ID.Enabled = false;
            if(IsPostBack==false)
            {
                tx_Konferanslar.Text = dt.KonferansGetir(Convert.ToInt16(x))[0].Konferanslar;
            }

        }

        protected void btn_Guncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_KonferanslarTableAdapter dt = new DataSet1TableAdapters.Tbl_KonferanslarTableAdapter();
            dt.KonferansGuncelle(tx_Konferanslar.Text, Convert.ToInt16(tx_ID.Text));

            Response.Redirect("AdminKonferanslar.aspx");
        }
    }
}