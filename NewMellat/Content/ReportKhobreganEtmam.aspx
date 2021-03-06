<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ReportKhobreganEtmam.aspx.cs" Inherits="NewMellat.Content.ReportKhobreganEtmam" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" RightToLeft="True" Theme="Office2010Silver" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" Width="100%" KeyFieldName="khId" Font-Names="vazir">
        <SettingsPager PageSize="25">
        </SettingsPager>
        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsBehavior EnableRowHotTrack="True" />
        <SettingsSearchPanel Visible="True" />
        <SettingsLoadingPanel Text="در حال اجرا..." />
        <SettingsText GroupPanel="ستون مورد نظر جهت گروه بندی اطلاعات را وارد نمایید" SearchPanelEditorNullText="متن مورد جستجو را وارد نمایید" EmptyDataRow="اطلاعات موجود نمی باشد" />
        <Columns>
            <dx:GridViewDataTextColumn Caption="شناسه" FieldName="paShenase" VisibleIndex="5" ShowInCustomizationForm="True">
                <DataItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("paShenase") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn Caption="مهلت عملیاتی شدن" FieldName="mosAmaliatiDate" ShowInCustomizationForm="True" VisibleIndex="7">
                <DataItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("mosAmaliatiDate") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn Caption="تاریخ نامه" FieldName="paDate" ShowInCustomizationForm="True" VisibleIndex="6">
                <DataItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("paDate") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn Caption="مهلت ارسال پروپوزال" FieldName="mosErsalDate" ShowInCustomizationForm="True" VisibleIndex="8">
                <DataItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("mosErsalDate") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="نام پروژه" FieldName="prTitle" VisibleIndex="1" ShowInCustomizationForm="True">
                <settings autofiltercondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="نوع سند" FieldName="prSanadType" VisibleIndex="3">
                <propertiescombobox datasourceid="SqlDataSource2" textfield="infTitle" valuefield="infId"></propertiescombobox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="شرکت" FieldName="prPeymankar" VisibleIndex="4">
                <propertiescombobox datasourceid="SqlDataSource2" textfield="infTitle" valuefield="infId"></propertiescombobox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="واحد متولی" FieldName="prVahed" VisibleIndex="2">
                <propertiescombobox datasourceid="SqlDataSource2" textfield="infTitle" valuefield="infId"></propertiescombobox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn Caption="ردیف" VisibleIndex="0">
                <dataitemtemplate>
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </dataitemtemplate>
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT tbKhobreganMosavab.mosShenase, tbKhobreganMosavab.mosNumber, tbKhobreganMosavab.mosAmaliatiDate, tbKhbregan.khAct, tbKhobreganMosavab.mosAct, tbKhbregan.khId, tbKhbregan.khProject, tbKhobreganMosavab.mosId, tbKhobreganMosavab.mosDate, tbKhobreganMosavab.mosPropozal, tbKhobreganMosavab.mosErsalDate, tbProjects.prTitle, tbProjects.prVahed, tbProjects.prProjectType, tbProjects.prSanadType, tbProjects.prOlaviat, tbProjects.prPeymankar, tbProjects.prId, tbProjectPaper.paAct, tbProjectPaper.paType, tbProjectPaper.paShenase, tbProjectPaper.paDate FROM tbProjects INNER JOIN tbKhobreganMosavab ON tbProjects.prId = tbKhobreganMosavab.mosProjectId INNER JOIN tbProjectPaper ON tbProjects.prId = tbProjectPaper.paProject LEFT OUTER JOIN tbKhbregan ON tbKhobreganMosavab.mosKhob = tbKhbregan.khId WHERE (tbKhbregan.khAct = 1) AND (tbKhobreganMosavab.mosAct = 1) AND (tbProjectPaper.paType = @type) AND (tbProjectPaper.paAct = 1)">
        <SelectParameters>
            <asp:QueryStringParameter Name="type" QueryStringField="type" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT * FROM [prInformation]"></asp:SqlDataSource>
</div>
<div>
</div>
<div>
</div>
</asp:Content>
