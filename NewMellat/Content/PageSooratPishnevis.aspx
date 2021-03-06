<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PageSooratPishnevis.aspx.cs" Inherits="NewMellat.Content.PageSooratPishnevis" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../assets/js/jquery-1.8.2.min.js"></script>
     <script type="text/javascript">

        function txt() {
            var ms = document.getElementById('txtPrice').value;
            document.getElementById('txtPricePlus').value = parseInt(ms) + parseInt(ms * 10 / 100);



                   }





        var ctrlKeyDown = false;

        $(document).ready(function () {
            $(document).on("keydown", keydown);
            $(document).on("keyup", keyup);
        });

        function keydown(e) {

            if ((e.which || e.keyCode) == 116 || ((e.which || e.keyCode) == 82 && ctrlKeyDown)) {
                // Pressing F5 or Ctrl+R
                e.preventDefault();
            } else if ((e.which || e.keyCode) == 17) {
                // Pressing  only Ctrl
                ctrlKeyDown = true;
            }
        };

        function keyup(e) {
            // Key up Ctrl
            if ((e.which || e.keyCode) == 17)
                ctrlKeyDown = false;
        };





    </script>

    <style type="text/css">
        .auto-style1 {
            float: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="right">
        <div align="right" style="height: 320px" class="box box-danger" dir="ltr">
            <table align="right" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td align="right" colspan="3" dir="rtl" style="font-family: 'b yekan'; color: #808080">
                        <asp:Label ID="lbTitle" runat="server"></asp:Label>
                    </td>
                    <td width="14%" style="height: 35px">
                        <asp:Label ID="Label3" runat="server" Text=":عنوان تحویلی"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="3" style="font-family: 'b yekan'; color: #808080" dir="rtl">
                        <asp:Label ID="lbPrice" runat="server"></asp:Label>
                    </td>
                    <td style="height: 35px">
                        <asp:Label ID="Label4" runat="server" Text=":مبلغ"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" width="36%">
                        <asp:Label ID="Label18" runat="server" Text="ریال"></asp:Label>
                        <telerik:RadNumericTextBox ID="txtPricePlus" Runat="server" DataType="System.Int64" Width="90%" ClientIDMode="Static" BorderColor="#F8DF8E">
<NegativeStyle Resize="None"></NegativeStyle>

<NumberFormat ZeroPattern="n" DecimalDigits="0"></NumberFormat>

<EmptyMessageStyle Resize="None"></EmptyMessageStyle>

<ReadOnlyStyle Resize="None"></ReadOnlyStyle>

<FocusedStyle Resize="None"></FocusedStyle>

<DisabledStyle Resize="None"></DisabledStyle>

<InvalidStyle Resize="None"></InvalidStyle>

<HoveredStyle Resize="None"></HoveredStyle>

<EnabledStyle Resize="None"></EnabledStyle>
                        </telerik:RadNumericTextBox>
                    </td>
                    <td width="14%">
                        <asp:Label ID="Label6" runat="server" Text=":مبلغ با ارزش افزوده"></asp:Label>
                    </td>
                    <td align="right" width="36%">
                        <asp:Label ID="Label17" runat="server" Text="ریال"></asp:Label>
                        <telerik:RadNumericTextBox   ID="txtPrice" Runat="server" DataType="System.Int64" Width="90%" ClientIDMode="Static" BorderColor="#F8DF8E">
<NegativeStyle Resize="None"></NegativeStyle>

<NumberFormat ZeroPattern="n" DecimalDigits="0"></NumberFormat>

<EmptyMessageStyle Resize="None"></EmptyMessageStyle>

<ReadOnlyStyle Resize="None"></ReadOnlyStyle>

<FocusedStyle Resize="None"></FocusedStyle>

<DisabledStyle Resize="None"></DisabledStyle>

<InvalidStyle Resize="None"></InvalidStyle>

<HoveredStyle Resize="None"></HoveredStyle>

<EnabledStyle Resize="None"></EnabledStyle>
                        </telerik:RadNumericTextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label5" runat="server" Text=":مبلغ پیش نویس"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="padding-top: 5px">
                    <asp:TextBox ID="txtSoorathesab" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label7" runat="server" Text=":شماره صورتحساب"></asp:Label>
                    </td>
                    <td align="right" style="padding-top: 5px">
                    <asp:TextBox ID="txtNafar" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label8" runat="server" Text=":نفر/ ساعت"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtShenase" Display="None" ErrorMessage="شناسه نامه خالی می باشد" ValidationGroup="g11"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDore" Display="None" ErrorMessage="دوره ارسالی خالی می باشد" ValidationGroup="g11"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrice" Display="None" ErrorMessage="مبلغ پیش نویس خالی می باشد" ValidationGroup="g11"></asp:RequiredFieldValidator>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNumber" Display="None" ErrorMessage="شماره نامه خالی می باشد" ValidationGroup="g11"></asp:RequiredFieldValidator>
                     

                        </td>
                    <td class="RightColumn">&nbsp;</td>
                    <td align="right" style="padding-top: 5px">
                    <asp:TextBox ID="txtDore" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label9" runat="server" Text=":دوره ارسالی"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="padding-top: 5px">
                    <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label11" runat="server" Text=":شماره نامه"></asp:Label>
                    </td>
                    <td align="right" style="padding-top: 5px">
                    <asp:TextBox ID="txtShenase" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label10" runat="server" Text=":شناسه نامه"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="padding-top: 5px">
                    <asp:TextBox ID="ASPxMemo1" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label16" runat="server" Text=":توضیحات"></asp:Label>
                    </td>
                    <td class="LeftColumn">
                        <div align="right">
                            <table align="right" cellpadding="0" cellspacing="0" width="95%">
                                <tr>
                                    <td>
                                        <dx:ASPxComboBox ID="drpYear" runat="server" RightToLeft="True" Theme="SoftOrange" ValueType="System.String" Width="90%">
                                            <Border BorderColor="#F8DF8E" />
                                        </dx:ASPxComboBox>
                                    </td>
                                    <td>
                                        <dx:ASPxComboBox ID="drpMonth" runat="server" RightToLeft="True" Theme="SoftOrange" ValueType="System.String" Width="90%">
                                            <Border BorderColor="#F8DF8E" />
                                        </dx:ASPxComboBox>
                                    </td>
                                    <td>
                                        <dx:ASPxComboBox ID="drpDay" runat="server" RightToLeft="True" Theme="SoftOrange" ValueType="System.String" Width="90%">
                                            <Border BorderColor="#F8DF8E" />
                                        </dx:ASPxComboBox>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label12" runat="server" Text=":تاریخ ثبت پیش نویس"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="LeftColumn">&nbsp;</td>
                    <td class="RightColumn">&nbsp;</td>
                    <td align="right">
                <telerik:RadUpload ID="RadUpload1" Runat="server" ControlObjectsVisibility="RemoveButtons, AddButton" MaxFileInputsCount="10" Width="95%" Skin="Sunset">
                    <Localization Add="جدید" Clear="پاک کردن" Delete="حذف" Remove="حذف" Select="انتخاب فایل" />
                </telerik:RadUpload>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label13" runat="server" Text=":ضمایم"></asp:Label>
                    </td>
                </tr>
                </table>
        </div>
    </div>
    <div align="center" style="padding: 5px" class="box box-success">
        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="ثبت اطلاعات" Theme="SoftOrange" Width="150px" OnClick="ASPxButton1_Click" ValidationGroup="g11">
        </dx:ASPxButton>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="12px" ForeColor="Red" ValidationGroup="g11" />
    </div>
    <div class="box box-danger">
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" Theme="SoftOrange" AutoGenerateColumns="False" DataSourceID="sourceProjects" KeyFieldName="pishId" RightToLeft="True" Width="100%" Font-Names="B Yekan">
            <SettingsEditing Mode="EditForm">
            </SettingsEditing>
            <Settings ShowFilterRow="True" ShowGroupPanel="True" />
            <SettingsBehavior ConfirmDelete="True" />
            <SettingsCommandButton>
                <UpdateButton ButtonType="Image">
                    <Image Url="~/Content/images/icons/Actions-document-save-icon.png">
                    </Image>
                </UpdateButton>
                <CancelButton ButtonType="Image">
                    <Image Url="~/Content/images/icons/Close-2-icon.png">
                    </Image>
                </CancelButton>
                <EditButton ButtonType="Image">
                    <Image Url="~/Content/images/icons/edit-icon.png">
                    </Image>
                </EditButton>
                <DeleteButton ButtonType="Image">
                    <Image Url="~/Content/images/icons/Close-2-icon.png">
                    </Image>
                </DeleteButton>
            </SettingsCommandButton>
            <SettingsSearchPanel Visible="True" />
            <SettingsLoadingPanel Text="در حال اجرا..." />
            <SettingsText ConfirmDelete="آیا ردیف انتخابی حذف شود؟" EmptyDataRow="اطلاعات موجود نمی باشد" GroupPanel="ستون مورد نظر جهت گروه بندی اطلاعات را وارد نمایید" SearchPanelEditorNullText="متن مورد جستجو را وارد نمایید" />
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn Caption="مبلغ پیش نویس" FieldName="pishPrice" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="مبلغ با ارزش افزوده" FieldName="pishPricePlus" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="نفر / ساعت" VisibleIndex="8" FieldName="pishHours">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="دوره ارسالی" VisibleIndex="9" FieldName="pishDore">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn VisibleIndex="1" Caption="نام پروژه" FieldName="ProjectName">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="شماره قرارداد" VisibleIndex="2" FieldName="ProjectGharardad">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="موعد تحویلی" FieldName="MoedTahvili" VisibleIndex="3">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="قیمت" FieldName="Price" VisibleIndex="4">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="سال" FieldName="years" VisibleIndex="10">
                </dx:GridViewDataTextColumn>
            </Columns>
            <Styles>
                <Header Font-Names="B Yekan" Font-Size="13px" HorizontalAlign="Center">
                </Header>
                <Row HorizontalAlign="Center" Font-Names="B Yekan">
                </Row>
            </Styles>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="sourceProjects" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" DeleteCommand="DELETE FROM tbSooratPishNevis WHERE (pishId = @pishId)" SelectCommand="SELECT tbSooratPishNevis.pishId, tbSooratPishNevis.pishPrice, tbSooratPishNevis.pishPricePlus, tbSooratPishNevis.pishSooratHesab, tbSooratPishNevis.pishHours, tbSooratPishNevis.pishDore, tbSooratPishNevis.pishType, tbSooratHesab.ProjectName, tbSooratHesab.ProjectGharardad, tbSooratHesab.MoedTahvili, tbSooratHesab.Price, tbSooratPishNevis.pishIsNazer ,
substring(tbSooratHesab.ProjectGharardad,1,2) as years

FROM tbSooratPishNevis INNER JOIN tbSooratHesab ON tbSooratPishNevis.pishProject = tbSooratHesab.id WHERE (tbSooratPishNevis.pishAct = 1) AND (tbSooratPishNevis.pishIsNazer = 0)" UpdateCommand="UPDATE tbSooratPishNevis SET pishPrice = @pishPrice, pishPricePlus = @pishPricePlus, pishSooratHesab = @pishSooratHesab, pishHours = @pishHours, pishDore = @pishDore WHERE (pishId = @pishId)">
            <DeleteParameters>
                <asp:Parameter Name="pishId" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="pishPrice" />
                <asp:Parameter Name="pishPricePlus" />
                <asp:Parameter Name="pishSooratHesab" />
                <asp:Parameter Name="pishHours" />
                <asp:Parameter Name="pishDore" />
                <asp:Parameter Name="pishId" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sourcePaper" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="spInsertPaper" InsertCommandType="StoredProcedure" SelectCommand="SELECT TOP (1) infId FROM prInformation">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtShenase" Name="paShenase" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtNumber" Name="paNumber" PropertyName="Text" Type="String" />
                <asp:Parameter DbType="Date" DefaultValue="" Name="paDate" />
                <asp:Parameter Name="paProject" Type="Int32" DefaultValue="" />
                <asp:Parameter DefaultValue="1001" Name="paType" Type="Int32" />
                <asp:ControlParameter ControlID="ASPxMemo1" Name="paBody" PropertyName="Text" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <telerik:RadNotification ID="RadNotification1" runat="server" Position="Center" Width="300px">
        </telerik:RadNotification>
    </div>
</asp:Content>
