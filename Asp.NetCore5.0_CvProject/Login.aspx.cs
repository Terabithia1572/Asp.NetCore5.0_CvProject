using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp.NetCore5._0_CvProject
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-NGSB111;Initial Catalog=db_BlogWeb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_GirisYap_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from tbl_admin where kullanici=@p1 and Sifre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if(dr.Read())
            {
                Response.Redirect("AdminDeneyimler.aspx");
            }
            else
            {
                Response.Write("Hatalı Kullanıcı Adı veya Şifre..");
            }
            baglanti.Close();
        }
    }
}