<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="W5.aspx.cs" Inherits="WebApplication2.W5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
    <tr>
        <td>
            <asp:Label ID="lblN1" runat="server" Text="Num1"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox><br />
        </td>

        <td>
            <asp:Label ID="lblN2" runat="server" Text="Num2"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox><br />
        </td>

        <td>
            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
            <asp:Label ID="lblAdd" runat="server" text=""></asp:Label>
             


        </td>

    </tr>
        </table>
        </div>
    </form>
</body>
</html>