using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetCore5._0_CvProject
{
    public partial class AdminHobiGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);

            DataSet1TableAdapters.Tbl_HobilerimTableAdapter dt = new DataSet1TableAdapters.Tbl_HobilerimTableAdapter();
            tx_ID.Text = x.ToString();
            tx_ID.Enabled = false;
            if(IsPostBack==false)
            {
                tx_Hobilerim.Text = dt.HobiGetir(Convert.ToInt16(x))[0].Hobilerim;
            }
           


        }

        protected void btn_Guncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_HobilerimTableAdapter dt = new DataSet1TableAdapters.Tbl_HobilerimTableAdapter();
            dt.HobiGuncelle(tx_Hobilerim.Text,Convert.ToInt16(tx_ID.Text));

            Response.Redirect("AdminHobilerim.aspx");

        }
    }
}