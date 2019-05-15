<%@ Page Title="Contact" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OVS.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Contact Us</h2>
    
    <table align="center">
        <tr>
            <td>
                Name:
            </td>
         
               <td>
                     <asp:TextBox ID="txtUser" runat="server" Width="250px" />
               </td>
           
            <td>
                Email Address:
            </td>
            <td>
                  <asp:TextBox ID="txtEmail" runat="server" Width="250px" />
            </td>
           
        </tr>
                <tr>
            <td>
                Contact Number:
            </td>
            <td>
                  <asp:TextBox ID="txtContact" runat="server" Width="250px" />
            </td>
           
       
            <td>
                Subject:
            </td>
            <td>
                  <asp:TextBox ID="txtSubject" runat="server" Width="250px" />
            </td>
           
        </tr>
        <tr>
            <td>
                Message:
            </td>
            <td colspan="3">
                  <asp:TextBox ID="txtMessage" runat="server" Height="150px" TextMode="MultiLine" Width="640px" BackColor="LimeGreen"  />
            </td>
           
        </tr>
       <tr>
 <td align="center" colspan="4">
     
          <asp:Button ID="Submit" runat="server" Text="Submit" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px" Width="123px" OnClick="Submit_Click"   />
         <asp:Button ID="Cancel" runat="server" Text="Exit" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px" Width="123px" OnClientClick="window.close()" />
     </td>
            </tr>

    </table>
    <div class="address">
<div class="address-1">
    <address>
            Mahesh Prasad Timilsina<br />
        <strong>Tel No:</strong>   +977 9846646256<br />
            Email: <a href="mailto:Marketing@example.com">mptimilsina12@outlook.com</a><br />
            BSC. Computing L6 Student | The British College<br />
    </address>

</div>
    <div class="address-2" >
    <address>
           The British College<br />
        <strong>Email::</strong> <a href="mailto:info@thebritishcollege.com">Info@thebritishcollege.com</a><br />
            <strong>Address:</strong>Thapathali, Kathmandu, Nepal<br />
        Affiliated with Leedsbeckett University
    </address>
        </div>
</div>
</asp:Content>
