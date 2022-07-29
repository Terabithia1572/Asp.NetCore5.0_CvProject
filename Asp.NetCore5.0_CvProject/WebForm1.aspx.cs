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

            DataSet1TableAdapters.Tbl_DeneyimTableAdapter dt2 = new DataSet1TableAdapters.Tbl_DeneyimTableAdapter();
            Repeater2.DataSource = dt2.DeneyimListesi();
            Repeater2.DataBind();

            DataSet1TableAdapters.Tbl_EgitimTableAdapter dt3 = new DataSet1TableAdapters.Tbl_EgitimTableAdapter();
            Repeater3.DataSource = dt3.EgitimListele();
            Repeater3.DataBind();
            DataSet1TableAdapters.Tbl_HobilerimTableAdapter dt4 = new DataSet1TableAdapters.Tbl_HobilerimTableAdapter();
            Repeater4.DataSource = dt4.HobileriListele();
            Repeater4.DataBind();
                }
    }
}