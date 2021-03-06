<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PageEstelamStep4.aspx.cs" Inherits="NewMellat.Content.PageEstelamStep4" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" Font-Names="B Yekan" KeyFieldName="thId" OnCustomCallback="ASPxGridView1_CustomCallback" RightToLeft="True" Theme="SoftOrange" Width="100%">
            <SettingsPager PageSize="25">
            </SettingsPager>
            <Settings AutoFilterCondition="Contains" ShowFilterRow="True" />
            <SettingsBehavior AllowDragDrop="False" AllowSort="False" EnableRowHotTrack="True" />
            <SettingsCommandButton>
                <ClearFilterButton ButtonType="Image" RenderMode="Image">
                    <Image IconID="filter_clearfilter_16x16">
                    </Image>
                </ClearFilterButton>
            </SettingsCommandButton>
            <SettingsSearchPanel Visible="True" />
            <SettingsLoadingPanel Text="در حال اجرا ..." />
            <SettingsText EmptyDataRow="اطلاعات موجود نمی باشد" SearchPanelEditorNullText="جستجوی اطلاعات ..." />
            <Columns>
                <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn Caption="وضعیت الحاقیه" FieldName="IsElhaghieValue" VisibleIndex="21">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption=" عنوان" FieldName="prTitle" VisibleIndex="1">
                    <Settings AllowAutoFilter="True" AutoFilterCondition="Contains" />
                    <HeaderStyle Font-Bold="False" Font-Size="13px" ForeColor="#003366" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="شناسه نامه" FieldName="paShenase" VisibleIndex="15">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="تاریخ نامه" FieldName="PersianStr" VisibleIndex="16">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="مهلت پاسخ" FieldName="MohlatDate" VisibleIndex="17">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="واحد متولی" FieldName="vahed" VisibleIndex="18">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="ناظرفنی" FieldName="TechnicalSuvisor" VisibleIndex="19">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="پیمانکار" FieldName="peymankar" VisibleIndex="20">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="پاسخ" VisibleIndex="22">
                    <DataItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Content/images/icons/Actions-tab-new-icon.png" Target="_blank" NavigateUrl='<%# Eval("paId","~/content/PageAnswerEdarat2.aspx?id={0}") %>'></asp:HyperLink>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        CONVERT(nvarchar(MAX), tbProjects.prTitle) AS prTitle, tbTarhPishnehadi.thId, tbTarhPishnehadi.thProject, tbTarhPishnehadi.thYear, tbTarhPishnehadi.thIsElhaghie,case When tbTarhPishnehadi.thIsElhaghie = 1 Then N'الحاقیه' else N'پروپوزال'end IsElhaghieValue, tbProjects.prIsMohtava, tbProjects.irIsAnalyz, 
                         tbProjects.prIsEstelamMohtavayi, tbProjects.prEstelamIsSubmit, prInformation.infTitle AS vahed, prInformation_1.infTitle AS peymankar,prInformation_3.infTitle AS TechnicalSuvisor,prInformation_2.infTitle AS vahedEstelam, tbProjectPaper_1.paId, tbProjectPaper_1.paShenase, 
                         DimDate.PersianStr,DimDate_1.PersianStr AS MohlatDate
FROM            tbTarhPishnehadi INNER JOIN
                         tbProjects ON tbTarhPishnehadi.thProject = tbProjects.prId INNER JOIN
                         tbProjectPaper ON tbTarhPishnehadi.thId = tbProjectPaper.paProject INNER JOIN
                         tbNazar ON tbProjectPaper.paId = tbNazar.nzParent INNER JOIN
                         prInformation ON tbProjects.prVahed = prInformation.infId INNER JOIN
                         prInformation AS prInformation_1 ON tbProjects.prPeymankar = prInformation_1.infId INNER JOIN
						 prInformation AS prInformation_2 ON tbProjectPaper.paEdare = prInformation_2.infId INNER JOIN
                         tbProjectPaper AS tbProjectPaper_1 ON tbNazar.nzId = tbProjectPaper_1.paProject LEFT OUTER JOIN
                        prInformation AS prInformation_3 ON tbProjects.TechnicalSuvisor = prInformation_3.infId LEFT OUTER JOIN
						 tbNazar as tbNazar_1 ON tbProjectPaper_1.paId = tbNazar_1.nzParent LEFT OUTER JOIN
                         DimDate ON tbProjectPaper_1.paDate = DimDate.GregorianDate LEFT OUTER JOIN
                         DimDate AS DimDate_1 ON DATEADD(day, 7, tbProjectPaper_1.paDate) = DimDate_1.GregorianDate
WHERE      prProjectStatus=N'در حال اجرا' and      (tbTarhPishnehadi.thAct = 1) AND (tbProjects.prIsMohtava = 0) AND (tbProjects.prEstelamIsSubmit = 1) AND (tbTarhPishnehadi.thIsCancle = 0) AND (tbProjectPaper.paAct = 1) AND (tbProjectPaper.paType = 8) AND 
                         (tbNazar.nzAct = 1) AND (tbNazar.nzType = 10) AND (tbProjectPaper_1.paType = 50) AND (tbProjectPaper_1.paAct = 1)
						 And (tbNazar_1.nzId is null)   and ((prVahed IN (SELECT prProject  FROM tbAdminProjects WHERE (prType = 3)  AND (prCode = @prCode)  )) 
		OR(TechnicalSuvisor IN (SELECT prProject  FROM tbAdminProjects  WHERE (prType = 3) AND (prCode = @prCode) ))) 
AND (prPeymankar IN (SELECT prProject FROM tbAdminProjects AS tbAdminProjects_1 WHERE (prType = 1)  AND (prCode = @prCode) )) "><SelectParameters>
                <asp:Parameter Name="prCode" />
            </SelectParameters></asp:SqlDataSource>
    </div>
    <div>
    </div>
   <div align="center" style="padding: 5px">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Content/images/icons/Excel-icon.png" OnClick="ImageButton1_Click" />
        <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" FileName="پاسخ داده نشده" GridViewID="ASPxGridView1">
        </dx:ASPxGridViewExporter>
        </div>
</asp:Content>
