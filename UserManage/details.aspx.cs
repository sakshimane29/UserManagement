using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserManagementSystem1
{
    public partial class details : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=db;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            lb1.Text = "<b><font color=Brown>" + "WELLCOME:: " + "</font>" + "<b><font color=red>" + Session["UserName"] + "</font>";

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Registrationform where UserName='" + Session["UserName"] + "'");
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            lbl_UserName.Text = ds.Tables[0].Rows[0]["UserName"].ToString();
            lbl_password.Text = ds.Tables[0].Rows[0]["password"].ToString();
            lbl_confirmpassword.Text = ds.Tables[0].Rows[0]["confirmpassword"].ToString();
            lbl_city.Text = ds.Tables[0].Rows[0]["city"].ToString();
            lbl_mobileno.Text = ds.Tables[0].Rows[0]["mobileno"].ToString();

            lbl_gender.Text = ds.Tables[0].Rows[0]["gender"].ToString();
            lbl_email.Text = ds.Tables[0].Rows[0]["email"].ToString();
            con.Close();
        }
    }
}