<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageRoles.aspx.cs" MasterPageFile="~/Admin/MasterPageAdmin.master" Inherits="ManageRoles" %>



<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <div class="Add_Member_Container">
        <div class="AddMember_Form">
            
            <div>
                <table>
                    <tr>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                         <h1>All User Roles</h1>   
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:GridView ID="gvUsersInRoles" Width="400px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
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
                        <td>
                            <h4>Add User To Roles</h4>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">User:</td>
                        <td class="auto-style1">
                            <asp:DropDownList ID="ddlAddUser" runat="server"></asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>Role:</td>
                        <td>
                            <asp:DropDownList ID="ddlAddRole" runat="server"></asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnAddUserToRole" runat="server" Text="Add User To Role" OnClick="btnAddUserToRole_Click" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <h4>Remove User From Role</h4>
                        </td>
                    </tr>
                    <tr>
                        <td>User:</td>
                        <td>
                            <asp:DropDownList ID="ddlRemoveUser" runat="server"></asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>Role:</td>
                        <td>
                            <asp:DropDownList ID="ddlRemoveRole" runat="server"></asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnRemoveUserFromRole" runat="server" Text="Remove User From Role" OnClick="btnRemoveUserFromRole_Click" /></td>
                    </tr>
                    <tr>
                        <td><a href="AddNewRoles.aspx" class="link">Add OR Delete Role</a></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <br /><br />
</asp:Content>
