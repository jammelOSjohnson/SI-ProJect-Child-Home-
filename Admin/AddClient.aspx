<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AddClient.aspx.cs" Inherits="Admin_AddClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div class="Add_Member_Container">
        <div class="AddMember_Form">
            <div class="Heading">
                <div>
                    <p>Add client</p>
                </div>
            </div>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1" DataKeyNames="ClientID" InsertItemPosition="LastItem" GroupItemCount="3">

                <AlternatingItemTemplate>
                    <td runat="server" style="background-color: #FFFFFF; color: #284775;">ClientID:
                        <asp:Label Text='<%# Eval("ClientID") %>' runat="server" ID="ClientIDLabel" /><br />
                        TRN:
                        <asp:Label Text='<%# Eval("TRN") %>' runat="server" ID="TRNLabel" /><br />
                        Fname:
                        <asp:Label Text='<%# Eval("Fname") %>' runat="server" ID="FnameLabel" /><br />
                        Lname:
                        <asp:Label Text='<%# Eval("Lname") %>' runat="server" ID="LnameLabel" /><br />
                        DOB:
                        <asp:Label Text='<%# Eval("DOB") %>' runat="server" ID="DOBLabel" /><br />
                        AddressLine1:
                        <asp:Label Text='<%# Eval("AddressLine1") %>' runat="server" ID="AddressLine1Label" /><br />
                        AddressLine2:
                        <asp:Label Text='<%# Eval("AddressLine2") %>' runat="server" ID="AddressLine2Label" /><br />
                        City:
                        <asp:Label Text='<%# Eval("City") %>' runat="server" ID="CityLabel" /><br />
                        SupervisorID:
                        <asp:Label Text='<%# Eval("SupervisorID") %>' runat="server" ID="SupervisorIDLabel" /><br />
                        <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" /><br />
                    </td>

                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="background-color: #999999;">ClientID:
                        <asp:Label Text='<%# Eval("ClientID") %>' runat="server" ID="ClientIDLabel1" /><br />
                        TRN:
                        <asp:TextBox Text='<%# Bind("TRN") %>' runat="server" ID="TRNTextBox" /><br />
                        Fname:
                        <asp:TextBox Text='<%# Bind("Fname") %>' runat="server" ID="FnameTextBox" /><br />
                        Lname:
                        <asp:TextBox Text='<%# Bind("Lname") %>' runat="server" ID="LnameTextBox" /><br />
                        DOB:
                        <asp:TextBox Text='<%# Bind("DOB") %>' runat="server" ID="DOBTextBox" /><br />
                        AddressLine1:
                        <asp:TextBox Text='<%# Bind("AddressLine1") %>' runat="server" ID="AddressLine1TextBox" /><br />
                        AddressLine2:
                        <asp:TextBox Text='<%# Bind("AddressLine2") %>' runat="server" ID="AddressLine2TextBox" /><br />
                        City:
                        <asp:TextBox Text='<%# Bind("City") %>' runat="server" ID="CityTextBox" /><br />
                        SupervisorID:
                        <asp:TextBox Text='<%# Bind("SupervisorID") %>' runat="server" ID="SupervisorIDTextBox" /><br />
                        <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" /><br />
                        <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" /><br />
                    </td>

                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr runat="server" id="itemPlaceholderContainer">
                        <td runat="server" id="itemPlaceholder"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">TRN:
                        <asp:TextBox Text='<%# Bind("TRN") %>' runat="server" ID="TRNTextBox" /><br />
                        Fname:
                        <asp:TextBox Text='<%# Bind("Fname") %>' runat="server" ID="FnameTextBox" /><br />
                        Lname:
                        <asp:TextBox Text='<%# Bind("Lname") %>' runat="server" ID="LnameTextBox" /><br />
                        DOB:
                        <asp:TextBox Text='<%# Bind("DOB") %>' runat="server" ID="DOBTextBox" /><br />
                        AddressLine1:
                        <asp:TextBox Text='<%# Bind("AddressLine1") %>' runat="server" ID="AddressLine1TextBox" /><br />
                        AddressLine2:
                        <asp:TextBox Text='<%# Bind("AddressLine2") %>' runat="server" ID="AddressLine2TextBox" /><br />
                        City:
                        <asp:TextBox Text='<%# Bind("City") %>' runat="server" ID="CityTextBox" /><br />
                        SupervisorID:
                        <asp:TextBox Text='<%# Bind("SupervisorID") %>' runat="server" ID="SupervisorIDTextBox" /><br />
                        <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><br />
                        <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /><br />
                    </td>

                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="background-color: #E0FFFF; color: #333333;">ClientID:
                        <asp:Label Text='<%# Eval("ClientID") %>' runat="server" ID="ClientIDLabel" /><br />
                        TRN:
                        <asp:Label Text='<%# Eval("TRN") %>' runat="server" ID="TRNLabel" /><br />
                        Fname:
                        <asp:Label Text='<%# Eval("Fname") %>' runat="server" ID="FnameLabel" /><br />
                        Lname:
                        <asp:Label Text='<%# Eval("Lname") %>' runat="server" ID="LnameLabel" /><br />
                        DOB:
                        <asp:Label Text='<%# Eval("DOB") %>' runat="server" ID="DOBLabel" /><br />
                        AddressLine1:
                        <asp:Label Text='<%# Eval("AddressLine1") %>' runat="server" ID="AddressLine1Label" /><br />
                        AddressLine2:
                        <asp:Label Text='<%# Eval("AddressLine2") %>' runat="server" ID="AddressLine2Label" /><br />
                        City:
                        <asp:Label Text='<%# Eval("City") %>' runat="server" ID="CityLabel" /><br />
                        SupervisorID:
                        <asp:Label Text='<%# Eval("SupervisorID") %>' runat="server" ID="SupervisorIDLabel" /><br />
                        <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" /><br />
                    </td>

                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="groupPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                    <tr runat="server" id="groupPlaceholder">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                                <asp:DataPager runat="server" ID="DataPager2" PageSize="12">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="background-color: #E2DED6; font-weight: bold; color: #333333;">ClientID:
                        <asp:Label Text='<%# Eval("ClientID") %>' runat="server" ID="ClientIDLabel" /><br />
                        TRN:
                        <asp:Label Text='<%# Eval("TRN") %>' runat="server" ID="TRNLabel" /><br />
                        Fname:
                        <asp:Label Text='<%# Eval("Fname") %>' runat="server" ID="FnameLabel" /><br />
                        Lname:
                        <asp:Label Text='<%# Eval("Lname") %>' runat="server" ID="LnameLabel" /><br />
                        DOB:
                        <asp:Label Text='<%# Eval("DOB") %>' runat="server" ID="DOBLabel" /><br />
                        AddressLine1:
                        <asp:Label Text='<%# Eval("AddressLine1") %>' runat="server" ID="AddressLine1Label" /><br />
                        AddressLine2:
                        <asp:Label Text='<%# Eval("AddressLine2") %>' runat="server" ID="AddressLine2Label" /><br />
                        City:
                        <asp:Label Text='<%# Eval("City") %>' runat="server" ID="CityLabel" /><br />
                        SupervisorID:
                        <asp:Label Text='<%# Eval("SupervisorID") %>' runat="server" ID="SupervisorIDLabel" /><br />
                        <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" /><br />
                    </td>

                </SelectedItemTemplate>
            </asp:ListView>
            <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" InsertMethod="insert_client" OldValuesParameterFormatString="{0}" SelectMethod="select_all_Clients" TypeName="BusinessClass" UpdateMethod="update_client">

                <InsertParameters>
                    <asp:Parameter Name="TRN" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="FName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="LName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="DOB" Type="String"></asp:Parameter>
                    <asp:Parameter Name="AddressLine1" Type="String"></asp:Parameter>
                    <asp:Parameter Name="AddressLine2" Type="String"></asp:Parameter>
                    <asp:Parameter Name="City" Type="String"></asp:Parameter>
                    <asp:Parameter Name="PositionID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="SupervisorID" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ClientID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="TRN" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="FName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="LName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="DOB" Type="String"></asp:Parameter>
                    <asp:Parameter Name="AddressLine1" Type="String"></asp:Parameter>
                    <asp:Parameter Name="AddressLine2" Type="String"></asp:Parameter>
                    <asp:Parameter Name="City" Type="String"></asp:Parameter>
                    <asp:Parameter Name="PositionID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="SupervisorID" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:CHConnectionString %>' InsertCommand="InsertClient" InsertCommandType="StoredProcedure" SelectCommand="SelectClients" SelectCommandType="StoredProcedure" UpdateCommand="UpdateClient" UpdateCommandType="StoredProcedure">

                <InsertParameters>
                    <asp:Parameter Name="TRN" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="FName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="LName" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="DOB"></asp:Parameter>
                    <asp:Parameter Name="AddressLine1" Type="String"></asp:Parameter>
                    <asp:Parameter Name="AddressLine2" Type="String"></asp:Parameter>
                    <asp:Parameter Name="City" Type="String"></asp:Parameter>
                    <asp:Parameter Name="SupervisorID" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ClientID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="TRN" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="FName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="LName" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="DOB"></asp:Parameter>
                    <asp:Parameter Name="AddressLine1" Type="String"></asp:Parameter>
                    <asp:Parameter Name="AddressLine2" Type="String"></asp:Parameter>
                    <asp:Parameter Name="City" Type="String"></asp:Parameter>
                    <asp:Parameter Name="SupervisorID" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

