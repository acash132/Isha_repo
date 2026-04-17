<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="YourNamespace.Exam" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Exam</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .question-container { background-color: #f9f9f9; padding: 15px; margin-bottom: 20px; border-radius: 5px; border: 1px solid #ddd; }
        .question-text { font-size: 1.2em; font-weight: bold; margin-bottom: 10px; }
        .submit-btn { padding: 10px 20px; background-color: #28a745; color: white; border: none; border-radius: 4px; cursor: pointer; font-size: 1em; }
        .submit-btn:hover { background-color: #218838; }
        .result-text { font-size: 1.5em; margin-top: 20px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>C# and Web Basics Exam</h2>
            <hr />
            
            <asp:Repeater ID="rptQuestions" runat="server">
                <ItemTemplate>
                    <div class="question-container">
                        <div class="question-text">
                            <%# Eval("Id") %>. <%# Eval("QuestionText") %>
                        </div>
                        
                        <asp:HiddenField ID="hfCorrectAnswer" runat="server" Value='<%# Eval("CorrectAnswer") %>' />
                        
                        <asp:RadioButtonList ID="rblOptions" runat="server" DataSource='<%# Eval("Options") %>'>
                        </asp:RadioButtonList>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Exam" CssClass="submit-btn" OnClick="btnSubmit_Click" />
            <br />
            
            <asp:Label ID="lblResult" runat="server" CssClass="result-text" Font-Bold="true" ForeColor="#0066cc"></asp:Label>
        </div>
    </form>
</body>
</html>