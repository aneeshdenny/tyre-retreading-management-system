using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ETMS.staff
{
    public partial class edit : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = Session["l_id"].ToString();
            DataTable dt = db.exetable("select * from staff2 where lid='" + s + "'");
            TextBox2.Text = dt.Rows[0][1].ToString();
            TextBox3.Text = dt.Rows[0][2].ToString();
            TextBox4.Text = dt.Rows[0][4].ToString();
            TextBox5.Text = dt.Rows[0][5].ToString();
            TextBox6.Text = dt.Rows[0][6].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ss = Session["l_id"].ToString();
            string sql = "select * from staff2 where lid='" + ss + "'";
            DataTable da = db.exetable(sql);
            string name = TextBox2.Text;
            string desig = TextBox3.Text;
            string email = TextBox4.Text;
            string age = TextBox5.Text;
            string mob = TextBox6.Text;
            string sql1 = "update staff2 set name='" + name + "',desig='" + desig + "',email='" + email + "',age='" + age + "',mob='" + mob + "',lid='" + ss + "'";
            int a = db.exenonquery(sql1);
            if(a>0)
            {
                Response.Write("SUCCESSS");
            }
            else
            {
                Response.Write("ERROR");
            }
        }
    }
}