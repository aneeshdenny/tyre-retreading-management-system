using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETMS.staff
{
    public partial class welcome : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillddl("select * from category", DropDownList1, "cname", "cid");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string image = FileUpload1.FileName;
            if (FileUpload1.HasFile)
            {
                try
                {
                    FileUpload1.SaveAs(Server.MapPath("~/patternpics/" + FileUpload1.FileName));
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            string amt = TextBox2.Text;
            string a = DropDownList1.SelectedItem.Value;
            //Response.Write(a);
            string sql = "insert into pattern1 values('" + name + "','" + image + "','" + amt + "','" + a + "')";
            //Response.Write(sql);
            int b = db.exenonquery(sql);
            if (b > 0)
            {
                Response.Write("SUCCESS");
            }
            else
            {
                Response.Write("NOT SUCCESS");
            }
        }
    }
}