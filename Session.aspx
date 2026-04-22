<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Session.aspx.cs" Inherits="WebApplication2.Session" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>SessionStateData.aspx</h3>
<table>
<tr>
<td>FirstName:</td><td><asp:TextBox ID="txtfName" runat="server"/></td>
</tr>
<tr>
<td>LastName:</td><td><asp:TextBox ID="txtlName" runat="server"/></td>
</tr>
<tr><td></td><td> <asp:Button ID="btnSubmit" runat="server" Text="SessionState Data" OnClick="btnSubmit_Click"  /></td></tr>
</table>
        </div>
    </form>
</body>
</html>
