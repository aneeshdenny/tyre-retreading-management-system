using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ETMS
{
    public partial class login : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string un = TextBox1.Text;
            string pass = TextBox2.Text;
            string sql = "select * from login where username='" + un + "' and password='" + pass + "'";
            DataTable dt = db.exetable(sql);
            if(dt.Rows.Count>0)
            {
                Session["l_id"] = dt.Rows[0][0].ToString();
                if(dt.Rows[0][3].ToString()=="cust")
                {
                    Response.Redirect("~/customer/welcome.aspx");
                }
                if (dt.Rows[0][3].ToString() == "admin")
                {
                    Response.Redirect("~/admin/welcome.aspx");
                }
                if (dt.Rows[0][3].ToString() == "staff")
                {
                    Response.Redirect("~/staff/welcome.aspx");
                }
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Invalid Username or Password')</script>");
            }
        }
    }
}