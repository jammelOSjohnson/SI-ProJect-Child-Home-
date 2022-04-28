<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ClientSearch.aspx.cs" Inherits="Member_ClientSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <br /><br /><br /><br /><br /><br /><br />
    <div class="Search_Container">
        <div class="Search">
            <div><h1>Client Search</h1></div>
            <asp:Label ID="lblSearch" runat="server" Text="Search :"></asp:Label>
            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="GO" OnClick="btnSubmit_Click" /><br /><br />
            <asp:RadioButtonList ID="rblSoptions" runat="server">
                <asp:ListItem>Firstname</asp:ListItem>
                <asp:ListItem>Lastname</asp:ListItem>
                <asp:ListItem>TRN</asp:ListItem>
                <asp:ListItem>SupervisorID</asp:ListItem>
            </asp:RadioButtonList><br /><br />
            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label><br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#996600" BorderColor="#996600" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2" Height="90px" Width="260px">
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" /> 

            </asp:GridView>
         </div>
     </div>
    <br /><br /><br /><br /><br /><br /><br />
</asp:Content>

