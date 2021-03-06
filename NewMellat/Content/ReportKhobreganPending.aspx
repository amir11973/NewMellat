<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ReportKhobreganPending.aspx.cs" Inherits="NewMellat.Content.ReportKhobreganPending" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box box-danger">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sourceProjects2" EnableTheming="True" KeyFieldName="prId" RightToLeft="True" Theme="Office2010Silver" Width="100%" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" Font-Names="vazir">
        <SettingsPager Visible="False" Mode="ShowAllRecords">
        </SettingsPager>
        <Settings ShowGroupPanel="True" />
        <SettingsBehavior EnableRowHotTrack="True" />
        <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
        <SettingsSearchPanel Visible="True" />
        <SettingsText SearchPanelEditorNullText="متن مورد جستجو را وارد نمایید" GroupPanel=" ستون مورد نظر جهت گروه بندی اطلاعات را وارد نمایید " />
        <Columns>
            <dx:GridViewCommandColumn VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn Caption="نام پروژه" FieldName="prTitle" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="شناسه نامه ثبت سند" FieldName="paShenase" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn Caption="تاریخ نامه" FieldName="paDate" VisibleIndex="7">
                <DataItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("paDate") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataComboBoxColumn Caption="نوع سند" FieldName="prSanadType" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="واحد متولی" FieldName="prVahed" VisibleIndex="5">
                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn Caption="ردیف" VisibleIndex="1">
                <DataItemTemplate>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="شرکت پیمانکار" FieldName="prPeymankar" VisibleIndex="4">
                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
    </dx:ASPxGridView>
</div>
<div align="center">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT * FROM [prInformation]"></asp:SqlDataSource>
                <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" GridViewID="ASPxGridView1" Landscape="True" PaperKind="A4">
    </dx:ASPxGridViewExporter>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Content/images/icons/Excel-icon.png" OnClick="ImageButton1_Click" />
                <asp:SqlDataSource ID="sourceProjects2" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        prId, prTitle, prAct, prRegDate, prRegUser, prVahed, prProjectType, prSanadType, prOlaviat, prPeymankar, status1, status2, status3, prStatus, prISEstelam, prIsMohtava, irIsAnalyz, prIsTarh, 
                         prIsEstelamMohtavayi, prEstelamIsSubmit, prIsErsalBeSherkat, prIsAnswerTadarokatPending, prTarhJalasePending, prPishnevisPending, prEstelamPending, prKhobreganStatusMosavab, prTemp,
						 (select top 1 tbProjectPaper.paShenase from tbProjectPaper where paProject=prId and paType=1) as paShenase,
						 (select top 1 tbProjectPaper.paDate from tbProjectPaper where paProject=prId and paType=1) as paDate

FROM            tbProjects
WHERE        (prStatus = 0) AND (prAct = 1)
ORDER BY prId  "></asp:SqlDataSource>
            </div>
</asp:Content>
