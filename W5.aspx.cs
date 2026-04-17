using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    
    
    public partial class W5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click (object sender, EventArgs e)
        {
          lblAdd.Text=txtNum1.Text + txtNum2.Text;
          lblAdd.Text = Convert.ToString(Convert.ToInt32(txtNum1.Text)+ Convert.ToInt32(txtNum2.Text));
        }


    }   
}