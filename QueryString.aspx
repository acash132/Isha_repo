<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryString.aspx.cs" Inherits="WebApplication2.QueryString" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
<asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                    <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td>   <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></td>
                </tr>
            </table>
            
           <br />
            
           <br />
         
        </div>
    </form>
</body>
</html>
