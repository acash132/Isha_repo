using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Reg_Val : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Logic to run when the page first loads
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Page.IsValid checks if all validation controls on the page are satisfied
            if (Page.IsValid)
            {
                // Retrieve values from the TextBoxes
                string firstName = txtFirstname.Text;
                string lastName = txtlastname.Text;
                string email = txtEmail.Text;
                string mobile = txtMobile.Text;

                // Success Logic
                // Here you would typically save the data to a database
                Response.Write("<script>alert('Registration Successful for " + firstName + "!');</script>");

                // Clear fields after success (optional)
                ClearForm();
            }
            else
            {
                // This block is technically optional as the validators 
                // will show their ErrorMessage on the UI automatically.
                Response.Write("<script>alert('Please correct the errors in the form.');</script>");
            }
        }

        private void ClearForm()
        {
            txtFirstname.Text = "";
            txtlastname.Text = "";
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtPass.Text = "";
            txtConfirm.Text = "";
        }
    }
}