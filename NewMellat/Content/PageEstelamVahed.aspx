<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PageEstelamVahed.aspx.cs" Inherits="NewMellat.Content.PageEstelamVahed" %>
<%@ Register assembly="LavaControl" namespace="LavaControl" tagprefix="cc1" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type="text/javascript">

            function RefreshParentPage()//function in parent page
            {
               // document.location.reload();
            }
            


            function loadDoc(parent) {

                var oWnd = radopen("PageAttach.aspx?Parent=" + parent + "&Type=2", "RadWindow1");
                oWnd.setSize(910, 500);
                oWnd.Center();
            }


            function loadDoc2(parent) {

                var oWnd = radopen("Pagepages.aspx?Project=" + parent + "&Type=2", "RadWindow2");
                oWnd.setSize(910, 500);
                oWnd.Center();
            }


            function loadDoc3(parent) {

                var oWnd = radopen("PageEstelamVahedNazar.aspx?id=" + parent , "RadWindow3");
                oWnd.setSize(910, 500);
                oWnd.Center();
            }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <div style="height: 220px; padding-top: 9px;"  class="box box-danger" dir="ltr">
    <table align="right" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="right" width="36%">
                <asp:SqlDataSource ID="sourceVahed" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT prInformation.infId, prInformation.infTitle, tbAdminProjects.prProject, tbAdminProjects.prCode, tbAdminProjects.prType, tbAdminProjects.prId, prInformation.infType FROM prInformation INNER JOIN tbAdminProjects ON prInformation.infId = tbAdminProjects.prProject WHERE (prInformation.infAct = 1) 
AND (tbAdminProjects.prCode = @prCode) and tbAdminProjects.prType = 2 AND (prInformation.infType = 1)">
                    <SelectParameters>
                        <asp:Parameter Name="prCode" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <dx:ASPxTokenBox ID="tokenVahed" runat="server" AllowMouseWheel="True" AnimationType="Fade" DataSourceID="sourceVahed" RightToLeft="True" Theme="SoftOrange" Tokens="" TextField="infTitle" ValueField="infId" Font-Names="vazir" Font-Size="13px" Height="25px" Width="95%" TabIndex="2">
                    <Border BorderColor="#F1DF9E" />
                </dx:ASPxTokenBox>
            </td>
            <td width="14%">
                <asp:Label ID="Label2" runat="server" Text=":واحد متولی"></asp:Label>
            </td>
            <td align="right" width="36%">
                <dx:ASPxComboBox ID="drpProjects" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" DataSourceID="sourceProjects3" RightToLeft="True" TextField="prTitle" ValueField="prId" Font-Names="vazir" Font-Size="13px" OnDataBound="drpProjects_DataBound" TabIndex="1">
                    <Border BorderColor="#F8DF8E" />
                </dx:ASPxComboBox>
                <asp:SqlDataSource ID="sourceProjects" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="spSelectProjects" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sourceProjects2" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT prId, prTitle FROM tbProjects WHERE (prAct = 1) AND (prSanadType in(179,414))"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sourceProjects3" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT prId, prTitle, prStatus, prSanadType FROM tbProjects left outer join tbEstelamVahed ON tbEstelamVahed.esProject = tbProjects.prId WHERE (prAct = 1) and tbEstelamVahed.esId is null AND (prSanadType in(179,414)) AND (prISEstelam = 0) and ((prVahed IN (SELECT prProject  FROM tbAdminProjects WHERE (prType = 3)  AND (prCode = @prCode)  )) 
		OR(TechnicalSuvisor IN (SELECT prProject  FROM tbAdminProjects  WHERE (prType = 3) AND (prCode = @prCode) ))) 
AND (prPeymankar IN (SELECT prProject FROM tbAdminProjects  WHERE (prType = 1)  AND (prCode = @prCode) ))  ">
                     <SelectParameters>
                <asp:Parameter Name="prCode" />
            </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td width="14%">
                <asp:Label ID="Label1" runat="server" Text=":نام پروژه"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
            </td>
            <td class="RightColumn">
                <asp:Label ID="Label8" runat="server" Text=":شماره نامه"></asp:Label>
            </td>
            <td align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtShenase" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
            </td>
            <td class="RightColumn">
                <asp:Label ID="Label7" runat="server" Text=":شناسه نامه"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="LeftColumn">&nbsp;</td>
            <td class="RightColumn">&nbsp;</td>
            <td align="right" style="padding-top: 4px">
                <cc1:PersianCalendar ID="PersianCalendar1" runat="server" Width="89%" TabIndex="5"></cc1:PersianCalendar>
            </td>
            <td class="RightColumn">
                <asp:Label ID="Label9" runat="server" Text=":تاریخ"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="3" style="padding-top: 4px">
                    <asp:TextBox ID="ASPxMemo1" runat="server" CssClass="form-control" Width="98%"></asp:TextBox>
                </td>
            <td class="RightColumn">
                <asp:Label ID="Label11" runat="server" Text=":توضیحات"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="LeftColumn">&nbsp;</td>
            <td class="RightColumn">&nbsp;</td>
            <td style="padding-top: 4px" align="right">
                <telerik:RadUpload ID="RadUpload1" Runat="server" ControlObjectsVisibility="RemoveButtons, AddButton" MaxFileInputsCount="10" Width="95%" Skin="Sunset">
                    <Localization Add="جدید" Clear="پاک کردن" Delete="حذف" Remove="حذف" Select="انتخاب فایل" />
                </telerik:RadUpload>
            </td>
            <td class="RightColumn">
                <asp:Label ID="Label10" runat="server" Text=":ضمایم"></asp:Label>
            </td>
        </tr>
    </table>
</div>
    </div>
    <div align="center" style="padding: 7px" class="box box-success">
        <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="ثبت اطلاعات" Theme="SoftOrange" Font-Names="vazir" Font-Size="13px" Width="150px" TabIndex="8">
        </dx:ASPxButton>
        <asp:SqlDataSource ID="sourcePaper" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="spInsertPaper" InsertCommandType="StoredProcedure" SelectCommand="SELECT TOP (1) infId FROM prInformation">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtShenase" Name="paShenase" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtNumber" Name="paNumber" PropertyName="Text" Type="String" />
                <asp:Parameter DbType="Date" DefaultValue="" Name="paDate" />
                <asp:ControlParameter ControlID="HiddenField1" DefaultValue="" Name="paProject" PropertyName="Value" Type="Int32" />
                <asp:Parameter Name="paType" Type="Int32" DefaultValue="2" />
                <asp:ControlParameter ControlID="ASPxMemo1" Name="paBody" PropertyName="Text" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    <telerik:RadNotification ID="RadNotification1" runat="server" Animation="Fade" Font-Names="vazir" Font-Size="15px" Skin="Sunset">
    </telerik:RadNotification>
                <asp:SqlDataSource ID="sourceVahed2" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="spSelectInfo" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:Parameter Name="infType" DefaultValue="1" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
    <asp:SqlDataSource ID="sourceFile" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="INSERT INTO tbFiles(fiAct, fiData, fiDate, fiParent, fiType, fiTitle, fiExt) VALUES (1, @fiData, @fiDate, @fiParent, 2, @fiTitle, @fiExt)" SelectCommand="SELECT TOP (1) fiId, fiAct, fiData, fiDate, fiParent, fiType FROM tbFiles">
        <InsertParameters>
            <asp:ControlParameter ControlID="FileUpload1" Name="fiData" PropertyName="FileBytes" />
            <asp:Parameter Name="fiDate" />
            <asp:ControlParameter ControlID="HiddenField1" DefaultValue="" Name="fiParent" PropertyName="Value" />
            <asp:ControlParameter ControlID="drpProjects" Name="fiTitle" PropertyName="Value" />
            <asp:ControlParameter ControlID="FileUpload1" Name="fiExt" PropertyName="FileName" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Names="vazir" Font-Size="15px" ForeColor="Red" ValidationGroup="g1" DisplayMode="List" />
    </div>
    <div class="box box-danger">
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" Theme="Office2010Silver" AutoGenerateColumns="False" DataSourceID="sourceEstelam" KeyFieldName="esId" RightToLeft="True" Width="100%" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" OnCommandButtonInitialize="ASPxGridView1_CommandButtonInitialize" OnRowCommand="ASPxGridView1_RowCommand" Font-Names="vazir">
            <Settings ShowFilterRow="True" ShowGroupPanel="True" />
            <SettingsBehavior ConfirmDelete="True" EnableRowHotTrack="True" />
            <SettingsCommandButton>
                <DeleteButton ButtonType="Image">
                    <Image Url="~/Content/images/icons/Close-2-icon.png">
                    </Image>
                </DeleteButton>
            </SettingsCommandButton>
            <SettingsSearchPanel Visible="True" />
            <SettingsLoadingPanel Text="در حال اجرا..." />
            <SettingsText ConfirmDelete="آیا ردیف انتخابی حذف شود؟" EmptyDataRow="اطلاعات موجود نمی باشد" GroupPanel="ستون مورد نظر جهت گروه بندی اطلاعات را وارد نمایید" SearchPanelEditorNullText="متن مورد جستجو را وارد نمایید" />
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn Caption="کد سیستمی" FieldName="esId" ReadOnly="True" VisibleIndex="1">
                    <Settings AutoFilterCondition="Contains" />
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="ضمایم" VisibleIndex="4">
                    <DataItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Content/images/icons/attachment-icon24.png" NavigateUrl='<%# Eval("esId","~/content/PageAttach.aspx?Parent={0}") %>' Target="_blank"></asp:HyperLink>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="نامه ها" VisibleIndex="5">
                    <DataItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Content/images/icons/Documents-icon24.png" NavigateUrl='<%# Eval("esId","~/content/PagePages.aspx?project={0}") %>' Target="_blank"></asp:HyperLink>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="اعلام نظر" VisibleIndex="6">
                    <DataItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Content/images/icons/mp3tag-icon.png" NavigateUrl='<%# Eval("esId","~/content/PageEstelamVahedNazar.aspx?id={0}") %>' Target="_blank"></asp:HyperLink>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="پروژه" FieldName="prTitle" VisibleIndex="2">
                    <Settings AutoFilterCondition="Contains" />
                    
                </dx:GridViewDataTextColumn>
               <dx:GridViewDataComboBoxColumn Caption="واحدهای متولی" FieldName="esVahed" VisibleIndex="3">
                    <propertiescombobox datasourceid="sourceVahed2" textfield="infTitle" valuefield="infId"></propertiescombobox>
                    <settings allowautofilter="False" autofiltercondition="Contains" />
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataTextColumn Caption="کد پروژه" FieldName="esProject" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn VisibleIndex="8">
                    <DataItemTemplate>
                        <asp:ImageButton ID="ImageButton3" runat="server" AlternateText="بازگشت به مرحله قبل" CommandArgument='<%# Eval("esId") %>' CommandName="bk" ImageUrl="~/Content/images/icons/refresh-icon.png" ToolTip="بازگشت به مرحله قبل" Enabled="False" />
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                  <dx:GridViewDataTextColumn Caption="ثبت نامه" VisibleIndex="50" >
                <DataItemTemplate>
                 <asp:ImageButton ID="ImageButtonLetter" runat="server" CommandName="letter" ImageUrl="~/Content/images/icons/letter.png" Width="42px"/>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
                 <dx:GridViewDataTextColumn ShowInCustomizationForm="False" VisibleIndex="77" Caption="vahed" FieldName="vahed" Visible="false">  </dx:GridViewDataTextColumn>
            </Columns>
            <Styles>
                <Header Font-Names="vazir" Font-Size="13px" HorizontalAlign="Center">
                </Header>
                <Row HorizontalAlign="Center" Font-Names="vazir">
                </Row>
            </Styles>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="sourceEstelam" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" DeleteCommand="UPDATE tbEstelamVahed SET esAct =0 WHERE (esId = @esId)" InsertCommand="INSERT INTO tbEstelamVahed(esProject, esAct, esVahed) VALUES (@esProject, 1, @esVahed)
SELECT @esId = SCOPE_IDENTITY()" OnInserted="sourceEstelam_Inserted" SelectCommand="
	SELECT        tbEstelamVahed.esId, prTitle, tbEstelamVahed.esProject, tbEstelamVahed.esAct, tbEstelamVahed.esVahed,prInformation.infTitle as vahed
FROM            tbEstelamVahed INNER JOIN
                         tbProjects ON tbEstelamVahed.esProject = tbProjects.prId
						 Left Outer Join prInformation On  tbProjects.prVahed = prInformation.infId
WHERE        (tbEstelamVahed.esAct = 1)
and prAct=1  and ((prVahed IN (SELECT prProject  FROM tbAdminProjects WHERE (prType = 3)  AND (prCode = @prCode)  )) 
		OR(TechnicalSuvisor IN (SELECT prProject  FROM tbAdminProjects  WHERE (prType = 3) AND (prCode = @prCode) ))) 
AND (prPeymankar IN (SELECT prProject FROM tbAdminProjects AS tbAdminProjects_1 WHERE (prType = 1)  AND (prCode = @prCode) )) 
ORDER BY tbEstelamVahed.esId DESC">
             <SelectParameters>
                <asp:Parameter Name="prCode" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="esId" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="drpProjects" Name="esProject" PropertyName="Value" />
                <asp:Parameter Name="esVahed" />
                <asp:Parameter Name="esId" />
            </InsertParameters>
        </asp:SqlDataSource>
        <telerik:RadWindowManager ID="RadWindowManager1" runat="server" Animation="Fade" Behaviors="Close" OnClientClose="RefreshParentPage" Skin="Sunset">
            <Windows>
                <telerik:RadWindow runat="server" NavigateUrl="RadWindow1" Animation="Fade" Behavior="Close" Behaviors="Close">
                </telerik:RadWindow>
                <telerik:RadWindow runat="server" NavigateUrl="RadWindow2" Animation="Fade" Behavior="Close" Behaviors="Close">
                </telerik:RadWindow>
                <telerik:RadWindow runat="server" NavigateUrl="RadWindow1">
                </telerik:RadWindow>
            </Windows>
        </telerik:RadWindowManager>
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </div>
</asp:Content>
