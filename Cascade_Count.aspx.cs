using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Cascade_Count : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlCountry.Items.Add("--Select Country--");
                ddlCountry.Items.Add("USA");
                ddlCountry.Items.Add("India");
                ddlCountry.Items.Add("UK");


            }

        }

        protected void ddlcountry_selectedIndexChanged(object sender, EventArgs e)
        {
            ddlState.Items.Clear();
            if (ddlCountry.SelectedValue == "USA")
            {
                ddlState.Items.Add("--Selected State--");
                ddlState.Items.Add("California");
                ddlState.Items.Add("Newyork");
                ddlState.Items.Add("Texas");


            }

            else if (ddlCountry.SelectedValue == "India")
            {
                ddlState.Items.Add("--Selected State--");
                ddlState.Items.Add("Chandigarh");
                ddlState.Items.Add("Manipur");
                ddlState.Items.Add("Telangana");


            }

            else if (ddlCountry.SelectedValue == "UK")
            {
                ddlState.Items.Add("--Selected State--");
                ddlState.Items.Add("England");
                ddlState.Items.Add("ScotLand");
                ddlState.Items.Add("Whales");


            }
        }

        protected void ddlstate_selectedIndexChanged(object sender, EventArgs e)
        {
            ddlCity.Items.Clear();
            if (ddlState.SelectedValue == "Texas")
            {
                ddlCity.Items.Add("--Selected City--");
                ddlCity.Items.Add("Dallas");
                ddlCity.Items.Add("connecticut");
                ddlCity.Items.Add("Ohio");


            }

            else if (ddlState.SelectedValue == "Telangana")
            {
                ddlCity.Items.Add("--Selected City--");
                ddlCity.Items.Add("Warangal");
                ddlCity.Items.Add("Khammam");
                ddlCity.Items.Add("Nalgonda");


            }

            else if (ddlState.SelectedValue == "England")
            {
                ddlCity.Items.Add("--Selected City--");
                ddlCity.Items.Add("Oxford");
                ddlCity.Items.Add("Cambridge");
                ddlCity.Items.Add("LiverPool");


            }
        }
    }
}