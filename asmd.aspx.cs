using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class asmd : System.Web.UI.Page
    {
        public int num1, num2, result;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSub_Click(object sender, EventArgs e)
        {
            num1 = Convert.ToInt32(txtnum1.Text);
            num2= Convert.ToInt32(txtnum2.Text);
            result=num1-num2;
            txtresult.Text=Convert.ToString(result);
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            num1 = Convert.ToInt32(txtnum1.Text);
            num2 = Convert.ToInt32(txtnum2.Text);
            result = num1 + num2;
            txtresult.Text = Convert.ToString(result);
        }
        protected void btnMul_Click(object sender, EventArgs e)
        {
            num1 = Convert.ToInt32(txtnum1.Text);
            num2 = Convert.ToInt32(txtnum2.Text);
            result = num1 * num2;
            txtresult.Text = Convert.ToString(result);
        }
        protected void btnDiv_Click(object sender, EventArgs e)
        {
            num1 = Convert.ToInt32(txtnum1.Text);
            num2 = Convert.ToInt32(txtnum2.Text);
            result = num1 / num2;
            txtresult.Text = Convert.ToString(result);
        }

    }
}