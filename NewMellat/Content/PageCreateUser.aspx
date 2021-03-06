<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PageCreateUser.aspx.cs" Inherits="NewMellat.Content.PageCreateUser" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div dir="rtl" class="box box-danger" align="center" style="padding-top: 5px; padding-bottom: 8px">
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CancelButtonText="انصراف" CompleteSuccessText="کاربر جدید با موفقیت ایجاد شد" ConfirmPasswordLabelText="تکرار رمز عبور" CreateUserButtonText="ایجاد کاربر جدید" DuplicateEmailErrorMessage="پست الکترونیک وارده شده تکراری می باشد" DuplicateUserNameErrorMessage="نام کاربری وارد شده تکراری می باشد" EmailLabelText="پست الکترونیک" FinishCompleteButtonText="پایان" PasswordLabelText="رمز عبور" UserNameLabelText="نام کاربری" OnCreatedUser="CreateUserWizard1_CreatedUser" OnContinueButtonClick="CreateUserWizard1_ContinueButtonClick" LoginCreatedUser="False">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" Title="ساخت کاربر جدید" />
                <asp:CompleteWizardStep runat="server" Title="ثبت کاربر جدید به اتمام رسید" />
            </WizardSteps>
        </asp:CreateUserWizard>
    </div>
    <div class="box box-danger">
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sourceUsers" EnableTheming="True" RightToLeft="True" Theme="SoftOrange" Width="100%" OnRowDeleting="ASPxGridView1_RowDeleting" KeyFieldName="UserId" OnRowCommand="ASPxGridView1_RowCommand" Font-Names="B Yekan" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared">
            <SettingsBehavior ConfirmDelete="True" />
            <SettingsCommandButton>
                <DeleteButton ButtonType="Image">
                    <Image IconID="edit_delete_16x16">
                    </Image>
                </DeleteButton>
            </SettingsCommandButton>
            <SettingsDataSecurity AllowDelete="False" />
            <SettingsText ConfirmDelete="آیا کاربر انتخابی حذف گردد؟" />
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="UserName" VisibleIndex="1" Caption="نام کاربری">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="SsoLogin" VisibleIndex="2" Caption="نام SSO">
                </dx:GridViewDataTextColumn>
                 <dx:GridViewDataTextColumn FieldName="department" VisibleIndex="3" Caption="واحد سازمانی">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="ریست کردن رمز عبور" VisibleIndex="4">
                    <DataItemTemplate>
                        <asp:ImageButton ID="ImageButton3" runat="server" CommandArgument='<%# Eval("UserName") %>' CommandName="res" ImageUrl="~/Content/images/icons/exclamation-mark-yellow-icon.png" ToolTip="ریست کردن" CausesValidation="False" />
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="بازکردن دسترسی" VisibleIndex="5">
                    <DataItemTemplate>
                        <asp:ImageButton ID="ImageButton4" runat="server" CommandArgument='<%# Eval("UserName") %>' CommandName="lock" ImageUrl="~/Content/images/icons/wood-folder-icon.png" />
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="تنظیمات" VisibleIndex="6">
                    <DataItemTemplate>
                        <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl="~/Content/images/icons/edit-validated-icon.png"></asp:HyperLink>
                        <asp:HiddenField ID="h1" runat="server" Value='<%# Eval("UserName") %>' />
                        
                    </DataItemTemplate>
                    </dx:GridViewDataTextColumn>
            </Columns>
            <Styles>
                <Header HorizontalAlign="Center">
                </Header>
            </Styles>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="sourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT UserId, aspnet_Users.UserName, SsoLogin ,departId,prInformation.infTitle as department 
FROM aspnet_Users left Join SsoMapUser On aspnet_Users.UserName = SsoMapUser.Loginname
													left join tbUserDepartment on  aspnet_Users.UserName =tbUserDepartment.userName
													left join prInformation on prInformation.infId=tbUserDepartment.departId"></asp:SqlDataSource>
    </div>
    <div align="center" style="padding: 9px">
        <telerik:RadNotification ID="RadNotification1" runat="server" Position="Center" Width="250px">
        </telerik:RadNotification>
        <asp:Label ID="lbReset" runat="server"></asp:Label>
    </div>
</asp:Content>
