using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shop
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //cheak 
        bool cheackrepeat(string name)
        {
            string sql = string.Format("select * from Users where Email = N'{0}'", name);
            dataservices dataservices = new dataservices();
            DataTable dt = dataservices.getData(sql);
            if (dt.Rows.Count > 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        protected void sumit2_click_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            string n = cname.Value.ToString();
            string em = cemail.Value.ToString();
            string p = cpass.Value.ToString();
            if (cheackrepeat(em) == false)
            {
                Label1.Text = "Name already exists";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (n != "" && em != "" && p != "")
            {
                p = md5.GetMD5(p);
                dataservices dataservices = new dataservices();
                string insert = string.Format("insert into Users(Email,Name_User,Password,ID_Category) values(N'{0}',N'{1}',N'{2}',2)", em, n, p);
                dataservices.runquery(insert);
                if (Label1.Text == "")
                {
                    Label1.Text = "Sign Up Success!";
                    Label1.ForeColor = System.Drawing.Color.Green;
                    Label1.Font.Bold = true;
                }
                //set control
                cname.Value = null;
                cemail.Value = null;
                cpass.Value = null;
            }
        }
    }
}