<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ReportErsalBeSherkat.aspx.cs" Inherits="NewMellat.Content.ReportErsalBeSherkat" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div></div>
    <div style="display: block">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sourceInfo" EnableTheming="True" KeyFieldName="prId" RightToLeft="True" Theme="Office2010Silver" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" Width="100%" Visible="False">
        <SettingsPager PageSize="25" Mode="ShowAllRecords" Visible="true">
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
            <dx:GridViewDataTextColumn Caption="وضعیت 1" FieldName="status1" VisibleIndex="10">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="وضعیت 2" FieldName="status2" VisibleIndex="11">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="وضعیت پروپوزال" FieldName="status3" VisibleIndex="12">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="پیمانکار" FieldName="prPeymankar" VisibleIndex="9">
                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="اولویت" FieldName="prOlaviat" VisibleIndex="8">
                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="نوع سند" FieldName="prSanadType" VisibleIndex="7">
                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="نوع پروژه" FieldName="prProjectType" VisibleIndex="6">
                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="واحد" FieldName="prVahed" VisibleIndex="5">
                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn Caption="وضعیت پاسخ استعلام" VisibleIndex="13">
                <DataItemTemplate>
                    <asp:Image ID="img1" runat="server" ImageUrl="~/Content/images/icons/check-icon.png" />
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("thId") %>' />
                    <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("thProject") %>' />
                    <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True"></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn></Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="sourceInfo" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT tbTarhPishnehadi.thId, tbTarhPishnehadi.thProject, tbTarhPishnehadi.thYear, tbTarhPishnehadi.thHajmTolid, tbTarhPishnehadi.thHajmPosh, tbTarhPishnehadi.thPriceTolid, tbTarhPishnehadi.thPricePosh, tbTarhPishnehadi.thModatTolid, tbTarhPishnehadi.thModatPosh, tbTarhPishnehadi.thAct, tbTarhPishnehadi.thMekanizmPosh, tbTarhPishnehadi.thMekanizmtolid, tbProjects.prVahed AS Expr1, tbProjects.prIsMohtava AS Expr2, tbProjects.irIsAnalyz AS Expr3, tbProjects.prIsEstelamMohtavayi AS Expr4, tbProjects.prEstelamIsSubmit AS Expr5, tbTarhPishnehadi.thIsEstelamPaper, tbProjects.prId, tbProjects.prTitle, tbProjects.prAct, tbProjects.prRegDate, tbProjects.prRegUser, tbProjects.prVahed, tbProjects.prProjectType, tbProjects.prSanadType, tbProjects.prOlaviat, tbProjects.prPeymankar, tbProjects.status1, tbProjects.status2, tbProjects.status3, tbProjects.prStatus, tbProjects.prISEstelam, tbProjects.prIsMohtava, tbProjects.irIsAnalyz, tbProjects.prIsTarh, tbProjects.prIsEstelamMohtavayi, tbProjects.prEstelamIsSubmit, tbProjects.prIsErsalBeSherkat, tbProjects.prIsAnswerTadarokatPending, tbProjects.prTarhJalasePending, tbProjects.prPishnevisPending, tbProjects.prEstelamPending, tbTarhPishnehadi.thIsCancle FROM tbTarhPishnehadi INNER JOIN tbProjects ON tbTarhPishnehadi.thProject = tbProjects.prId WHERE (tbTarhPishnehadi.thAct = 1) AND (tbProjects.irIsAnalyz = 0) AND (tbProjects.prIsMohtava = 0) AND (tbProjects.prIsEstelamMohtavayi = 1) AND (tbProjects.prEstelamIsSubmit = 1) AND (tbTarhPishnehadi.thIsEstelamPaper = 1) AND (tbTarhPishnehadi.thIsCancle = 0) ORDER BY tbTarhPishnehadi.thId DESC"></asp:SqlDataSource></div>
        <div style="padding: 9px" class="box box-danger">
            <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" EnableTheming="True" OnHtmlDataCellPrepared="ASPxGridView2_HtmlDataCellPrepared" RightToLeft="True" Theme="Office2010Silver" Width="100%" OnBeforeColumnSortingGrouping="ASPxGridView2_BeforeColumnSortingGrouping" Font-Names="vazir">
                <SettingsPager Mode="ShowAllRecords" Visible="False">
                </SettingsPager>
                <Settings ShowGroupPanel="True" />
                <SettingsBehavior AllowFixedGroups="True" AllowSort="False" AutoExpandAllGroups="True" EnableRowHotTrack="True" />
                <SettingsText GroupPanel=" ستون مورد نظر جهت گروه بندی اطلاعات را وارد نمایید " />
                <Columns>
                    <dx:GridViewDataTextColumn Caption="نام پروژه" FieldName="Column1" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="واحد" FieldName="Column2" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Column3" Visible="False" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="شناسه نامه" FieldName="Column4" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="تاریخ نامه" FieldName="Column5" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="مهلت" FieldName="Column6" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="پیمانکار" FieldName="Column7" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
        </div>

<div align="center">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT * FROM [prInformation]"></asp:SqlDataSource>
<div align="center" style="padding: 9px">
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Content/images/icons/Excel-icon.png" OnClick="ImageButton1_Click" Visible="False" />
    <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" GridViewID="ASPxGridView2">
    </dx:ASPxGridViewExporter>
</div>
</div>
</asp:Content>
