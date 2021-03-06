<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PageSooratMali.aspx.cs" Inherits="NewMellat.Content.PageSooratMali" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box box-danger">
    <dx:ASPxGridView runat="server" RightToLeft="True" AutoGenerateColumns="False" Theme="Office2010Silver" Width="100%" EnableTheming="True" ID="ASPxGridView1" DataSourceID="sourceSooratMali" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" Font-Names="vazir">
        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsBehavior EnableRowHotTrack="True" />
        <SettingsSearchPanel Visible="True" />
        <SettingsLoadingPanel Text="در حال اجرا ..." />
        <SettingsText EmptyDataRow="اطلاعات موجود نمی باشد" GroupPanel="ستون مورد نظر را جهت گروه بندی اطلاعات قرار دهید" SearchPanelEditorNullText="جستجوی اطلاعات" />
        <Columns>
<dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowClearFilterButton="True"></dx:GridViewCommandColumn>
<dx:GridViewDataTextColumn ShowInCustomizationForm="True" Caption="شماره قرارداد" VisibleIndex="2" FieldName="ProjectGharardad">
    <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn ShowInCustomizationForm="True" Caption="تحویلی" VisibleIndex="3" FieldName="OnvanTahvili">
    <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn ShowInCustomizationForm="True" VisibleIndex="4" Caption="شماره صورتحساب" FieldName="pishSooratHesab">
    <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="مبلغ" VisibleIndex="5" FieldName="pishFinalPrice">
            <Settings AutoFilterCondition="Contains" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="نام پروژه" VisibleIndex="1" FieldName="ProjectName">
            <Settings AutoFilterCondition="Contains" />
        </dx:GridViewDataTextColumn>
            
        <dx:GridViewDataTextColumn Caption="ارسال به امور مالی" VisibleIndex="11">
            <DataItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Content/images/icons/sync-icon.png" NavigateUrl='<%# Eval("id", "~/content/PageSooratPaper.aspx?project={0}&type=1008") %>' Target="_blank"></asp:HyperLink>
                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("pishFinalPrice") %>' />
                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("pishSooratHesab") %>' />
            </DataItemTemplate>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="عودت" VisibleIndex="14">
            <DataItemTemplate>
                <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Content/images/icons/email-alert-icon.png" NavigateUrl='<%# Eval("id", "~/content/PageSooratPaper.aspx?project={0}&type=1009") %>' Target="_blank"></asp:HyperLink>
            </DataItemTemplate>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn Caption="ناظر1" FieldName="Nazer1" VisibleIndex="7">
            <PropertiesComboBox DataSourceID="sourceInfo" TextField="infTitle" ValueField="infId">
            </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn Caption="ناظر2" FieldName="Nazer2" VisibleIndex="8">
            <PropertiesComboBox DataSourceID="sourceInfo" TextField="infTitle" ValueField="infId">
            </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn Caption="شناسه تدارکات" FieldName="paShenase" VisibleIndex="9">
            
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn Caption="تاریخ تدارکات" FieldName="paDate" VisibleIndex="10">
            
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn Caption="شرکت" FieldName="CompanyName" VisibleIndex="6">
            <PropertiesComboBox DataSourceID="sourceInfo" TextField="infTitle" ValueField="infId">
            </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
</Columns>

<Styles>
<Header HorizontalAlign="Center" Font-Names="vazir" Font-Size="13px"></Header>
    <Row Font-Names="vazir">
    </Row>
</Styles>
</dx:ASPxGridView>

        <asp:SqlDataSource ID="sourceInfo" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString1 %>" SelectCommand="SELECT * FROM [prInformation]"></asp:SqlDataSource>

                <asp:SqlDataSource ID="sourceSooratMali" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        tbSooratHesab.ProjectName, tbSooratHesab.ProjectGharardad, tbSooratHesab.id, tbSooratHesab.Nazer1, tbSooratHesab.Nazer2, tbSooratHesab.OnvanTahvili, tbProjectPaper.paShenase, 
                         tbProjectPaper.paNumber,DimDate.PersianStr as paDate, tbProjectPaper.paAct, tbSooratPishNevis.pishId, tbProjectPaper.paType, tbSooratPishNevis.pishFinalPrice, 
                         tbSooratPishNevis.pishPriceArzeshAfzoode, tbSooratPishNevis.pishSooratHesab, tbSooratHesab.CompanyName, tbSooratHesab.step10
FROM            tbProjectPaper INNER JOIN
                         tbSooratPishNevis ON tbProjectPaper.paProject = tbSooratPishNevis.pishId INNER JOIN
                         tbSooratHesab ON tbSooratPishNevis.pishProject = tbSooratHesab.id
                         left JOIN  tbProjects ON tbSooratHesab.prId = tbProjects.prId
						 Left  Join DimDate On DimDate.GregorianDate = tbProjectPaper.paDate
WHERE        (tbProjectPaper.paType = 1007) AND (tbProjectPaper.paAct = 1) AND (tbSooratPishNevis.pishAct = 1) AND (tbSooratHesab.step10 = 0)
   and ((prVahed IN (SELECT prProject  FROM tbAdminProjects WHERE (prType = 3)  AND (prCode = @prCode)  )) 
		OR(TechnicalSuvisor IN (SELECT prProject  FROM tbAdminProjects  WHERE (prType = 3) AND (prCode = @prCode) ))) 
AND (prPeymankar IN (SELECT prProject FROM tbAdminProjects AS tbAdminProjects_1 WHERE (prType = 1)  AND (prCode = @prCode) )) 
"><SelectParameters>
                <asp:Parameter Name="prCode" />
            </SelectParameters></asp:SqlDataSource>

                </div>
    <div align="center">
        <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" FileName="لیست پروژه ها" GridViewID="ASPxGridView1" Landscape="True" PaperKind="A4">
        </dx:ASPxGridViewExporter>
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Content/images/icons/Excel-icon.png" OnClick="ImageButton3_Click" />
    </div>
</asp:Content>
