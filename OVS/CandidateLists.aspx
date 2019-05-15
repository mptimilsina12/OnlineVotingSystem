<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="CandidateLists.aspx.cs" Inherits="OVS.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <h2 align="center">List Of Candidates</h2>
    </div>
    
        <panel id="panel1" runat="server" >
            <table align="center">
                <tr>
                      <td>
                       Search by First Name:

                   </td>
                   <td>
                       <asp:TextBox ID="txtSearchbyFName" runat="server"></asp:TextBox>

                   </td>
                    <td>
                     <asp:Button ID="Button1" runat="server" Text="Search"></asp:Button>

                  

                    </td>
                    <td>
                         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                     
                     <td>
                       Search byParty Name:

                   </td>
                    <td>
                        <asp:TextBox ID="txtSearchbyPartyName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                     <asp:Button ID="Button2" runat="server" Text="Search"></asp:Button>

                    </td>
                    <td>
                          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    </td> <td>
                       <asp:Button ID="btnexport" runat="server" Text="Export to Excel" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px" Width="123px" OnClick="btnexport_Click"></asp:Button>
 
                    </td>
                </tr>
            </table>
                <asp:GridView ID="gvCandidateList" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Candidate_ID" DataSourceID="CandidateList" GridLines="Horizontal" HorizontalAlign="Justify" Width="1197px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="Candidate_ID" HeaderText="Candidate_ID" ReadOnly="True" SortExpression="Candidate_ID" />
                        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                        <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                        <asp:BoundField DataField="ParentName" HeaderText="ParentName" SortExpression="ParentName" />
                        <asp:BoundField DataField="Citizen" HeaderText="Citizen" SortExpression="Citizen" />
                        <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="PartyName" HeaderText="PartyName" SortExpression="PartyName" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />

                </asp:GridView>
        <asp:SqlDataSource ID="CandidateList" runat="server" ConnectionString="<%$ ConnectionStrings:votingConnectionString %>" SelectCommand="SELECT * FROM [CandidateDetails] ORDER BY [FName]"></asp:SqlDataSource>
        </panel>
</asp:Content>
