using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetCore5._0_CvProject
{
    public partial class YeteneklerGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            DataSet1TableAdapters.Tbl_YeteneklerimTableAdapter dt = new DataSet1TableAdapters.Tbl_YeteneklerimTableAdapter();
            tx_ID.Text = x.ToString();
            tx_ID.Enabled = false;

            if(IsPostBack==false)
            {
                tx_Yetenekler.Text = dt.YetenekGetir(Convert.ToInt16(x))[0].Yetenekler;
            }

        }
    }
}