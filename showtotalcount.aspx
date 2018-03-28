<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showtotalcount.aspx.cs" Inherits="showtotalcount" %>

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
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style9 {
            width: 153px;
            height: 34px;
        }
        .auto-style13 {
            height: 33px;
            width: 153px;
        }
        .auto-style16 {
            height: 32px;
        }
        .auto-style21 {
            height: 32px;
            width: 109px;
        }
        .auto-style22 {
            width: 109px;
        }
        .auto-style23 {
            width: 109px;
            height: 34px;
        }
        .auto-style24 {
            height: 33px;
            width: 109px;
        }
        .auto-style25 {
            width: 153px;
            height: 43px;
        }
        .auto-style26 {
            width: 109px;
            height: 43px;
        }
        .auto-style27 {
            width: 164px;
            height: 43px;
        }
        .auto-style28 {
            width: 98px;
            height: 43px;
        }
        .auto-style29 {
            margin-left: 3px;
        }
        .auto-style35 {
            width: 141px;
            height: 43px;
        }
        .auto-style37 {
        width: 115px;
        height: 34px;
    }
    .auto-style38 {
        height: 33px;
        width: 115px;
    }
    .auto-style39 {
        height: 32px;
        width: 115px;
    }
    .auto-style40 {
        width: 33%;
        height: 211px;
        margin-left: 119px;
    }
    .auto-style41 {
        width: 39px;
    }
    .auto-style42 {
        width: 39px;
        height: 34px;
    }
    .auto-style43 {
        height: 33px;
        width: 39px;
    }
    .auto-style44 {
        height: 32px;
        width: 39px;
    }
    .auto-style45 {
        width: 115px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Namelbl13" runat="server" Text="Survey Result" Font-Bold="True" Font-Size="Larger"></asp:Label>

    <br />
    <br />
    <table class="auto-style8" style="background-color:lightgreen", border="1" title="Survey Form">

        <tr>
            <td class="auto-style25">&nbsp;<asp:Label ID="Namelbl" runat="server" Text="TotalParticipants" Font-Bold="True"></asp:Label>
                <br />
            </td>
            <td class="auto-style26">&nbsp;<asp:TextBox ID="TotalParticipantsbox" runat="server" CssClass="auto-style29" Width="78px" ToolTip="Enter Name" Height="18px"></asp:TextBox>
                &nbsp;&nbsp;
    </td>
            <td class="auto-style27">
                <asp:Label ID="Namelbl8" runat="server" Text="MaleParticipants" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style28">
                <asp:TextBox ID="MaleParticipantsbox" runat="server" CssClass="auto-style4" Width="46px" ToolTip="Enter Name" Height="19px"></asp:TextBox>
            </td>
            <td class="auto-style35">
                <asp:Label ID="Namelbl10" runat="server" Text="FemaleParticipants" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style35">
                <asp:TextBox ID="FemaleParticipantsbox" runat="server" CssClass="auto-style4" Width="46px" ToolTip="Enter Name" Height="19px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
    <asp:Label ID="Namelbl4" runat="server" Text="AgeGroup" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td class="auto-style22">
                &nbsp;<asp:Label ID="Namelbl22" runat="server" Text="TotalCount" Font-Bold="True"></asp:Label>
                &nbsp;</td>
      </tr>
        <tr>
            <td class="auto-style9">&nbsp;<asp:Label ID="Namelbl0" runat="server" Text="18 ≤ age &lt; 30" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="auto-style23">
                <asp:TextBox ID="agebox1" runat="server" CssClass="auto-style29" Width="78px" ToolTip="Enter Name" Height="18px"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td class="auto-style6">

                &nbsp;<asp:Label ID="Namelbl1" runat="server" Text="30 ≤ age &lt; 40" Font-Bold="True"></asp:Label>

            </td>
            <td class="auto-style22">

                <asp:TextBox ID="agebox2" runat="server" CssClass="auto-style29" Width="78px" ToolTip="Enter Name" Height="18px"></asp:TextBox>
            </td>
            
            
            
        </tr>
        <tr>
            <td class="auto-style13">

                <asp:Label ID="Namelbl11" runat="server" Text="40 ≤ age &lt; 50" Font-Bold="True"></asp:Label>

            </td>
            <td class="auto-style24">

                <asp:TextBox ID="agebox3" runat="server" CssClass="auto-style29" Width="78px" ToolTip="Enter Name" Height="18px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">

                <asp:Label ID="Namelbl12" runat="server" Text="50&lt; age " Font-Bold="True"></asp:Label>

            </td>
            <td class="auto-style21">

                <asp:TextBox ID="agebox4" runat="server" CssClass="auto-style29" Width="78px" ToolTip="Enter Name" Height="18px"></asp:TextBox>
            </td>
            
              
            
            
    </table>
    
    <br />
    <br />
    <table class="auto-style40" style="background-color:lightgreen", border="1" title="Survey Form">

        <tr>
            <td class="auto-style45">
    <asp:Label ID="Namelbl17" runat="server" Text="Income" Font-Bold="True"></asp:Label>
                </td>
            <td class="auto-style41">
    <asp:Label ID="Namelbl23" runat="server" Text="Count" Font-Bold="True"></asp:Label>
            </td>
      </tr>
        <tr>
            <td class="auto-style37">&nbsp;<asp:Label ID="Namelbl18" runat="server" Text="Income ≤ 20K" Font-Bold="True"></asp:Label>
                </td>
            <td class="auto-style42">
                <asp:TextBox ID="incomebox1" runat="server" CssClass="auto-style29" Width="78px" ToolTip="Enter Name" Height="18px"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td class="auto-style45">

                &nbsp;<asp:Label ID="Namelbl19" runat="server" Text="20K ≤" Font-Bold="True"></asp:Label>

            </td>
            <td class="auto-style41">

                <asp:TextBox ID="incomebox2" runat="server" CssClass="auto-style29" Width="78px" ToolTip="Enter Name" Height="18px"></asp:TextBox>
            </td>
            
            
            
        </tr>
        <tr>
            <td class="auto-style38">

                <asp:Label ID="Namelbl20" runat="server" Text="30K ≤ income &lt; 40K" Font-Bold="True"></asp:Label>

            </td>
            <td class="auto-style43">

                <asp:TextBox ID="incomebox3" runat="server" CssClass="auto-style29" Width="78px" ToolTip="Enter Name" Height="18px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style39">

                <asp:Label ID="Namelbl21" runat="server" Text="40&gt;=income &gt;100K" Font-Bold="True"></asp:Label>

            </td>
            <td class="auto-style44">

                <asp:TextBox ID="incomebox4" runat="server" CssClass="auto-style29" Width="78px" ToolTip="Enter Name" Height="18px"></asp:TextBox>
            </td>
            
              
            
            
    </table>
    
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="ShowResultbtn" runat="server" BackColor="#0066FF" Font-Bold="True" ForeColor="Black" Height="31px" OnClick="ShowResultbtn_Click" Text="ShowResult" ToolTip="ClickToShowResult" Width="92px" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>
    </p>
</asp:Content>

