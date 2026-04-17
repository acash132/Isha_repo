<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Swaraj Login</title>
</head>


<body>
    <form id="form1" runat="server">

        <div>
            
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
               
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
                   
                <tr>
               
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                    </td>
                </tr>
                   

                <tr>
               
                    <td>
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                    </td>
                </tr>
                















            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                    </td>
                    <td>
                        <asp:GridView ID="grdData" runat="server" Text=""></asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
        


    </form>
</body>
</html>
