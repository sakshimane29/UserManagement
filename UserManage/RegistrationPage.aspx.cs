using System;
using System.Collections.Generic;
using System.Data;
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
               

                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into Registrationform values(@UserName,@Password,@Confirmp,@City,@Mobile,@Gender,@Email)", con);

                    cmd.Parameters.AddWithValue("@UserName", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Confirmp", TextBox3.Text);

                    if (DropDownList1.SelectedItem != null)
                    {
                        cmd.Parameters.AddWithValue("@City", DropDownList1.SelectedItem.Text);
                    }
                    else
                    {
                        throw new InvalidOperationException("No city selected.");
                    }

                    if (!string.IsNullOrEmpty(TextBox5.Text))
                    {
                        cmd.Parameters.AddWithValue("@Mobile", TextBox5.Text);
                    }
                    else
                    {
                        throw new InvalidOperationException("Mobile number cannot be empty.");
                    }

                    if (RadioButtonList2.SelectedItem != null)
                    {
                        cmd.Parameters.AddWithValue("@Gender", RadioButtonList2.SelectedItem.Text);
                    }
                    else
                    {
                        throw new InvalidOperationException("No gender selected.");
                    }

                    if (!string.IsNullOrEmpty(TextBox4.Text))
                    {
                        cmd.Parameters.AddWithValue("@Email", TextBox4.Text);
                    }
                    else
                    {
                        throw new InvalidOperationException("Email cannot be empty.");
                    }

                    cmd.ExecuteNonQuery();

                    // Clear the form fields
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";  // Reset Confirmp field
                    TextBox5.Text = "";  // Reset Mobile field
                    DropDownList1.ClearSelection();
                    RadioButtonList2.ClearSelection();
                    TextBox4.Text = "";
                    TextBox1.Focus();

                    Response.Redirect("LoginPage.aspx");
                }
                catch (Exception ex)
                {
                    // Log the exception and show an error message
                    // Example: Logger.LogError(ex);
                    Response.Write("An error occurred: " + ex.Message);
                }
                finally
                {
                    if (con.State == ConnectionState.Open)
                    {
                        con.Close();
                    }
                }
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

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
               
        }
    }
}