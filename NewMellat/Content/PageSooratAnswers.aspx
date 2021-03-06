<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PageSooratAnswers.aspx.cs" Inherits="NewMellat.Content.PageSooratAnswers" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box box-danger">
    <dx:ASPxGridView runat="server" RightToLeft="True" AutoGenerateColumns="False" Theme="Office2010Silver" Width="100%" EnableTheming="True" ID="ASPxGridView1" DataSourceID="sourceInfo"  onrowcommand="ASPxGridView1_RowCommand" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" Font-Names="vazir">
        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsBehavior EnableRowHotTrack="True" />
        <SettingsSearchPanel Visible="True" />
        <SettingsText EmptyHeaders="اطلاعات موجود نمی باشد" GroupPanel="ستون مورد نظر جهت گروه بندی اطلاعات وارد نمایید" SearchPanelEditorNullText="جستجوی اطلاعات" />
        <Columns>
            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowClearFilterButton="True">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn ShowInCustomizationForm="True" Caption="شماره قرارداد" VisibleIndex="2" FieldName="ProjectGharardad">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn ShowInCustomizationForm="True" Caption="عنوان تحویلی" VisibleIndex="5" FieldName="OnvanTahvili">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
 <dx:GridViewDataTextColumn ShowInCustomizationForm="True" Caption="جواب ناظر1" VisibleIndex="6" FieldName="paEdareTitle">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
 <dx:GridViewDataTextColumn ShowInCustomizationForm="True" Caption="جواب ناظر2" VisibleIndex="7" FieldName="paEdare2Title">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn ShowInCustomizationForm="True" VisibleIndex="8" Caption="شناسه نامه پاسخ ناظر1" FieldName="paShenase">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="تاریخ نامه  پاسخ ناظر1" VisibleIndex="9" FieldName="paDate">
                <Settings AutoFilterCondition="Contains" />
                <DataItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("paDate") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="ارسال" VisibleIndex="13">
                <DataItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Content/images/icons/message-bubble-send-icon.png" NavigateUrl='<%# Eval("pishId", "~/content/PageSooratPaper.aspx?project={0}&type=1007") %>' Target="_blank"></asp:HyperLink>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="نام پروژه" VisibleIndex="1" FieldName="ProjectName">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="ناظر 1" FieldName="Nazer1" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="sourceInfo0" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="ناظر2" FieldName="Nazer2" VisibleIndex="4">
                <PropertiesComboBox DataSourceID="sourceInfo0" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn Caption="شناسه نامه پاسخ ناظر2" VisibleIndex="11" FieldName="paShenase2">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="تاریخ نامه  پاسخ ناظر2" VisibleIndex="12" FieldName="paDate2">
                <Settings AutoFilterCondition="Contains" />
                <DataItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("paDate2") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
 <dx:GridViewDataTextColumn Caption="ثبت نامه" VisibleIndex="50" >
                <DataItemTemplate>
                 <asp:ImageButton ID="ImageButtonLetter" runat="server" CommandName="letter" ImageUrl="~/Content/images/icons/letter.png" Width="42px"/>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="77" Caption="Gharardad" FieldName="Gharardad" Visible="false">  </dx:GridViewDataTextColumn> 
             <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="76" Caption="SoorathesbPrice" FieldName="SoorathesbPrice" Visible="false">  </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="75" Caption="pishId" FieldName="pishId" Visible="false">  </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="74" Caption="companyName" FieldName="companyName" Visible="false">  </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="73" Caption="Nazer1Name" FieldName="Nazer1Name" Visible="false">  </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="72" Caption="Nazer2Name" FieldName="Nazer2Name" Visible="false">  </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="71" Caption="paNumber" FieldName="paNumber" Visible="false">  </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="70" Caption="paNumber2" FieldName="paNumber2" Visible="false">  </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="78" Caption="paEdare" FieldName="paEdare" Visible="false">  </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="79" Caption="paEdare2" FieldName="paEdare2" Visible="false">  </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="80" Caption="id" FieldName="id" Visible="false">  </dx:GridViewDataTextColumn>
        </Columns>
        <Styles>
            <Header HorizontalAlign="Center" Font-Names="vazir" Font-Size="13px">
            </Header>
            <Row Font-Names="vazir">
            </Row>
        </Styles>
    </dx:ASPxGridView></div>
    <asp:SqlDataSource ID="sourceInfo" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="select * , paEdareTitle=
case paEdare when 1 then N'تایید' when 2 then N'عدم تایید' when 3 then N'بدون پاسخ' end ,paEdare2Title=case paEdare2 when 1 then N'تایید' when 2 then N'عدم تایید' when 3 then N'بدون پاسخ' end from vwsooratanswer left JOIN  tbProjects ON vwsooratanswer.prId = tbProjects.prId
         where (paSHenase is not null or paEdare=3 or paEdare2=3) and ((prVahed IN (SELECT prProject  FROM tbAdminProjects WHERE (prType = 3)  AND (prCode = @prCode)  )) 
		OR(TechnicalSuvisor IN (SELECT prProject  FROM tbAdminProjects  WHERE (prType = 3) AND (prCode = @prCode) ))) 
AND (prPeymankar IN (SELECT prProject FROM tbAdminProjects AS tbAdminProjects_1 WHERE (prType = 1)  AND (prCode = @prCode) ))">
        <SelectParameters>
                <asp:Parameter Name="prCode" />
            </SelectParameters>
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="sourceInfo0" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString1 %>" SelectCommand="SELECT * FROM [prInformation]"></asp:SqlDataSource>
    <telerik:RadWindowManager ID="RadWindowManager1" runat="server" Animation="Fade" Behaviors="Close" Skin="Sunset">
        <Windows>
            <telerik:RadWindow runat="server" NavigateUrl="RadWindow1" Animation="Fade" Behavior="Close" Behaviors="Close">
            </telerik:RadWindow>
            <telerik:RadWindow runat="server" NavigateUrl="RadWindow2" Animation="Fade" Behavior="Close" Behaviors="Close">
            </telerik:RadWindow>
        </Windows>
    </telerik:RadWindowManager>

</asp:Content>
