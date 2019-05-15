<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddCandidate.aspx.cs" Inherits="OVS.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <h2>Add Candidate</h2></div>
    <asp:Panel ID="pnlCandidateDetails" runat="server" HorizontalAlign="Center"  GroupingText="Candidate Information" BorderWidth="3px" >
    <table align="center">

       <tr>
<td>
First Name:
</td>
<td>
    <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
</td>

<td>
Last Name:
</td>
<td>
    <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
</td>

<td>
Parents Name:
</td>
<td>
    <asp:TextBox ID="txtParent" runat="server"></asp:TextBox>
</td>
</tr>
         <tr>
<td>
Citizenship:
</td>
<td>
    <asp:TextBox ID="txtCitizen" runat="server"></asp:TextBox>
</td>
             <td>
Contact Number:
</td>
<td>
    <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
</td>
             <td>
Email Address:
</td>
<td>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
</td>
</tr>
        <tr>
            <td>
                 Party Name:
            </td>
     <td>
         <asp:DropDownList ID="cmbParty" CssClass="mydropdownlist" runat="server">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Nepali Congress</asp:ListItem>
        <asp:ListItem>UML</asp:ListItem>
        <asp:ListItem>Maoist</asp:ListItem>
        <asp:ListItem>Ra. Pra. Pa</asp:ListItem>
        <asp:ListItem>Forum</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
              </td>
    <td>&nbsp;</td><td colspan="3">&nbsp;</td>
             </tr>
            </table>
        </asp:Panel>
            <table align="center">
                <tr>
        <td>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px" Width="123px" OnClick="btnSubmit_Click"   />

        <asp:Button ID="btnUpdate" runat="server" Text="Update" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px" Width="123px" OnClick="btnUpdate_Click"   />

        <asp:Button ID="btnDelete" runat="server" Text="Delete" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px" Width="123px" OnClick="btnDelete_Click" />
        <asp:Button ID="btnExit" runat="server" Text="Exit" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px" Width="123px"  />

        </td>
                    
         </table>
     <div align="center">
        <asp:Panel ID="pnlAddCandidate" runat="server" GroupingText="Information of Candidate" BorderWidth="3px">
        
<asp:GridView ID="gvCandidateDetails" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="CandidateDataSource" ForeColor="Black" GridLines="None"  >
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Candidate_ID" HeaderText="Candidate_ID" SortExpression="Candidate_ID" />
                <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                <asp:BoundField DataField="ParentName" HeaderText="ParentName" SortExpression="ParentName" />
                <asp:BoundField DataField="Citizen" HeaderText="Citizen" SortExpression="Citizen" />
                <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="PartyName" HeaderText="PartyName" SortExpression="PartyName" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
            <asp:SqlDataSource ID="CandidateDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:poolingConnectionString %>" SelectCommand="SELECT * FROM [CandidateDetails]"></asp:SqlDataSource>
            </asp:Panel>
    </div>
</asp:Content>
