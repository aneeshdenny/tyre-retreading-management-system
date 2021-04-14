using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETMS.admin
{
    public partial class addcategory : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string sql = "insert into category values('" + name + "')";
            int a = db.exenonquery(sql);
            if(a>0)
            {
                Response.Write("SUCCESS");
                TextBox1.Text = "";
            }
            else
            {
                Response.Write("NOT SUCCESS");
            }
        }
    }
}