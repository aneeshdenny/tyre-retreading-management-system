using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ETMS.customer
{
    public partial class home : System.Web.UI.Page
    {
        dboperation db = new dboperation();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {


                db.fillddl("select * from category", DropDownList1, "cname", "cid");

                string sql1 = "select * from pattern";
                db.filldlist(sql1, DataList1);
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           
        }

       

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            string aa = DropDownList1.SelectedItem.Value;
            string sql2 = "select * from pattern where v_id='" + aa + "'";
            db.filldlist(sql2, DataList1);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (DataList1.SelectedIndex != -1)
            {


                try
                {



                    string a = ((Label)DataList1.SelectedItem.FindControl("Label2")).Text;
                    string pid = ((Label)DataList1.SelectedItem.FindControl("Label3")).Text;
                    Response.Write(pid);
                    string tid = Session["tid"].ToString();
                    string qty = Session["qty"].ToString();
                    int amt = Convert.ToInt32(a);
                    int Qty = Convert.ToInt32(qty);
                    int tamt = Qty * amt;
                    string quantity = qty.ToString();
                    Session["pid"] = pid.ToString();
                    string cid = Session["cid"].ToString();
                    string cat_id = DropDownList1.SelectedItem.Value;
                    string sql = "insert into sales values('" + tid + "','" + pid + "','" + cid + "','" + quantity + "','" + tamt + "','" + cat_id + "')";
                    int ab = db.exenonquery(sql);
                    //string cid = Session["cid"].ToString();
                    
                    string sqlsales = "select * from sales where cid='"+cid+"' and pid='"+pid+"' and qty='"+Qty+"' and amt='"+tamt+"'";
                    DataTable dt1 = db.exetable(sqlsales);
                    Session["sid"] = dt1.Rows[0][0].ToString();
                    if (ab > 0)
                    {
                        Session["date"] = DateTime.Now.ToString("d");

                        Response.Redirect("payment.aspx");
                        Response.Write("success");
                    }
                    else
                    {
                        Response.Write("error");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;
        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}