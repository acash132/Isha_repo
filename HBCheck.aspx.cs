using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class cbox1 : System.Web.UI.Page
    {
        protected void Hobby_Changed(object sender, EventArgs e)
        {
            List<string> selectedHobbies = new List<string>();

            
            if (chkReading.Checked) 
                selectedHobbies.Add("Reading");
            if (chkMusic.Checked) 
                selectedHobbies.Add("Music");
            if (chkSports.Checked) 
                selectedHobbies.Add("Sports");

            
            if (selectedHobbies.Count > 0)
            {
                lblDisplay.Text = string.Join(", ", selectedHobbies);
            }
            else
            {
                lblDisplay.Text = "None";
            }
        }
    }
}