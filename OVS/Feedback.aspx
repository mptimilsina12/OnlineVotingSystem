<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="OVS.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
     <h2>
         Send Your Feedback
     </h2>
 </div>
<table align="center">
<tr>
    <td>
        Full Name:
    </td>
    <td>
        <asp:TextBox ID="txtName" runat="server" Width="318px"></asp:TextBox><br />
                   <asp:requiredfieldvalidator id="valName" runat="server" errormessage="* Provide the required fields" controltovalidate="txtName" ForeColor="Red" ></asp:requiredfieldvalidator>


    </td>
</tr>
<tr>
    <td>
       Email:
    </td>
    <td>
        <asp:TextBox ID="txtEmail" runat="server" Width="318px"></asp:TextBox><br />
                           <asp:requiredfieldvalidator id="valEmail" runat="server" errormessage="* Provide the required fields" controltovalidate="txtEmail" ForeColor="Red" ></asp:requiredfieldvalidator>

    </td>
</tr><tr>
    <td>
        Subject:
    </td>
    <td>
        <asp:TextBox ID="txtSubject" runat="server" Width="318px"></asp:TextBox><br />
        <asp:requiredfieldvalidator id="valSubject" runat="server" errormessage="* Provide the required fields" controltovalidate="txtSubject" ForeColor="Red" ></asp:requiredfieldvalidator>

    </td>
</tr>
<tr>
    <td>
        Comments:
    </td>
    <td>
        <asp:TextBox ID="txtComments" runat="server" Height="75px" MaxLength="255" TextMode="MultiLine" Width="318px"></asp:TextBox><br />
<asp:requiredfieldvalidator id="valComments" runat="server" errormessage="* Provide the required fields" controltovalidate="txtComments" ForeColor="Red" ></asp:requiredfieldvalidator>

    </td>
</tr>

<tr>
<td colspan="4" align="center">
    <asp:Button ID="Button1" runat="server" Text="Register" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px" Width="123px" OnClick="Button1_Click" />&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px" Width="123px" OnClientClick="window.close()" />
</td>
</tr>
</table>
</asp:Content>
