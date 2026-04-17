<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="W3.aspx.cs" Inherits="WebApplication2.W3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
          <h2>C#  Exam</h2>

            <asp:Label ID="lblQuestion" runat="server" text="what is the capital of india"> </asp:Label><br />
            <asp:RadioButton ID="rbtDelhi" runat="server" GroupName="capital" text="Delhi" /><br />
            <asp:RadioButton ID="rbtMumbai" runat="server" GroupName="capital" text="Mumbai" /><br />
            <asp:RadioButton ID="rbtChennai" runat="server" GroupName="capital" text="Chennai" /><br />
            <asp:RadioButton ID="rbtKolkata" runat="server" GroupName="capital" text="Kolkata" /><br />

            <asp:Button ID="btnSubmit" runat="server" text="Submit" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblMessage" runat="server" text=""></asp:Label>
        </div>
           
    </form>
</body>
</html>
