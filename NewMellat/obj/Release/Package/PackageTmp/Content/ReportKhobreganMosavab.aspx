<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ReportKhobreganMosavab.aspx.cs" Inherits="NewMellat.Content.ReportKhobreganMosavab" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="box box-danger">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" RightToLeft="True" Theme="Office2010Silver" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" Width="100%" Font-Names="vazir">
        <SettingsPager PageSize="25">
        </SettingsPager>
        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsBehavior EnableRowHotTrack="True" />
        <SettingsSearchPanel Visible="True" />
        <SettingsLoadingPanel Text="در حال اجرا..." />
        <SettingsText GroupPanel="ستون مورد نظر جهت گروه بندی اطلاعات را وارد نمایید" SearchPanelEditorNullText="متن مورد جستجو را وارد نمایید" />
        <Columns>
            <dx:GridViewDataTextColumn Caption="شناسه" FieldName="mosShenase" VisibleIndex="4" ShowInCustomizationForm="True">
                <DataItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("mosShenase") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn Caption="مهلت عملیاتی شدن" FieldName="mosAmaliatiDate" ShowInCustomizationForm="True" VisibleIndex="6">
                <DataItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("mosAmaliatiDate") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn Caption="مهلت ارسال پروپوزال" FieldName="mosErsalDate" ShowInCustomizationForm="True" VisibleIndex="7">
                <DataItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("mosErsalDate") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="نام پروژه" FieldName="prTitle" VisibleIndex="0">
                <settings autofiltercondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="نوع سند" FieldName="prSanadType" VisibleIndex="2">
                <propertiescombobox datasourceid="SqlDataSource2" textfield="infTitle" valuefield="infId"></propertiescombobox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="شرکت" FieldName="prPeymankar" VisibleIndex="3">
                <propertiescombobox datasourceid="SqlDataSource2" textfield="infTitle" valuefield="infId"></propertiescombobox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="واحد متولی" FieldName="prVahed" VisibleIndex="1">
                <propertiescombobox datasourceid="SqlDataSource2" textfield="infTitle" valuefield="infId"></propertiescombobox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn Caption="تاریخ نامه" FieldName="Shamsidate" VisibleIndex="5">
                <PropertiesTextEdit DisplayFormatString="d">
                </PropertiesTextEdit>
                <DataItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Shamsidate") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="ماه" FieldName="mounth" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="سال" FieldName="years" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="نوع پروژه" FieldName="prProjectType" VisibleIndex="10">
                <PropertiesComboBox DataSourceID="SqlDataSource2" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="اولویت" FieldName="prOlaviat" VisibleIndex="11">
                <propertiescombobox datasourceid="sourceOlaviat" textfield="infTitle" valuefield="infId"></propertiescombobox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        tbKhobreganMosavab.mosShenase, tbKhobreganMosavab.mosNumber, tbKhobreganMosavab.mosAmaliatiDate, tbKhbregan.khAct, tbKhobreganMosavab.mosAct, tbKhbregan.khId, tbKhbregan.khProject, 
                         tbKhobreganMosavab.mosId, tbKhobreganMosavab.mosDate, tbKhobreganMosavab.mosPropozal, tbKhobreganMosavab.mosErsalDate, tbProjects.prTitle, tbProjects.prVahed, tbProjects.prProjectType, 
                         tbProjects.prSanadType, tbProjects.prOlaviat, tbProjects.prPeymankar, tbProjects.prId,
                             (SELECT        dbo.getShamsiDate(tbKhobreganMosavab.mosDate) AS Expr1) AS Shamsidate, SUBSTRING
                             ((SELECT        dbo.getShamsiDate(tbKhobreganMosavab.mosDate) AS Expr1), 6, 2) AS mounth, SUBSTRING
                             ((SELECT        dbo.getShamsiDate(tbKhobreganMosavab.mosDate) AS Expr1), 1, 4) AS years
FROM            tbProjects INNER JOIN
                         tbKhbregan ON tbProjects.prId = tbKhbregan.khProject INNER JOIN
                         tbKhobreganMosavab ON tbKhbregan.khId = tbKhobreganMosavab.mosKhob
WHERE        (tbKhbregan.khAct = 1) AND (tbKhobreganMosavab.mosAct = 1) AND (tbKhobreganMosavab.mosDate NOT IN ('0001-01-01', '2001-01-01')) AND (tbProjects.prKhobreganStatusMosavab not in (1,2))
--and 
AND (tbKhbregan.khIsTarh = 0)
--prId not in (select tbTarhPishnehadi.thProject from tbTarhPishnehadi)"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sourceOlaviat" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="spSelectInfo" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="4" Name="infType" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT * FROM [prInformation]"></asp:SqlDataSource>
</div>
<div align="center" style="padding: 7px">
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Content/images/icons/Excel-icon.png" OnClick="ImageButton1_Click" />
    <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" FileName="گزارش پروژه ها" GridViewID="ASPxGridView1" Landscape="True" PaperKind="A4">
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
</div>


    
    
    

</asp:Content>
