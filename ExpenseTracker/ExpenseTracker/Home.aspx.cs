using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ExpenseTracker
{
    public partial class Home1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["authUser"] == null)
            {
                Session["cmnMsg"] = "Un-Authorised User!";
                Response.Redirect("Login.aspx");
            }
        }

        protected string RandomString(string date)
        {
            return "Expense_Pack_clusterRefDate_" + date + "_UI_" + Session["userId"];
        }

        protected void AddExpense(object sender, EventArgs e)
        {
            string en = ename.Text;
            string ed = edetail.Text;
            float amount = float.Parse(eamount.Text);
            string givenDate = edate.Text.Split('T')[0];
            string todayDate = DateTime.Now.ToString().Split(' ')[0];
            string cid = "";
            //bool isSameDateToday = DateTime.Compare(DateTime.Parse(givenDate), DateTime.Parse(todayDate))>= 0 ? true:false;
            //Response.Write(DateTime.Parse(givenDate)+" "+DateTime.Parse(todayDate)+" is same? "+DateTime.Compare(DateTime.Parse(givenDate),DateTime.Parse(todayDate)));
            SqlConnection con = new SqlConnection
            {
                ConnectionString = ConfigurationManager.ConnectionStrings["DB"].ConnectionString
            };

            try
            {
                using (con)
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand();
                    String q = string.Format("insert into expenses values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", Session["userID"], en, ed, amount, givenDate, givenDate, todayDate);
                    cmd = new SqlCommand(q, con);
                    cmd.ExecuteNonQuery();
                    expadded.Text = "Expense Added!";
                }
            }
            catch (Exception exp)
            {
                expadded.Text = "An Error occured!";
                Response.Write("Error: " + exp.Message);
            }
            finally
            {
                con.Close();
                ename.Text = "";
                edetail.Text = "";
                eamount.Text = "";
                edate.Text = "";
            }
        }

        protected void LogoutUser(object sender, EventArgs e)
        {
            Session["authUser"] = false;
            Session["cmnMsg"] = "Logged-Out!";
            Response.Redirect("Login.aspx");
        }

        protected void ResetExoenseForm(object sender, EventArgs e)
        {
            ename.Text = "";
            edetail.Text = "";
            eamount.Text = "";
            edate.Text = "";
            expadded.Text = "";
        }
    }
}