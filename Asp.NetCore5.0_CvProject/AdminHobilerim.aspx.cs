using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetCore5._0_CvProject
{
    public partial class Hobilerim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_HobilerimTableAdapter dt = new DataSet1TableAdapters.Tbl_HobilerimTableAdapter();
            Repeater1.DataSource = dt.HobileriListele();
            Repeater1.DataBind();

        }
    }
}