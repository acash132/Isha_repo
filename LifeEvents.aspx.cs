using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class LifeEvents : System.Web.UI.Page
    {

        protected void Page_PreInit(object sender, EventArgs e)
        {
            lblMesg.Text = "Hi Akash This is Page pre init event <br>";
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            Label1.Text = "Hi Akash This is Page init event <br>";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = "Hi Akash This is Page Load Event <br>";
            btnSubmit.Visible = false;
        }   

        
        
        protected void Page_InitComplete(object sender, EventArgs e)
        {
            Label2.Text = "Hi Akash This is Page Init Complete <br>";
        }
        

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
           /*
            {
                lblTelugu.Text = "Selected language is Telugu";
            }
            else if (rbtHindi.Checked)
            {
                lblHindi.Text = "Selected language is Hindi";
            }
            else if (rbtEnglish.Checked)
            {

                lblEnglish.Text = "Selected language is English";
            }
            */
        }

        protected void txtusername_TextChanged(object sender, EventArgs e)
        {
            if (txtusername.Text.Length > 0)
            {
                btnSubmit.Visible = true;
            }
        }

        protected void rbtTelugu_CheckedChanged(object sender, EventArgs e)
        {
            if (rbtTelugu.Checked)
            {
                lblTelugu.Text = "Selected langugage is Telugu";
            }
        }

        protected void rbtHindi_CheckedChanged(object sender, EventArgs e)
        {
            if (rbtHindi.Checked)
            {
                lblHindi.Text = "Selected langugage is Hindi";
            }
        }

        protected void rbtEnglish_CheckedChanged(object sender, EventArgs e)
        {
            if (rbtEnglish.Checked)
            {
                lblEnglish.Text = "Selected language is English";
            }
        }

        protected void chkChess_CheckedChanged(object sender, EventArgs e)
        {
            if (chkChess.Checked)
            {
                lblchkmesg.Text = "Chess is Selected";
            }
        }

        protected void chkTennis_CheckedChanged(object sender, EventArgs e)
        {

            if (chkTennis.Checked)
            {
                lblchkmesg.Text = "Tennis is Selected";
            }
        }

        protected void chkCricket_CheckedChanged(object sender, EventArgs e)
        {

            if (chkCricket.Checked)
            {
                lblchkmesg.Text = "Cricket is Selected";
            }
        }
    }
}
