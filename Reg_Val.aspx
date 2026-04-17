<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg_Val.aspx.cs" Inherits="WebApplication2.Reg_Val" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Validation</title>
    <style>
        .error { color: red; font-size: 12px; }
        td { padding: 5px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="left">
                <tr>
                    <td><asp:Label ID="lblFirst" runat="server" Text="Firstname"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="rfvFirst" runat="server" CssClass="error" ErrorMessage="First Name is required" ControlToValidate="txtFirstname" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblLast" runat="server" Text="Lastname"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="rfvLast" runat="server" CssClass="error" ErrorMessage="Last Name is required" ControlToValidate="txtlastname" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" CssClass="error" ErrorMessage="Email is required" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                        
                        <asp:RegularExpressionValidator ID="revEmail" 
                            runat="server" CssClass="error" ErrorMessage="Invalid Email Format" 
                            ControlToValidate="txtEmail" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ></asp:RegularExpressionValidator>
                    
                    
                    </td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblMobile" runat="server" Text="Mobile"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMobile" runat="server" CssClass="error" ErrorMessage="Mobile number required" ControlToValidate="txtMobile" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revMobile" runat="server" CssClass="error" ErrorMessage="Enter 10 digit mobile number" ControlToValidate="txtMobile" ValidationExpression="^[0-9]{10}$" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblPass" runat="server" Text="Password"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPass" runat="server" CssClass="error" ErrorMessage="Password required" ControlToValidate="txtPass" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblConfirm" runat="server" Text="Confirm Password"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" CssClass="error" ErrorMessage="Please confirm password" ControlToValidate="txtConfirm" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvPass" runat="server" CssClass="error" ErrorMessage="Passwords do not match" ControlToValidate="txtConfirm" ControlToCompare="txtPass" Display="Dynamic"></asp:CompareValidator>
                    
                   
                    </td>

                </tr>


                <tr>
    <td>
        <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="rfvAge" runat="server" 
            ControlToValidate="txtAge" 
            ForeColor="Red" 
            ErrorMessage="Age is required" 
            Display="Dynamic">
        </asp:RequiredFieldValidator>

        <asp:RangeValidator ID="rvAge" runat="server" 
            ControlToValidate="txtAge" 
            MinimumValue="18" 
            MaximumValue="100" 
            Type="Integer" 
            ForeColor="Red" 
            ErrorMessage="Age must be between 18 and 100" 
            Display="Dynamic">
        </asp:RangeValidator>
    </td>
</tr>







                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>