<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="OVS.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
          <h2 align="Center">Voting Results</h2>
          <table align="center">
              <tr>
                  <td>
                      Congress:
                  </td>
                  <td>
                          <asp:Label ID="lblCongress" runat="server" Text="" CssClass="style14"></asp:Label>
                  </td>
              </tr>
              
              <tr>
                  <td>
                      UML:
                  </td>
                  <td>
<asp:Label ID="lblUML" runat="server" Text="" CssClass="style14"></asp:Label>               

                  </td>
              </tr>
           
              <tr>
                  <td>
                      Maoist:
                  </td>
                  <td>
<asp:Label ID="lblMaoist" runat="server" Text="" CssClass="style14"></asp:Label>

                  </td>
              </tr>
              
              <tr>
                  <td>
                      Ra. Pra. Pa:
                  </td>
                  <td>
<asp:Label ID="lblRaPraPa" runat="server" Text="" CssClass="style14"></asp:Label>

                  </td>
              </tr>
              
              <tr>
                  <td>
                      Forum Nepal:
                  </td>
                  <td>
<asp:Label ID="lblForumNepal" runat="server" Text="" CssClass="style14"></asp:Label>

                  </td>
              </tr>
              <tr>
                  <td>
                      Others:
                  </td>
                  <td>
<asp:Label ID="lblOthers" runat="server" Text="" CssClass="style14"></asp:Label>

                  </td>
              </tr>

          </table>
          <h3 align="center"> The Winner Party with Highest Vote is <asp:Label ID="lblWinName" runat="server" Text="" CssClass="style14"></asp:Label>  
              </h3>
</asp:Content>
