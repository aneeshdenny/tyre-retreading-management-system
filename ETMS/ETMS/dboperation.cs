using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace ETMS
{
    public class dboperation
    {
        public SqlConnection con;
        public SqlCommand cmd;
        public dboperation()
        {
            con = new SqlConnection("Data Source=LAPTOP-SE1U1IQ0;Initial Catalog=ETMS;Integrated Security=True");
            cmd = new SqlCommand();
            cmd.Connection = con;
        }
        public SqlConnection getcon()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            return con;
        }
        public void dbclose()
        {
            con.Close();
        }
        public int exenonquery(string sql)
        {
            getcon();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        public object exescalar(string sql)
        {
            getcon();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            object ob = cmd.ExecuteScalar();
            return ob;
        }
        public SqlDataReader exereader(string sql)
        {
            getcon();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public DataSet exedataset(string sql)
        {
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataTable exetable(string sql)
        {
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public void fillgrid(string sql, GridView dv)
        {
            dv.DataSource = exedataset(sql);
            dv.DataBind();
        }
        public void filldlist(string sql, DataList dl)
        {
            dl.DataSource = exedataset(sql);
            dl.DataBind();
        }
        public void fillddl(string sql, DropDownList ddl, string txt, string val)
        {
            ddl.DataTextField = txt;
            ddl.DataValueField = val;
            ddl.DataSource = exedataset(sql);
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem("........select.......", "0"));
        }
        public void fillrbl(string sql, RadioButtonList rbl, string txt, string value)
        {
            rbl.DataTextField = txt;
            rbl.DataValueField = value;
            rbl.DataSource = exedataset(sql);
            rbl.DataBind();
        }
    }
}