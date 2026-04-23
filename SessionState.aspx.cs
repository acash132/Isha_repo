using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class SessionState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ClicksCount"] == null)
            {
                Session["ClicksCount"] = 0;
            }
            lblCount.Text = "ClicksCount: " + Session["ClicksCount"].ToString();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int count = (int)Session["ClicksCount"];
            count++;
            Session["ClicksCount"] = count;
            lblCount.Text = "ClicksCount: " + Session["ClicksCount"].ToString();
        }
    }
}