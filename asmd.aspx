<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="asmd.aspx.cs" Inherits="WebApplication2.asmd" %>

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
                        <asp:Label ID="lblNum1" runat="server" Text="Number1">  </asp:Label>
                    </td>

                    <td>
                        <asp:Textbox ID="txtnum1" runat="server" >  </asp:Textbox>
                    </td>

                </tr>


                <tr>
    <td>
        <asp:Label ID="lblnum2" runat="server" Text="Number2">  </asp:Label>
    </td>

    <td>
        <asp:Textbox ID="txtnum2" runat="server" >  </asp:Textbox>
    </td>

</tr>
<tr>
    <td>
        <asp:Label ID="lblResult" runat="server" text="result">  </asp:Label>

    </td>

    <td>
    <asp:Textbox ID="txtresult" runat="server" >  </asp:Textbox>
</td>
</tr>

    <tr>
    <td>
        <asp:Button ID="btnAdd" runat="server" text="Add" onclick="btnAdd_Click"  />
        <asp:Button ID="btnSub" runat="server" text="Sub" onclick="btnSub_Click"  />
        <asp:Button ID="btnMul" runat="server" text="Mul" onclick="btnMul_Click"  />
        <asp:Button ID="btnDiv" runat="server" text="Div" onclick="btnDiv_Click"  />

    </td>
  </tr>






            </table>
        </div>
    </form>
</body>
</html>
