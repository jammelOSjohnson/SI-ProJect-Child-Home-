<%@ Page Title="" Language="C#" MasterPageFile="~/SMember/SMemberMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="SMember_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div class="Reg_Container">
        <div class="Reg">
            <asp:Label ID="lblChild" runat="server" Text="Child :"></asp:Label>
            <asp:DropDownList ID="ddlChild" runat="server" DataSourceID="SqlDataSource2" DataTextField="Fname" DataValueField="ClientID"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:CHConnectionString %>' SelectCommand="SELECT [ClientID], [Fname] FROM [Client] WHERE ([SupervisorID] = @SupervisorID)">
                <SelectParameters>
                    <asp:SessionParameter SessionField="UserID" Name="SupervisorID" Type="String"></asp:SessionParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="lblStatus" runat="server" Text="Status :"></asp:Label>
            <asp:DropDownList ID="ddlStatus" runat="server">
                <asp:ListItem>Home</asp:ListItem>
                <asp:ListItem>School</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblAlowance" runat="server" Text="Allowance :"></asp:Label>
            <asp:DropDownList ID="ddlAllowance" runat="server" DataSourceID="SqlDataSource1" DataTextField="Amount" DataValueField="A_id"></asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:CHConnectionString %>' SelectCommand="SelectAllowance" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <br />
            <br />
            <div>
                <br />
                <div class="text-right">
                    <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" CssClass="button_color" Height="30px" Width="102px" OnClick="btnSubmit_Click" /><br />
                    <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

