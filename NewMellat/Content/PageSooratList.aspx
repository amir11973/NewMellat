<%@ Page Title="" Language="C#" MasterPageFile="~/SiteRibbon.Master" AutoEventWireup="true" CodeBehind="PageSooratList.aspx.cs" Inherits="NewMellat.Content.PageSooratList" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="LavaControl" namespace="LavaControl" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 <style type="text/css">

     .RightColumn {
    font-family: "vazir";
    font-size: 16px;
    color: #444444;
    text-decoration: none;
    font-style: normal;
    vertical-align: middle;
    text-align: left;
    padding-left: 2px;
    width: 150px;
    height: 35px;
}


.RightColumn2 {
    font-family: "vazir";
    font-size: 14px;
    color: #8b4513;
    text-decoration: none;
    font-style: normal;
    vertical-align: middle;
    text-align: left;
    padding-left: 2px;
    width: 150px;
    height: 35px;
}

.LeftColumn {
    font-family: "vazir";
    font-size: 14px;
    color: #444444;
    text-decoration: none;
    font-style: normal;
    vertical-align: middle;
    text-align: right;
    padding-left: 2px;
    width: 200px;
    height: 35px;
}


 </style>    
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="right">


    <div align="right" class="box box-warning">
        <table align="center" cellpadding="0" cellspacing="0" dir="ltr">
            <tr>
                <td class="LeftColumn">
                    <cc1:PersianCalendar ID="PersianCalendar2" runat="server"></cc1:PersianCalendar>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label1" runat="server" Text=":شروع قرارداد تا"></asp:Label>
                </td>
                <td class="LeftColumn">
                    <cc1:PersianCalendar ID="PersianCalendar1" runat="server"></cc1:PersianCalendar>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label2" runat="server" Text=":شروع قرارداد از"></asp:Label>
                </td>
                <td>
                    <dx:ASPxCheckBox ID="ASPxCheckBox1" runat="server" Checked="True" CheckState="Checked" Theme="SoftOrange">
                    </dx:ASPxCheckBox>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn">
                    <cc1:PersianCalendar ID="PersianCalendar4" runat="server"></cc1:PersianCalendar>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label8" runat="server" Text=":پایان قرارداد تا"></asp:Label>
                </td>
                <td class="LeftColumn">
                    <cc1:PersianCalendar ID="PersianCalendar3" runat="server"></cc1:PersianCalendar>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label9" runat="server" Text=":پایان قرارداد از"></asp:Label>
                </td>
                <td>
                    <dx:ASPxCheckBox ID="ASPxCheckBox2" runat="server" Checked="True" CheckState="Checked" Theme="SoftOrange">
                    </dx:ASPxCheckBox>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn">
                    <cc1:PersianCalendar ID="PersianCalendar6" runat="server"></cc1:PersianCalendar>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label10" runat="server" Text=":تاریخ نامه تا"></asp:Label>
                </td>
                <td class="LeftColumn">
                    <cc1:PersianCalendar ID="PersianCalendar5" runat="server"></cc1:PersianCalendar>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label11" runat="server" Text=":تاریخ نامه از"></asp:Label>
                </td>
                <td>
                    <dx:ASPxCheckBox ID="ASPxCheckBox3" runat="server" Checked="True" CheckState="Checked" Theme="SoftOrange">
                    </dx:ASPxCheckBox>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn">
                    <cc1:PersianCalendar ID="PersianCalendar8" runat="server"></cc1:PersianCalendar>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label13" runat="server" Text=":تاریخ پرداخت تا"></asp:Label>
                </td>
                <td class="LeftColumn">
                    <cc1:PersianCalendar ID="PersianCalendar7" runat="server"></cc1:PersianCalendar>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label12" runat="server" Text=":تاریخ پرداخت از"></asp:Label>
                </td>
                <td>
                    <dx:ASPxCheckBox ID="ASPxCheckBox4" runat="server" Checked="True" CheckState="Checked" Theme="SoftOrange">
                    </dx:ASPxCheckBox>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn">
                    <cc1:PersianCalendar ID="PersianCalendar10" runat="server"></cc1:PersianCalendar>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label15" runat="server" Text=":تاریخ تدارکات تا"></asp:Label>
                </td>
                <td class="LeftColumn">
                    <cc1:PersianCalendar ID="PersianCalendar9" runat="server"></cc1:PersianCalendar>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label14" runat="server" Text=":تاریخ تدارکات از"></asp:Label>
                </td>
                <td>
                    <dx:ASPxCheckBox ID="ASPxCheckBox5" runat="server" Checked="True" CheckState="Checked" Theme="SoftOrange">
                    </dx:ASPxCheckBox>
                </td>
            </tr>
        </table>
        </div>
    </div>

    <div align="center" style="padding: 5px" class="box box-success">
        <dx:ASPxButton ID="ASPxButton1" runat="server" Font-Names="vazir" Text="نمایش اطلاعات" Theme="SoftOrange" Width="130px" OnClick="ASPxButton1_Click">
        </dx:ASPxButton>
    </div>

            <div class="box box-danger" align="center">
        <dx:ASPxCheckBoxList ID="chkColumns" runat="server" Font-Names="vazir" RepeatColumns="5" RightToLeft="True" Theme="SoftOrange" ValueType="System.String" Width="100%">
            <Border BorderStyle="None" />
        </dx:ASPxCheckBoxList>

    </div>
       <div class="box box-warning" align="center" style="padding: 2px">        

           <table align="center" cellpadding="2" cellspacing="1">
               <tr>
                   <td><asp:ImageButton ID="ImageButton4" runat="server" OnClick="ImageButton4_Click" ImageUrl="~/Content/images/refresh-icon.png" ToolTip="لود مجدد" />
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT infId, infType, infTitle FROM prInformation WHERE (infType = 2)"></asp:SqlDataSource>
                   </td>
                   <td>
<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Content/images/Select-icon.png" OnClick="ImageButton2_Click" ToolTip="انتخاب همه" />

                   </td>
                   
               

               </tr>
           </table>

           </div>



    <div class="box box-danger">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sourceHesab" EnableTheming="True" KeyFieldName="id" RightToLeft="True" Theme="Office2010Silver" Width="100%" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" Font-Names="vazir" OnDataBound="ASPxGridView1_DataBound" OnPageIndexChanged="ASPxGridView1_PageIndexChanged" OnProcessColumnAutoFilter="ASPxGridView1_ProcessColumnAutoFilter">
        <SettingsPager PageSize="6">
        </SettingsPager>
        <settings horizontalscrollbarmode="Auto" showfilterrow="True" showgrouppanel="True" ShowFooter="True" />
        <SettingsBehavior EnableRowHotTrack="True" />
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
            <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0" Width="25px" Visible="False">
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
            <dx:GridViewDataTextColumn Caption="توضیحات" FieldName="Body" VisibleIndex="15">
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
            <dx:GridViewDataTextColumn VisibleIndex="27" Caption="نامه ها">
                <DataItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Content/images/icons/Documents-icon16.png" NavigateUrl='<%# Eval("id", "~/content/PageSooratPaper.aspx?project={0}&type=1051") %>' Target="_blank"></asp:HyperLink>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="وضعیت" VisibleIndex="28">
                <DataItemTemplate>
                    <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Content/images/icons/Document-Organization-Chart-icon.png" NavigateUrl='<%# Eval("id","~/content/PageDiagram2.aspx?project={0}") %>' Target="_blank"></asp:HyperLink>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="سال" FieldName="years" VisibleIndex="29">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="شناسه نامه پرداخت" FieldName="paShenase2" VisibleIndex="30">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="تاریخ نامه پرداخت" FieldName="paDate2" VisibleIndex="31">
                <DataItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("paDate2") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="شناسه تدارکات" FieldName="paShenase3" VisibleIndex="33">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="تاریخ تدارکات" FieldName="paDate3" VisibleIndex="34">
                <DataItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("paDate3") %>'></asp:Label>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn Caption="تاریخ نامه میلادی" FieldName="Expr1" VisibleIndex="14" Visible="False">
                <PropertiesDateEdit AnimationType="Fade" DisplayFormatString="">
                </PropertiesDateEdit>
                <Settings GroupInterval="DateMonth" HeaderFilterMode="CheckedList" />
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn Caption="تاریخ نامه پرداخت میلادی" FieldName="paDate2" VisibleIndex="32" Visible="False">
                <Settings GroupInterval="DateMonth" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="تاریخ تدارکات میلادی" FieldName="paDate3" VisibleIndex="35" Visible="False">
                <Settings GroupInterval="DateMonth" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="موعد تحویل" FieldName="MoedTahvili" VisibleIndex="36">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="عنوان تحویل" FieldName="OnvanTahvili" VisibleIndex="37">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="قیمت" FieldName="Price" VisibleIndex="38">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="نوع قرارداد صورتحساب" FieldName="GharardadType" VisibleIndex="39">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="نوع پروژه" FieldName="prProjectType" VisibleIndex="40">
                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
        <TotalSummary>
            <dx:ASPxSummaryItem DisplayFormat="{0}:جمع قیمت" FieldName="Price" ShowInColumn="مبلغ" ShowInGroupFooterColumn="مبلغ" SummaryType="Sum" />
            <dx:ASPxSummaryItem DisplayFormat="{0}:جمع صورتحساب" FieldName="SoorathesbPrice" ShowInColumn="صورتحساب" ShowInGroupFooterColumn="صورتحساب" SummaryType="Sum" />
        </TotalSummary>
        <Styles>
            <Header Font-Names="vazir" HorizontalAlign="Center">
            </Header>
            <Row Font-Names="vazir">
            </Row>
        </Styles>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="sourceHesab" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="select * from vwSooratList
where ((GharardadEnd between @end1 and @end2) or (@end1='-1'))
and
 ((GharardadStart between @start1 and @start2) or (@start1='-1'))
and
((Expr1 between @ex1 and @ex2) or (@ex1='-1'))
and
((paDate2 between @pa1 and @pa2) or (@pa1='-1'))
and
((paDate3 between @pa3 and @pa4) or (@pa3='-1'))">
        <SelectParameters>
            <asp:Parameter Name="end1" />
            <asp:Parameter Name="end2" />
            <asp:Parameter Name="start1" />
            <asp:Parameter Name="start2" />
            <asp:Parameter Name="ex1" />
            <asp:Parameter Name="ex2" />
            <asp:Parameter Name="pa1" />
            <asp:Parameter Name="pa2" />
            <asp:Parameter Name="pa3" />
            <asp:Parameter Name="pa4" />
        </SelectParameters>
        </asp:SqlDataSource>
                <asp:SqlDataSource ID="sourceVahed" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT infId, infTitle, infType FROM prInformation WHERE (infAct = 1) AND (infType = 1)">
                </asp:SqlDataSource>
        <asp:SqlDataSource ID="sourcePeymankar" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT infId, infTitle, infType FROM prInformation WHERE (infAct = 1) AND (infType = 5)">
        </asp:SqlDataSource>
        </div>
<div align="center" style="padding: 7px">
    <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" FileName="sooratHesab" GridViewID="ASPxGridView1" Landscape="True" PaperKind="A4" OnLoad="ASPxGridViewExporter1_Load">
    </dx:ASPxGridViewExporter>
    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Content/images/icons/Excel-icon.png" OnClick="ImageButton3_Click" />
</div>
<div>
</div>
</asp:Content>
