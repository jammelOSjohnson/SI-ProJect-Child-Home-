<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AddNewRoles.aspx.cs" Inherits="AddNewRoles" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="Add_Member_Container">
        <div class="AddMember_Form">
            
            <div>
                <table>
                    <tr>
                        <td colspan="3"><h1>Add And Remove Roles</h1></td>
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="3">
                            <asp:GridView ID="gvRole" Width="300px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                        </td>

                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="3">
                            <h1>ADD ROLE</h1>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Role:"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtRole" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rvfRole" runat="server" ControlToValidate="txtRole" ErrorMessage="Role Name Required." ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="3">
                            <asp:Button ID="btnSubmit" runat="server" Text="Add Role" OnClick="btnSubmit_Click" /></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <h1>Remove Role</h1>
                        </td>

                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:DropDownList ID="ddlRoles" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Label ID="lblMessage2" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnDeleteRole" runat="server" Text="Delete Role" OnClick="btnDeleteUser_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td><a href="ManageRoles.aspx" class="link">Previous Page</a></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <br /><br /><br /><br />
</asp:Content>
