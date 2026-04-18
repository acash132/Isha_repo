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
            //  Logic to run when the page first loads
        }


        protected void cvAge_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                int age = int.Parse(args.Value);

                //  Check if age is between 18 and 100
                if (age >= 18 && age <= 100)
                {
                    args.IsValid = true; // Validation passed
                }
                else
                {
                    args.IsValid = false; // Validation failed
                }
            }
            catch
            {
                // If input is not a number, fail validation
                args.IsValid = false;
            }
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
                
                Response.Write("<script>alert('Registration Successful for " + firstName + "!');</script>");

                
                ClearForm();
            }
            else
            {
                
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