using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class W3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (rbtDelhi.Checked)
            {
                lblMessage.Text = "Welcome to Delhi";
                lblMessage.ForeColor = System.Drawing.Color.Green;

            }
            else if (rbtMumbai.Checked)
            {
                lblMessage.Text = "Wrong Answer!Pls Try Again";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            else if (rbtChennai.Checked)
            {
                lblMessage.Text = "Wrong Answer!Pls Try Again";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            else if (rbtKolkata.Checked)
            {
                lblMessage.Text = "Wrong Answer!Pls Try Again";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                lblMessage.Text = "Please select an option.";
                lblMessage.ForeColor = System.Drawing.Color.Blue;
            }
        }
    }
}