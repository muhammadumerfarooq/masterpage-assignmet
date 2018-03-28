<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminsignup.aspx.cs" Inherits="adminsignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style8 {
            width: 62%;
            height: 211px;
            margin-left: 119px;
        }
        .auto-style6 {
            width: 153px;
        }
        .auto-style7 {
            width: 251px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style14 {
            width: 164px;
        }
        .auto-style5 {
        margin-left: 6px;
        margin-top: 0px;
    }
        .auto-style9 {
            width: 153px;
            height: 34px;
        }
        .auto-style10 {
            width: 251px;
            height: 34px;
        }
        .auto-style11 {
            height: 34px;
            width: 164px;
        }
        .auto-style13 {
            height: 33px;
            width: 153px;
        }
        .auto-style12 {
            height: 33px;
        }
        .auto-style15 {
            height: 33px;
            width: 164px;
        }
        .auto-style16 {
            height: 32px;
        }
        .auto-style17 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="Create Admin Account "></asp:Label>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="auto-style8" style="background-color:lightgreen", border="1" title="Survey Form">

        <tr>
            <td class="auto-style6">&nbsp;<asp:Label ID="Namelbl" runat="server" Text="Name" Font-Bold="True"></asp:Label>
                <br />
            </td>
            <td class="auto-style7"><asp:TextBox ID="Namebox" runat="server" CssClass="auto-style4" Width="242px" ToolTip="Enter Name"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    </td>
            <td class="auto-style14">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Namebox" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" Font-Underline="True" ForeColor="Red" ToolTip="Enter Name"></asp:RequiredFieldValidator>
            &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Namebox" ErrorMessage="Not Valid Name" Font-Bold="True" ForeColor="Red" ValidationExpression="^[a-zA-Z'.\s]{10,40}$" ToolTip="Enter Name" ></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
    <asp:Label ID="Namelbl4" runat="server" Text="Gender" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td class="auto-style7">
    <asp:RadioButtonList ID="GenderList" runat="server" CssClass="auto-style5" Height="16px" Width="84px" Font-Bold="True" ToolTip="Enter Gender">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
</asp:RadioButtonList>
            </td>
            <td class="auto-style14">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="GenderList" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" Font-Underline="True" ForeColor="Red" ToolTip="Enter Gender"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;<asp:Label ID="Namelbl0" runat="server" Text="Occuptation" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="auto-style10">
    <asp:TextBox ID="Occbox" runat="server" Width="242px" ToolTip="Enter Occupation"></asp:TextBox>
            </td>
            <td class="auto-style11">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Occbox" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" Font-Underline="True" ForeColor="Red" ToolTip="Enter Occupation"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Occbox" ErrorMessage="Not Valid Input" Font-Bold="True" ForeColor="Red" ValidationExpression="^[a-zA-Z'.\s]{5,40}$" ></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">

                &nbsp;&nbsp;<asp:Label ID="Namelbl1" runat="server" Text="Age" Font-Bold="True"></asp:Label>

            </td>
            <td class="auto-style7">

    <asp:TextBox ID="AgeBox" runat="server" Width="241px" ToolTip="Enter Age"></asp:TextBox>

            </td>
            <td class="auto-style14">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AgeBox" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" Font-Underline="True" ForeColor="Red" ToolTip="Enter Age"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="AgeBox" ErrorMessage="AgeBetween(18-65)" Font-Bold="True" ForeColor="Red" MaximumValue="65" MinimumValue="18"></asp:RangeValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style13">

                &nbsp;<asp:Label ID="Namelbl5" runat="server" Text="Income" Font-Bold="True"></asp:Label>
                &nbsp;</td>
            <td class="auto-style12">

    <asp:TextBox ID="IncomeBox" runat="server" Width="240px" ToolTip="Enter Income"></asp:TextBox>

            </td>
            <td class="auto-style15">

    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="IncomeBox" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" Font-Underline="True" ForeColor="Red" ToolTip="Enter Income"></asp:RequiredFieldValidator>

            &nbsp;&nbsp;&nbsp;
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="AgeBox" ErrorMessage="IncomeBetween(2K-60K)" Font-Bold="True" ForeColor="Red" MaximumValue="60000" MinimumValue="2000"></asp:RangeValidator>

            </td>
        </tr>
        <tr>
            <td class="auto-style16">

                <asp:Label ID="Namelbl6" runat="server" Text="Password" Font-Bold="True"></asp:Label>

            </td>
            <td class="auto-style16">

    <asp:TextBox ID="PasswordBox" runat="server" Width="240px" ToolTip="Enter Income"></asp:TextBox>

            </td>
            <td class="auto-style16">

    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="PasswordBox" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" Font-Underline="True" ForeColor="Red" ToolTip="Enter Password"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;

            </td>

        </tr>
        <tr>
            <td>

                <asp:Label ID="Namelbl7" runat="server" Text="Confirm Password" Font-Bold="True"></asp:Label>

            </td>
            
            <td>

    <asp:TextBox ID="ConfirmPasswordBox" runat="server" Width="240px" ToolTip="Enter Income"></asp:TextBox>

            </td>
            
            <td>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ConfirmPasswordBox" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" Font-Underline="True" ForeColor="Red" ToolTip="Enter Password Again"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordBox" ControlToValidate="ConfirmPasswordBox" ErrorMessage="Password Not Match" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>

            </td>
        </tr>
    </table>
    
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Signup" runat="server" BackColor="Blue" CssClass="auto-style17" Font-Bold="True" Height="26px" OnClick="Button1_Click" Text="SignUp" Width="106px" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

