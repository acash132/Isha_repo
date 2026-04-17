using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Mov_Book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnBook_Click(object sender, EventArgs e)
        {
            // 1. Capture Basic Info
            string name = txtName.Text;
            string email = txtEmail.Text;
            string showTime = rblShowTime.SelectedValue;
            string movie = ddlMovies.SelectedItem.Value != "" ? ddlMovies.SelectedItem.Text : "None Selected";

            // 2. Capture Add-ons (Multiple selections)
            List<string> selectedAddons = new List<string>();
            foreach (ListItem item in cblAddons.Items)
            {
                if (item.Selected)
                {
                    selectedAddons.Add(item.Text);
                }
            }

            // Formatting Add-ons string
            string addonsText = selectedAddons.Count > 0
                ? string.Join(", ", selectedAddons)
                : "None";

            // 3. Validation Check (Simple)
            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(showTime))
            {
                lblDisplay.Text = "<span style='color:red;'>Please provide your name and select a show time.</span>";
            }
            else
            {
                // 4. Display Results
                lblDisplay.Text = $@"
                    <strong>Customer:</strong> {name} <br />
                    <strong>Email:</strong> {email} <br />
                    <strong>Showtime:</strong> {showTime} <br />
                    <strong>Movie:</strong> {movie}<br />
                    <strong>Selected Add-ons:</strong> {addonsText} <br />
                    <br />
                    <em>Booking confirmed at {DateTime.Now:f}!</em>";
            }

            // Make the result panel visible
            pnlSummary.Visible = true;
        }
    }
}