using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETMS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string addr = TextBox2.Text;
            string city = TextBox3.Text;
            string pin = TextBox4.Text;
            string email = TextBox5.Text;
            string mob = TextBox6.Text;
            string uname = TextBox7.Text;
            string pass = TextBox8.Text;
            string sql1 = "insert into login values('" + uname + "','" + pass + "','cust')select @@IDENTITY";
            object ob = db.exescalar(sql1);
            string sql2 = "insert into customer values('" + name + "','" + addr + "','" + city + "','" + pin + "','" + email + "','" + mob + "','" + ob + "')";
            int ab = db.exenonquery(sql2);
            if(ab>0)
            {
                Response.Write("success");
                Response.Redirect("cust_reg.aspx");
            }
            else
            {
                Response.Write("error");
            }
        }
    }
}