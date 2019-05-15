<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="VoteCandidate.aspx.cs" Inherits="OVS.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:WhiteSmoke">
    <div align="center">
        <h2>Candidate Details</h2></div>
    <div align="right">
<marquee behavior=alternate class="marquee" onmouseover="this.stop();" onmouseout="this.start();">Vote Your Candidate</marquee>
</div>
<div align=Center>
<table>
<tr>
<td>
<img src="Images/congress.png" class="style5" />
</td>
<td class="style4">
        <asp:RadioButton ID="Rb1" runat="server" AutoPostBack="True" 
        Font-Bold="True" ForeColor="#663300" Text="Click here" OnCheckedChanged="Rb1_CheckedChanged"    /><br />
        <span class="style3">Vote Your Candidate</span>
</td>
<td>
<img src="Images/UML.png" class="style6" />
</td>
<td class="style4">
        <asp:RadioButton ID="Rb2" runat="server" AutoPostBack="True" Font-Bold="True" ForeColor="#663300" Text="Click here" OnCheckedChanged="Rb2_CheckedChanged"  /><br />
        <span class="style3">Vote Your Candidate</span>
</tr>
<tr>
<td>
<img src="Images/maoist.png" class="style7" />
</td>
<td class="style4">
        <asp:RadioButton ID="Rb3" runat="server" AutoPostBack="True" 
        Font-Bold="True" ForeColor="#663300" Text="Click here" OnCheckedChanged="Rb3_CheckedChanged"/><br />
        <span class="style3">Vote Your Candidate</span>
</td>
<td>
<img src="Images/raprapa.png" class="style8" />
</td>
<td class="style4">
        <asp:RadioButton ID="Rb4" runat="server" AutoPostBack="True" 
        Font-Bold="True" ForeColor="#663300" Text="Click here" OnCheckedChanged="Rb4_CheckedChanged"    /><br />
        <span class="style3">Vote Your Candidate</span>
</tr>
<tr>
<td>
<img src="Images/forum.png"
        class="style9" />
</td>
<td class="style4">
        <asp:RadioButton ID="Rb5" runat="server" AutoPostBack="True" 
        Font-Bold="True" ForeColor="#663300" Text="Click here" OnCheckedChanged="Rb5_CheckedChanged"  
           /><br />
        <span class="style3">Vote Your Candidate</span>
</td>

<td>
<img src="Images/others.jpg"
        class="style9" />
</td>
<td class="style4">
        <asp:RadioButton ID="Rb6" runat="server" AutoPostBack="True" 
        Font-Bold="True" ForeColor="#663300" Text="Click here" OnCheckedChanged="Rb6_CheckedChanged" 
            /><br />
        <span class="style3">Vote Your Candidate</span>
</td>
</tr>
</table>
<table>
<tr>
<td>
    <asp:Button ID="BtnVote" runat="server" Text="Vote" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px" Width="123px" OnClick="BtnVote_Click"  />
</td>
</tr>
</table>
</div>
    <div align="center"><h3>Remaining time To Vote is&nbsp; <asp:Label ID="lblRemTime" runat="server" Text="00:00:00"></asp:Label></h3></div>
         </div>
</asp:Content>
