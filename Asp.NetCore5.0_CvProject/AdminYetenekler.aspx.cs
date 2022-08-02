using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetCore5._0_CvProject
{
    public partial class AdminYetenekler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_YeteneklerimTableAdapter dt = new DataSet1TableAdapters.Tbl_YeteneklerimTableAdapter();
            Repeater1.DataSource = dt.YetenekListele();
            Repeater1.DataBind();

        }
    }
}