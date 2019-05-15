<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="VotingTime.aspx.cs" Inherits="OVS.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div>
         <h2 align="center">
Manage Voting Date
    </h2>
   <asp:Panel ID="VotingTime" runat="server" GroupingText="Time Setting" > 
   

        <table align="center">
            <tr>
                <td>
                    Start Date:
                </td>
                <td>
                    <asp:TextBox ID="txtStartDate"  TextMode="DateTime" runat="server"></asp:TextBox>
                    <asp:Calendar ID="calStart" runat="server" OnSelectionChanged="Unnamed1_SelectionChanged" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>
                    End Date:
                </td>
                <td>
                    <asp:TextBox ID="txtEndDate"  TextMode="DateTime" runat="server"></asp:TextBox>
                    <asp:Calendar ID="calEnd" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="calEnd_SelectionChanged" ShowGridLines="True" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>

                </td>
            </tr>
            <tr>
                <td colspan="2">
                        <asp:Button ID="btnAdd" runat="server" Text="Set Time" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px" Width="123px" OnClick="btnAdd_Click" />
    <asp:Button ID="btnExit" runat="server" Text="Exit"  BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px" Width="123px" OnClientClick="window.close()" />

                </td>
            </tr>
        </table>
 
       </asp:Panel>
            </div>
</asp:Content>
