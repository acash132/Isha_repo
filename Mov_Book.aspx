<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mov_Book.aspx.cs" Inherits="WebApplication2.Mov_Book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title>ak</title>
</head>
<body style="background-color: lightyellow">
    <form id="form1" runat="server">
        <div>
            <h2>🎬 Book Your Movie 🎬</h2>
            
            <div class="section">
                <label>Name:</label><br />
                <asp:TextBox ID="txtName" runat="server" placeholder="Enter your name"></asp:TextBox>
            </div>

            <div class="section">
                <label>Email:</label><br />
                <asp:TextBox ID="txtEmail" runat="server" placeholder="email@example.com"></asp:TextBox>
            </div>

            <div class="section">
                <label><strong>Choose Show Time:</strong></label>
                <asp:RadioButtonList ID="rblShowTime" runat="server">
                    <asp:ListItem Text="Morning (10:00 AM)" Value="Morning"></asp:ListItem>
                    <asp:ListItem Text="Evening (04:00 PM)" Value="Evening"></asp:ListItem>
                    <asp:ListItem Text="Night (09:00 PM)" Value="Night"></asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div class="section">
                <label><strong>Add-ons:</strong></label>
                <asp:CheckBoxList ID="cblAddons" runat="server">
                    <asp:ListItem Text="Popcorn" Value="Popcorn"></asp:ListItem>
                    <asp:ListItem Text="Soft Drinks" Value="Soft Drinks"></asp:ListItem>
                    <asp:ListItem Text="3D Glasses" Value="3D Glasses"></asp:ListItem>
                </asp:CheckBoxList>
            </div>

            <div class="section">
    <label><strong>Select Movie:</strong></label><br />
    <asp:DropDownList ID="ddlMovies" runat="server">
        <asp:ListItem Text="-- Select a Movie --" Value=""></asp:ListItem>
        <asp:ListItem Text="Thandel" Value="Thandel"></asp:ListItem>
        <asp:ListItem Text="Dhurandhar" Value="Dhurandhar"></asp:ListItem>
        <asp:ListItem Text="The Taj Story" Value="The Taj Story"></asp:ListItem>
    </asp:DropDownList>
</div>







            <div class="section">

            <asp:Button ID="btnBook" runat="server" Text="Confirm Booking" OnClick="btnBook_Click" />
</div>
            <div class="section">
            <asp:Panel ID="pnlSummary" runat="server" Visible="false" CssClass="summary">
                <h3>Booking Details</h3>
                <asp:Label ID="lblDisplay" runat="server" Text=""></asp:Label>
            </asp:Panel>
                </div>
        </div>
    </form>
</body>
</html>
