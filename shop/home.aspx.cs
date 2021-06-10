using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shop
{
    public partial class home : System.Web.UI.Page
    {
        private dataservices dataservices;
        protected void Page_Load(object sender, EventArgs e)
        {
            addservices();
            newproduct();
            saleproduct();
        }
        private void addservices()
        {
            dataservices = new dataservices();
            DataTable tb = dataservices.getData("select IMG from serivices");
            //add
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                string img = tb.Rows[i]["IMG"].ToString();
                sevices.InnerHtml += string.Format("<div class='col-3'><img src={0}></div>", img);
            }
        }
        //thiêu chi tiết
        private void newproduct()
        {
            lates_product.InnerHtml = "";
            dataservices = new dataservices();
            DataTable tb = dataservices.getData("select top 4 * from Product order by ID_Product desc");
            //add
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                string name = tb.Rows[i]["Name_Product"].ToString();
                string price = tb.Rows[i]["Price"].ToString();
                string image = tb.Rows[i]["IMG"].ToString();
                lates_product.InnerHtml += string.Format("<div class='col-4'><a href=''><img src='{0}'></a> <h4>{1}</h4><p>{2}đ</p></div>", image, name, price);
            }
            
        }
        //thiếu chi tiết
        private void saleproduct()
        {
            discount.InnerHtml = "";
            dataservices = new dataservices();
            DataTable tb = dataservices.getData("select top 4 Name_Product,IMG,Note,Price,b.Price_Sale from Product a join Sale b on a.ID_Product = b.ID_Product");
            //add
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                string name = tb.Rows[i]["Name_Product"].ToString();
                string price = tb.Rows[i]["Price"].ToString();
                string image = tb.Rows[i]["IMG"].ToString();
                string price_sale = tb.Rows[i]["Price_Sale"].ToString();
                discount.InnerHtml += string.Format("<div class='col-4'><a href=''><img src='{0}'></a> <h4>{1}</h4> <p><s>{2}đ</s></p><p>{3}đ</p></div>", image, name, price, price_sale);

            }
        }
        
    }
}