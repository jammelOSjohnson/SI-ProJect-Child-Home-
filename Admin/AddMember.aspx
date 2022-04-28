<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AddMember.aspx.cs" Inherits="Admin_AddMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div class="Add_Member_Container">
        <div class="AddMember_Form">
            <h1>Add Member</h1>
            <div class="top-margin">
                <label>User Role </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:DropDownList ID="ddlrole" runat="server" BorderColor="#E2E7E4" Height="20px" Width="262px" DataSourceID="SqlDataSource1" DataTextField="RoleName" DataValueField="RoleId"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CHConnectionString %>" SelectCommand="SELECT [RoleId], [RoleName] FROM [vw_aspnet_Roles]"></asp:SqlDataSource>
            </div>
            <div class="top-margin">
                <label>Username </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:TextBox ID="txtUsername" runat="server" BorderColor="#E2E7E4" Height="15px" Width="262px"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtUser" runat="server" ErrorMessage="Please enter username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="top-margin">
                <label>Password </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:TextBox ID="txtPassword" runat="server" BorderColor="#E2E7E4" Height="15px" Width="262px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtpswd" runat="server" ErrorMessage="Please Enter password" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            </div>
            <div class="top-margin">
                <label>Password Confirm </label>
                <asp:TextBox ID="txtPasswordConfirm" runat="server" BorderColor="#E2E7E4" Height="15px" Width="262px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtpswdR" runat="server" ErrorMessage="Please Confirm Password" ForeColor="Red" ControlToValidate="txtPasswordConfirm"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidatorPsswdR" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordConfirm" ErrorMessage="Both Password Must Match" ForeColor="Red" style="text-align: left"></asp:CompareValidator>
            </div>
            <div class="top-margin">
                <label>Member ID</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:TextBox ID="txtMemberID" runat="server" BorderColor="#E2E7E4" Height="15px" Width="262px"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtMid" runat="server" ErrorMessage="Please Enter ID eg.AM01(Admin),SM01(SuperMember),M01(Member)" ForeColor="Red" ControlToValidate="txtMemberID"></asp:RequiredFieldValidator>
            </div>
            <div class="top-margin">
                <label>First Name </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:TextBox ID="txtFname" runat="server" BorderColor="#E2E7E4" Height="15px" Width="262px"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFname" runat="server" ErrorMessage="Please Enter Firstname" ControlToValidate="txtFname" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="top-margin">
                <label>Last  Name </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:TextBox ID="txtLname" runat="server" BorderColor="#E2E7E4" Height="15px" Width="262px"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtLname" runat="server" ErrorMessage="Please Enter Lastname" ControlToValidate="txtLname" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="top-margin">
                <label>TRN </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:TextBox ID="txtTrn" runat="server" BorderColor="#E2E7E4" Height="15px" Width="262px"></asp:TextBox><br />
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidatorTrn" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtTrn"></asp:RegularExpressionValidator>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTrn" runat="server" ErrorMessage="Please Enter Trn" ControlToValidate="txtTrn" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="top-margin">
                <label>DOB </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:TextBox ID="txtDob" runat="server" BorderColor="#E2E7E4" Height="15px" Width="262px"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatordob" runat="server" ErrorMessage="Please Enter Date of Birth" ControlToValidate="txtDob" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="top-margin">
                <label>AddressLine1 </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:TextBox ID="txtaddL1" runat="server" BorderColor="#E2E7E4" Height="15px" Width="262px"></asp:TextBox><br />
            </div>
            <div class="top-margin">
                <label>AddressLine2 </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:TextBox ID="txtaddL2" runat="server" BorderColor="#E2E7E4" Height="15px" Width="262px"></asp:TextBox><br />
            </div>
            <div class="top-margin">
                <label>City </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:TextBox ID="txtCity" runat="server" BorderColor="#E2E7E4" Height="15px" Width="262px"></asp:TextBox><br />
            </div>
            <div class="top-margin">
                <label>Member Position </label>&nbsp&nbsp&nbsp
                <asp:DropDownList ID="ddlPosition" runat="server" BorderColor="#E2E7E4" Height="20px" Width="262px" DataSourceID="SqlDataSource2" DataTextField="PositionName" DataValueField="PositionID"></asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:CHConnectionString %>' SelectCommand="SELECT [PositionID], [PositionName] FROM [Position]"></asp:SqlDataSource>
            </div>

            <div>
                <br />
                <div class="text-right">
                    <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" CssClass="button_color" Height="30px" Width="102px" OnClick="btnSubmit_Click"/><br />
                    <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </div>
            </div>
        </div>
    </div>
    

</asp:Content>

