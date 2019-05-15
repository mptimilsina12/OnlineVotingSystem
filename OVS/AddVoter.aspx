<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddVoter.aspx.cs" Inherits="OVS.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
    <div >
       <h2> Voter Registration</h2></div>
            <asp:Panel ID="gvInformation" runat="server" GroupingText="Personal Information" BorderWidth="3px">
                   <table width="1150px"> <tr>
                <td> 
                First Name:
                </td>
                <td>
                    <asp:TextBox ID="txtFName" runat="server"></asp:TextBox><br />
<%--                   <asp:requiredfieldvalidator id="txtFirstName" runat="server" errormessage="* Provide the required fields" controltovalidate="txtFNAme" ForeColor="Red" ></asp:requiredfieldvalidator>--%>
                </td>
                 <td>
                Middle Name:
                </td>
                <td>
                    <asp:TextBox ID="txtMName" runat="server"></asp:TextBox>

                </td>
                 <td>
                Last Name:
                </td>
                <td>
                    <asp:TextBox ID="txtLName" runat="server"></asp:TextBox><br />
<%--                    <asp:requiredfieldvalidator id="Requiredfieldvalidator2" runat="server" errormessage="* Provide the required fields" controltovalidate="txtLNAme" ForeColor="Red"></asp:requiredfieldvalidator>--%>
                </td>
            </tr>
               <tr>
                <td>
                    Parent Name:
                </td>
                 <td>
                    <asp:TextBox ID="txtParent" runat="server"></asp:TextBox><br />
<%--                     <asp:requiredfieldvalidator id="Requiredfieldvalidator3" runat="server" errormessage="* Provide the required fields" controltovalidate="txtFather" ForeColor="Red"></asp:requiredfieldvalidator>--%>
                </td>
                <td>
                    GrandParents Name:
                </td>
                 <td>
                    <asp:TextBox ID="txtGPName" runat="server"></asp:TextBox><br />
<%--                     <asp:requiredfieldvalidator id="Requiredfieldvalidator4" runat="server" errormessage="* Provide the required fields" controltovalidate="txtMother" ForeColor="Red" ></asp:requiredfieldvalidator>--%>
                </td>
                <td>
                    Citizenship Number:
                </td>
                 <td>
                    <asp:TextBox ID="txtCitizen" runat="server"></asp:TextBox><br />
<%--                     <asp:requiredfieldvalidator id="Requiredfieldvalidator5" runat="server" errormessage="* Provide the required fields" controltovalidate="txtGPName" ForeColor="Red"></asp:requiredfieldvalidator>--%>
                </td>
            </tr>
            <tr>
                <td>
                    Email Address:
                </td>
                 <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
<%--                     <asp:requiredfieldvalidator id="Requiredfieldvalidator6" runat="server" errormessage="* Provide the required fields" controltovalidate="txtCitizen" ForeColor="Red"></asp:requiredfieldvalidator>--%>
                </td>
                <td>
                    Contact Number:
                </td>
                 <td>
                    <asp:TextBox ID="txtContact" runat="server"></asp:TextBox><br />
<%--                     <asp:requiredfieldvalidator id="Requiredfieldvalidator7" runat="server" errormessage="* Provide the required fields" controltovalidate="txtEmail" ForeColor="Red" ></asp:requiredfieldvalidator>--%>
                </td>
                <td>
                    Date of Birth:</td>
                 <td>
                    <asp:TextBox ID="txtDOB" runat="server" CssClass="auto-style2" TextMode="Date" Width="169px"></asp:TextBox><br />
<%--                     <asp:requiredfieldvalidator id="Requiredfieldvalidator8" runat="server" errormessage="* Provide the required fields" controltovalidate="txtContact" ForeColor="Red" ></asp:requiredfieldvalidator>--%>
                </td>
            </tr>
                       <tr> 
                           <td>
                               Age:</td>
                 <td>
                    <asp:TextBox  ID="txtAge" runat="server" ></asp:TextBox><br />
<%--                     <asp:requiredfieldvalidator id="Requiredfieldvalidator9" runat="server" errormessage="* Provide the required fields" controltovalidate="txtDOB" ForeColor="Red" ></asp:requiredfieldvalidator>--%>
                </td>
                <td>
                    User Name:
                </td>
                 <td>
                    <asp:TextBox  ID="txtUName" runat="server"></asp:TextBox><br />
<%--        <asp:requiredfieldvalidator id="Requiredfieldvalidator10" runat="server" errormessage="* Provide the required fields" controltovalidate="txtAge" ForeColor="Red" ></asp:requiredfieldvalidator>--%>
                </td> 
                           <td>
                   Password:
                </td>
                 <td>
                    <asp:TextBox  ID="txtPass" runat="server"></asp:TextBox><br />
<%--        <asp:requiredfieldvalidator id="Requiredfieldvalidator10" runat="server" errormessage="* Provide the required fields" controltovalidate="txtAge" ForeColor="Red" ></asp:requiredfieldvalidator>--%>
                </td>
                       </tr>
                       </table>
                    </asp:Panel>
                    <asp:Panel ID="Panel1" runat="server" GroupingText="Address & Other Info" BorderWidth="3px" Width="1193px">

      
              <table class="auto-style4"  >
                  <tr>
                      <td >Zone: </td>
                      <td >
                          <asp:DropDownList ID="Zone" runat="server" CssClass="auto-style2" Width="200px">
                              <asp:ListItem>Select Zone</asp:ListItem>
                              <asp:ListItem>Mechi</asp:ListItem>
                              <asp:ListItem>Koshi</asp:ListItem>
                              <asp:ListItem>Sagarmatha</asp:ListItem>
                              <asp:ListItem>Janakpur</asp:ListItem>
                              <asp:ListItem>Bagmati</asp:ListItem>
                              <asp:ListItem>Narayani</asp:ListItem>
                              <asp:ListItem>Gandaki</asp:ListItem>
                              <asp:ListItem>Lumbini</asp:ListItem>
                              <asp:ListItem>Dhaulagiri</asp:ListItem>
                              <asp:ListItem>Rapti</asp:ListItem>
                              <asp:ListItem>Bheri</asp:ListItem>
                              <asp:ListItem>Karnali</asp:ListItem>
                              <asp:ListItem>Seti</asp:ListItem>
                              <asp:ListItem>Mahakali</asp:ListItem>
                          </asp:DropDownList>
                          <%--                     <asp:requiredfieldvalidator id="Requiredfieldvalidator11" runat="server" errormessage="* Provide the required fields" controltovalidate="Zone" ForeColor="Red" ></asp:requiredfieldvalidator>--%></td>
                      <td>District: </td>
                      <td >
                          <asp:DropDownList ID="District" runat="server" CssClass="mydropdownlist">
                              <asp:ListItem>Select</asp:ListItem>
                              <asp:ListItem>Bhojpur</asp:ListItem>
                              <asp:ListItem>Dhankuta</asp:ListItem>
                              <asp:ListItem>Ilam</asp:ListItem>
                              <asp:ListItem>Jhapa</asp:ListItem>
                              <asp:ListItem>Khotang</asp:ListItem>
                              <asp:ListItem>Morang</asp:ListItem>
                              <asp:ListItem>Okhaldhunga</asp:ListItem>
                              <asp:ListItem>Panchthar</asp:ListItem>
                              <asp:ListItem>Sankhuwasabha</asp:ListItem>
                              <asp:ListItem>Solukhumbu</asp:ListItem>
                              <asp:ListItem>Sunsari</asp:ListItem>
                              <asp:ListItem>Taplejung</asp:ListItem>
                              <asp:ListItem>Terhathum</asp:ListItem>
                              <asp:ListItem>Udayapur</asp:ListItem>
                              <asp:ListItem>Bara</asp:ListItem>
                              <asp:ListItem>Dhanusa</asp:ListItem>
                              <asp:ListItem>Mahottari</asp:ListItem>
                              <asp:ListItem>Parsa</asp:ListItem>
                              <asp:ListItem>Rauthat</asp:ListItem>
                              <asp:ListItem>Saptari</asp:ListItem>
                              <asp:ListItem>Sarlahi</asp:ListItem>
                              <asp:ListItem>Siraha</asp:ListItem>
                              <asp:ListItem>Sindhuli</asp:ListItem>
                              <asp:ListItem>Ramechhap</asp:ListItem>
                              <asp:ListItem>Dolakha</asp:ListItem>
                              <asp:ListItem>Bhaktapur</asp:ListItem>
                              <asp:ListItem>Dhading</asp:ListItem>
                              <asp:ListItem>Kathmandu</asp:ListItem>
                              <asp:ListItem>Kavrepalanchowk</asp:ListItem>
                              <asp:ListItem>Lalitpur</asp:ListItem>
                              <asp:ListItem>Nuwakot</asp:ListItem>
                              <asp:ListItem>Rasuwa</asp:ListItem>
                              <asp:ListItem>CHitwan</asp:ListItem>
                              <asp:ListItem>Makwanpur</asp:ListItem>
                              <asp:ListItem>Baglung</asp:ListItem>
                              <asp:ListItem>Gorkha</asp:ListItem>
                              <asp:ListItem>Kaski</asp:ListItem>
                              <asp:ListItem>Lamjung</asp:ListItem>
                              <asp:ListItem>Manang</asp:ListItem>
                              <asp:ListItem>Mustang</asp:ListItem>
                              <asp:ListItem>Myagdi</asp:ListItem>
                              <asp:ListItem>Nawalpur</asp:ListItem>
                              <asp:ListItem>Parwat</asp:ListItem>
                              <asp:ListItem>Syangja</asp:ListItem>
                              <asp:ListItem>Tanahun</asp:ListItem>
                              <asp:ListItem>Kapilvastu</asp:ListItem>
                              <asp:ListItem>Parasi</asp:ListItem>
                              <asp:ListItem>Rupendhi</asp:ListItem>
                              <asp:ListItem>Arghakhachi</asp:ListItem>
                              <asp:ListItem>Gulmi</asp:ListItem>
                              <asp:ListItem>Palpa</asp:ListItem>
                              <asp:ListItem>Dang</asp:ListItem>
                              <asp:ListItem>Pyuthan</asp:ListItem>
                              <asp:ListItem>Rolpa</asp:ListItem>
                              <asp:ListItem>Eastern Rukum</asp:ListItem>
                              <asp:ListItem>Banke</asp:ListItem>
                              <asp:ListItem>Bardiya</asp:ListItem>
                              <asp:ListItem>Western Rukum</asp:ListItem>
                              <asp:ListItem>Salyan</asp:ListItem>
                              <asp:ListItem>Dolpa</asp:ListItem>
                              <asp:ListItem>Humla</asp:ListItem>
                              <asp:ListItem>Jumla</asp:ListItem>
                              <asp:ListItem>Kalikot</asp:ListItem>
                              <asp:ListItem>Mugu</asp:ListItem>
                              <asp:ListItem>Surkhet</asp:ListItem>
                              <asp:ListItem>Dailekh</asp:ListItem>
                              <asp:ListItem>Jajarkot</asp:ListItem>
                              <asp:ListItem>Kailali</asp:ListItem>
                              <asp:ListItem>Achham</asp:ListItem>
                              <asp:ListItem>Doti</asp:ListItem>
                              <asp:ListItem>Bhajang</asp:ListItem>
                              <asp:ListItem>Bajura</asp:ListItem>
                              <asp:ListItem>Kanchanpur</asp:ListItem>
                              <asp:ListItem>Dadeldhura</asp:ListItem>
                              <asp:ListItem>Baitadi</asp:ListItem>
                              <asp:ListItem>Darchula</asp:ListItem>
                          </asp:DropDownList>
                          <%--                     <asp:requiredfieldvalidator id="Requiredfieldvalidator12" runat="server" errormessage="* Provide the required fields" controltovalidate="District" ForeColor="Red"  ></asp:requiredfieldvalidator>--%></td>
                
                      <td>Municipality/VDC: </td>
                      <td class="auto-style3">
                          <asp:DropDownList ID="municipality" runat="server" CssClass="auto-style2" Width="200px">
                              <asp:ListItem Value="0">Select</asp:ListItem>
                              <asp:ListItem>Bhojpur</asp:ListItem>
                              <asp:ListItem>Dhankuta</asp:ListItem>
                              <asp:ListItem>Ilam</asp:ListItem>
                              <asp:ListItem>Jhapa</asp:ListItem>
                              <asp:ListItem>Khotang</asp:ListItem>
                              <asp:ListItem>Morang</asp:ListItem>
                              <asp:ListItem>Okhaldhunga</asp:ListItem>
                              <asp:ListItem>Panchthar</asp:ListItem>
                              <asp:ListItem>Sankhuwasabha</asp:ListItem>
                              <asp:ListItem>Solukhumbu</asp:ListItem>
                              <asp:ListItem>Sunsari</asp:ListItem>
                              <asp:ListItem>Taplejung</asp:ListItem>
                              <asp:ListItem>Terhathum</asp:ListItem>
                              <asp:ListItem>Udayapur</asp:ListItem>
                              <asp:ListItem>Bara</asp:ListItem>
                              <asp:ListItem>Dhanusa</asp:ListItem>
                              <asp:ListItem>Mahottari</asp:ListItem>
                              <asp:ListItem>Parsa</asp:ListItem>
                              <asp:ListItem>Rauthat</asp:ListItem>
                          </asp:DropDownList>
                          <%--                     <asp:requiredfieldvalidator id="Requiredfieldvalidator13" runat="server" errormessage="* Provide the required fields" controltovalidate="municipality" ForeColor="Red"  ></asp:requiredfieldvalidator>--%>

                      </td>
  </tr>
                  <tr>                      
                      <td>Ward No: </td>
                      <td >
                          <asp:DropDownList ID="ward" runat="server" CssClass="auto-style5" Width="200px">
                              <asp:ListItem Value="0">Select</asp:ListItem>
                              <asp:ListItem>01</asp:ListItem>
                              <asp:ListItem>02</asp:ListItem>
                              <asp:ListItem>03</asp:ListItem>
                              <asp:ListItem>04</asp:ListItem>
                              <asp:ListItem>05</asp:ListItem>
                              <asp:ListItem>06</asp:ListItem>
                              <asp:ListItem>07</asp:ListItem>
                              <asp:ListItem>08</asp:ListItem>
                              <asp:ListItem>09</asp:ListItem>
                              <asp:ListItem>10</asp:ListItem>
                              <asp:ListItem>11</asp:ListItem>
                              <asp:ListItem>12</asp:ListItem>
                              <asp:ListItem>13</asp:ListItem>
                              <asp:ListItem>14</asp:ListItem>
                              <asp:ListItem>15</asp:ListItem>
                              <asp:ListItem>16</asp:ListItem>
                              <asp:ListItem>17</asp:ListItem>
                              <asp:ListItem>18</asp:ListItem>
                              <asp:ListItem>19</asp:ListItem>
                              <asp:ListItem>20</asp:ListItem>
                              <asp:ListItem>21</asp:ListItem>
                              <asp:ListItem>22</asp:ListItem>
                              <asp:ListItem>23</asp:ListItem>
                              <asp:ListItem>24</asp:ListItem>
                              <asp:ListItem>25</asp:ListItem>
                              <asp:ListItem>26</asp:ListItem>
                              <asp:ListItem>27</asp:ListItem>
                              <asp:ListItem>28</asp:ListItem>
                              <asp:ListItem>29</asp:ListItem>
                              <asp:ListItem>30</asp:ListItem>
                              <asp:ListItem>31</asp:ListItem>
                              <asp:ListItem>32</asp:ListItem>
                          </asp:DropDownList>
                          <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="Ward" InitialValue="Choose One" ErrorMessage="* Please select Zone." ForeColor="Red"  >
     </asp:RequiredFieldValidator>--%></td>
                      <td>Tole: </td>
                      <td>
                          <asp:TextBox ID="txtTole" runat="server" ></asp:TextBox>
                          <br />
                          <%--                     <asp:requiredfieldvalidator id="Requiredfieldvalidator15" runat="server" errormessage="* Provide the required fields" controltovalidate="txtTole" ForeColor="Red" ></asp:requiredfieldvalidator>--%></td>
              
                      <td>
                          &nbsp;</td>
                      <td class="auto-style3">
                          &nbsp;</td>
                  </tr>
            </table>
      </asp:Panel>
       <table  align="center">
                <tr>
        <td>
        <asp:Button ID="Submit" runat="server" Text="Register" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px"  Width="123px" OnClick="Submit_Click"   />

        <asp:Button ID="Update" runat="server" Text="Update" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px"  Width="123px" OnClick="Update_Click"/>

        <asp:Button ID="Delete" runat="server" Text="Delete" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px"  Width="123px" />

        </td><td>  
            <asp:Button ID="Cancel" runat="server" Text="Exit" BackColor="Red" Font-Bold="True" ForeColor="White" Height="28px" Width="123px" />
    </td></tr>
         </table></div>
    <div align="center">
        <asp:Panel ID="pnlAddVoter" runat="server" GroupingText="Information of Voter" BorderWidth="3px" Width="1192px">
            
        
<asp:GridView ID="gvVoter" runat="server" AutoGenerateColumns="False" DataKeyNames="Voter_ID" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="VoterDataSource" AllowPaging="True" ForeColor="Black" GridLines="None" >
            <AlternatingRowStyle BackColor="#99FF99" />
            <Columns>
                <asp:BoundField DataField="Voter_ID" HeaderText="Voter_ID" ReadOnly="True" SortExpression="Voter_ID" />
                <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                <asp:BoundField DataField="MName" HeaderText="MName" SortExpression="MName" />
                <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                <asp:BoundField DataField="ParentName" HeaderText="ParentName" SortExpression="ParentName" />
                <asp:BoundField DataField="GPName" HeaderText="GPName" SortExpression="GPName" />
                <asp:BoundField DataField="UName" HeaderText="UName" SortExpression="UName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Citizen" HeaderText="Citizen" SortExpression="Citizen" />
                <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Zone" HeaderText="Zone" SortExpression="Zone" />
                <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                <asp:BoundField DataField="Village" HeaderText="Village" SortExpression="Village" />
                <asp:BoundField DataField="Ward" HeaderText="Ward" SortExpression="Ward" />
                <asp:BoundField DataField="Tole" HeaderText="Tole" SortExpression="Tole" />
            </Columns>
            <HeaderStyle BackColor="#33CC33" />
            <RowStyle BackColor="#FF9966" />
            <SelectedRowStyle BackColor="#66CCFF" />
            <SortedAscendingHeaderStyle HorizontalAlign="Justify" />
        </asp:GridView>
            <asp:SqlDataSource ID="VoterDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:poolingConnectionString %>" SelectCommand="SELECT * FROM [VoterInfo]"></asp:SqlDataSource>
            </asp:Panel>
    </div>
</asp:Content>
