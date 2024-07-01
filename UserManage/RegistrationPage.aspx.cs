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
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=db;Integrated Security=True;");
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Registrationform values(@UserName,@Password,@Confirmp,@City,@Mobile,@Gender,@Email)", con);
                cmd.Parameters.AddWithValue("@UserName", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Confirmp", TextBox3.Text);


                cmd.Parameters.AddWithValue("@City", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Mobile", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox4.Text);
                cmd.ExecuteNonQuery();




                TextBox1.Text = "";
                TextBox2.Text = "";

                DropDownList1.SelectedValue = "";

                RadioButtonList1.SelectedValue = "";
                TextBox4.Text = "";
                TextBox1.Focus();

                Response.Redirect("LoginPage.aspx");



                con.Close();

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=db;Integrated Security=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Registrationform where username='" + TextBox1.Text + "'", con);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Label1.Text = "User Name is Already Exist";
                this.Label1.ForeColor = Color.Red;
            }
            else
            {
                Label1.Text = "UserName is Available";
                this.Label1.ForeColor = Color.Red;
            }
            con.Close();
        }
    }
}