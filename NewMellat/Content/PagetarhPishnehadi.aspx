<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PagetarhPishnehadi.aspx.cs" Inherits="NewMellat.Content.PagetarhPishnehadi" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="LavaControl" namespace="LavaControl" tagprefix="cc1" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function loadDoc2(parent) {

            var oWnd = radopen("PageAttach.aspx?Parent=" + parent + "&Type=6", "RadWindow3");
            oWnd.setSize(910, 500);
            oWnd.Center();
        }



        function loadDoc(parent) {

            var oWnd = radopen("PagePages.aspx?project=" + parent+"&type=73", "RadWindow1");
            oWnd.setSize(710, 450);
            oWnd.Center();
        }


    </script>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <div style="height: 490px; padding-top: 9px;" align="right" dir="ltr" class="box box-danger">
    <table align="right" cellpadding="0" cellspacing="0" style="height: 477px" width="100%">
        <tr>
            <td align="right" width="36%">
                <dx:ASPxComboBox ID="drpYear" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" RightToLeft="True" TextField="prTitle" ValueField="prId" Font-Names="vazir" Font-Size="13px">
                    <Border BorderColor="#F8DF8E" />
                </dx:ASPxComboBox>
                </td>
            <td width="14%">
                <asp:Label ID="Label14" runat="server" Text=":سال پروپوزال"></asp:Label>
            </td>
            <td width="36%" align="right">
                <dx:ASPxComboBox ID="drpProjects" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" DataSourceID="sourceProjects0" RightToLeft="True" TextField="prTitle" ValueField="prId" Font-Names="vazir" Font-Size="13px" OnDataBound="drpProjects_DataBound">
                    <Border BorderColor="#F8DF8E" />
                </dx:ASPxComboBox>
                <asp:SqlDataSource ID="sourceProjects" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="spSelectProjects" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sourceProjects0" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT tbProjects.prId, tbProjects.prTitle, tbKhbregan.khStatus, tbKhbregan.khIsTarh FROM tbProjects INNER JOIN tbKhbregan ON tbProjects.prId = tbKhbregan.khProject WHERE (tbKhbregan.khStatus = 1) AND (tbKhbregan.khIsTarh = 0)   and ((prVahed IN (SELECT prProject  FROM tbAdminProjects WHERE (prType = 3)  AND (prCode = @prCode)  )) 
		OR(TechnicalSuvisor IN (SELECT prProject  FROM tbAdminProjects  WHERE (prType = 3) AND (prCode = @prCode) ))) 
AND (prPeymankar IN (SELECT prProject FROM tbAdminProjects AS tbAdminProjects_1 WHERE (prType = 1)  AND (prCode = @prCode) ))  ORDER BY tbProjects.prId DESC">
                      <SelectParameters>
                <asp:Parameter Name="prCode" />
            </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td width="14%">
                <asp:Label ID="Label1" runat="server" Text=":نام پروژه"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="3">
                    <asp:TextBox ID="ASPxMemo2" runat="server" CssClass="form-control" Width="98%"></asp:TextBox>
            </td>
            <td class="RightColumn">
                <asp:Label ID="Label25" runat="server" Text=":اهم اهداف پروپوزال"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="LeftColumn" align="right">
                    <asp:TextBox ID="txtHajmPosh" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
            </td>
            <td class="RightColumn">
                <asp:Label ID="Label12" runat="server" Text=":حجم نفر ماه پشتیبانی"></asp:Label>
            </td>
            <td align="right">
                    <asp:TextBox ID="txtHajmTolid" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
            </td>
            <td class="RightColumn">
                <asp:Label ID="Label13" runat="server" Text=":حجم نفر ماه تولید"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <div align="center">
                    <table align="right" cellpadding="0" cellspacing="0" width="95%">
                        <tr>
                            <td>
                                <asp:Label ID="Label21" runat="server" Font-Names="vazir" Font-Size="14px" Text="ریال"></asp:Label>
                            </td>
                            <td align="right">
                                <telerik:RadNumericTextBox ID="txtPricePosh" Runat="server" DataType="System.Int64" Width="80%" BorderColor="#F8DF8E">
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
                        </tr>
                    </table>
                </div>
            </td>
            <td class="RightColumn">
                <asp:Label ID="Label15" runat="server" Text=":مبلغ پشتیبانی"></asp:Label>
            </td>
            <td align="right">
                <div align="center">
                    <table align="right" cellpadding="0" cellspacing="0" width="95%">
                        <tr>
                            <td>
                                <asp:Label ID="Label22" runat="server" Font-Names="vazir" Font-Size="14px" Text="ریال"></asp:Label>
                            </td>
                            <td align="right">
                                <telerik:RadNumericTextBox ID="txtPriceTolid" Runat="server" DataType="System.Int64" Width="80%" BorderColor="#F8DF8E">
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
                        </tr>
                    </table>
                </div>
            </td>
            <td class="RightColumn">
                <asp:Label ID="Label16" runat="server" Text=":مبلغ تولید"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server">
                    <div align="center">
                        <table align="right" cellpadding="0" cellspacing="0" width="96%">
                            <tr>
                                <td dir="rtl" style="padding-right: 2px; padding-left: 2px">
                                    <asp:Label ID="Label24" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <dx:ASPxComboBox ID="drpYear3" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="80%" RightToLeft="True" TextField="prTitle" ValueField="prId" Font-Names="vazir" Font-Size="13px" AutoPostBack="True" NullText="انتخاب ماه" OnSelectedIndexChanged="drpYear3_SelectedIndexChanged" Caption="ماه">
                                        <ItemStyle HorizontalAlign="Center" />
                                        <Border BorderColor="#F8DF8E" />
                                    </dx:ASPxComboBox>
                                </td>
                                <td>
                                    <dx:ASPxComboBox ID="drpMonth3" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="80%" RightToLeft="True" TextField="prTitle" ValueField="prId" Font-Names="vazir" Font-Size="13px" AutoPostBack="True" NullText="انتخاب روز" OnSelectedIndexChanged="drpMonth3_SelectedIndexChanged" Caption="روز">
                                        <ItemStyle HorizontalAlign="Center" />
                                        <Border BorderColor="#F8DF8E" />
                                    </dx:ASPxComboBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                </telerik:RadAjaxPanel>
            </td>
            <td class="RightColumn">
                <asp:Label ID="Label20" runat="server" Text=":مدت پشتیبانی"></asp:Label>
            </td>
            <td align="right">
                <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server">
                    <div align="center">
                        <table align="right" cellpadding="0" cellspacing="0" width="96%">
                            <tr>
                                <td dir="rtl" style="padding-right: 2px; padding-left: 2px">
                                    <asp:Label ID="Label23" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <dx:ASPxComboBox ID="drpYear2" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="80%" RightToLeft="True" TextField="prTitle" ValueField="prId" Font-Names="vazir" Font-Size="13px" AutoPostBack="True" NullText="انتخاب ماه" OnSelectedIndexChanged="drpYear2_SelectedIndexChanged" Caption="ماه">
                                        <ItemStyle HorizontalAlign="Center" />
                                        <Border BorderColor="#F8DF8E" />
                                    </dx:ASPxComboBox>
                                </td>
                                <td>
                                    <dx:ASPxComboBox ID="drpMonth2" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="80%" RightToLeft="True" TextField="prTitle" ValueField="prId" Font-Names="vazir" Font-Size="13px" AutoPostBack="True" NullText="انتخاب روز" OnSelectedIndexChanged="drpMonth2_SelectedIndexChanged" Caption="روز">
                                        <ItemStyle HorizontalAlign="Center" />
                                        <Border BorderColor="#F8DF8E" />
                                    </dx:ASPxComboBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                </telerik:RadAjaxPanel>
            </td>
            <td class="RightColumn">
                <asp:Label ID="Label19" runat="server" Text=":مدت تولید"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="LeftColumn" align="right">
                <dx:ASPxComboBox ID="drpMekanizmPardakhtPosh" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" DataSourceID="sourceMekanimPosh" RightToLeft="True" TextField="infTitle" ValueField="infId" Font-Names="vazir" Font-Size="13px">
                    <Border BorderColor="#F8DF8E" />
                </dx:ASPxComboBox>
                <asp:SqlDataSource ID="sourceMekanimPosh" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT prInformation.* FROM prInformation WHERE (infAct = 1) AND (infType = 8)"></asp:SqlDataSource>
                </td>
            <td class="RightColumn">
                <asp:Label ID="Label18" runat="server" Text=":مکانیزم پرداخت پشتیبانی"></asp:Label>
            </td>
            <td align="right">
                <dx:ASPxComboBox ID="drpMekanizmTolod1" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" DataSourceID="sourceMekanimTolid" RightToLeft="True" TextField="infTitle" ValueField="infId" Font-Names="vazir" Font-Size="13px">
                    <Border BorderColor="#F8DF8E" />
                </dx:ASPxComboBox>
                <asp:SqlDataSource ID="sourceMekanimTolid" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT prInformation.* FROM prInformation WHERE (infAct = 1) AND (infType = 7)"></asp:SqlDataSource>
                </td>
            <td class="RightColumn">
                <asp:Label ID="Label17" runat="server" Text=":مکانیزم پرداخت تولید"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="LeftColumn">&nbsp;</td>
            <td class="RightColumn">&nbsp;</td>
            <td class="LeftColumn">&nbsp;</td>
            <td class="RightColumn">&nbsp;</td>
        </tr>
        <tr>
            <td class="LeftColumn" align="right">
                    <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
            </td>
            <td class="RightColumn">
                <asp:Label ID="Label8" runat="server" Text=":شماره نامه"></asp:Label>
            </td>
            <td align="right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtShenase" Display="None" ErrorMessage="شناسه نامه الزامی است" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtShenase" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
            </td>
            <td class="RightColumn">
                <asp:Label ID="Label7" runat="server" Text=":شناسه نامه"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="LeftColumn">&nbsp;</td>
            <td class="RightColumn">&nbsp;</td>
            <td align="right">
                <cc1:PersianCalendar ID="PersianCalendar1" runat="server" Width="88%"></cc1:PersianCalendar>
            </td>
            <td class="RightColumn">
                <asp:Label ID="Label9" runat="server" Text=":تاریخ"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="right">
                    <asp:TextBox ID="ASPxMemo1" runat="server" CssClass="form-control" Width="98%"></asp:TextBox>
                </td>
            <td class="RightColumn">
                <asp:Label ID="Label11" runat="server" Text=":توضیحات"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="LeftColumn">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNumber" Display="None" ErrorMessage="شماره نامه الزامی است" ValidationGroup="g1"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="drpProjects" Display="None" ErrorMessage="انتخاب پروژه الزامی است" ValidationGroup="g1" InitialValue="-1"></asp:RequiredFieldValidator>
                </td>
            <td class="RightColumn">&nbsp;</td>
            <td align="right" style="padding-top: 5px">
                <telerik:RadUpload ID="RadUpload1" Runat="server" ControlObjectsVisibility="RemoveButtons, AddButton" MaxFileInputsCount="3" Width="250px" Skin="Sunset">
                    <Localization Add="جدید" Clear="پاک کردن" Delete="حذف" Remove="حذف" Select="انتخاب فایل" />
                </telerik:RadUpload>
            </td>
            <td class="RightColumn">
                <asp:Label ID="Label10" runat="server" Text=":ضمایم"></asp:Label>
            </td>
        </tr>
    </table>
</div>

            <div style="height: 150px; padding-top: 9px;" align="right" dir="ltr" class="box box-danger">
                     <table align="right" cellpadding="0" cellspacing="0"  width="100%">
            <tr>
                <td align="right" width="36%">
                  

                    <dx:ASPxComboBox ID="drpRiskType" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" RightToLeft="True" TextField="infTitle" ValueField="infId" Font-Names="b yekan" Font-Size="14px" TabIndex="2" ClientIDMode="Static" ForeColor="#333333">
                       
                        <Items>
                            <dx:ListEditItem Text="مدیریتی / پروژه ای" Value="مدیریتی / پروژه ای" />
                            <dx:ListEditItem Text="فنی" Value="فنی" />
                        </Items>
                        <Border BorderColor="#F8DF8E" />
                    </dx:ASPxComboBox>
                  

                </td>
                <td width="14%">
                    <asp:Label ID="Label263" runat="server" Text="نوع ریسک"></asp:Label>
                </td>
                <td class="36%" align="right">
                  

                    <asp:TextBox ID="txtRiskTitle" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                  

                </td>
                <td align="left" width="14%">
                    <asp:Label ID="Label262" runat="server" Text=":عنوان ریسک"></asp:Label>
                </td>
              
             
            </tr>
                            <tr>
                <td align="right" height="40">
                  

                    <dx:ASPxComboBox ID="drpRiskDegree" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" RightToLeft="True" TextField="infTitle" ValueField="infId" Font-Names="b yekan" Font-Size="14px" TabIndex="2" ClientIDMode="Static" ForeColor="#333333">
                        
                        <Items>
                            <dx:ListEditItem Text="کم" Value="کم" />
                            <dx:ListEditItem Text="زیاد" Value="زیاد" />
                            <dx:ListEditItem Text="متوسط" Value="متوسط" />
                        </Items>
                        <Border BorderColor="#F8DF8E" />
                    </dx:ASPxComboBox>
                  

                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label264" runat="server" Text=":درجه تاثیر"></asp:Label>
                </td>
                <td align="right">
                  

                    <dx:ASPxComboBox ID="drpRiskEhtemal" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" RightToLeft="True" TextField="infTitle" ValueField="infId" Font-Names="b yekan" Font-Size="14px" TabIndex="2" ClientIDMode="Static" ForeColor="#333333">
                        
                        <Items>
                            <dx:ListEditItem Text="کم" Value="کم" />
                            <dx:ListEditItem Text="زیاد" Value="زیاد" />
                            <dx:ListEditItem Text="متوسط" Value="متوسط" />
                        </Items>
                        <Border BorderColor="#F8DF8E" />
                    </dx:ASPxComboBox>
                  

                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label36" runat="server" Text=":احتمال وقوع"></asp:Label>
                </td>
              
             
            </tr>
                            <tr>
                <td align="right">
                  

                    <asp:TextBox ID="txtRiskAnswer" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                  

                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label40" runat="server" Text=":پاسخ به ریسک"></asp:Label>
                </td>
                <td align="right">
                  

                    <asp:TextBox ID="txtRiskPayamad" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                  

                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label41" runat="server" Text=":پیامد رخداد ریسک"></asp:Label>
                </td>
              
             
            </tr>
        </table>

</div>


    </div>
<div align="center" style="padding: 5px" class="box box-success">
    <dx:ASPxButton ID="ASPxButton1" runat="server" Font-Names="vazir" Font-Size="13px" OnClick="ASPxButton1_Click" Text="ثبت اطلاعات" Theme="SoftOrange" Width="150px" ValidationGroup="g1">
    </dx:ASPxButton>
</div>
    <div align="center">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Names="vazir" Font-Size="15px" ForeColor="Red" ValidationGroup="g1" />
    </div>
<div class="box box-danger">
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" Theme="Office2010Silver" AutoGenerateColumns="False" DataSourceID="sourceTarh" KeyFieldName="thId" RightToLeft="True" Width="100%" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" OnCommandButtonInitialize="ASPxGridView1_CommandButtonInitialize" Font-Names="vazir">
            <SettingsEditing Mode="EditForm">
            </SettingsEditing>
            <Settings ShowFilterRow="True" ShowGroupPanel="True" HorizontalScrollBarMode="Auto" />
            <SettingsBehavior ConfirmDelete="True" EnableRowHotTrack="True" />
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
                    <Image IconID="edit_edit_16x16">
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
                <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn Caption="سال" FieldName="thYear" VisibleIndex="3">
                    <Settings AutoFilterCondition="Contains" />
                    <DataItemTemplate>
                        <asp:Label ID="Label26" runat="server" Text='<%# Eval("thYear") %>'></asp:Label>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="حجم تولید" FieldName="thHajmTolid" VisibleIndex="4">
                    <Settings AutoFilterCondition="Contains" />
                    <DataItemTemplate>
                        <asp:Label ID="Label27" runat="server" Text='<%# Eval("thHajmTolid") %>'></asp:Label>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="تاریخ شروع" FieldName="StartDate" VisibleIndex="5" >
                     <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="تاریخ پایان" FieldName="EndDate" VisibleIndex="6" >
                     <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataTextColumn>
                
                <dx:GridViewDataTextColumn Caption="حجم پشتیبانی" FieldName="thHajmPosh" VisibleIndex="7">
                    <Settings AutoFilterCondition="Contains" />
                    <DataItemTemplate>
                        <asp:Label ID="Label28" runat="server" Text='<%# Eval("thHajmPosh") %>'></asp:Label>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="قیمت تولید" FieldName="thPriceTolid" VisibleIndex="9">
                    <Settings AutoFilterCondition="Contains" />
                    <DataItemTemplate>
                        <asp:Label ID="Label29" runat="server" Text='<%# Eval("thPriceTolid") %>'></asp:Label>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="قیمت پشتیبانی" FieldName="thPricePosh" VisibleIndex="10">
                    <Settings AutoFilterCondition="Contains" />
                    <DataItemTemplate>
                        <asp:Label ID="Label30" runat="server" Text='<%# Eval("thPricePosh") %>'></asp:Label>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="مدت تولید" FieldName="thModatTolid" VisibleIndex="11">
                    <Settings AutoFilterCondition="Contains" />
                    <DataItemTemplate>
                        <asp:Label ID="Label31" runat="server" Text='<%# Eval("thModatTolid") %>'></asp:Label>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="مدت پشتیبانی" FieldName="thModatPosh" VisibleIndex="12">
                    <Settings AutoFilterCondition="Contains" />
                    <DataItemTemplate>
                        <asp:Label ID="Label32" runat="server" Text='<%# Eval("thModatPosh") %>'></asp:Label>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="پروژه" FieldName="prTitle" VisibleIndex="1" Width="190px">
                     <Settings AutoFilterCondition="Contains" />
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                 <dx:GridViewDataTextColumn Caption="نوع پروژه" FieldName="ProjectType" VisibleIndex="2" Width="190px">
                     <Settings AutoFilterCondition="Contains" />
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="مکانیزم پشتیبانی" FieldName="thMekanizmPosh" VisibleIndex="14">
                    <PropertiesComboBox DataSourceID="sourceInfo" TextField="infTitle" ValueField="infId">
                    </PropertiesComboBox>
                    <Settings AllowAutoFilter="False" />
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="مکانیزم تولید" FieldName="thMekanizmtolid" VisibleIndex="13">
                    <PropertiesComboBox DataSourceID="sourceInfo" TextField="infTitle" ValueField="infId">
                    </PropertiesComboBox>
                    <Settings AllowAutoFilter="False" />
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataTextColumn Caption="ضمایم" VisibleIndex="15">
                    <EditFormSettings Visible="False" />
                    <DataItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Content/images/icons/attachment-icon.png" NavigateUrl='<%# Eval("thId", "~/content/PageAttach.aspx?Parent={0}&type=6") %>' Target="_blank"></asp:HyperLink>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="نامه ها" VisibleIndex="16">
                    <EditFormSettings Visible="False" />
                    <DataItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Content/images/icons/Documents-icon24.png" NavigateUrl='<%# Eval("thId", "~/content/PagePages.aspx?project={0}") %>' Target="_blank"></asp:HyperLink>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="شماره نامه" FieldName="paNumber" VisibleIndex="17">
                    <Settings AutoFilterCondition="Contains" />
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="شناسه نامه" FieldName="paShenase" VisibleIndex="18">
                    <Settings AutoFilterCondition="Contains" />
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="تاریخ" FieldName="paDate" VisibleIndex="19">
                    <Settings AutoFilterCondition="Contains" />
                    <EditFormSettings Visible="False" />
                    <DataItemTemplate>
                        <asp:Label ID="Label33" runat="server" Text='<%# Eval("paDate") %>'></asp:Label>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="اهم اهداف پروپوزال" FieldName="thBody" VisibleIndex="20">
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn VisibleIndex="17">
                    <DataItemTemplate>
                        <asp:HyperLink ID="HyperLink9" runat="server" ImageUrl="~/Content/images/icons/refresh-icon.png"></asp:HyperLink>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="واحد متولی" FieldName="vahed" VisibleIndex="22">
                    
                    <Settings AllowAutoFilter="False" />
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="ناظر فنی" FieldName="TechnicalSuvisorText" VisibleIndex="23">
                    
                    <Settings AllowAutoFilter="False" />
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="پیمانکار" FieldName="company" VisibleIndex="24">
                    
                    <Settings AllowAutoFilter="False" />
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                
            </Columns>
            <Styles>
                <Header Font-Names="vazir" Font-Size="13px" HorizontalAlign="Center">
                </Header>
                <Row HorizontalAlign="Center" Font-Names="vazir">
                </Row>
            </Styles>
        </dx:ASPxGridView>
</div>
<div align="center">
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:SqlDataSource ID="sourceInfo" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT * FROM [prInformation]"></asp:SqlDataSource>
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Content/images/icons/Excel-icon.png" OnClick="ImageButton3_Click" ToolTip="خروجی اکسل" />
    <asp:SqlDataSource ID="sourceFile" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="INSERT INTO tbFiles(fiAct, fiData, fiDate, fiParent, fiType, fiTitle, fiExt) VALUES (1, @fiData, GetDate(), @fiParent, 6, @fiTitle, @fiExt)" SelectCommand="SELECT TOP (1) fiId, fiAct, fiData, fiDate, fiParent, fiType FROM tbFiles">
        <InsertParameters>
            <asp:ControlParameter ControlID="FileUpload1" Name="fiData" PropertyName="FileBytes" />
            <asp:ControlParameter ControlID="HiddenField1" DefaultValue="" Name="fiParent" PropertyName="Value" />
            <asp:Parameter Name="fiTitle" />
            <asp:ControlParameter ControlID="FileUpload1" Name="fiExt" PropertyName="FileName" />
        </InsertParameters>
    </asp:SqlDataSource>
        <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" FileName="طرح پیشنهادی" GridViewID="ASPxGridView1" Landscape="True" PaperKind="A4">
        </dx:ASPxGridViewExporter>
        <telerik:RadWindowManager ID="RadWindowManager1" runat="server" Animation="Fade" Behaviors="Close" Skin="Sunset">
            <Windows>
                <telerik:RadWindow runat="server" NavigateUrl="RadWindow1" Animation="Fade" Behavior="Close" Behaviors="Close">
                </telerik:RadWindow>
                <telerik:RadWindow runat="server" NavigateUrl="RadWindow2" Animation="Fade" Behavior="Close" Behaviors="Close">
                </telerik:RadWindow>
                <telerik:RadWindow runat="server" NavigateUrl="RadWindow1">
                </telerik:RadWindow>
            </Windows>
        </telerik:RadWindowManager>
    <telerik:RadNotification ID="RadNotification1" runat="server" Animation="Fade" Font-Names="vazir" Font-Size="15px" Skin="Sunset">
    </telerik:RadNotification>
        <asp:SqlDataSource ID="sourceTarh" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="INSERT INTO tbTarhPishnehadi
                         (thProject, thYear, thHajmTolid, thHajmPosh, thPriceTolid, thPricePosh, thModatTolid, thModatPosh, thAct, thMekanizmPosh, thMekanizmtolid, thBody, thIsElhaghie, thRiskType, thRiskTitle, thRiskDegree, 
                         thRiskEhtemal, thRiskPayamad, thRiskAnswer)
VALUES        (@thProject,@thYear,@thHajmTolid,@thHajmPosh,@thPriceTolid,@thPricePosh,@thModatTolid,@thModatPosh, 1,@thMekanizmPosh,@thMekanizmtolid,@thBody, 
                         0,@thRiskType,@thRiskTitle,@thRiskDegree,@thRiskEhtemal,@thRiskPayamad,@thRiskAnswer)
SELECT @thId = SCOPE_IDENTITY()" SelectCommand="select *,
(select top 1 tbProjectPaper.paNumber from tbProjectPaper where paProject=thId and paType=73 and paAct=1) as paNumber,
( select top 1 tbProjectPaper.paDate from tbProjectPaper where paProject=thId and paType=73 and paAct=1) as paDate,
(select top 1 tbProjectPaper.paShenase from tbProjectPaper where paProject=thId and paType=73 and paAct=1) as paShenase
,
tbProjects.prTitle,
Info_1.infTitle  as vahed,
Info_2.infTitle  as company,
Info_3.infTitle  as TechnicalSuvisorText,
prInformation.infTitle as ProjectType

 from tbTarhPishnehadi Inner Join tbProjects ON  thProject=prId 
    inner join prInformation on prProjectType =infId 
    inner join prInformation Info_1 on prVahed =Info_1.infId
     inner join prInformation Info_2 on prPeymankar =Info_2.infId
    Left Outer join prInformation Info_3 on TechnicalSuvisor =Info_3.infId
where thAct=1 and tbTarhPishnehadi.ElhaghieId is null and prAct = 1
and ((prVahed IN (SELECT prProject  FROM tbAdminProjects WHERE (prType = 3)  AND (prCode = @prCode)  )) 
		OR(TechnicalSuvisor IN (SELECT prProject  FROM tbAdminProjects  WHERE (prType = 3) AND (prCode = @prCode) ))) 
AND (prPeymankar 
IN (SELECT prProject FROM tbAdminProjects AS tbAdminProjects_1 WHERE (prType = 1)  AND (prCode = @prCode) ))
" DeleteCommand="UPDATE tbTarhPishnehadi SET thAct = 0 WHERE (thId = thId)" 

OnInserted="sourceTarh_Inserted" UpdateCommand="UPDATE tbTarhPishnehadi SET thYear = @thYear, thHajmTolid = @thHajmTolid, thHajmPosh = @thHajmPosh, thPriceTolid = @thPriceTolid, thPricePosh = @thPricePosh, thModatTolid = @thModatTolid, thModatPosh = @thModatPosh, thMekanizmPosh = @thMekanizmPosh, thMekanizmtolid = @thMekanizmtolid, thBody = @thBody, StartDate=@StartDate , EndDate=@EndDate WHERE (thId = @thId)">
            <InsertParameters>
                <asp:ControlParameter ControlID="drpProjects" Name="thProject" PropertyName="Value" />
                <asp:ControlParameter ControlID="drpYear" Name="thYear" PropertyName="Value" />
                <asp:ControlParameter ControlID="txtHajmTolid" Name="thHajmTolid" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtHajmPosh" Name="thHajmPosh" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtPriceTolid" Name="thPriceTolid" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtPricePosh" Name="thPricePosh" PropertyName="Text" />
                <asp:Parameter Name="thModatTolid" />
                <asp:Parameter Name="thModatPosh" />
                <asp:ControlParameter ControlID="drpMekanizmPardakhtPosh" Name="thMekanizmPosh" PropertyName="Value" />
                <asp:ControlParameter ControlID="drpMekanizmTolod1" Name="thMekanizmtolid" PropertyName="Value" />
                <asp:ControlParameter ControlID="ASPxMemo2" Name="thBody" PropertyName="Text" />
                <asp:Parameter Name="thId" Direction="Output" Type="Int32" />
                <asp:ControlParameter ControlID="drpRiskType" Name="thRiskType" PropertyName="Value" />
                <asp:ControlParameter ControlID="txtRiskTitle" Name="thRiskTitle" PropertyName="Text" />
                <asp:ControlParameter ControlID="drpRiskDegree" Name="thRiskDegree" PropertyName="Value" />
                <asp:ControlParameter ControlID="drpRiskEhtemal" Name="thRiskEhtemal" PropertyName="Value" />
                <asp:ControlParameter ControlID="txtRiskPayamad" Name="thRiskPayamad" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtRiskAnswer" Name="thRiskAnswer" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="thYear" />
                <asp:Parameter Name="thHajmTolid" />
                <asp:Parameter Name="thHajmPosh" />
                <asp:Parameter Name="thPriceTolid" />
                <asp:Parameter Name="thPricePosh" />
                <asp:Parameter Name="thModatTolid" />
                <asp:Parameter Name="thModatPosh" />
                <asp:Parameter Name="thMekanizmPosh" />
                <asp:Parameter Name="thMekanizmtolid" />
                <asp:Parameter Name="thBody" />
                <asp:Parameter Name="thId" />
                <asp:Parameter Name="StartDate" />
                <asp:Parameter Name="EndDate" />
            </UpdateParameters>
              <SelectParameters>
                <asp:Parameter Name="prCode" />
            </SelectParameters>
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="sourcePaper" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="spInsertPaper" InsertCommandType="StoredProcedure" SelectCommand="SELECT TOP (1) infId FROM prInformation">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtShenase" Name="paShenase" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtNumber" Name="paNumber" PropertyName="Text" Type="String" />
                <asp:Parameter DbType="Date" DefaultValue="" Name="paDate" />
                <asp:ControlParameter ControlID="HiddenField1" DefaultValue="" Name="paProject" PropertyName="Value" Type="Int32" />
                <asp:Parameter Name="paType" Type="Int32" DefaultValue="73" />
                <asp:ControlParameter ControlID="ASPxMemo1" DefaultValue="" Name="paBody" PropertyName="Text" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
</div>
</asp:Content>
