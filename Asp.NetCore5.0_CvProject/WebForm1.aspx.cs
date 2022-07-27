using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetCore5._0_CvProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_HakkimdaTableAdapter dt = new DataSet1TableAdapters.Tbl_HakkimdaTableAdapter();
            Repeater1.DataSource = dt.HakkimdaListele();
            Repeater1.DataBind();
        }
    }
}