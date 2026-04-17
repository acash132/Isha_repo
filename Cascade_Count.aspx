
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cascade_Count.aspx.cs" Inherits="WebApplication2.Cascade_Count" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="true"
                OnSelectedIndexChanged ="ddlcountry_selectedIndexChanged">
                </asp:DropDownList>
            <asp:DropDownList ID="ddlState" runat="server"  AutoPostBack="true" 
                OnSelectedIndexChanged ="ddlstate_selectedIndexChanged"> 
                
            </asp:DropDownList>

            <asp:DropDownList ID="ddlCity" runat="server"  AutoPostBack="true" >
    
    
</asp:DropDownList>

        </div>
    </form>
</body>
</html>
