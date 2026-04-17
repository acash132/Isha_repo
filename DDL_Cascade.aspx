<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DDL_Cascade.aspx.cs" Inherits="WebApplication2.DDL_Cascade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblMsg" runat="server" Text="Select Date:" Foreach="ddlYear" /><br />

        <%-- Year DropDown --%>
        <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Date_Changed">
        </asp:DropDownList>

        <%-- Month DropDown --%>
        <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Date_Changed">
            <asp:ListItem Value="1">Jan</asp:ListItem>
            <asp:ListItem Value="2">Feb</asp:ListItem>
            <asp:ListItem Value="3">Mar</asp:ListItem>
            <asp:ListItem Value="4">Apr</asp:ListItem>
            <asp:ListItem Value="5">May</asp:ListItem>
            <asp:ListItem Value="6">Jun</asp:ListItem>
            <asp:ListItem Value="7">Jul</asp:ListItem>
            <asp:ListItem Value="8">Aug</asp:ListItem>
            <asp:ListItem Value="9">Sep</asp:ListItem>
            <asp:ListItem Value="10">Oct</asp:ListItem>
            <asp:ListItem Value="11">Nov</asp:ListItem>
            <asp:ListItem Value="12">Dec</asp:ListItem>
        </asp:DropDownList>

        <%-- Day DropDown (This is the one that "cascades") --%>
        <asp:DropDownList ID="ddlDay" runat="server">
        </asp:DropDownList>
    </div>
</form>
</body>
</html>
