<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportAnswerTadarokatPending.aspx.cs" Inherits="NewMellat.Content.ReportAnswerTadarokatPending" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sourceInfo" EnableTheming="True" KeyFieldName="prId" RightToLeft="True" Theme="Office2010Silver">
        <SettingsPager PageSize="25">
        </SettingsPager>
        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsSearchPanel Visible="True" />
        <SettingsLoadingPanel Text="در حال اجرا..." />
        <SettingsText GroupPanel="ستون مورد نظر جهت گروه بندی اطلاعات را وارد نمایید" SearchPanelEditorNullText="متن مورد جستجو را وارد نمایید" />
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn Caption="کد سیستمی پروژه" FieldName="prId" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="عنوان پروژه" FieldName="prTitle" VisibleIndex="2">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="وضعیت 1" FieldName="status1" VisibleIndex="11">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="وضعیت 2" FieldName="status2" VisibleIndex="12">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="وضعیت پروپوزال" FieldName="status3" VisibleIndex="13">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="پیمانکار" FieldName="prPeymankar" VisibleIndex="10">
                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="اولویت" FieldName="prOlaviat" VisibleIndex="9">
                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="نوع سند" FieldName="prSanadType" VisibleIndex="8">
                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="نوع پروژه" FieldName="prProjectType" VisibleIndex="7">
                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="واحد" FieldName="prVahed" VisibleIndex="6">
                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="sourceInfo" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT * FROM [vwAnswerTadarokatPending]"></asp:SqlDataSource>
<div align="center">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT * FROM [prInformation]"></asp:SqlDataSource>
</div>
</div>
<div>
<div align="center" style="padding: 9px">
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Content/images/icons/Excel-icon.png" OnClick="ImageButton1_Click" />
    <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" GridViewID="ASPxGridView1">
    </dx:ASPxGridViewExporter>
</div>
</div>
</asp:Content>
