<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportDastavard.aspx.cs" Inherits="NewMellat.Content.ReportDastavard" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sourceHesab" EnableTheming="True" KeyFieldName="id" RightToLeft="True" Theme="Office2010Silver" Width="100%" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared">
        <settings horizontalscrollbarmode="Auto" showfilterrow="True" showgrouppanel="True" />
        <SettingsCommandButton>
            <ClearFilterButton ButtonType="Image">
                <Image IconID="filter_clearfilter_16x16">
                </Image>
            </ClearFilterButton>
        </SettingsCommandButton>
        <settingssearchpanel visible="True" />
        <SettingsLoadingPanel Text="در حال اجرا..." />
        <SettingsText EmptyDataRow="اطلاعات موجود نمی باشد" GroupPanel="ستون مورد نظر جهت گروه بندی اطلاعات را اینجا بکشید" SearchPanelEditorNullText="متن مورد جستجو را وارد نمایید" />
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0" Width="25px">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn Caption="نام پروژه" FieldName="ProjectName" VisibleIndex="1" Width="170px">
                <settings autofiltercondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="شماره قرارداد" FieldName="ProjectGharardad" VisibleIndex="2">
                <settings autofiltercondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="شروع قرارداد " FieldName="GharardadStart" VisibleIndex="7">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="پایان قرارداد " FieldName="GharardadEnd" VisibleIndex="8">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="مبلغ" FieldName="Price" VisibleIndex="9">
                <Settings AutoFilterCondition="Contains" />
                <DataItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="دوره ارسالی" FieldName="DoreErsali" VisibleIndex="10">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="صورتحساب" FieldName="SoorathesbPrice" VisibleIndex="11">
                <Settings AutoFilterCondition="Contains" />
                <DataItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("SoorathesbPrice") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="شماره نامه پیش نویس" FieldName="paShenase" VisibleIndex="12">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="تاریخ نامه" FieldName="Expr1" VisibleIndex="13">
                <Settings AutoFilterCondition="Contains" />
                <DataItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Expr1") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="توضیحات" FieldName="Body" VisibleIndex="14">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="ناظر1" FieldName="Nazer1" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="sourceVahed" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="ناظر2" FieldName="Nazer2" VisibleIndex="4">
                <PropertiesComboBox DataSourceID="sourceVahed" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="شرکت پیمانکار" FieldName="CompanyName" VisibleIndex="5">
                <PropertiesComboBox DataSourceID="sourcePeymankar" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn Caption="نوع قرارداد" FieldName="Gharardad" VisibleIndex="6">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="step1" Visible="False" VisibleIndex="15">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="step2" Visible="False" VisibleIndex="16">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="step3" Visible="False" VisibleIndex="17">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="step4" Visible="False" VisibleIndex="18">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="step5" Visible="False" VisibleIndex="19">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="step6" Visible="False" VisibleIndex="20">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="step7" Visible="False" VisibleIndex="21">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="step8" Visible="False" VisibleIndex="22">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="step9" Visible="False" VisibleIndex="23">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="step10" Visible="False" VisibleIndex="24">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="step11" Visible="False" VisibleIndex="25">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="step12" Visible="False" VisibleIndex="26">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="step13" Visible="False" VisibleIndex="27">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn VisibleIndex="28">
                <DataItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Content/images/icons/Documents-icon16.png" NavigateUrl='<%# Eval("id", "~/content/PageSooratPaper.aspx?project={0}&type=1051") %>' Target="_blank"></asp:HyperLink>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="وضعیت" VisibleIndex="29">
                <DataItemTemplate>
                    <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Content/images/icons/Document-Organization-Chart-icon.png" NavigateUrl='<%# Eval("ProjectGharardad", "~/content/PageDiagram2.aspx?project={0}") %>' Target="_blank"></asp:HyperLink>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="سال" FieldName="years" VisibleIndex="30">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="شناسه نامه پرداخت" FieldName="paShenase2" VisibleIndex="31">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="تاریخ نامه پرداخت" FieldName="paDate2" VisibleIndex="32">
                <DataItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("paDate2") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
        </Columns>
        <Styles>
            <Header Font-Names="vazir" HorizontalAlign="Center">
            </Header>
            <Row Font-Names="vazir">
            </Row>
        </Styles>
    </dx:ASPxGridView>
    </div>
    <div>
    </div>
</asp:Content>
