<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="VoterLists.aspx.cs" Inherits="OVS.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div>
        <h2 align="center">List Of Voters</h2>
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
                       Search by Municipality:

                   </td>
                    <td>
                        <asp:TextBox ID="txtSearchbyMunicipality" runat="server"></asp:TextBox>
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
                <asp:GridView ID="gvVoterList" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Voter_ID" DataSourceID="ListofVoters" GridLines="Horizontal" HorizontalAlign="Justify">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="Voter_ID" HeaderText="Voter_ID" ReadOnly="True" SortExpression="Voter_ID" />
                        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                        <asp:BoundField DataField="MName" HeaderText="MName" SortExpression="MName" />
                        <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                        <asp:BoundField DataField="ParentName" HeaderText="ParentName" SortExpression="ParentName" />
                        <asp:BoundField DataField="GPName" HeaderText="GPName" SortExpression="GPName" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="Citizen" HeaderText="Citizen" SortExpression="Citizen" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Zone" HeaderText="Zone" SortExpression="Zone" />
                        <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                        <asp:BoundField DataField="Village" HeaderText="Village" SortExpression="Village" />
                        <asp:BoundField DataField="Ward" HeaderText="Ward" SortExpression="Ward" />
                        <asp:BoundField DataField="Tole" HeaderText="Tole" SortExpression="Tole" />
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
        <asp:SqlDataSource ID="ListofVoters" runat="server" ConnectionString="<%$ ConnectionStrings:votingConnectionString %>" SelectCommand="SELECT [Voter_ID], [FName], [MName], [LName], [ParentName], [GPName], [DOB], [Age], [Citizen], [Email], [Zone], [District], [Village], [Ward], [Tole] FROM [VoterInfo]"></asp:SqlDataSource>
        </panel>
</asp:Content>
