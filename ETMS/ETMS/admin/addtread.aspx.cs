using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETMS.admin
{
    public partial class addtread : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = TextBox1.Text;
            string sql = "insert into tread values('" + s + "')";
            int ab = db.exenonquery(sql);
            if(ab>0)
            {
                Response.Write("success");
                TextBox1.Text = "";
            }
            else
            {
                Response.Write("not success");
            }
        }
    }
}