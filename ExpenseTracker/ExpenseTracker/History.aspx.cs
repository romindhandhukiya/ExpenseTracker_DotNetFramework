using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpenseTracker
{
    public partial class History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["authUser"] == null)
            {
                Session["cmnMsg"] = "Un-Authorised User!";
                Response.Redirect("Login.aspx");
            }
            else
            {
                call_this();
            }
        }

        protected void call_this()
        {
            SqlConnection con = new SqlConnection
            {
                ConnectionString = ConfigurationManager.ConnectionStrings["DB"].ConnectionString
            };
            try
            {
                using (con)
                {
                    string q = "select id,ename,edetails,eamount,edate from dbo.expenses where refid = '" + Session["userId"] + "'";

                    SqlCommand cmd = new SqlCommand(q, con);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    History1.DataSource = dr;
                    History1.DataBind();

                    dr.Close();
                }
            }
            catch (Exception exp)
            {
                Response.Write(exp.Message);
            }
            finally
            {
                con.Close();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection
                {
                    ConnectionString = ConfigurationManager.ConnectionStrings["DB"].ConnectionString
                };
                con.Open();
                int rowi = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                int eid = Convert.ToInt32(History1.Rows[rowi].Cells[2].Text);
                SqlCommand cmd = new SqlCommand("delete from expenses where id = '" + eid + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                call_this();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            int rowi = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            string eid = History1.Rows[rowi].Cells[2].Text;
            string ename = History1.Rows[rowi].Cells[3].Text;
            string edetails = History1.Rows[rowi].Cells[4].Text;
            string eamount = History1.Rows[rowi].Cells[5].Text;
            string edate = History1.Rows[rowi].Cells[6].Text;
            //Response.Write(eid+" "+ename+" "+edetails+" "+eamount+" "+edate);
            enableEdit(eid, ename, edetails, eamount, edate);
        }

        protected void enableEdit(string id, string n, string det, string am, string da)
        {
            eid.Text = id;
            ename.Text = n;
            edetails.Text = det;
            eamount.Text = am;
            edate.Text = da;
        }

        protected void editEx_Click(object sender, EventArgs e)
        {
            string id = eid.Text;
            string name = ename.Text;
            string det = edetails.Text;
            string amount = eamount.Text;
            string date = edate.Text;
            try
            {
                SqlConnection con = new SqlConnection
                {
                    ConnectionString = ConfigurationManager.ConnectionStrings["DB"].ConnectionString
                };
                con.Open();
                string q = "update expenses set ename='" + name + "', edetails ='" + det + "', eamount = '" + amount + "', edate='" + date + "' where id ='" + id + "'";
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.ExecuteNonQuery();
                con.Close();
                call_this();
                eid.Text = "";
                ename.Text = "";
                edetails.Text = "";
                eamount.Text = "";
                edate.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}