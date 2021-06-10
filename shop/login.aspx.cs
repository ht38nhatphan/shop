using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shop
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //check submit addmin
        private bool check(int iduser)
        {

            if (iduser == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        protected void login_click(object sender, EventArgs e)
        {
            Label1.Text = "";
            string em = email.Value.ToString();
            string p = pass.Value.ToString();
            p = md5.GetMD5(p);
            dataservices mydataservices = new dataservices();
            string sql = string.Format("select * from Users where Email = N'{0}' and Password = N'{1}'", em, p);
            DataTable tb = mydataservices.getData(sql);
            //id category user
            int id = 0;
            if (tb.Rows.Count > 0)
            {
                id = Convert.ToInt32(tb.Rows[0]["ID_Category"].ToString());
            }

            if (check(id) == true && tb.Rows.Count > 0)
            {

                Session["ID_USER"] = tb.Rows[0]["ID_User"];
                Session["Email_USER"] = tb.Rows[0]["Email"].ToString();
                Session["Password_USER"] = tb.Rows[0]["Password"].ToString();
                Response.Redirect("~/home.aspx");
            }
            if (tb.Rows.Count > 0)
            {
                if (tb.Rows.Count == 1)
                {
                    Session["ID"] = tb.Rows[0]["ID_User"];
                    Session["Email"] = tb.Rows[0]["Email"].ToString();
                    Session["Password"] = tb.Rows[0]["Password"].ToString();
                    Response.Redirect("~/home.aspx");
                }

            }
            else
            {
                Label1.Text = "The Email or Password were incorrect.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            
        }
    }
}