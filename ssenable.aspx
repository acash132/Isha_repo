<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ssenable.aspx.cs" Inherits="WebApplication2.ssenable" %>

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
            <asp:Label ID="lblss" runat="server" Text="ServerName" ></asp:Label>
            <asp:TextBox ID="txtnum2" runat="server" AutoPostBack="true" OnTextChanged="txtnum2_TextChanged">
                                </asp:TextBox>

            
                        </td>
                    </tr>

                <tr>
        <td>
            <asp:Button ID="btnConnect" runat="server" Text="Connect" Enabled="false" />
        </td>
    </tr>

               

                
            </table>
        </div>
    </form>
</body>
</html>
