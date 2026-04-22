using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Default2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["FirstName"] == null && Session["LastName"] == null)
                {
                    Session["FirstName"] = "ABC";
                    Session["LastName"] = "  XYZ";
                    lblString.Text = "Welcome " + Session["FirstName"] + Session["LastName"];
                }
                else
                {
                    lblString.Text = Session["FirstName"] + " " + Session["LastName"];
                    lblfName.Text = Session["FirstName"].ToString();
                    lbllName.Text = Session["LastName"].ToString();
                }

            }
        }
    }
}