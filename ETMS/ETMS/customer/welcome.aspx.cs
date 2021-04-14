using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ETMS.customer
{
    public partial class welcome : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                db.fillddl("select * from tread", DropDownList1, "tname", "treadid");
                string lid = Session["l_id"].ToString();
                string sqlcust = "select * from customer where lid='"+lid+"'";
                DataTable dt = db.exetable(sqlcust);
                Session["cid"] = dt.Rows[0][0].ToString();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["tid"] = DropDownList1.SelectedItem.Value;
            Session["qty"] = DropDownList2.SelectedItem.Value;
            Response.Redirect("home.aspx");
        }
    }
}