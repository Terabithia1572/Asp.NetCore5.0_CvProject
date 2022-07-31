using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetCore5._0_CvProject
{
    public partial class AdminDeneyimEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void btn_Ekle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_DeneyimTableAdapter dt = new DataSet1TableAdapters.Tbl_DeneyimTableAdapter();
            dt.DeneyimEkle(tx_Baslik.Text, tx_AltBaslik.Text, tx_Aciklama.Text, tx_Tarih.Text);
            Response.Redirect("AdminDeneyimler.aspx");
        }
    }
}