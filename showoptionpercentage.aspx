<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showoptionpercentage.aspx.cs" Inherits="showoptionpercentage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style8 {
            width: 42%;
            height: 234px;
            margin-left: 220px;
        }
        .auto-style6 {
            width: 153px;
        }
        .auto-style36 {
            width: 383px;
        }
        .auto-style30 {
            width: 103px;
        }
        .auto-style21 {
            width: 72px;
        }
        .auto-style17 {
            width: 153px;
            height: 23px;
        }
        .auto-style37 {
            width: 383px;
            height: 23px;
        }
        .auto-style27 {
            width: 103px;
            height: 23px;
        }
        .auto-style22 {
            width: 72px;
            height: 23px;
        }
        .auto-style9 {
            width: 153px;
            height: 34px;
        }
        .auto-style38 {
            width: 383px;
            height: 34px;
        }
        .auto-style28 {
            width: 103px;
            height: 34px;
        }
        .auto-style23 {
            width: 72px;
            height: 34px;
        }
        .auto-style13 {
            height: 33px;
            width: 153px;
        }
        .auto-style39 {
            height: 33px;
            width: 383px;
        }
        .auto-style29 {
            height: 33px;
            width: 103px;
        }
        .auto-style24 {
            height: 33px;
            width: 72px;
        }
        .auto-style16 {
            height: 32px;
        }
        .auto-style35 {
            height: 32px;
            width: 383px;
        }
        .auto-style25 {
            height: 32px;
            width: 103px;
        }
        .auto-style20 {
            height: 32px;
            width: 72px;
        }
        .auto-style40 {
            width: 153px;
            height: 28px;
        }
        .auto-style41 {
            width: 383px;
            height: 28px;
        }
        .auto-style42 {
            width: 103px;
            height: 28px;
        }
        .auto-style43 {
            width: 72px;
            height: 28px;
        }
        .auto-style44 {
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="   Total Percentage OF Option Selected"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;<table class="auto-style8" style="background-color:lightgreen", border="1" title="Survey Form">

        <tr>
            <td class="auto-style6">&nbsp;<asp:Label ID="Namelbl" runat="server" Text="Name" Font-Bold="True"></asp:Label>
                <br />
            </td>
            <td class="auto-style36">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="Namelbl8" runat="server" Text="Option1" Font-Bold="True"></asp:Label>
    </td>
            <td class="auto-style30">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Namelbl9" runat="server" Text="Option2" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style21">
    &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
                <asp:Label ID="Namelbl11" runat="server" Text="Option3" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style21">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Namelbl10" runat="server" Text="Option4" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
    &nbsp; &nbsp;<asp:Label ID="Namelbl4" runat="server" Text="Q1" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td class="auto-style37">
    <asp:TextBox ID="Q1box1" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>
            &nbsp;
            </td>
            <td class="auto-style27">
    <asp:TextBox ID="Q1box2" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>
            </td>
            <td class="auto-style22">
    <asp:TextBox ID="Q1box3" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>
            </td>
            <td class="auto-style22">
    <asp:TextBox ID="Q1box4" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;<asp:Label ID="Namelbl0" runat="server" Text="Q2" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style38">
    <asp:TextBox ID="Q2box1" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>
            </td>
            <td class="auto-style28">
    <asp:TextBox ID="Q2box2" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>
            </td>
            <td class="auto-style23">
    <asp:TextBox ID="Q2box3" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>
            </td>
            <td class="auto-style23">
    <asp:TextBox ID="Q2box4" runat="server" Width="80px" ToolTip="Enter Occupation" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style40">

                &nbsp;<asp:Label ID="Namelbl1" runat="server" Text="Q3" Font-Bold="True"></asp:Label>

            </td>
            <td class="auto-style41">

    <asp:TextBox ID="Q3box1" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>
            <td class="auto-style42">
    <asp:TextBox ID="Q3box2" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>
            </td>
            
            <td class="auto-style43">
    <asp:TextBox ID="Q3box3" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>
            </td>
            
            <td class="auto-style43">
    <asp:TextBox ID="Q3box4" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style13">

                &nbsp;<asp:Label ID="Namelbl5" runat="server" Text="Q4" Font-Bold="True"></asp:Label>
                &nbsp;</td>
            <td class="auto-style39">

    <asp:TextBox ID="Q4box1" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>
            <td class="auto-style29">

    <asp:TextBox ID="Q4box2" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>
            <td class="auto-style24">

    <asp:TextBox ID="Q4box3" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>
            <td class="auto-style24">

    <asp:TextBox ID="Q4box4" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td class="auto-style16">

                &nbsp;<asp:Label ID="Namelbl12" runat="server" Text="Q5" Font-Bold="True"></asp:Label>

                &nbsp;</td>
            <td class="auto-style35">

    <asp:TextBox ID="Q5box1" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>
            <td class="auto-style25">

    <asp:TextBox ID="Q5box2" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

            <td class="auto-style20">

    <asp:TextBox ID="Q5box3" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

            <td class="auto-style20">

    <asp:TextBox ID="Q5box4" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

        </tr>
        <tr>
            <td class="auto-style16">

                &nbsp;<asp:Label ID="Namelbl13" runat="server" Text="Q6" Font-Bold="True"></asp:Label>

            </td>
            <td class="auto-style35">

    <asp:TextBox ID="Q6box1" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>
            <td class="auto-style25">

    <asp:TextBox ID="Q6box2" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

            <td class="auto-style20">

    <asp:TextBox ID="Q6box3" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

            <td class="auto-style20">

    <asp:TextBox ID="Q6box4" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

        </tr>
        <tr>
            <td class="auto-style16">

                &nbsp;<asp:Label ID="Namelbl14" runat="server" Text="Q7" Font-Bold="True"></asp:Label>

                &nbsp;</td>
            <td class="auto-style35">

    <asp:TextBox ID="Q7box1" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>
            <td class="auto-style25">

    <asp:TextBox ID="Q7box2" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

            <td class="auto-style20">

    <asp:TextBox ID="Q7box3" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

            <td class="auto-style20">

    <asp:TextBox ID="Q7box4" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

        </tr>
        <tr>
            <td class="auto-style16">

                &nbsp;<asp:Label ID="Namelbl15" runat="server" Text="Q8" Font-Bold="True"></asp:Label>

                &nbsp;</td>
            <td class="auto-style35">

    <asp:TextBox ID="Q8box1" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>
            <td class="auto-style25">

    <asp:TextBox ID="Q8box2" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

            <td class="auto-style20">

    <asp:TextBox ID="Q8box3" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

            <td class="auto-style20">

    <asp:TextBox ID="Q8box4" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

        </tr>
        <tr>
            <td class="auto-style16">

                &nbsp;<asp:Label ID="Namelbl16" runat="server" Text="Q9" Font-Bold="True"></asp:Label>

                &nbsp;</td>
            <td class="auto-style35">

    <asp:TextBox ID="Q9box1" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>
            <td class="auto-style25">

    <asp:TextBox ID="Q9box2" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

            <td class="auto-style20">

    <asp:TextBox ID="Q9box3" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

            <td class="auto-style20">

    <asp:TextBox ID="Q9box4" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

        </tr>
        <tr>
            <td class="auto-style16">

                &nbsp;<asp:Label ID="Namelbl17" runat="server" Text="Q10" Font-Bold="True"></asp:Label>

                &nbsp;</td>
            <td class="auto-style35">

    <asp:TextBox ID="Q10box1" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>
            <td class="auto-style25">

    <asp:TextBox ID="Q10box2" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

            <td class="auto-style20">

    <asp:TextBox ID="Q10box3" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

            <td class="auto-style20">

    <asp:TextBox ID="Q10box4" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

        </tr>
        <tr>
            <td class="auto-style16">

                &nbsp;<asp:Label ID="Namelbl6" runat="server" Text="Q11" Font-Bold="True"></asp:Label>

                &nbsp;</td>
            <td class="auto-style35">

    <asp:TextBox ID="Q11box1" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>
            <td class="auto-style25">

    <asp:TextBox ID="Q11box2" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

            <td class="auto-style20">

    <asp:TextBox ID="Q11box3" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

            <td class="auto-style20">

    <asp:TextBox ID="Q11box4" runat="server" Width="80px" ToolTip="Enter Occupation"></asp:TextBox>

            </td>

        </tr>
        </table>
    
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="ShowResultBtn" runat="server" BackColor="Blue" Height="38px" OnClick="ShowResultBtn_Click" Text="ShowResult" Width="91px" />
    <br />
    <br />
    <br />
&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>
    </p>
</asp:Content>

