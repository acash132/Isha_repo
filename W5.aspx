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
            <asp:Label ID="EmpId" runat="server" Text="EmployeeId"></asp:Label><br >
        </td>
        <td>
            <asp:TextBox ID="txtEmpId" runat="server"></asp:TextBox><br />
        </td>

        <td>
            <asp:Label ID="EmpName" runat="server" Text="EmployeeName"></asp:Label> 
      </td>
        <td>
            <asp:TextBox ID="txtEmpname" runat="server"></asp:TextBox>
        </td>

        <td>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblMessage" runat="server" text=""></asp:Label>
             <asp:Label ID="LblEmpname" runat="server" text=""></asp:Label>


        </td>

    </tr>
        </table>
        </div>
    </form>
</body>
</html>
