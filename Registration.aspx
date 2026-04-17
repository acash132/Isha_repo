<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication2.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Registration Form</title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <table class="form-table">
                <tr>
                    <th colspan="2"><h2>Registration Form</h2></th>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Mobile:</td>
                    <td><asp:TextBox ID="txtMobile" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td>
                        <asp:RadioButton ID="rbMale" runat="server" Text="Male" GroupName="gender" />
                        <asp:RadioButton ID="rbFemale" runat="server" Text="Female" GroupName="gender" />
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Hobbies:</td>
                    <td>
                        <asp:CheckBox ID="chkCricket" runat="server" Text="Cricket" />
                        <asp:CheckBox ID="chkMusic" runat="server" Text="Music" />
                        <asp:CheckBox ID="chkReading" runat="server" Text="Reading" />
                    </td>
                </tr>
                <tr>
    <td>Date of Birth:</td>
    <td>
        <asp:DropDownList ID="ddlDay" runat="server">
            <asp:ListItem Text="Day" Value="0"></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlMonth" runat="server">
            <asp:ListItem Text="Month" Value="0"></asp:ListItem>
            <asp:ListItem Text="Jan" Value="1"></asp:ListItem>
            <asp:ListItem Text="Feb" Value="2"></asp:ListItem>
            <asp:ListItem Text="Mar" Value="3"></asp:ListItem>
            <asp:ListItem Text="Apr" Value="4"></asp:ListItem>
            <asp:ListItem Text="May" Value="5"></asp:ListItem>
            <asp:ListItem Text="Jun" Value="6"></asp:ListItem>
            <asp:ListItem Text="Jul" Value="7"></asp:ListItem>
            <asp:ListItem Text="Aug" Value="8"></asp:ListItem>
            <asp:ListItem Text="Sep" Value="9"></asp:ListItem>
            <asp:ListItem Text="Oct" Value="10"></asp:ListItem>
            <asp:ListItem Text="Nov" Value="11"></asp:ListItem>
            <asp:ListItem Text="Dec" Value="12"></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlYear" runat="server">
            <asp:ListItem Text="Year" Value="0"></asp:ListItem>
        </asp:DropDownList>
    </td>
</tr>







                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit Details" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>

            <div class="result-area">
                <asp:Label ID="lblDisplay" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>