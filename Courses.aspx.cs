using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void chkc_CheckedChanged(object sender, EventArgs e)
        {
            decimal totalValue = 0;

            if (chkc.Checked)
            {
                totalValue += 3000;
            }
            if (Chkcpp.Checked)
            {
                totalValue += 3000;
            }
            if (ChkDotNet.Checked)
            {
                totalValue += 8000;
            }

            txtResult.Text = totalValue.ToString();
        }

    }
}