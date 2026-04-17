using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fill Days 1 to 31
                for (int i = 1; i <= 31; i++)
                {
                    ddlDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }

                // Fill Years 
                int currentYear = DateTime.Now.Year;
                for (int i = currentYear; i >= 1970; i--)
                {
                    ddlYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
            }

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            string name = txtName.Text;
            string mobile = txtMobile.Text;
            string email = txtEmail.Text;

            string dob = $"{ddlDay.SelectedValue}/{ddlMonth.SelectedItem.Text}/{ddlYear.SelectedValue}";

            string gender = "";
            if (rbMale.Checked) gender = "Male";
            else if (rbFemale.Checked) gender = "Female";
            else gender = "Not Selected";

           
            List<string> selectedHobbies = new List<string>();
            if (chkCricket.Checked) 
                selectedHobbies.Add("Cricket");
            if (chkMusic.Checked) 
                selectedHobbies.Add("Music");
            if (chkReading.Checked) 
                selectedHobbies.Add("Reading");

            string hobbies = selectedHobbies.Count > 0 ? string.Join(", ", selectedHobbies) : "None";
            //Terinary Operator--If a then b else c
            //We use the $@ symbols before the string.

           // The $ (Interpolation)allows us to put variables(like { name}) directly inside the text.

            //The @ (Verbatim)allows the string to span multiple lines in your code editor, making it easier for you to read and organize.
            lblDisplay.Text = $@"
                <h3>Submission Received:</h3>
                <b>Name:</b> {name} <br/>
                <b>Mobile:</b> {mobile} <br/>
                <b>Gender:</b> {gender} <br/>
                <b>DOB:</b> {dob}<br/>
                <b>Email:</b> {email} <br/>
                <b>Hobbies:</b> {hobbies}
            ";
        }
    
    }
}