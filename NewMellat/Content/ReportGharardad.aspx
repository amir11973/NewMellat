<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ReportGharardad.aspx.cs" Inherits="NewMellat.Content.ReportGharardad" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
</div>
<div class="box box-danger">
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" Theme="Office2010Silver" AutoGenerateColumns="False" DataSourceID="sourcereport" KeyFieldName="ghId" RightToLeft="True" Width="100%" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" Font-Names="vazir">
            <SettingsPager PageSize="25">
            </SettingsPager>
            <Settings ShowFilterRow="True" ShowGroupPanel="True" />
            <SettingsBehavior ConfirmDelete="True" EnableRowHotTrack="True" />
            <SettingsCommandButton>
                <DeleteButton ButtonType="Image">
                    <Image Url="~/Content/images/icons/Close-2-icon.png">
                    </Image>
                </DeleteButton>
            </SettingsCommandButton>
            <SettingsSearchPanel Visible="True" />
            <SettingsLoadingPanel Text="در حال اجرا..." />
            <SettingsText ConfirmDelete="آیا ردیف انتخابی حذف شود؟" EmptyDataRow="اطلاعات موجود نمی باشد" GroupPanel="ستون مورد نظر جهت گروه بندی اطلاعات را وارد نمایید" SearchPanelEditorNullText="متن مورد جستجو را وارد نمایید" />
            <Columns>
<dx:GridViewDataTextColumn Caption="کد سیستمی قرارداد" VisibleIndex="13" FieldName="ghId" ReadOnly="True">
    <editformsettings visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="توضیحات قرارداد" VisibleIndex="2" FieldName="ghBody">
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="کد قرارداد " VisibleIndex="1" FieldName="ghCode">
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="پروژه" VisibleIndex="0" FieldName="prTitle">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="سال قرارداد" FieldName="years" ReadOnly="True" VisibleIndex="12">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="واحد متولی" FieldName="prVahed" VisibleIndex="3">
                    <propertiescombobox datasourceid="SqlDataSource1" textfield="infTitle" valuefield="infId"></propertiescombobox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="نوع پروژه" FieldName="prProjectType" VisibleIndex="4">
                    <propertiescombobox datasourceid="SqlDataSource1" textfield="infTitle" valuefield="infId"></propertiescombobox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="نوع سند" FieldName="prSanadType" VisibleIndex="5">
                    <propertiescombobox datasourceid="SqlDataSource1" textfield="infTitle" valuefield="infId"></propertiescombobox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="اولویت" FieldName="prOlaviat" VisibleIndex="7">
                    <propertiescombobox datasourceid="SqlDataSource1" textfield="infTitle" valuefield="infId"></propertiescombobox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="پیمانکار" FieldName="prPeymankar" VisibleIndex="11">
                    <propertiescombobox datasourceid="SqlDataSource1" textfield="infTitle" valuefield="infId"></propertiescombobox>
                </dx:GridViewDataComboBoxColumn>
            </Columns>
            <Styles>
                <Header Font-Names="vazir" Font-Size="13px" HorizontalAlign="Center">
                </Header>
                <Row HorizontalAlign="Center">
                </Row>
            </Styles>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="sourcereport" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        tbGharardad.ghId, tbGharardad.ghAct, tbGharardad.ghProject, tbGharardad.ghBody, tbGharardad.ghCode, tbProjects.prTitle, tbProjects.prVahed, tbProjects.prProjectType, tbProjects.prSanadType, 
                         tbProjects.prOlaviat, tbProjects.prPeymankar, tbProjects.prId, tbProjects.prAct,SUBSTRING(tbGharardad.ghCode,0,3) as years
FROM            tbGharardad INNER JOIN
                         tbProjects ON tbGharardad.ghProject = tbProjects.prId
WHERE        (tbGharardad.ghAct = 1) AND (tbProjects.prAct = 1)
and ghCode is not null
order by SUBSTRING(tbGharardad.ghCode,0,3) desc
 "></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT * FROM [prInformation]"></asp:SqlDataSource>
</div>
<div align="center" style="padding: 6px">
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Content/images/icons/Excel-icon.png" OnClick="ImageButton1_Click" />
    <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" FileName="گزارش قرارداد" GridViewID="ASPxGridView1" Landscape="True" PaperKind="A4">
    </dx:ASPxGridViewExporter>
</div>
</asp:Content>
