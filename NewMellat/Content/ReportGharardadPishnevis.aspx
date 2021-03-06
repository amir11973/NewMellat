<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ReportGharardadPishnevis.aspx.cs" Inherits="NewMellat.Content.ReportGharardadPishnevis" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display: none">
        <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EnableTheming="True" KeyFieldName="ghId" OnHtmlDataCellPrepared="ASPxGridView3_HtmlDataCellPrepared" Theme="RedWine">
            <SettingsPager Mode="ShowAllRecords">
            </SettingsPager>
            <Columns>
                <dx:GridViewDataTextColumn FieldName="ghId" ReadOnly="True" VisibleIndex="0">
                    <EditFormSettings Visible="False" />
                    <DataItemTemplate>
                        <asp:HiddenField ID="HiddenField4" runat="server" Value='<%# Eval("ghId") %>' />
                        <asp:HiddenField ID="HiddenField5" runat="server" Value='<%# Eval("ghProject") %>' />
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ghAct" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ghProject" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ghBody" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ghCode" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
    </div>

        <div style="padding: 9px;display: block" class="box box-danger">
            <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" EnableTheming="True" RightToLeft="True" Theme="Office2010Silver" Width="100%" OnBeforeColumnSortingGrouping="ASPxGridView2_BeforeColumnSortingGrouping" Font-Names="vazir">
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT tbGharardad.* FROM tbGharardad WHERE (ghAct = 1) and ghcode is null"></asp:SqlDataSource>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Content/images/icons/Excel-icon.png" OnClick="ImageButton1_Click" Visible="False" />
    <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" GridViewID="ASPxGridView2">
    </dx:ASPxGridViewExporter>
</div>
</div>
</asp:Content>
