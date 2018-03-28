<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Survey.aspx.cs" Inherits="Survey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <p>
        <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Survey Form</h1>
    <p> &nbsp;</p>
        &nbsp;&nbsp;&nbsp;
    &nbsp;<h4> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Q1" runat="server" Text=" What Is Your Favourite Drink?&nbsp;&nbsp;&nbsp;"></asp:Label>
    &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DrinkRB" ErrorMessage="*" Font-Bold="True" ForeColor="#FF3300" Font-Size="Larger" Font-Underline="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Editbtn" runat="server" Height="31px" OnClick="Editbtn_Click" Text="Edit" Width="71px" PostBackUrl="~/EditQuestion.aspx" />
&nbsp;<asp:RadioButtonList ID="DrinkRB" runat="server" OnSelectedIndexChanged="DrinkRB_SelectedIndexChanged" AutoPostBack="True"  Width="77px">
                <asp:ListItem>Pepsi</asp:ListItem>
                <asp:ListItem>Coke</asp:ListItem>
                <asp:ListItem>Juice</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:RadioButtonList>
    &nbsp;
    </h4>
       <h4>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Q2" runat="server" Text="What Is Your Favourite Fast Food?"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FastFoodRB" ErrorMessage="*" Font-Bold="True" ForeColor="#FF3300" Font-Size="Larger" Font-Underline="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="FastFoodRB" runat="server" OnSelectedIndexChanged="FastFoodRB_SelectedIndexChanged">
                <asp:ListItem>McDonalads</asp:ListItem>
                <asp:ListItem>ChickenHut</asp:ListItem>
                <asp:ListItem>PizaaHut</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:RadioButtonList>
    </h4>
     
       <h4>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Q3" runat="server" Text="What Is Your Favourite IceCream?&nbsp;&nbsp;&nbsp;&nbsp;"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="IcecreamRB" ErrorMessage="*" Font-Bold="True" ForeColor="#FF3300" Font-Size="Larger" Font-Underline="True"></asp:RequiredFieldValidator>

            <asp:RadioButtonList ID="IcecreamRB" runat="server" OnSelectedIndexChanged="IcecreamRB_SelectedIndexChanged">
                <asp:ListItem>Cornato</asp:ListItem>
                <asp:ListItem>Totty Fruiti</asp:ListItem>
                <asp:ListItem>Jumbo</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:RadioButtonList>
    </h4>
    
 
        <h4> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Q4" runat="server" Text="What Is Your Favourite Sport?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"></asp:Label>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="SportsRB" ErrorMessage="*" Font-Bold="True" ForeColor="#FF3300" Font-Size="Larger" Font-Underline="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="SportsRB" runat="server" OnSelectedIndexChanged="SportsRB_SelectedIndexChanged">
                <asp:ListItem>Cricket</asp:ListItem>
                <asp:ListItem>Football</asp:ListItem>
                <asp:ListItem>Hockey</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:RadioButtonList>
    </h4>
     <h4> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; What Is Your Favourite Movie?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="MovieRB" ErrorMessage="*" Font-Bold="True" ForeColor="#FF3300" Font-Size="Larger" Font-Underline="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="MovieRB" runat="server" OnSelectedIndexChanged="MovieRB_SelectedIndexChanged">
                <asp:ListItem>Pursuit Of Happiness</asp:ListItem>
                <asp:ListItem>Matrix</asp:ListItem>
                <asp:ListItem>Wolverine</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:RadioButtonList>
    </h4>
   <h4> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Q5" runat="server" Text="What Is Your Favourite Animated Movie?&nbsp;&nbsp;"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="AnimatedMovieRB" ErrorMessage="*" Font-Bold="True" ForeColor="#FF3300" Font-Size="Larger" Font-Underline="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="AnimatedMovieRB" runat="server" OnSelectedIndexChanged="AnimatedMovieRB_SelectedIndexChanged">
                <asp:ListItem>Puss in Boots</asp:ListItem>
                <asp:ListItem>UP</asp:ListItem>
                <asp:ListItem>Penguines Of Madagasscare</asp:ListItem>
                <asp:ListItem>Despicable Me</asp:ListItem>
            </asp:RadioButtonList>
    </h4>
   <h4> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Q6" runat="server" Text="What Is Your Favourite Comic?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ComicsRB" ErrorMessage="*" Font-Bold="True" ForeColor="#FF3300" Font-Size="Larger" Font-Underline="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="ComicsRB" runat="server" OnSelectedIndexChanged="ComicsRB_SelectedIndexChanged">
                <asp:ListItem>Batman vs Superman</asp:ListItem>
                <asp:ListItem>Adventures Of Tin Tin</asp:ListItem>
                <asp:ListItem>Joker and Gotham City</asp:ListItem>
                <asp:ListItem>Avengers Return</asp:ListItem>
            </asp:RadioButtonList>
    </h4>
   
    <h4> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Q7" runat="server" Text=" What Is Your Favourite Street Food?"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="StreetFoodRB" ErrorMessage="*" Font-Bold="True" ForeColor="#FF3300" Font-Size="Larger" Font-Underline="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="StreetFoodRB" runat="server" OnSelectedIndexChanged="StreetFoodRB_SelectedIndexChanged">
                <asp:ListItem>Chana Chat</asp:ListItem>
                <asp:ListItem>Dhai Bara</asp:ListItem>
                <asp:ListItem>Gol Gapa</asp:ListItem>
                <asp:ListItem>Faloda</asp:ListItem>
            </asp:RadioButtonList>
    </h4>
    
    <h4> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Q8" runat="server" Text="What Is Your Favourite Athlete?&nbsp;&nbsp;"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="SportsManRB" ErrorMessage="*" Font-Bold="True" ForeColor="#FF3300" Font-Size="Larger" Font-Underline="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="SportsManRB" runat="server" OnSelectedIndexChanged="SportsManRB_SelectedIndexChanged">
                <asp:ListItem>Shaid Khan Afridi</asp:ListItem>
                <asp:ListItem>Usain Bolt</asp:ListItem>
                <asp:ListItem>Lionel Messi</asp:ListItem>
                <asp:ListItem>Critiano Ranoldo</asp:ListItem>
            </asp:RadioButtonList>
    </h4>
    <h4> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Q9" runat="server" Text=" What Is Your Favourite Tv Serial?&nbsp;&nbsp;"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TvSerialRB" ErrorMessage="*" Font-Bold="True" ForeColor="#FF3300" Font-Size="Larger" Font-Underline="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="TvSerialRB" runat="server" OnSelectedIndexChanged="TvSerialRB_SelectedIndexChanged">
                <asp:ListItem>Alpha Bravo Charlie</asp:ListItem>
                <asp:ListItem>Fifty Fifty (50/50)</asp:ListItem>
                <asp:ListItem>Friends</asp:ListItem>
                <asp:ListItem>Prison Break</asp:ListItem>
            </asp:RadioButtonList>
    </h4>
    
    <h4> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Q10" runat="server" Text="What Is Your Favourite Motivational Personality?&nbsp;&nbsp;&nbsp;"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="MentorRB" ErrorMessage="*" Font-Bold="True" ForeColor="#FF3300" Font-Size="Larger" Font-Underline="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="MentorRB" runat="server" OnSelectedIndexChanged="MentorRB_SelectedIndexChanged">
                <asp:ListItem>Hazrat Umer Bin Khatab </asp:ListItem>
                <asp:ListItem>Hijab Bin Yousuf</asp:ListItem>
                <asp:ListItem>Muhammad Bin Qasim</asp:ListItem>
                <asp:ListItem>Junaid Baghdadi</asp:ListItem>
            </asp:RadioButtonList>
    </h4>
    <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="SumitFormbtn" runat="server" BackColor="Blue" Font-Bold="True" ForeColor="Black" OnClick="SumitFormbtn_Click" Text="SubmitForm" Width="107px" Height="40px" />
    </p>

</asp:Content>

