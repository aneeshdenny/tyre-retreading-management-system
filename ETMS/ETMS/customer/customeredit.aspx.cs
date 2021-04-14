using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ETMS.customer
{
    public partial class customeredit : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = Session["l_id"].ToString();
            DataTable dt = db.exetable("select * from customer where lid='" + s + "'");
            TextBox1.Text = dt.Rows[0][1].ToString();
            TextBox2.Text = dt.Rows[0][2].ToString();
            TextBox3.Text = dt.Rows[0][3].ToString();
            TextBox4.Text = dt.Rows[0][4].ToString();
            TextBox5.Text = dt.Rows[0][5].ToString();
            TextBox6.Text = dt.Rows[0][6].ToString();
           
         }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ss = Session["l_id"].ToString();
            string sql = "select * from customer where lid='" + ss + "'";
            DataTable da = db.exetable(sql);
            string name = TextBox1.Text;
            string addr = TextBox2.Text;
            string city = TextBox3.Text;
            string pin = TextBox4.Text;
            string email = TextBox5.Text;
            string mob = TextBox6.Text;
            int a = db.exenonquery("update customer set cname='" + name + "',addr='" + addr + "',city='" + city + "',pin='" + pin + "',email='" + email + "',mob='" + mob + "',lid='" + ss + "'");
            if(a>0)
            {
                Response.Write("success");
            }
            else
            {
                Response.Write("error");
            }
        }
    }
}