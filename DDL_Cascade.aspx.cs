using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class DDL_Cascade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateYears();
                // Set default selections if desired
                ddlYear.SelectedValue = "2026";
                ddlMonth.SelectedValue = "4";
                UpdateDays();
                ddlDay.SelectedValue = "16";
            }
        }

        private void PopulateYears()
        {
            for (int i = 1990; i <= 2027; i++)
            {
                ddlYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        protected void Date_Changed(object sender, EventArgs e)
        {
            UpdateDays();
        }

        private void UpdateDays()
        {
            int year = int.Parse(ddlYear.SelectedValue);
            int month = int.Parse(ddlMonth.SelectedValue);

            // Calculate days in the selected month/year
            int daysInMonth = DateTime.DaysInMonth(year, month);

            // Keep the user's current day selection if possible
            string currentSelectedDay = ddlDay.SelectedValue;

            ddlDay.Items.Clear();
            for (int i = 1; i <= daysInMonth; i++)
            {
                ddlDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            // Restore selection if it still exists in the new range
            if (ddlDay.Items.FindByValue(currentSelectedDay) != null)
            {
                ddlDay.SelectedValue = currentSelectedDay;
            }
        }
    }
}