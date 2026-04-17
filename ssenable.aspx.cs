using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class ssenable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void txtnum2_TextChanged(object sender, EventArgs e)
        {
            
            btnConnect.Enabled = !string.IsNullOrWhiteSpace(txtnum2.Text);
        }
    }
}