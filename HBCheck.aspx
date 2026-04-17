<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HBCheck.aspx.cs" Inherits="WebApplication2.cbox1" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Hobby Selector</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 30px; font-family: Arial;">
            <h3>Select Your Hobbies:</h3>
            
            <asp:CheckBox ID="chkReading" runat="server" Text="Reading" AutoPostBack="true" OnCheckedChanged="Hobby_Changed" /><br />
            <asp:CheckBox ID="chkMusic" runat="server" Text="Music" AutoPostBack="true" OnCheckedChanged="Hobby_Changed" /><br />
            <asp:CheckBox ID="chkSports" runat="server" Text="Sports" AutoPostBack="true" OnCheckedChanged="Hobby_Changed" /><br />
            
            <hr />
            <b>You Selected:</b><br />
            <asp:Label ID="lblDisplay" runat="server" Text="None" ForeColor="Green" Font-Bold="true"></asp:Label>
        </div>
    </form>
</body>
</html>