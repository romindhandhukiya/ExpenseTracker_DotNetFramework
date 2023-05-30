using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ExpenseTracker
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loginerr.Text = (string)Session["cmnMsg"];
            Session["authUser"] = false;
        }

        protected void Btnclick(object sender, EventArgs e)
        {
            string un = uname.Text;
            string psw = pass.Text;
            SqlConnection con = new SqlConnection
            {
                ConnectionString = ConfigurationManager.ConnectionStrings["DB"].ConnectionString
            };

            try
            {
                using (con)
                {
                    string q = "select * from login where uname = '" + un + "' and pass = '" + psw + "'";

                    SqlCommand cmd = new SqlCommand(q, con);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        if (dr.Read())
                        {
                            loginerr.Text = "";
                            Session["userId"] = dr[0];
                            Session["authUser"] = true;
                            Response.Redirect("Home.aspx");
                        }
                    }
                    else
                    {
                        loginerr.Text = "No user found!";
                    }
                    dr.Close();
                    con.Close();
                }
            }
            catch (Exception exp)
            {
                Response.Write("Error: " + exp.Message);
            }
        }
    }
}