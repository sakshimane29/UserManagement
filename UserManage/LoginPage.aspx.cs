using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserManagementSystem1
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=db;Integrated Security=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand("select COUNT(*)FROM Registrationform WHERE UserName='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'");
            cmd.Connection = con;
            int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
            if (OBJ > 0)
            {
                Session["UserName"] = TextBox1.Text;
                Response.Redirect("details.aspx");
            }
            else
            {
                Label1.Text = "Invalid username or password please register";
                this.Label1.ForeColor = Color.Red;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationPage.aspx");
        }
    }
}