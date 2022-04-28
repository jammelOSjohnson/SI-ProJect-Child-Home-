<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Admin_Report" MasterPageFile="~/Admin/MasterPageAdmin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="Search_Container">
        <div class="Search">
            <h1>Report</h1>
            <asp:SqlDataSource ID="SDSReport" runat="server" ConnectionString="<%$ ConnectionStrings:CHConnectionString%>" SelectCommand="SelectRegistration" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SDSReport" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ClientiD" HeaderText="ClientiD" SortExpression="ClientiD" />
                    <asp:BoundField DataField="AllowanceID" HeaderText="AllowanceID" SortExpression="AllowanceID" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                    <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                    <asp:BoundField DataField="TRN" HeaderText="TRN" SortExpression="TRN" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

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
</asp:Content>

