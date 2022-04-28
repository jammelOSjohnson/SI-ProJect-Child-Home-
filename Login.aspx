<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div class="Login_Form_Container">
        <div class="Login_Form">
            <div class="top-margin">
                <label>Username </label>
                <asp:TextBox ID="txtUsername" runat="server" BorderColor="#E2E7E4" Height="15px" Width="262px"></asp:TextBox>
            </div>
            <div class="top-margin">
                <label>Password </label>
                <asp:TextBox ID="txtPassword" runat="server" BorderColor="#E2E7E4" Height="15px" Width="262px" TextMode="Password"></asp:TextBox>
            </div>

            <div>
                <br />
                <div>
                    <b><a href="#">Forgot password?</a></b>
                </div>
                <div class="text-right">
                    <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" CssClass="button_color" Height="30px" Width="102px" OnClick="btnSubmit_Click" /><br />
                    <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </div>
            </div>
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

