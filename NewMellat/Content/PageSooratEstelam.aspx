﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PageSooratEstelam.aspx.cs" Inherits="NewMellat.Content.PageSooratEstelam" %>


<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI, Version=2018.1.117.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4" %>

<%@ Register TagPrefix="dx" Namespace="DevExpress.Web" Assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<%@ Register assembly="LavaControl" namespace="LavaControl" tagprefix="cc1" %>
<%--<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function ms() {

        }

    </script>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
<div align="center" style="padding: 4px" class="box box-danger">
    
        <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" EnableTheming="True" RightToLeft="True" Theme="Office2010Silver" Width="100%" DataSourceID="sourcePishnevis" KeyFieldName="pishId" OnRowCommand="ASPxGridView3_RowCommand" Font-Names="vazir">
            <SettingsText EmptyDataRow="اطلاعات موجود نمی باشد" SearchPanelEditorNullText="متن مورد جستجو را وارد نمایید" />
        <Columns>
            <dx:GridViewCommandColumn VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn Caption="نام پروژه" VisibleIndex="5" FieldName="ProjectName">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="شماره قرارداد" VisibleIndex="6" FieldName="ProjectGharardad">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="موعد تحویل" VisibleIndex="8" FieldName="MoedTahvili">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="استعلام" VisibleIndex="9">
                <DataItemTemplate>
                    <asp:ImageButton ID="ImageButton3" runat="server" CommandArgument='<%# Eval("pishId") %>' CommandName="est" ImageUrl="~/Content/images/icons/page-edit-icon.png" />
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn Caption="ثبت نامه" VisibleIndex="10" >
                <DataItemTemplate>
                 <asp:ImageButton ID="ImageButtonLetter" runat="server" CommandName="letter" ImageUrl="~/Content/images/icons/letter.png" Width="42px"/>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="عنوان تحویلی" FieldName="OnvanTahvili" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
              <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="71" Caption="نام ناظر2" FieldName="Nazer2Name" Visible="false">  </dx:GridViewDataTextColumn>
               <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="72" Caption="companyName" FieldName="companyName" Visible="false">  </dx:GridViewDataTextColumn>
               <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="73" Caption="Nazer1Name" FieldName="Nazer1Name" Visible="false">  </dx:GridViewDataTextColumn>
               <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="74" Caption="pishDore" FieldName="pishDore" Visible="false">  </dx:GridViewDataTextColumn>
              <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="75" Caption="Gharardad" FieldName="Gharardad" Visible="false">  </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="76" Caption="sooratHesabId" FieldName="sooratHesabId" Visible="false">  </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="77" Caption="Nazer1" FieldName="Nazer1" Visible="false">  </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="78" Caption="Nazer2" FieldName="Nazer2" Visible="false">  </dx:GridViewDataTextColumn>
        </Columns>
        <Styles>
            <Header Font-Names="vazir" Font-Size="13px" HorizontalAlign="Center">
            </Header>
            <Row Font-Names="vazir">
            </Row>
        </Styles>
    </dx:ASPxGridView>

    
    
    

        <asp:SqlDataSource ID="sourcePishnevis" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        tbSooratPishNevis.pishId, tbSooratPishNevis.pishPrice, tbSooratPishNevis.pishPricePlus, tbSooratPishNevis.pishSooratHesab, tbSooratPishNevis.pishHours, tbSooratPishNevis.pishDore, 
                         tbSooratPishNevis.pishType, tbSooratHesab.ProjectName, tbSooratHesab.ProjectGharardad, tbSooratHesab.MoedTahvili, tbSooratHesab.Price, tbSooratHesab.OnvanTahvili,
						 tbSooratHesab.Gharardad,tbSooratHesab.id as sooratHesabId,tbSooratHesab .Nazer1,tbSooratHesab .Nazer2
              ,prInformation.infTitle as companyName,n1.infTitle as Nazer1Name,n2.infTitle as Nazer2Name,tbSooratHesab.Gharardad
FROM tbSooratPishNevis INNER JOIN  tbSooratHesab ON tbSooratPishNevis.pishProject = tbSooratHesab.id
                        left JOIN  tbProjects ON tbSooratHesab.prId = tbProjects.prId
                       inner Join prInformation on tbSooratHesab .CompanyName=prInformation.infId 
                       left Join prInformation n1 on tbSooratHesab .Nazer1=n1.infId 
					   left Join prInformation n2 on tbSooratHesab .Nazer2=n2.infId 
WHERE        (tbSooratPishNevis.pishAct = 1) AND (tbSooratPishNevis.pishIsNazer = 0) AND (tbSooratHesab.step2 = 0)               and ((prVahed IN (SELECT prProject  FROM tbAdminProjects WHERE (prType = 3)  AND (prCode = @prCode)  )) 
		OR(TechnicalSuvisor IN (SELECT prProject  FROM tbAdminProjects  WHERE (prType = 3) AND (prCode = @prCode) ))) 
AND (prPeymankar IN (SELECT prProject FROM tbAdminProjects AS tbAdminProjects_1 WHERE (prType = 1)  AND (prCode = @prCode) )) ">
            <SelectParameters>
                <asp:Parameter Name="prCode" />
            </SelectParameters></asp:SqlDataSource>

    
    
    

        <asp:HiddenField ID="h1" runat="server" />
        <asp:HiddenField ID="h2" runat="server" />

    
    
    

</div>
        

    </div>
    <div style="padding: 4px">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" HeaderText="اطلاعات پروژه" ShowCollapseButton="true" Theme="SoftOrange" Visible="False">
            <HeaderStyle Font-Names="vazir" HorizontalAlign="Right" />
            <PanelCollection>
<dx:PanelContent runat="server">
    <div align="right">
        <table align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td align="right" colspan="5" style="font-family: 'vazir'; font-size: 16px">
                    <asp:Label ID="lbProjectName" runat="server"></asp:Label>
                </td>
                <td class="RightColumn2">
                    <asp:Label ID="Label3" runat="server" Text=":نام پروژه"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="5" style="font-family: 'vazir'; font-size: 16px">
                    <asp:Label ID="lbGharardad" runat="server"></asp:Label>
                </td>
                <td class="RightColumn2">
                    <asp:Label ID="Label4" runat="server" Text=":شماره قرارداد "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn">
                    &nbsp;</td>
                <td class="RightColumn">&nbsp;</td>
                <td class="LeftColumn">
                    <asp:Label ID="lbNazer2" runat="server"></asp:Label>
                </td>
                <td class="RightColumn2">
                    <asp:Label ID="Label6" runat="server" Text=":ناظر2"></asp:Label>
                </td>
                <td class="LeftColumn">
                    <asp:Label ID="lbNazer1" runat="server"></asp:Label>
                </td>
                <td class="RightColumn2">
                    <asp:Label ID="Label5" runat="server" Text=":ناظر1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn">&nbsp;</td>
                <td class="RightColumn">&nbsp;</td>
                <td class="LeftColumn">
                    <asp:Label ID="lbGharardadType" runat="server"></asp:Label>
                </td>
                <td class="RightColumn2">
                    <asp:Label ID="Label7" runat="server" Text=":نوع قرارداد"></asp:Label>
                </td>
                <td class="LeftColumn">
                    <asp:Label ID="lbCompany" runat="server"></asp:Label>
                </td>
                <td class="RightColumn2">
                    <asp:Label ID="Label8" runat="server" Text=":نام شرکت"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn">
                    <asp:Label ID="lbPriceTolid" runat="server"></asp:Label>
                </td>
                <td class="RightColumn2">
                    <asp:Label ID="Label12" runat="server" Text=":مبلغ تولید"></asp:Label>
                </td>
                <td class="LeftColumn">
                    <asp:Label ID="lbEndTolid" runat="server"></asp:Label>
                </td>
                <td class="RightColumn2">
                    <asp:Label ID="Label10" runat="server" Text=":پایان قرارداد تولید"></asp:Label>
                </td>
                <td class="LeftColumn">
                    <asp:Label ID="lbStartTolid" runat="server"></asp:Label>
                </td>
                <td class="RightColumn2">
                    <asp:Label ID="Label9" runat="server" Text=":شروع قرارداد تولید"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn">
                    <asp:Label ID="lbPricePosh" runat="server"></asp:Label>
                </td>
                <td class="RightColumn2">
                    <asp:Label ID="Label14" runat="server" Text=":مبلغ پشتیبانی"></asp:Label>
                </td>
                <td class="LeftColumn">
                    <asp:Label ID="lbEndPosh" runat="server"></asp:Label>
                </td>
                <td class="RightColumn2">
                    <asp:Label ID="Label13" runat="server" Text=":پایان قراداد پشتیبانی"></asp:Label>
                </td>
                <td class="LeftColumn">
                    <asp:Label ID="lbStartPosh" runat="server"></asp:Label>
                </td>
                <td class="RightColumn2">
                    <asp:Label ID="Label11" runat="server" Text=":شروع قرارداد پشتیبانی"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <div align="right" style="padding: 4px;">
        <asp:Panel ID="Panel1" runat="server" Height="120px">
            <div align="right">
                <table align="right" cellpadding="0" cellspacing="0" dir="ltr" width="100%">
                    <tr>
                        <td class="LeftColumn">
                            <asp:Label ID="lbPishPrice" runat="server"></asp:Label>
                        </td>
                        <td class="RightColumn2">
                            <asp:Label ID="Label18" runat="server" Text=":مبلغ پیش فاکتور"></asp:Label>
                        </td>
                        <td class="LeftColumn">
                            <asp:Label ID="lbOnvan" runat="server"></asp:Label>
                        </td>
                        <td class="RightColumn2">
                            <asp:Label ID="Label17" runat="server" Text=":عنوان تحویلی"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="LeftColumn">
                            <asp:Label ID="lbPriceArzesh" runat="server"></asp:Label>
                        </td>
                        <td class="RightColumn2">
                            <asp:Label ID="Label19" runat="server" Text=":مبلغ با ارزش افزوده"></asp:Label>
                        </td>
                        <td class="LeftColumn">
                            <asp:Label ID="lbDore" runat="server"></asp:Label>
                        </td>
                        <td class="RightColumn2">
                            <asp:Label ID="Label20" runat="server" Text=":دوره ارسالی"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="LeftColumn">&nbsp;</td>
                        <td class="RightColumn2">&nbsp;</td>
                        <td class="LeftColumn">
                            <asp:Label ID="lbNafar" runat="server"></asp:Label>
                        </td>
                        <td class="RightColumn2">
                            <asp:Label ID="Label21" runat="server" Text=":نفر ساعت"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="False" Height="150px">
            <div align="right">
                <table align="right" cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="LeftColumn">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                        <td class="RightColumn2">
                            <asp:Label ID="Label2" runat="server" Text=":مبلغ پیش فاکتور"></asp:Label>
                        </td>
                        <td class="LeftColumn">
                            <asp:Label ID="Label15" runat="server"></asp:Label>
                        </td>
                        <td class="RightColumn2">
                            <asp:Label ID="Label16" runat="server" Text=":عنوان تحویلی"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="LeftColumn">
                            <asp:Label ID="Label22" runat="server"></asp:Label>
                        </td>
                        <td class="RightColumn2">
                            <asp:Label ID="Label28" runat="server" Text=":مبلغ با ارزش افزوده"></asp:Label>
                        </td>
                        <td class="LeftColumn">
                            <asp:Label ID="Label31" runat="server"></asp:Label>
                        </td>
                        <td class="RightColumn2">
                            <asp:Label ID="Label32" runat="server" Text=":دوره ارسالی"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="LeftColumn">&nbsp;</td>
                        <td class="RightColumn">&nbsp;</td>
                        <td class="LeftColumn">
                            <asp:Label ID="Label33" runat="server"></asp:Label>
                        </td>
                        <td class="RightColumn2">
                            <asp:Label ID="Label34" runat="server" Text=":نفر ساعت"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </asp:Panel>
    </div>

    <div>
     <dx:ASPxButton ID="ASPxButton2" runat="server" OnClick="ASPxButton2_Click" Text="ثبت نامه" Theme="SoftOrange" Width="150px" ValidationGroup="g4">
        </dx:ASPxButton>
     <asp:Label runat="server" Text="" ID="lblLetterResult"></asp:Label>   
    </div>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
    <div style="padding: 4px">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" HeaderText="نامه نگاری" ShowCollapseButton="true" Theme="SoftOrange" Visible="False">
            <HeaderStyle Font-Names="vazir" HorizontalAlign="Right" />
            <PanelCollection>
<dx:PanelContent runat="server">
    <div align="right">
        <table align="center" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td align="right">
                    <dx:ASPxTextBox ID="txtShenase" runat="server" Theme="SoftOrange" Width="250px">
                    </dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label24" runat="server" Text=":شناسه نامه"></asp:Label>
                </td>
                <td align="right">
                    <dx:ASPxTextBox ID="txtNumber" runat="server" Theme="SoftOrange" Width="250px">
                    </dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label25" runat="server" Text=":شماره نامه"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtShenase" Display="None" ErrorMessage="شناسه نامه خالی می باشد" ValidationGroup="g3"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label30" runat="server"></asp:Label>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label26" runat="server" Text=":مهلت"></asp:Label>
                </td>
                <td align="right">
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Content/images/icons/sync-icon.png" OnClick="ImageButton4_Click" ToolTip="محاسبه مهلت" />
                    <cc1:PersianCalendar   ID="PersianCalendar1" runat="server" Skin="win2k_cold_1" TabIndex="9"></cc1:PersianCalendar>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label27" runat="server" Text=":تاریخ نامه"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <dx:ASPxMemo ID="ASPxMemo1" runat="server" Height="71px" RightToLeft="True" Width="250px">
                    </dx:ASPxMemo>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label48" runat="server" Text=":توضیحات"></asp:Label>
                </td>
                <td align="right">
                    <telerik:RadUpload ID="RadUpload1" runat="server" ControlObjectsVisibility="RemoveButtons, AddButton" MaxFileInputsCount="10" Skin="Sunset" Width="250px">
                        <Localization Add="جدید" Clear="پاک کردن" Delete="حذف" Remove="حذف" Select="انتخاب فایل" />
                    </telerik:RadUpload>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label29" runat="server" Text=":ضمایم"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <div align="center" style="padding: 9px">
        <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="ثبت اطلاعات" Theme="SoftOrange" Width="150px" ValidationGroup="g3">
        </dx:ASPxButton>
        <asp:SqlDataSource ID="sourcePaper" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="INSERT INTO tbProjectPaper(paShenase, paNumber, paDate, paProject, paAct, paType, paBody, paEdare) VALUES (@paShenase, @paNumber, @paDate, @paProject, 1, 1002, @paBody, @paEdare)" SelectCommand="SELECT        paId, paShenase, paNumber, DimDate.PersianStr as paDate, paProject, paAct, paType, paBody, paEdare, paMainProjectId
FROM            tbProjectPaper  Left  Join DimDate On DimDate.GregorianDate = tbProjectPaper.paDate
WHERE        (paAct = 1) AND (paType = 1002) AND (paProject = @paProject)" DeleteCommand="UPDATE tbProjectPaper SET paAct = 0 WHERE (paId = @paId)">
            <DeleteParameters>
                <asp:Parameter Name="paId" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtShenase" Name="paShenase" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtNumber" Name="paNumber" PropertyName="Text" Type="String" />
                <asp:Parameter DbType="Date" DefaultValue="" Name="paDate" />
                <asp:Parameter DefaultValue="" Name="paProject" Type="Int32" />
                <asp:ControlParameter ControlID="ASPxMemo1" Name="paBody" PropertyName="Text" Type="String" />
                <asp:Parameter Name="paEdare" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="HiddenField2" Name="paProject" PropertyName="Value" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HiddenField ID="HiddenField2" runat="server" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" ValidationGroup="g3" />
        <asp:SqlDataSource ID="sourceVahed" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT infId, infTitle, infType FROM prInformation WHERE (infAct = 1) AND (infType = 1)"></asp:SqlDataSource>
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </div>
    <div>
        <dx:ASPxGridView ID="ASPxGridView4" runat="server" AutoGenerateColumns="False" DataSourceID="sourcePaper" EnableTheming="True" KeyFieldName="paId" RightToLeft="True" Theme="SoftOrange" Width="100%" Visible="False">
            <SettingsBehavior ConfirmDelete="True" />
            <SettingsCommandButton>
                <EditButton ButtonType="Image">
                    <Image IconID="edit_edit_16x16">
                    </Image>
                </EditButton>
                <DeleteButton ButtonType="Image">
                    <Image IconID="edit_delete_16x16">
                    </Image>
                </DeleteButton>
            </SettingsCommandButton>
            <SettingsText ConfirmDelete="آیا ردیف انتخابی حذف شود؟" />
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn Caption="شناسه نامه" FieldName="paShenase" ShowInCustomizationForm="True" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="شماره نامه" FieldName="paNumber" ShowInCustomizationForm="True" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn Caption="تاریخ" FieldName="paDate" ShowInCustomizationForm="True" VisibleIndex="3">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn Caption="توضیحات" FieldName="paBody" ShowInCustomizationForm="True" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="اداره" FieldName="paEdare" ShowInCustomizationForm="True" VisibleIndex="4">
                    <PropertiesComboBox DataSourceID="sourceVahed" TextField="infTitle" ValueField="infId">
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
            </Columns>
        </dx:ASPxGridView>
    </div>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
