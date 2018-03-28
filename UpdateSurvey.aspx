<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateSurvey.aspx.cs" Inherits="UpdateSurvey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 9px;
        }
        .auto-style5 {
            margin-left: 10px;
        }
        .auto-style6 {
            margin-left: 8px;
        }
        .auto-style7 {
            margin-left: 27px;
        }
        .auto-style8 {
            margin-left: 38px;
        }
        .auto-style9 {
            margin-left: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
  <table class="auto-style8" style="background-color:lightgreen", border="1" title="Survey Form">
      <tr>
          <td>
            Q1:  <asp:TextBox ID="Q1" runat="server" CssClass="auto-style7"></asp:TextBox>
          </td>
          </tr><tr><td>
              Option1: <asp:TextBox ID="Q1_a" runat="server"></asp:TextBox>
          </td>
          </tr>
        <tr>  
            <td>
                  Option2: <asp:TextBox ID="Q1_b" runat="server"></asp:TextBox>
         </td> </tr>
<tr><td>
        Option3:<asp:TextBox ID="Q1_c" runat="server" CssClass="auto-style6"></asp:TextBox>
          </td>
</tr><tr>
<td>
        Option4:<asp:TextBox ID="Q1_d" runat="server" CssClass="auto-style9"></asp:TextBox>
          </td>
          </tr>
      <tr>    <td>
              <asp:Button ID="Q1Show" runat="server" Text="ShowQ1" OnClick="Q1Show_Click" />
          </td>
     
         <td>
              <asp:Button ID="InsertQ1" runat="server" Text="InsertQ1" OnClick="Q1Insert_Click" />
          </td>
      </tr>

       <tr>
          <td>
            Q2:  <asp:TextBox ID="Q2" runat="server" CssClass="auto-style8"></asp:TextBox>
          </td>
      </tr>
      <tr><td>
              Option1: <asp:TextBox ID="Q2_a" runat="server" CssClass="auto-style6"></asp:TextBox>
          </td>
          </tr>
       <tr>  
            <td>
                  Option2: <asp:TextBox ID="Q2_b" runat="server" CssClass="auto-style6"></asp:TextBox>
         </td> </tr>
<tr><td>
        Option3:<asp:TextBox ID="Q2_c" runat="server" CssClass="auto-style4"></asp:TextBox>
          </td>
</tr><tr>
<td>
        Option4:<asp:TextBox ID="Q2_d" runat="server" CssClass="auto-style5"></asp:TextBox>
          </td>
          </tr>
      <tr>    <td>
              <asp:Button ID="Q2Show" runat="server" Text="ShowQ2" OnClick="Q2Show_Click" />
          </td>
     
         <td>
              <asp:Button ID="InsertQ2" runat="server" Text="InsertQ2" OnClick="Q2Insert_Click" />
          </td>
      </tr>

      <tr>
          <td>
            Q3:  <asp:TextBox ID="Q3" runat="server" CssClass="auto-style8"></asp:TextBox>
          </td>
      </tr>
      <tr><td>
              Option1: <asp:TextBox ID="Q3_a" runat="server" CssClass="auto-style6"></asp:TextBox>
          </td>
          </tr>
       <tr>  
            <td>
                  Option2: <asp:TextBox ID="Q3_b" runat="server" CssClass="auto-style6"></asp:TextBox>
         </td> </tr>
<tr><td>
        Option3:<asp:TextBox ID="Q3_c" runat="server" CssClass="auto-style4"></asp:TextBox>
          </td>
</tr><tr>
<td>
        Option4:<asp:TextBox ID="Q3_d" runat="server" CssClass="auto-style5"></asp:TextBox>
          </td>
          </tr>
      <tr>  
            <td>
              <asp:Button ID="Q3Show" runat="server" Text="ShowQ3" OnClick="Q3Show_Click" />
          </td>
     
         <td>
              <asp:Button ID="InsertQ3" runat="server" Text="InsertQ3" OnClick="Q3Insert_Click" />
          </td>
      </tr>
    <tr>
          <td>
            Q4:  <asp:TextBox ID="Q4" runat="server" CssClass="auto-style8"></asp:TextBox>
          </td>
      </tr>
      <tr><td>
              Option1: <asp:TextBox ID="Q4_a" runat="server" CssClass="auto-style6"></asp:TextBox>
          </td>
          </tr>
       <tr>  
            <td>
                  Option2: <asp:TextBox ID="Q4_b" runat="server" CssClass="auto-style6"></asp:TextBox>
         </td> </tr>
<tr><td>
        Option3:<asp:TextBox ID="Q4_c" runat="server" CssClass="auto-style4"></asp:TextBox>
          </td>
</tr><tr>
<td>
        Option4:<asp:TextBox ID="Q4_d" runat="server" CssClass="auto-style5"></asp:TextBox>
          </td>
          </tr>
      <tr>  
            <td>
              <asp:Button ID="Q4Show" runat="server" Text="ShowQ4" OnClick="Q4Show_Click" />
          </td>
     
         <td>
              <asp:Button ID="InsertQ4" runat="server" Text="InsertQ4" OnClick="Q4Insert_Click" />
          </td>
      </tr>

     <tr>
          <td>
            Q5:  <asp:TextBox ID="Q5" runat="server" CssClass="auto-style8"></asp:TextBox>
          </td>
      </tr>
      <tr><td>
              Option1: <asp:TextBox ID="Q5_a" runat="server" CssClass="auto-style6"></asp:TextBox>
          </td>
          </tr>
       <tr>  
            <td>
                  Option2: <asp:TextBox ID="Q5_b" runat="server" CssClass="auto-style6"></asp:TextBox>
         </td> </tr>
<tr><td>
        Option3:<asp:TextBox ID="Q5_c" runat="server" CssClass="auto-style4"></asp:TextBox>
          </td>
</tr><tr>
<td>
        Option4:<asp:TextBox ID="Q5_d" runat="server" CssClass="auto-style5"></asp:TextBox>
          </td>
          </tr>
      <tr>  
            <td>
              <asp:Button ID="Q5Show" runat="server" Text="ShowQ5" OnClick="Q5Show_Click" />
          </td>
     
         <td>
              <asp:Button ID="InsertQ5" runat="server" Text="InsertQ5" OnClick="Q5Insert_Click" />
          </td>
      </tr>
  <tr>
          <td>
            Q6:  <asp:TextBox ID="Q6" runat="server" CssClass="auto-style8"></asp:TextBox>
          </td>
      </tr>
      <tr><td>
              Option1: <asp:TextBox ID="Q6_a" runat="server" CssClass="auto-style6"></asp:TextBox>
          </td>
          </tr>
       <tr>  
            <td>
                  Option2: <asp:TextBox ID="Q6_b" runat="server" CssClass="auto-style6"></asp:TextBox>
         </td> </tr>
<tr><td>
        Option3:<asp:TextBox ID="Q6_c" runat="server" CssClass="auto-style4"></asp:TextBox>
          </td>
</tr><tr>
<td>
        Option4:<asp:TextBox ID="Q6_D" runat="server" CssClass="auto-style5"></asp:TextBox>
          </td>
          </tr>
      <tr>  
            <td>
              <asp:Button ID="Q6Show" runat="server" Text="ShowQ6" OnClick="Q6Show_Click" />
          </td>
     
         <td>
              <asp:Button ID="InsertQ6" runat="server" Text="InsertQ6" OnClick="Q6Insert_Click" />
          </td>
      </tr>
     
     <tr>
          <td>
            Q7:  <asp:TextBox ID="Q7" runat="server" CssClass="auto-style8"></asp:TextBox>
          </td>
      </tr>
      <tr><td>
              Option1: <asp:TextBox ID="Q7_a" runat="server" CssClass="auto-style6"></asp:TextBox>
          </td>
          </tr>
       <tr>  
            <td>
                  Option2: <asp:TextBox ID="Q7_b" runat="server" CssClass="auto-style6"></asp:TextBox>
         </td> </tr>
<tr><td>
        Option3:<asp:TextBox ID="Q7_c" runat="server" CssClass="auto-style4"></asp:TextBox>
          </td>
</tr><tr>
<td>
        Option4:<asp:TextBox ID="Q7_d" runat="server" CssClass="auto-style5"></asp:TextBox>
          </td>
          </tr>
      <tr>  
            <td>
              <asp:Button ID="ShowQ7" runat="server" Text="ShowQ7" OnClick="Q7Show_Click" />
          </td>
     
         <td>
              <asp:Button ID="InsertQ7" runat="server" Text="InsertQ7" OnClick="Q7Insert_Click" />
          </td>
      </tr>
     <tr>
          <td>
            Q8:  <asp:TextBox ID="Q8" runat="server" CssClass="auto-style8"></asp:TextBox>
          </td>
      </tr>
      <tr><td>
              Option1: <asp:TextBox ID="Q8_a" runat="server" CssClass="auto-style6"></asp:TextBox>
          </td>
          </tr>
       <tr>  
            <td>
                  Option2: <asp:TextBox ID="Q8_b" runat="server" CssClass="auto-style6"></asp:TextBox>
         </td> </tr>
<tr><td>
        Option3:<asp:TextBox ID="Q8_c" runat="server" CssClass="auto-style4"></asp:TextBox>
          </td>
</tr><tr>
<td>
        Option4:<asp:TextBox ID="Q8_d" runat="server" CssClass="auto-style5"></asp:TextBox>
          </td>
          </tr>
      <tr>  
            <td>
              <asp:Button ID="Q8Show" runat="server" Text="ShowQ8" OnClick="Q7Show_Click" />
          </td>
     
         <td>
              <asp:Button ID="InsertQ8" runat="server" Text="InsertQ8" OnClick="Q7Insert_Click" />
          </td>
      </tr>
     
    <tr>
          <td>
            Q9:  <asp:TextBox ID="Q9" runat="server" CssClass="auto-style8"></asp:TextBox>
          </td>
      </tr>
      <tr><td>
              Option1: <asp:TextBox ID="Q9_a" runat="server" CssClass="auto-style6"></asp:TextBox>
          </td>
          </tr>
       <tr>  
            <td>
                  Option2: <asp:TextBox ID="Q9_b" runat="server" CssClass="auto-style6"></asp:TextBox>
         </td> </tr>
<tr><td>
        Option3:<asp:TextBox ID="Q9_c" runat="server" CssClass="auto-style4"></asp:TextBox>
          </td>
</tr><tr>
<td>
        Option4:<asp:TextBox ID="Q9_d" runat="server" CssClass="auto-style5"></asp:TextBox>
          </td>
          </tr>
      <tr>  
            <td>
              <asp:Button ID="Q9Show" runat="server" Text="ShowQ9" OnClick="Q9Show_Click" />
          </td>
     
         <td>
              <asp:Button ID="InsertQ9" runat="server" Text="InsertQ9" OnClick="Q9Insert_Click" />
          </td>
      </tr>
     
    <tr>
          <td>
            Q10:  <asp:TextBox ID="Q10" runat="server" CssClass="auto-style8"></asp:TextBox>
          </td>
      </tr>
      <tr><td>
              Option1: <asp:TextBox ID="Q10_a" runat="server" CssClass="auto-style6"></asp:TextBox>
          </td>
          </tr>
       <tr>  
            <td>
                  Option2: <asp:TextBox ID="Q10_b" runat="server" CssClass="auto-style6"></asp:TextBox>
         </td> </tr>
<tr><td>
        Option3:<asp:TextBox ID="Q10_c" runat="server" CssClass="auto-style4"></asp:TextBox>
          </td>
</tr><tr>
<td>
        Option4:<asp:TextBox ID="Q10_d" runat="server" CssClass="auto-style5"></asp:TextBox>
          </td>
          </tr>
      <tr>  
            <td>
              <asp:Button ID="Q10show" runat="server" Text="ShowQ10" OnClick="Q10Show_Click" />
          </td>
     
         <td>
              <asp:Button ID="InsertQ10" runat="server" Text="InsertQ10" OnClick="Q10Insert_Click" />
          </td>
      </tr>
       
</table>

</asp:Content>

