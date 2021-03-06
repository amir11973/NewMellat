<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageDt.aspx.cs" Inherits="NewMellat.Content.PageDt" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" Font-Names="B Yekan" KeyFieldName="inId" RightToLeft="True" Theme="SoftOrange" OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared">
            <Columns>
                <dx:GridViewDataTextColumn Caption=" واحد درخواست کننده" FieldName="inVahedName" VisibleIndex="0">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="نام و نام خانوادگی " FieldName="inName" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="شماره تماس" FieldName="inTell" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="عنوان پروژه" FieldName="inTitle" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="محدوده پروژه" FieldName="inMahdodeh" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="هدف پروژه" FieldName="inHadaf" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="تیم پیشنهادی پروژه" FieldName="inTeam" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="واحدهای فعال پروژه" FieldName="inVaheds" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="ذینفعان طرح" FieldName="inZinaf" VisibleIndex="8">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="بازه زمانی مورد انتظار " FieldName="inBAzeh" VisibleIndex="9">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="خلاصه خصوصیات " FieldName="inFeatures" VisibleIndex="10">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="تحلیل هزینه فایده" FieldName="inTahlil" VisibleIndex="11">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="ضمیمه" VisibleIndex="12">
                    <DataItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Content/images/icons/attachment-icon.png"></asp:HyperLink>
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("inId") %>' />
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT tbIndex1.* FROM tbIndex1 WHERE (inAct = 1) AND (inProject = @pr)">
            <SelectParameters>
                <asp:QueryStringParameter Name="pr" QueryStringField="pr" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    <div align="center">

        <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EnableTheming="True" Font-Names="B Yekan" KeyFieldName="inId" RightToLeft="True" Theme="SoftOrange" OnHtmlRowCreated="ASPxGridView2_HtmlRowCreated">
            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
            <Columns>
                <dx:GridViewDataTextColumn Caption=" واحد درخواست کننده" FieldName="inVahedName" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="نام و نام خانوادگی مسئول" FieldName="inName" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="شماره تماس" FieldName="inTell" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="نام پروژه" FieldName="inProjectName" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="اولویت" FieldName="inOlaviat" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="نوع درخواست" FieldName="inRequestType" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="شرح درخواست" FieldName="inRequestBody" VisibleIndex="8">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption=":آورد پروژه" FieldName="inAvardProject" VisibleIndex="9">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="شرح مساله" FieldName="inBody" VisibleIndex="10">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="راهکار پیشنهادی" FieldName="inRahkar" VisibleIndex="11">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="تخمین نفر - ساعت" FieldName="inTakhmin" VisibleIndex="12">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="برآورد هزینه" FieldName="inHazineh" VisibleIndex="13">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT tbIndex2.* FROM tbIndex2 WHERE (inAct = 1) AND (inProject = @pr)">
            <SelectParameters>
                <asp:QueryStringParameter Name="pr" QueryStringField="pr" />
            </SelectParameters>
        </asp:SqlDataSource>

        </div>

            <div align="center">

        <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EnableTheming="True" Font-Names="B Yekan" RightToLeft="True" Theme="SoftOrange" OnHtmlRowCreated="ASPxGridView3_HtmlRowCreated">
            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
            <Columns>
                <dx:GridViewDataTextColumn Caption="نام واحد درخواست کننده" FieldName="inVahedName" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="نام و نام خانوادگی شخص مسئول" FieldName="inName" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="برآورد هزینه" FieldName="inHazineh" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="نوع درخواست" FieldName="inRequestType" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="شرح" FieldName="inBody" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="نام شرکت ارایه کننده" FieldName="inCompany" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn Caption="تاریخ راه اندازی" FieldName="inDateStart" VisibleIndex="8">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn Caption="اطلاعات تکمیلی" FieldName="inTakmili" VisibleIndex="9">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="نیازمندی ها" FieldName="inNaizmandi" VisibleIndex="10">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="نتایج موفق حاصل از این درخواست" FieldName="inNatayeh" VisibleIndex="11">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT tbIndex3.* FROM tbIndex3 WHERE (inAct = 1) AND (inProject = @pr)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="pr" QueryStringField="pr" />
                    </SelectParameters>
                </asp:SqlDataSource>

        </div>
        <div align="center" style="border: 1px dashed #666666; padding: 8px; font-family: 'b yekan'; color: #800000;">
            <asp:Label ID="Label1" runat="server" Text="اطلاعات موجود نمی باشد"></asp:Label>
        </div>

    </form>
</body>
</html>
