<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PageSooratInsert.aspx.cs" Inherits="NewMellat.Content.PageSooratInsert" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" DefaultButton="ASPxButton1"> <div align="center">
        <div align="right" class="box box-danger" style="padding-top: 9px; height: 53px;">
            <table align="center" cellpadding="0" cellspacing="0" width="100%" dir="ltr">
                <tr>
                    <td  width="36%" align="right">
                        <asp:TextBox ID="RadTextBox2" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td width="14%">
                        <asp:Label ID="Label15" runat="server" Text=":شماره قرارداد "></asp:Label>
                    </td>
                    <td  width="36%" align="right">
                        <asp:TextBox ID="RadTextBox1" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td  width="14%">
                        <asp:Label ID="Label16" runat="server" Text=":نام پروژه"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
</div>
        <div align="center" style="padding: 9px" class="box box-success">
            <dx:ASPxButton ID="ASPxButton1" runat="server" Text="جستجوی اطلاعات" Theme="SoftOrange" Width="150px" Font-Names="vazir" OnClick="ASPxButton1_Click">
            </dx:ASPxButton>
</div></asp:Panel>
   
    <div style="padding: 9px" class="box box-danger">
        <dx:ASPxGridView ID="ASPxGridView4" runat="server" AutoGenerateColumns="False" EnableTheming="True" OnRowCommand="ASPxGridView4_RowCommand" RightToLeft="True" Theme="Office2010Silver" Width="100%" KeyFieldName="id" OnSummaryDisplayText="ASPxGridView4_SummaryDisplayText" OnCommandButtonInitialize="ASPxGridView4_CommandButtonInitialize" OnHtmlDataCellPrepared="ASPxGridView4_HtmlDataCellPrepared" Font-Names="vazir">
            <SettingsPager Mode="ShowAllRecords">
            </SettingsPager>
            <Settings ShowFilterRow="True" />
            <SettingsBehavior EnableRowHotTrack="True" />
            <SettingsCommandButton>
                <ClearFilterButton ButtonType="Image">
                    <Image IconID="actions_cancel_16x16">
                    </Image>
                </ClearFilterButton>
                <UpdateButton ButtonType="Image">
                    <Image IconID="actions_save_16x16devav">
                    </Image>
                </UpdateButton>
                <EditButton ButtonType="Image">
                    <Image IconID="edit_edit_16x16">
                    </Image>
                </EditButton>
                <DeleteButton ButtonType="Image">
                    <Image IconID="edit_delete_16x16">
                    </Image>
                </DeleteButton>
            </SettingsCommandButton>
            <SettingsText EmptyDataRow="اطلاعات موجود نمی باشد" />
            <Columns>
                <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0" Width="60px">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn Caption="نام پروژه" FieldName="ProjectName" VisibleIndex="1">
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="شماره قرارداد" FieldName="ProjectGharardad" VisibleIndex="2">
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="نوع قرارداد " FieldName="GharardadType" VisibleIndex="6">
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="ناظر1" FieldName="Nazer1" VisibleIndex="3">
                    <PropertiesComboBox DataSourceID="sourceInfo" TextField="infTitle" ValueField="infId">
                    </PropertiesComboBox>
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="ناظر2" FieldName="Nazer2" VisibleIndex="4">
                    <PropertiesComboBox DataSourceID="sourceInfo" TextField="infTitle" ValueField="infId">
                    </PropertiesComboBox>
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="نام شرکت" FieldName="CompanyName" VisibleIndex="5">
                    <PropertiesComboBox DataSourceID="sourceInfo" TextField="infTitle" ValueField="infId">
                    </PropertiesComboBox>
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataTextColumn VisibleIndex="7">
                    <DataItemTemplate>
                        <asp:ImageButton ID="ImageButton3" runat="server" CommandArgument='<%# Eval("ProjectGharardad") %>' CommandName="dt" ImageUrl="~/Content/images/icons/image-edit-icon.png" />
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="حذف" VisibleIndex="8">
                    <DataItemTemplate>
                        <asp:ImageButton ID="ImageButton4" runat="server" CommandArgument='<%# Eval("ProjectGharardad") %>' CommandName=" Delll" ImageUrl="~/Content/images/icons/Close-2-icon.png" />
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="ویرایش" VisibleIndex="9">
                    <DataItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Content/images/icons/edit-icon.png" NavigateUrl='<%# Eval("ProjectGharardad","~/content/pageEd.aspx?code={0}") %>' Target="_blank"></asp:HyperLink>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
            </Columns>
            <Styles>
                <Header Font-Names="vazir" HorizontalAlign="Center" VerticalAlign="Middle">
                </Header>
                <Row Font-Names="vazir">
                </Row>
            </Styles>
        </dx:ASPxGridView>
    </div>
    <div style="padding: 9px">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" HeaderText="اطلاعات پروژه" ShowCollapseButton="true" Theme="SoftOrange" Width="100%" Visible="False">
            <HeaderStyle Font-Names="vazir" HorizontalAlign="Right" />
            <PanelCollection>
<dx:PanelContent runat="server">
    <div align="right" class="box box-danger">
        <table align="center" cellpadding="0" cellspacing="0" width="100%" dir="ltr">
            <tr>
                <td style="font-family: 'vazir'; height: 35px; text-align: right; color: #800000;">
                    <asp:Label ID="lbTolidPrice" runat="server" Visible="False"></asp:Label>
                </td>
                <td style="font-family: 'vazir'; height: 35px;">
                    <asp:Label ID="Label12" runat="server" Text=":مبلغ تولید" Visible="False"></asp:Label>
                </td>
                <td width="36%"  style="font-family: 'vazir'; height: 35px; text-align: right; color: #800000;">
                    <asp:Label ID="lbTolidEnd" runat="server"></asp:Label>
                </td>
                <td width="14%" style="font-family: 'vazir'; height: 35px;">
                    <asp:Label ID="Label10" runat="server" Text=":پایان قرارداد تولید"></asp:Label>
                </td>
                <td width="36%"  style="font-family: 'vazir'; height: 35px; text-align: right; color: #800000;">
                    <asp:Label ID="lbTolidStart" runat="server"></asp:Label>
                </td>
                <td width="14%"  style="font-family: 'vazir'; height: 35px;">
                    <asp:Label ID="Label9" runat="server" Text=":شروع قرارداد تولید"></asp:Label>
                </td>
            </tr>
            <tr>
                <td   style="font-family: 'vazir'; height: 35px; text-align: right; color: #800000;">
                    <asp:Label ID="lbPoshPrice" runat="server" Visible="False"></asp:Label>
                </td>
                <td  style="font-family: 'vazir'; height: 35px;">
                    <asp:Label ID="Label14" runat="server" Text=":مبلغ پشتیبانی" Visible="False"></asp:Label>
                </td>
                <td   style="font-family: 'vazir'; height: 35px; text-align: right; color: #800000;">
                    <asp:Label ID="lbPoshEnd" runat="server"></asp:Label>
                </td>
                <td   style="font-family: 'vazir'; height: 35px;">
                    <asp:Label ID="Label13" runat="server" Text=":پایان قراداد پشتیبانی"></asp:Label>
                </td>
                <td   style="font-family: 'vazir'; height: 35px; text-align: right; color: #800000;">
                    <asp:Label ID="lbPoshStart" runat="server"></asp:Label>
                </td>
                <td   style="font-family: 'vazir'; height: 35px;">
                    <asp:Label ID="Label11" runat="server" Text=":شروع قرارداد پشتیبانی"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-family: 'vazir'">
                    <asp:HyperLink ID="HyperLink2" runat="server" Target="_blank">ویرایش اطلاعات</asp:HyperLink>
                </td>
                <td class="RightColumn">&nbsp;</td>
                <td class="LeftColumn">&nbsp;</td>
                <td class="RightColumn">&nbsp;</td>
                <td class="LeftColumn">&nbsp;</td>
                <td class="RightColumn">&nbsp;</td>
            </tr>
        </table>
    </div>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
    <div style="padding: 9px">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" HeaderText="تحویلی های تولید پروژه" ShowCollapseButton="true" Theme="SoftOrange" Width="100%" Visible="False">
            <HeaderStyle Font-Names="vazir" HorizontalAlign="Right" />
            <PanelCollection>
<dx:PanelContent runat="server">
    <div class="box box-danger"></div>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" EnableTheming="True" RightToLeft="True" Theme="SoftOrange" Width="100%" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" OnSummaryDisplayText="ASPxGridView1_SummaryDisplayText" OnRowCommand="ASPxGridView1_RowCommand">
        <SettingsPager Mode="ShowAllRecords">
        </SettingsPager>
        <Settings ShowFooter="True" ShowGroupFooter="VisibleAlways" />
        <SettingsCommandButton>
            <EditButton ButtonType="Image">
                <Image IconID="actions_task_16x16devav">
                </Image>
            </EditButton>
            <DeleteButton ButtonType="Image">
                <Image IconID="actions_apply_16x16">
                </Image>
            </DeleteButton>
        </SettingsCommandButton>
        <SettingsText EmptyDataRow="اطلاعات موجود نمی باشد" />
        <Columns>
            <dx:GridViewDataTextColumn Caption="عنوان تحویل" ShowInCustomizationForm="True" VisibleIndex="2" FieldName="OnvanTahvili">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="موعد تحویل" ShowInCustomizationForm="True" VisibleIndex="3" FieldName="MoedTahvili">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="مبلغ" ShowInCustomizationForm="True" VisibleIndex="4" FieldName="Price">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn ShowInCustomizationForm="True" VisibleIndex="5" Width="40px">
                <DataItemTemplate>
                    <div align="right">
                        <table align="center" cellpadding="0" cellspacing="0" width="55">
                            <tr>
                                <td align="center" width="30">
                                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Content/images/icons/Add-ticket-icon.png" NavigateUrl='<%# Eval("id","~/Content/PageSooratPishnevis.aspx?id={0}&type=1") %>' Target="_blank" ToolTip='<%# Eval("id") %>'></asp:HyperLink>
                                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("srCheck") %>' />
                                </td>
                                <td width="30">
                                    <asp:ImageButton ID="ImageButton5" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="ch" ImageUrl="~/Content/images/icons/mp3tag-icon.png" ToolTip='<%# Eval("id") %>' />
                                </td>
                            </tr>
                        </table>
                    </div>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="ردیف" ShowInCustomizationForm="True" VisibleIndex="1" Width="45px">
                <DataItemTemplate>
                    <asp:Label ID="lb" runat="server"></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
        </Columns>
        <TotalSummary>
            <dx:ASPxSummaryItem DisplayFormat="{0}" FieldName="Price" ShowInColumn="مبلغ" ShowInGroupFooterColumn="مبلغ" SummaryType="Sum" />
            <dx:ASPxSummaryItem DisplayFormat="مبلغ تولید:" FieldName="Price" ShowInColumn="موعد تحویل" ShowInGroupFooterColumn="موعد تحویل" SummaryType="Sum" />
        </TotalSummary>
        <Styles>
            <Header Font-Names="vazir" Font-Size="13px" HorizontalAlign="Center">
            </Header>
            <Row Font-Names="vazir">
            </Row>
            <Footer Font-Bold="True" Font-Names="vazir">
            </Footer>
        </Styles>
    </dx:ASPxGridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT * FROM [tbSooratHesab]"></asp:SqlDataSource>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
    <div style="padding: 9px">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel4" runat="server" HeaderText="تحویلی های پشتیبانی پروژه" ShowCollapseButton="true" Theme="SoftOrange" Width="100%" Visible="False">
            <HeaderStyle Font-Names="vazir" HorizontalAlign="Right" />
            <PanelCollection>
<dx:PanelContent runat="server">
    <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" EnableTheming="True" RightToLeft="True" Theme="SoftOrange" Width="100%" OnHtmlDataCellPrepared="ASPxGridView2_HtmlDataCellPrepared" OnSummaryDisplayText="ASPxGridView2_SummaryDisplayText" OnRowCommand="ASPxGridView2_RowCommand">
        <SettingsPager Mode="ShowAllRecords">
        </SettingsPager>
        <Settings ShowFooter="True" />
        <SettingsCommandButton>
            <EditButton ButtonType="Image">
                <Image IconID="actions_task_16x16devav">
                </Image>
            </EditButton>
            <DeleteButton ButtonType="Image">
                <Image IconID="actions_apply_16x16">
                </Image>
            </DeleteButton>
        </SettingsCommandButton>
        <SettingsText EmptyDataRow="اطلاعات موجود نمی باشد" />
        <Columns>
            <dx:GridViewDataTextColumn Caption="عنوان تحویل" FieldName="OnvanTahvili" ShowInCustomizationForm="True" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="موعد تحویل" FieldName="MoedTahvili" ShowInCustomizationForm="True" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="مبلغ" FieldName="Price" ShowInCustomizationForm="True" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn ShowInCustomizationForm="True" VisibleIndex="5" Width="40px">
                <DataItemTemplate>
                    <div align="right">
                        <table align="center" cellpadding="0" cellspacing="0" width="55">
                            <tr>
                                <td width="30">
                                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Content/images/icons/Add-ticket-icon.png" NavigateUrl='<%# Eval("id","~/Content/PageSooratPishnevis.aspx?id={0}&type=1") %>' Target="_blank" ToolTip='<%# Eval("id") %>'></asp:HyperLink>
                                </td>
                                <td width="20">
                                    <asp:ImageButton ID="ImageButton5" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="ch" ImageUrl="~/Content/images/icons/mp3tag-icon.png" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="ردیف" ShowInCustomizationForm="True" VisibleIndex="1" Width="40px">
                <DataItemTemplate>
                    <asp:Label ID="lb" runat="server"></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
        </Columns>
        <TotalSummary>
            <dx:ASPxSummaryItem DisplayFormat="{0}" FieldName="Price" ShowInColumn="مبلغ" ShowInGroupFooterColumn="مبلغ" SummaryType="Sum" />
            <dx:ASPxSummaryItem DisplayFormat="مبلغ پشتیبانی:" FieldName="Price" ShowInColumn="موعد تحویل" ShowInGroupFooterColumn="موعد تحویل" SummaryType="Sum" />
        </TotalSummary>
        <Styles>
            <Header Font-Names="vazir" Font-Size="13px" HorizontalAlign="Center">
            </Header>
            <Row Font-Names="vazir">
            </Row>
            <Footer Font-Bold="True" Font-Names="vazir">
            </Footer>
        </Styles>
    </dx:ASPxGridView>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
        <div style="padding: 9px">
            <asp:SqlDataSource ID="sourceInfo" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString1 %>" SelectCommand="SELECT * FROM [prInformation]"></asp:SqlDataSource>
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="الحاقیه (مدت/مبلغ)" ShowCollapseButton="true" Theme="SoftOrange" Width="100%" Visible="False">
            <HeaderStyle Font-Names="vazir" HorizontalAlign="Right" />
            <PanelCollection>
<dx:PanelContent runat="server">
    <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" EnableTheming="True" RightToLeft="True" Theme="SoftOrange" Width="100%" OnHtmlDataCellPrepared="ASPxGridView3_HtmlDataCellPrepared" OnRowCommand="ASPxGridView3_RowCommand">
        <SettingsPager Mode="ShowAllRecords">
        </SettingsPager>
        <SettingsCommandButton>
            <EditButton ButtonType="Image">
                <Image IconID="actions_task_16x16devav">
                </Image>
            </EditButton>
            <DeleteButton ButtonType="Image">
                <Image IconID="actions_apply_16x16">
                </Image>
            </DeleteButton>
        </SettingsCommandButton>
        <SettingsText EmptyDataRow="اطلاعات موجود نمی باشد" />
        <Columns>
            <dx:GridViewDataTextColumn Caption="عنوان تحویل" FieldName="OnvanTahvili" ShowInCustomizationForm="True" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="موعد تحویل" FieldName="MoedTahvili" ShowInCustomizationForm="True" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="مبلغ" FieldName="Price" ShowInCustomizationForm="True" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn ShowInCustomizationForm="True" VisibleIndex="6" Width="40px">
                <DataItemTemplate>
                    <div align="right">
                        <table align="center" cellpadding="0" cellspacing="0" width="55">
                            <tr>
                                <td width="30">
                                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Content/images/icons/Add-ticket-icon.png" NavigateUrl='<%# Eval("id","~/Content/PageSooratPishnevis.aspx?id={0}&type=1") %>' Target="_blank" ToolTip='<%# Eval("id") %>'></asp:HyperLink>
                                </td>
                                <td width="20">&nbsp;</td>
                                <td width="20">
                                    <asp:ImageButton ID="ImageButton5" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="ch" ImageUrl="~/Content/images/icons/mp3tag-icon.png" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="نوع الحاقیه" FieldName="ElhaghieType" ShowInCustomizationForm="True" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="ردیف" ShowInCustomizationForm="True" VisibleIndex="1" Width="40px">
                <DataItemTemplate>
                    <asp:Label ID="lb" runat="server"></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
        </Columns>
        <Styles>
            <Header Font-Names="vazir" Font-Size="13px" HorizontalAlign="Center">
            </Header>
            <Row Font-Names="vazir">
            </Row>
        </Styles>
    </dx:ASPxGridView>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
    <div style="padding: 9px">
            
        <dx:ASPxRoundPanel ID="ASPxRoundPanel5" runat="server" HeaderText="استرداد تضامین" ShowCollapseButton="true" Theme="SoftOrange" Width="100%" Visible="False">
            <HeaderStyle Font-Names="vazir" HorizontalAlign="Right" />
            <PanelCollection>
<dx:PanelContent runat="server">
    <dx:ASPxGridView ID="ASPxGridView5" runat="server" AutoGenerateColumns="False" EnableTheming="True" RightToLeft="True" Theme="SoftOrange" Width="100%" OnHtmlDataCellPrepared="ASPxGridView3_HtmlDataCellPrepared" OnRowCommand="ASPxGridView3_RowCommand">
        <SettingsPager Mode="ShowAllRecords">
        </SettingsPager>
        <SettingsCommandButton>
            <EditButton ButtonType="Image">
                <Image IconID="actions_task_16x16devav">
                </Image>
            </EditButton>
            <DeleteButton ButtonType="Image">
                <Image IconID="actions_apply_16x16">
                </Image>
            </DeleteButton>
        </SettingsCommandButton>
        <SettingsText EmptyDataRow="اطلاعات موجود نمی باشد" />
        <Columns>
            <dx:GridViewDataTextColumn Caption="عنوان تحویل" FieldName="OnvanTahvili" ShowInCustomizationForm="True" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="موعد تحویل" FieldName="MoedTahvili" ShowInCustomizationForm="True" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="مبلغ" FieldName="Price" ShowInCustomizationForm="True" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn ShowInCustomizationForm="True" VisibleIndex="6" Width="40px">
                <DataItemTemplate>
                    <div align="right">
                        <table align="center" cellpadding="0" cellspacing="0" width="55">
                            <tr>
                                <td width="30">
                                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Content/images/icons/Add-ticket-icon.png" NavigateUrl='<%# Eval("id","~/Content/PageSooratPishnevis.aspx?id={0}&type=1") %>' Target="_blank" ToolTip='<%# Eval("id") %>'></asp:HyperLink>
                                </td>
                                <td width="20">&nbsp;</td>
                                <td width="20">
                                    <asp:ImageButton ID="ImageButton5" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="ch" ImageUrl="~/Content/images/icons/mp3tag-icon.png" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="نوع تضمین" FieldName="ElhaghieType" ShowInCustomizationForm="True" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="ردیف" ShowInCustomizationForm="True" VisibleIndex="1" Width="40px">
                <DataItemTemplate>
                    <asp:Label ID="lb" runat="server"></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
        </Columns>
        <Styles>
            <Header Font-Names="vazir" Font-Size="13px" HorizontalAlign="Center">
            </Header>
            <Row Font-Names="vazir">
            </Row>
        </Styles>
    </dx:ASPxGridView>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
