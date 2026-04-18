using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Winapp
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            //  input from the TextBox
            string name = txtUsername.Text;

            //  Checking if the user actually typed something
            if (!string.IsNullOrWhiteSpace(name))
            {
                MessageBox.Show("Hello, " + name + "!", "Welcome");
            }
            else
            {
                MessageBox.Show("Please enter a name first.", "Error");
            }

        }
    }
}
