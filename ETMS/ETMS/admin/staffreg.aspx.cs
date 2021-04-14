using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETMS.admin
{
    public partial class staffreg : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nm = TextBox1.Text;
            string desig = TextBox2.Text;
            string gender = RadioButtonList1.SelectedItem.Value;
            string em = TextBox3.Text;
            string age = TextBox4.Text;
            string mob = TextBox5.Text;
            string un = TextBox6.Text;
            string pass = TextBox7.Text;
            string sql1 = "insert into login values('"+un+"','"+pass+ "','staff')select @@IDENTITY";
            object ob = db.exescalar(sql1);
            string sql2 = "insert into staff values('" + nm + "','" + desig + "','" + gender + "','" + em + "','" + age + "','" + mob + "','" + ob + "')";
            int a = db.exenonquery(sql2);
            if(a>0)
            {
                Response.Write("success");
                Response.Redirect("staffreg.aspx");

            }
            else
            {
                Response.Write("error");
            }
        }
    }
}