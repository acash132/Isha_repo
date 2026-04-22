using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            HttpCookie usercookie = new HttpCookie("userInfo");
            usercookie["Username"] = txtUsername.Text;
            usercookie["Password"] = txtPassword.Text;
            usercookie.Expires = DateTime.Now.AddSeconds(60);
            Response.Cookies.Add(usercookie);
            Response.Redirect("CookieData.aspx");
        }
    }
}