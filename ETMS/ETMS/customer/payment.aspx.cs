using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace ETMS.customer
{
    public partial class payment : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            string cid = Session["cid"].ToString();
            string sid = Session["sid"].ToString();
            string sql = "select * from sales where cid='"+cid+"' and sid='"+sid+"'";
            DataTable dt = db.exetable(sql);

            Label1.Text = dt.Rows[0][5].ToString();
            
            //TextBox1.Text = dt.Rows[0][5].ToString();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select * from sales";
            DataTable dt = db.exetable(str);
            string sid = dt.Rows[0][0].ToString();
            string date1 = Session["date"].ToString();
            string amt = Label1.Text;
            string accno = TextBox2.Text;
            string ifsc = TextBox3.Text;
            string acchname = TextBox4.Text;
            string sql = "insert into bill values('" + date1 + "','" + sid + "','" + amt + "')";
            int ab = db.exenonquery(sql);
            string sqlbill = "select * from bill";
            DataTable dtbill = db.exetable(sqlbill);
            string bid = dtbill.Rows[0][0].ToString();
            string sqlbank = "insert into bank values('" + accno + "','" + ifsc + "','" + acchname + "','" + amt + "','" + bid + "')";
            int ac = db.exenonquery(sqlbank);
            if (ac > 0)
            {
                Response.Write("<script>alert('Your Booking is successfully completed')</script>");
                //Response.Write("Completed the transaction");
            }
            else
            {
                Response.Write("error");
            }
        }
    }
}