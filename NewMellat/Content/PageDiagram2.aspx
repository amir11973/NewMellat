<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageDiagram2.aspx.cs" Inherits="NewMellat.Content.PageDiagram2" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .KadrQuick
{
            border: 1px solid #FFBA8C;
            background-color: #FFFFFF;
            padding: 5px;
            border-top-right-radius: 6px;
            border-bottom-right-radius: 6px;
            border-top-left-radius: 6px;
            border-bottom-left-radius: 6px;
            text-decoration: none;
            font-family: "b yekan";
            font-size: 13px;
        }
        .WidhtCell {
            padding: 2px;
            height: 50px;
            text-align: center;
        }
        .left {
            font-family: b yekan;
            font-size: 12px;
            color: #663300;
            width: 200px;
            text-align: right;
            padding-right: 1px;
            font-weight: bold;
        }
        .right {
            font-family: "b yekan";
            font-size: 12px;
            color: #663300;
            width: 100px;
            text-align: right;
        }
        .KadrQuick2 {
            border: 1px solid #663300;
            background-color: #FFFFFF;
            padding: 5px;
            border-top-right-radius: 6px;
            border-bottom-right-radius: 6px;
            border-top-left-radius: 6px;
            border-bottom-left-radius: 6px;
            text-decoration: none;
            font-family: "b yekan";
            font-size: 13px;
        }
        .auto-style1 {
            font-family: tahoma;
            font-size: 12px;
            color: #663300;
            width: 200px;
            text-align: right;
            padding-right: 1px;
            height: 36px;
        }
        .auto-style2 {
            font-family: "b yekan";
            font-size: 12px;
            color: #663300;
            width: 100px;
            text-align: right;
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <div align="center">
            <table align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="WidhtCell">
                        <asp:Image ID="img1" runat="server" ImageUrl="~/Content/images/icons/Button-Blank-Gray-icon24.png" />
                    </td>
                    <td class="WidhtCell">
                        <asp:SqlDataSource ID="source1" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        TOP (1) tbSooratHesab.ProjectGharardad, tbSooratHesab.ProjectName, tbSooratHesab.Nazer1, tbSooratHesab.Nazer2, tbSooratHesab.DoreErsali, tbSooratHesab.Price, tbSooratHesab.id, 
                         tbProjectPaper.paShenase, paDate, tbProjectPaper.paType
FROM            tbSooratHesab INNER JOIN
                         tbSooratPishNevis ON tbSooratHesab.id = tbSooratPishNevis.pishProject INNER JOIN
                         tbProjectPaper ON tbSooratPishNevis.pishId = tbProjectPaper.paProject
WHERE        (tbProjectPaper.paType = 1001) and (id = @ProjectGharardad)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="ProjectGharardad" QueryStringField="project" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="WidhtCell">
                        <asp:Image ID="img2" runat="server" ImageUrl="~/Content/images/icons/Button-Blank-Gray-icon24.png" />
                    </td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell">
                        <asp:Image ID="img3" runat="server" ImageUrl="~/Content/images/icons/Button-Blank-Gray-icon24.png" />
                    </td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell">
                        <asp:Image ID="img4" runat="server" ImageUrl="~/Content/images/icons/Button-Blank-Gray-icon24.png" />
                    </td>
                </tr>
                <tr>
                    <td class="WidhtCell">
                        <div class="KadrQuick">
                        <asp:Label ID="Label1" runat="server" Text="ثبت پیش نویس"></asp:Label>
                        </div>
                    </td>
                    <td class="WidhtCell">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Content/images/icons/Arrow-OutRight-icon.png" />
                    </td>
                    <td class="WidhtCell">
                        <div class="KadrQuick">
                        <asp:Label ID="Label10" runat="server" Text="استعلام "></asp:Label>
                        </div>
                    </td>
                    <td class="WidhtCell">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Content/images/icons/Arrow-OutRight-icon.png" />
                    </td>
                    <td class="WidhtCell">
                        <div class="KadrQuick">
                        <asp:Label ID="Label11" runat="server" Text="پیگیری"></asp:Label>
                        </div>
                    </td>
                    <td class="WidhtCell">
                        <asp:Image ID="Image12" runat="server" ImageUrl="~/Content/images/icons/Arrow-OutRight-icon.png" />
                    </td>
                    <td class="WidhtCell">
                        <div class="KadrQuick">
                        <asp:Label ID="Label12" runat="server" Text="پاسخ ناظرها"></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="WidhtCell" valign="top">
                        <div class="KadrQuick2">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" BorderWidth="0px" DataKeyNames="id" DataSourceID="source1" GridLines="None" OnDataBound="GridView1_DataBound" PageSize="1" ShowHeader="False">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div align="center">
                                            <table align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("DoreErsali") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label2" runat="server" Text=":دوره ارسالی"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label3" runat="server" Text=":مبلغ به ریال"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("paShenase") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label4" runat="server" Text=":شناسه"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("paDate") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label5" runat="server" Text=":تاریخ"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerSettings Visible="False" />
                        </asp:GridView>
                        </div>
                    </td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell" valign="top">
                        <div class="KadrQuick2">
                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" BorderWidth="0px" DataKeyNames="id" DataSourceID="Source2" GridLines="None" PageSize="1" ShowHeader="False" ShowHeaderWhenEmpty="True" OnDataBound="GridView2_DataBound">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div align="center">
                                            <table align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Nazer1") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label2" runat="server" Text=":ناظر1"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Nazer2") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label3" runat="server" Text=":ناظر2"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("paShenase") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label4" runat="server" Text=":شناسه استعلام"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("paDate") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label5" runat="server" Text=":تاریخ استعلام"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerSettings Visible="False" />
                        </asp:GridView>
                            <asp:SqlDataSource ID="Source2" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT TOP (1) tbSooratHesab.ProjectGharardad, tbSooratHesab.ProjectName, tbSooratHesab.Nazer1, tbSooratHesab.Nazer2, tbSooratHesab.DoreErsali, tbSooratHesab.Price, tbSooratHesab.id, tbProjectPaper.paShenase, paDate, tbProjectPaper.paType FROM tbSooratHesab INNER JOIN tbProjectPaper ON tbSooratHesab.id = tbProjectPaper.paProject WHERE (id = @ProjectGharardad) AND (tbProjectPaper.paType = 1002)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="ProjectGharardad" QueryStringField="project" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell" valign="top">
                        <div class="KadrQuick2">
                        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" BorderWidth="0px" DataSourceID="source3" GridLines="None" PageSize="1" ShowHeader="False" OnDataBound="GridView3_DataBound">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div align="center">
                                            <table align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label28" runat="server" Text='<%# Eval("paShenase") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label29" runat="server" Text=":شناسه "></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label30" runat="server" Text='<%# Eval("paDate") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label31" runat="server" Text=":تاریخ"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerSettings Visible="False" />
                        </asp:GridView>
                            <asp:SqlDataSource ID="source3" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        TOP (1) tbSooratHesab.ProjectGharardad, tbSooratHesab.ProjectName, tbSooratHesab.Nazer1, tbSooratHesab.Nazer2, tbSooratHesab.DoreErsali, tbSooratHesab.Price, tbSooratHesab.id, 
                         tbProjectPaper.paShenase, paDate, tbProjectPaper.paType
FROM            tbSooratHesab INNER JOIN
                         tbProjectPaper ON tbSooratHesab.id = tbProjectPaper.paProject
WHERE        (tbProjectPaper.paType = 1050) and (id= @ProjectGharardad)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="ProjectGharardad" QueryStringField="project" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell" valign="top">
                        <div class="KadrQuick2">
                        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" BorderWidth="0px" DataSourceID="Source4" GridLines="None" PageSize="3" ShowHeader="False" OnDataBound="GridView4_DataBound">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div align="center">
                                            <table align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("paShenase") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label2" runat="server" Text=":شناسه نامه"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("paDate") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label3" runat="server" Text=":تاریخ نامه"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                            <asp:SqlDataSource ID="Source4" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT  top 1       tbSooratHesab.ProjectGharardad, tbSooratHesab.ProjectName, tbSooratHesab.Nazer1, tbSooratHesab.Nazer2, tbSooratHesab.DoreErsali, tbSooratHesab.Price, tbSooratHesab.id, 
                         tbProjectPaper.paShenase, paDate, tbProjectPaper.paType
FROM            tbSooratHesab INNER JOIN
                         tbProjectPaper ON tbSooratHesab.id = tbProjectPaper.paProject
WHERE        (tbProjectPaper.paType in  (1003,1004)) and (id = @ProjectGharardad)
order by paId desc">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="" Name="ProjectGharardad" QueryStringField="project" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="WidhtCell">
                        &nbsp;</td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell">
                        <asp:Image ID="img7" runat="server" ImageUrl="~/Content/images/icons/Button-Blank-Gray-icon24.png" />
                    </td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell">
                        <asp:Image ID="img6" runat="server" ImageUrl="~/Content/images/icons/Button-Blank-Gray-icon24.png" />
                    </td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell">
                        <asp:Image ID="img5" runat="server" ImageUrl="~/Content/images/icons/Button-Blank-Gray-icon24.png" />
                    </td>
                </tr>
                <tr>
                    <td class="WidhtCell">
                        &nbsp;</td>
                    <td class="WidhtCell">
                        &nbsp;</td>
                    <td class="WidhtCell">
                        <div class="KadrQuick">
                        <asp:Label ID="Label15" runat="server" Text="استعلام مجدد"></asp:Label>
                        </div>
                    </td>
                    <td class="WidhtCell">
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/Content/images/icons/Arrow-OutRight-icon2.png" />
                    </td>
                    <td class="WidhtCell">
                        <div class="KadrQuick">
                        <asp:Label ID="Label14" runat="server" Text="پاسخ شرکت"></asp:Label>
                        </div>
                    </td>
                    <td class="WidhtCell">
                        <asp:Image ID="Image13" runat="server" ImageUrl="~/Content/images/icons/Arrow-OutRight-icon2.png" />
                    </td>
                    <td class="WidhtCell">
                        <div class="KadrQuick">
                        <asp:Label ID="Label13" runat="server" Text="ارسال به شرکت"></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="WidhtCell" valign="top">
                        &nbsp;</td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell" valign="top">
                        <div class="KadrQuick2">
                        <asp:GridView ID="GridView7" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" BorderWidth="0px" GridLines="None" PageSize="3" ShowHeader="False" DataSourceID="Source10" OnDataBound="GridView7_DataBound">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div align="center">
                                            <div align="center">
                                                <table align="center" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td class="left">
                                                            <asp:Label ID="Label56" runat="server" Text='<%# Eval("paShenase") %>'></asp:Label>
                                                        </td>
                                                        <td class="right">
                                                            <asp:Label ID="Label57" runat="server" Text=":شناسه"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="left">
                                                            <asp:Label ID="Label58" runat="server" Text='<%# Eval("paDate") %>'></asp:Label>
                                                        </td>
                                                        <td class="right">
                                                            <asp:Label ID="Label59" runat="server" Text=":تاریخ"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                            <asp:SqlDataSource ID="Source10" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT   top 1     tbSooratHesab.ProjectGharardad, tbSooratHesab.ProjectName, tbSooratHesab.Nazer1, tbSooratHesab.Nazer2, tbSooratHesab.DoreErsali, tbSooratHesab.Price, tbSooratHesab.id, 
                         tbProjectPaper.paShenase, paDate, tbProjectPaper.paType
FROM            tbSooratHesab INNER JOIN
                         tbProjectPaper ON tbSooratHesab.id = tbProjectPaper.paProject
WHERE        (tbProjectPaper.paType = 1002) and (id = @ProjectGharardad)
order by paid desc">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="ProjectGharardad" QueryStringField="project" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell" valign="top">
                        <div class="KadrQuick2">
                        <asp:GridView ID="GridView6" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" BorderWidth="0px" DataSourceID="Source6" GridLines="None" PageSize="1" ShowHeader="False" OnDataBound="GridView6_DataBound">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div align="center">
                                            <table align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label56" runat="server" Text='<%# Eval("paShenase") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label57" runat="server" Text=":شناسه"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label58" runat="server" Text='<%# Eval("paDate") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label59" runat="server" Text=":تاریخ"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerSettings Visible="False" />
                        </asp:GridView>
                            <asp:SqlDataSource ID="Source6" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        TOP (1) tbSooratHesab.ProjectGharardad, tbSooratHesab.ProjectName, tbSooratHesab.Nazer1, tbSooratHesab.Nazer2, tbSooratHesab.DoreErsali, tbSooratHesab.Price, tbSooratHesab.id, 
                         tbProjectPaper.paShenase, paDate, tbProjectPaper.paType
FROM            tbSooratHesab INNER JOIN
                         tbSooratPishNevis ON tbSooratHesab.id = tbSooratPishNevis.pishProject INNER JOIN
                         tbProjectPaper ON tbSooratPishNevis.pishId = tbProjectPaper.paProject
WHERE        (tbProjectPaper.paType = 1006) and (id = @ProjectGharardad)
order by paId desc">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="ProjectGharardad" QueryStringField="project" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell" valign="top">
                        <div class="KadrQuick2">
                        <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" BorderWidth="0px" DataSourceID="Source5" GridLines="None" PageSize="1" ShowHeader="False" OnDataBound="GridView5_DataBound">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div align="center">
                                            <table align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label48" runat="server" Text='<%# Eval("paShenase") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label49" runat="server" Text=":شناسه"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label50" runat="server" Text='<%# Eval("paDate") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label51" runat="server" Text=":تاریخ"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerSettings Visible="False" />
                        </asp:GridView>
                            <asp:SqlDataSource ID="Source5" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        TOP (1) tbSooratHesab.ProjectGharardad, tbSooratHesab.ProjectName, tbSooratHesab.Nazer1, tbSooratHesab.Nazer2, tbSooratHesab.DoreErsali, tbSooratHesab.Price, tbSooratHesab.id, 
                         tbProjectPaper.paShenase, paDate, tbProjectPaper.paType
FROM            tbSooratHesab INNER JOIN
                         tbSooratPishNevis ON tbSooratHesab.id = tbSooratPishNevis.pishProject INNER JOIN
                         tbProjectPaper ON tbSooratPishNevis.pishId = tbProjectPaper.paProject
WHERE        (tbProjectPaper.paType = 1005) and (id = @ProjectGharardad)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="ProjectGharardad" QueryStringField="project" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="WidhtCell" valign="top">
                        <asp:Image ID="img11" runat="server" ImageUrl="~/Content/images/icons/Button-Blank-Gray-icon24.png" />
                    </td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell" valign="top">
                        <asp:Image ID="img10" runat="server" ImageUrl="~/Content/images/icons/Button-Blank-Gray-icon24.png" />
                    </td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell" valign="top">
                        <asp:Image ID="img9" runat="server" ImageUrl="~/Content/images/icons/Button-Blank-Gray-icon24.png" />
                    </td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell" valign="top">
                        <asp:Image ID="img8" runat="server" ImageUrl="~/Content/images/icons/Button-Blank-Gray-icon24.png" />
                    </td>
                </tr>
                <tr>
                    <td class="WidhtCell" valign="top">
                        <div class="KadrQuick">
                        <asp:Label ID="Label83" runat="server" Text="پرداخت"></asp:Label>
                        </div>
                    </td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell" valign="top">
                        <div class="KadrQuick">
                        <asp:Label ID="Label68" runat="server" Text="ارسال به مالی"></asp:Label>
                        </div>
                    </td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell" valign="top">
                        <div class="KadrQuick">
                        <asp:Label ID="Label69" runat="server" Text="ثبت شماره صورتحساب"></asp:Label>
                        </div>
                    </td>
                    <td class="WidhtCell">&nbsp;</td>
                    <td class="WidhtCell" valign="top">
                        <div class="KadrQuick">
                        <asp:Label ID="Label70" runat="server" Text="ارسال به تدارکات"></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="WidhtCell" valign="top">
                        <div class="KadrQuick2">
                        <asp:GridView ID="GridView10" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" BorderWidth="0px"  DataSourceID="Source9" GridLines="None" PageSize="1" ShowHeader="False" OnDataBound="GridView10_DataBound">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div align="center">
                                            <table align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label79" runat="server" Text='<%# Eval("paShenase") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label80" runat="server" Text=":شناسه"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label81" runat="server" Text='<%# Eval("paDate") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label82" runat="server" Text=":تاریخ"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerSettings Visible="False" />
                        </asp:GridView>
                            <asp:SqlDataSource ID="Source9" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        TOP (1) tbSooratHesab.ProjectGharardad, tbSooratHesab.ProjectName, tbSooratHesab.Nazer1, tbSooratHesab.Nazer2, tbSooratHesab.DoreErsali, tbSooratHesab.Price, tbSooratHesab.id, 
                         tbProjectPaper.paShenase, paDate, tbProjectPaper.paType
FROM            tbSooratHesab INNER JOIN
                         tbProjectPaper ON tbSooratHesab.id = tbProjectPaper.paProject
WHERE        (tbProjectPaper.paType = 1015) AND (id = @ProjectGharardad)
ORDER BY tbProjectPaper.paId DESC">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="ProjectGharardad" QueryStringField="project" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </td>
                    <td class="WidhtCell">
                        <asp:Image ID="Image16" runat="server" ImageUrl="~/Content/images/icons/Arrow-OutRight-icon2.png" />
                    </td>
                    <td class="WidhtCell" valign="top">
                        <div class="KadrQuick2">
                        <asp:GridView ID="GridView9" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" BorderWidth="0px"   DataSourceID="Source8" GridLines="None" PageSize="1" ShowHeader="False" OnDataBound="GridView9_DataBound">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div align="center">
                                            <table align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label75" runat="server" Text='<%# Eval("paShenase") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label76" runat="server" Text=":شناسه"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label77" runat="server" Text='<%# Eval("paDate") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label78" runat="server" Text=":تاریخ"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerSettings Visible="False" />
                        </asp:GridView>
                            <asp:SqlDataSource ID="Source8" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        TOP (1) tbSooratHesab.ProjectGharardad, tbSooratHesab.ProjectName, tbSooratHesab.Nazer1, tbSooratHesab.Nazer2, tbSooratHesab.DoreErsali, tbSooratHesab.Price, tbSooratHesab.id, 
                         tbProjectPaper.paShenase, paDate, tbProjectPaper.paType
FROM            tbSooratHesab INNER JOIN
                         tbProjectPaper ON tbSooratHesab.id = tbProjectPaper.paProject
WHERE        (tbProjectPaper.paType = 1008) AND (id = @ProjectGharardad)
ORDER BY tbProjectPaper.paId DESC">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="ProjectGharardad" QueryStringField="project" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </td>
                    <td class="WidhtCell">
                        <asp:Image ID="Image15" runat="server" ImageUrl="~/Content/images/icons/Arrow-OutRight-icon2.png" />
                    </td>
                    <td class="WidhtCell" valign="top">
                           <div class="KadrQuick2">
                        <asp:GridView ID="GridView11" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" BorderWidth="0px"  DataSourceID="Source11" GridLines="None" PageSize="1" ShowHeader="False" OnDataBound="GridView11_DataBound">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div align="center">
                                            <table align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label84" runat="server" Text='<%# Eval("pishSooratHesab") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label85" runat="server" Text=":شماره صورتحساب"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label86" runat="server" Text='<%# Eval("pishPriceArzeshAfzoode") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label87" runat="server" Text=":مبلغ باحتساب ارزش افزوده"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerSettings Visible="False" />
                        </asp:GridView>
                            <asp:SqlDataSource ID="Source11" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand=" SELECT     top 1   tbSooratPishNevis.pishSooratHesab, tbSooratPishNevis.pishFinalPrice, tbSooratPishNevis.pishPriceArzeshAfzoode, tbSooratHesab.ProjectGharardad
FROM            tbSooratHesab INNER JOIN
                         tbSooratPishNevis ON tbSooratHesab.id = tbSooratPishNevis.pishProject
WHERE    pishIsSabt=1   and (id = @ProjectGharardad)
 ">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="ProjectGharardad" QueryStringField="project" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                                 </div>
                    </td>
                    <td class="WidhtCell">
                        <asp:Image ID="Image14" runat="server" ImageUrl="~/Content/images/icons/Arrow-OutRight-icon2.png" />
                    </td>
                    <td class="WidhtCell" valign="top">
                        <div class="KadrQuick2">
                        <asp:GridView ID="GridView8" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" BorderWidth="0px"   DataSourceID="Source7" GridLines="None" PageSize="1" ShowHeader="False" OnDataBound="GridView8_DataBound">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div align="center">
                                            <table align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label71" runat="server" Text='<%# Eval("paShenase") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label72" runat="server" Text=":شناسه"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <asp:Label ID="Label73" runat="server" Text='<%# Eval("paDate") %>'></asp:Label>
                                                    </td>
                                                    <td class="right">
                                                        <asp:Label ID="Label74" runat="server" Text=":تاریخ"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerSettings Visible="False" />
                        </asp:GridView>
                            <asp:SqlDataSource ID="Source7" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        TOP (1) tbSooratHesab.ProjectGharardad, tbSooratHesab.ProjectName, tbSooratHesab.Nazer1, tbSooratHesab.Nazer2, tbSooratHesab.DoreErsali, tbSooratHesab.Price, tbSooratHesab.id, 
                         tbProjectPaper.paShenase, paDate, tbProjectPaper.paType
FROM            tbSooratHesab INNER JOIN
                         tbSooratPishNevis ON tbSooratHesab.id = tbSooratPishNevis.pishProject INNER JOIN
                         tbProjectPaper ON tbSooratPishNevis.pishId = tbProjectPaper.paProject
WHERE        (tbProjectPaper.paType = 1007) and (id = @ProjectGharardad)
order by paId desc">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="ProjectGharardad" QueryStringField="project" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </td>
                </tr>
                </table>
        </div>
    
    </div>
    </form>
</body>
</html>
