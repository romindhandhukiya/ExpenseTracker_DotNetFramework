using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ExpenseTracker
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RegisterBtnSaveUser(object sender, EventArgs e)
        {
            string un = uname.Text;
            string psw = pass.Text;
            string em = email.Text;

            SqlConnection con = new SqlConnection
            {
                ConnectionString = ConfigurationManager.ConnectionStrings["DB"].ConnectionString
            };

            try
            {
                using (con)
                {
                    string q = "select * from dbo.login where uname = '" + un + "' or email = '" + em + "'";

                    SqlCommand cmd = new SqlCommand(q, con);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        //error user already exist
                        regerr.Text = "Change Username or Email";
                        dr.Close();
                    }
                    else
                    {
                        dr.Close();
                        q = string.Format("insert into login values('{0}','{1}','{2}')", un, psw, em);
                        cmd = new SqlCommand(q, con);
                        cmd.ExecuteNonQuery();
                        Session["cmnMsg"] = "Registered Successfully!";
                        Response.Redirect("Login.aspx");
                    }
                    if (!dr.IsClosed)
                    {
                        dr.Close();
                    }
                }
            }
            catch (Exception exp)
            {
                Response.Write("Error: " + exp.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}