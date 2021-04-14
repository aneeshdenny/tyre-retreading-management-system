using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETMS.admin
{
    public partial class updatedeletepattern : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillddl("select * from category", DropDownList1, "cname", "cid");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
            Image1.ImageUrl = "~/patternpics/" + GridView1.SelectedRow.Cells[3].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[5].Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s = TextBox1.Text;
            string sql = "delete from pattern where pname='" + s + "'";
            int a = db.exenonquery(sql);
            if(a>0)
            {
                Response.Write("DELETED SUCCESS");
                TextBox1.Text = "";
                TextBox3.Text = "";
                Image1.ImageUrl = "";
            }
            else
            {
                Response.Write("ERROR");
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
            string amt = TextBox3.Text;
            string a = DropDownList1.SelectedItem.Value;
            string sql = "update pattern set pname='" + name + "',img='" + image + "',amt='" + amt + "',v_id='" + a + "'";
            int ab = db.exenonquery(sql);
            if(ab>0)
            {
                Response.Write("update success");
            }
            else
            {
                Response.Write("error");
            }
        }
    }
}