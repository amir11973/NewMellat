﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageAttach.aspx.cs" Inherits="NewMellat.Content.PageAttach" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="LeftColumn">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label1" runat="server" Text=":انتخاب فایل"></asp:Label>
                    </td>
                    <td align="right" width="200">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" RightToLeft="True" Theme="SoftOrange" Width="170px">
                        </dx:ASPxTextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label2" runat="server" Text=":عنوان فایل"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div align="center" style="padding: 8px">
            <dx:ASPxButton ID="ASPxButton1" runat="server" Font-Names="B Yekan" Font-Size="13px" OnClick="ASPxButton1_Click" Text="ثبت فایل جدید" Theme="SoftOrange" Width="150px">
            </dx:ASPxButton>
        </div>
    <div>
    
        <asp:SqlDataSource ID="sourceFiles" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT fiId, fiAct, fiData, fiDate, fiParent, fiType, fiTitle FROM tbFiles WHERE (fiAct = 1) AND (fiParent = @fiParent) and fiType =@fiType" DeleteCommand="DELETE FROM tbFiles WHERE (fiId = @fiId)" InsertCommand="INSERT INTO tbFiles(fiAct, fiData, fiDate, fiParent, fiType, fiTitle, fiExt) VALUES (1, @fiData, GetDate(), @fiParent, @fiType, @fiTitle, @fiExt)">
            <DeleteParameters>
                <asp:Parameter Name="fiId" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="FileUpload1" Name="fiData" PropertyName="FileBytes" />
                <asp:QueryStringParameter Name="fiParent" QueryStringField="Parent" />
                <asp:QueryStringParameter Name="fiType" QueryStringField="Type" />
                <asp:ControlParameter ControlID="ASPxTextBox1" Name="fiTitle" PropertyName="Text" />
                <asp:ControlParameter ControlID="FileUpload1" Name="fiExt" PropertyName="FileName" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="fiParent" QueryStringField="Parent" />
                <asp:QueryStringParameter Name="fiType" QueryStringField="Type" /> 
            </SelectParameters>
        </asp:SqlDataSource>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sourceFiles" EnableTheming="True" KeyFieldName="fiId" RightToLeft="True" Theme="SoftOrange" Width="100%" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared">
            <settingspager visible="False">
            </settingspager>
            <SettingsBehavior ConfirmDelete="True" />
            <SettingsCommandButton>
                <DeleteButton ButtonType="Image">
                    <Image Url="~/Content/images/icons/Close-2-icon.png">
                    </Image>
                </DeleteButton>
            </SettingsCommandButton>
            <SettingsText ConfirmDelete="آیا ردیف انتخابی حذف شود؟" EmptyDataRow="اطلاعات موجود نمی باشد" />
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="fiId" ReadOnly="True" VisibleIndex="1" Caption="کد سیستمی">
                    <editformsettings visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="fiDate" VisibleIndex="3" Caption="تاریخ ثبت">
                    <DataItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("fiDate") %>'></asp:Label>
                    </DataItemTemplate>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn Caption="دانلود فایل" ShowInCustomizationForm="True" VisibleIndex="4">
                    <DataItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Content/images/icons/attachment-icon24.png" Target="_blank"></asp:HyperLink>
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("fiId") %>' />
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="عنوان فایل" FieldName="fiTitle" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
      <dx:ASPxButton ID="ASPxButton2" runat="server" Font-Names="B Yekan" Font-Size="13px" OnClick="ASPxButton2_Click" Text="ایجاد سند چشم انداز کسب و کار" Theme="SoftOrange" Width="200px">
            </dx:ASPxButton>
    </div>
    <telerik:RadNotification ID="RadNotification1" runat="server" Animation="Fade" Font-Names="B Yekan" Font-Size="15px" Skin="Sunset">
    </telerik:RadNotification>
    </form>

    <script>
        var urlParams = new URLSearchParams(window.location.search);
        if (urlParams.get('Type') != 1)
            $('#ASPxButton2').hide();
        else
            $('#ASPxButton2').show();
    </script>
</body>
</html>
