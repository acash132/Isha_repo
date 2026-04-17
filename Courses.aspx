<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="WebApplication2.Courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" style="border: 1px solid #ccc; padding: 20px;"    >
                <tr>
                    <td class="auto-style1">
                        <asp:CheckBox ID="chkc" runat="server" Text="C(3000)" AutoPostBack="true" OnCheckedChanged="chkc_CheckedChanged" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:CheckBox ID="Chkcpp" runat="server" Text="Cpp(3000)" AutoPostBack="true" OnCheckedChanged="chkc_CheckedChanged" />

                    </td>  
                </tr>

                
                <tr>
                    <td>
                        <asp:CheckBox ID="ChkDotNet" runat="server" Text="DotNet(8000)" AutoPostBack="true" OnCheckedChanged="chkc_CheckedChanged" />

                    </td>  
                </tr>

                <tr>
                <td>
                <asp:Label ID="lblTotal" runat="server" Text="Total"></asp:Label>

                </td>  

                <td>
                    <asp:TextBox ID="txtResult" runat="server" Enabled="false"></asp:TextBox>

                </td> 


            </tr>


            </table>

        </div>
    </form>
</body>
</html>
