<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Permission.aspx.cs" Inherits="OVS.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div align="center">
    <table>
<tr>
<td>
    <span class="style1">User Details</span>
</td>
</tr>
</table>
<br />
<table>
<tr>
<td>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Width="647px" Height="109px">
        <RowStyle BackColor="#EFF3FB" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
</td>
</tr>
</table>
<br />
<table>
<tr>
<td>
    <span class="style3">User Name</span>
</td>
<td>
    <asp:DropDownList ID="ddlUserName" runat="server" AutoPostBack="True"  CssClass="mydropdownlist">
    </asp:DropDownList>
</td>
</tr>
<tr>
<td class="style2">
    <span class="style3">Password</span>
</td>
<td>
    <asp:TextBox ID="txtPassword" runat="server" Width="188px"></asp:TextBox>
</td>
</tr>

</table>
<table>
<tr>
<td>
    <asp:Button ID="btnPermission" runat="server" Text="Permission" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px" Width="123px" OnClick="btnPermission_Click" />
</td>
</tr>
</table>
<br />
<table>
<tr>
<td class="style1">
    Permission User
</td>
</tr>
</table>
<br />
<table>
<tr>
<td>
    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Width="460px">
        <RowStyle BackColor="#EFF3FB" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
</td>
</tr>
</table>
        <br />
        </div>
</asp:Content>
