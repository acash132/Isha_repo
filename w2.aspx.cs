using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace YourNamespace // Make sure this matches the Inherits attribute in your .aspx file
{
    public partial class Exam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Only load questions on the first page load, not on postbacks (like clicking submit)
            if (!IsPostBack)
            {
                LoadQuestions();
            }
        }

        private void LoadQuestions()
        {
            // In a real application, you would fetch this data from SQL Server using ADO.NET or Entity Framework
            List<ExamQuestion> questions = new List<ExamQuestion>
            {
                new ExamQuestion {
                    Id = 1,
                    QuestionText = "What does HTML stand for?",
                    Options = new string[] { "Hyper Text Preprocessor", "Hyper Text Markup Language", "Hyper Tool Multi Language", "Hyperlink and Text Markup Language" },
                    CorrectAnswer = "Hyper Text Markup Language"
                },
                new ExamQuestion {
                    Id = 2,
                    QuestionText = "Which language is primarily used for ASP.NET code-behind?",
                    Options = new string[] { "Java", "Python", "C#", "C++" },
                    CorrectAnswer = "C#"
                },
                new ExamQuestion {
                    Id = 3,
                    QuestionText = "What is the capital of France?",
                    Options = new string[] { "Berlin", "Madrid", "Rome", "Paris" },
                    CorrectAnswer = "Paris"
                }
            };

            // Bind the data to the repeater
            rptQuestions.DataSource = questions;
            rptQuestions.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int score = 0;
            int totalQuestions = rptQuestions.Items.Count;

            // Loop through each question block in the repeater
            foreach (RepeaterItem item in rptQuestions.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    // Find the RadioButtonList and HiddenField for the current question
                    RadioButtonList rblOptions = (RadioButtonList)item.FindControl("rblOptions");
                    HiddenField hfCorrectAnswer = (HiddenField)item.FindControl("hfCorrectAnswer");

                    // Check if an option was selected AND if it matches the correct answer
                    if (rblOptions.SelectedItem != null && rblOptions.SelectedValue == hfCorrectAnswer.Value)
                    {
                        score++;
                        // Optional: Highlight correct answers in green
                        rblOptions.SelectedItem.Attributes.Add("style", "color: green; font-weight: bold;");
                    }
                    else if (rblOptions.SelectedItem != null)
                    {
                        // Optional: Highlight wrong answers in red
                        rblOptions.SelectedItem.Attributes.Add("style", "color: red; font-weight: bold;");
                    }
                }
            }

            // Hide the submit button so they can't submit again
            btnSubmit.Visible = false;

            // Display the final score
            lblResult.Text = $"Exam Complete! You scored {score} out of {totalQuestions}.";
        }
    }

    // A simple class to represent a question structure
    public class ExamQuestion
    {
        public int Id { get; set; }
        public string QuestionText { get; set; }
        public string[] Options { get; set; }
        public string CorrectAnswer { get; set; }
    }
}