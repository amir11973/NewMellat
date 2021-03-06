<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="NewMellat.Content.Dashboard" %>
<%@ Register assembly="DevExpress.XtraCharts.v16.2.Web, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dxchartsui" %>
<%@ Register assembly="DevExpress.XtraCharts.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="cc1" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Linear" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Circular" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.State" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Digital" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div align="right"></div>
    <div align="right"></div>
    <div align="right">
    <div align="center">
        <table align="center" cellpadding="3" cellspacing="9">
            <tr>
                <td>
                    <dxchartsui:WebChartControl ID="WebChartControl5" runat="server" CrosshairEnabled="True" DataSourceID="source1" Height="300px" Width="450px">
                        <diagramserializable>
                            <cc1:XYDiagram>
                                <axisx visibleinpanesserializable="-1">
                                </axisx>
                                <axisy visibleinpanesserializable="-1">
                                </axisy>
                            </cc1:XYDiagram>
                        </diagramserializable>
                        <legend visibility="False"></legend>
                        <seriesserializable>
                            <cc1:Series ArgumentDataMember="infTitle" LabelsVisibility="True" Name="Series 1" ValueDataMembersSerializable="counts">
                                <viewserializable>
                                    <cc1:SideBySideBarSeriesView ColorEach="True">
                                        <border visibility="True" />
                                        <fillstyle fillmode="Gradient">
                                        </fillstyle>
                                    </cc1:SideBySideBarSeriesView>
                                </viewserializable>
                            </cc1:Series>
                        </seriesserializable>
                        <seriestemplate argumentdatamember="infTitle" valuedatamembersserializable="counts">
                        </seriestemplate>
                        <titles>
                            <cc1:ChartTitle Font="Tahoma, 13px" Text="آمار تعداد قراردادها در شرکت ها در سال 94" />
                        </titles>
                    </dxchartsui:WebChartControl>
                    <asp:SqlDataSource ID="source1" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT       count(prInformation.infTitle) as counts,prInformation.infTitle
FROM            tbGharardad INNER JOIN
                         tbProjects ON tbGharardad.ghProject = tbProjects.prId INNER JOIN
                         prInformation ON tbProjects.prPeymankar = prInformation.infId
WHERE        (tbGharardad.ghAct = 1) AND (tbGharardad.ghCode IS NOT NULL) and ghCode like '94%'
group by prInformation.infTitle

"></asp:SqlDataSource>
                </td>
                <td>
                    <dxchartsui:WebChartControl ID="WebChartControl2" runat="server" CrosshairEnabled="True" DataSourceID="source2" Height="300px" PaletteBaseColorNumber="6" RightToLeft="True" Width="450px">
                        <diagramserializable>
                            <cc1:XYDiagram>
                                <axisx visibleinpanesserializable="-1">
                                </axisx>
                                <axisy visibleinpanesserializable="-1">
                                </axisy>
                            </cc1:XYDiagram>
                        </diagramserializable>
                        <seriesserializable>
                            <cc1:Series ArgumentDataMember="Peymankar" LabelsVisibility="True" Name="Series 1" ShowInLegend="False" ValueDataMembersSerializable="counts">
                                <viewserializable>
                                    <cc1:SideBySideBarSeriesView ColorEach="True">
                                    </cc1:SideBySideBarSeriesView>
                                </viewserializable>
                            </cc1:Series>
                        </seriesserializable>
                        <titles>
                            <cc1:ChartTitle Font="Tahoma, 12px" Text="تعداد پروپوزالهای ارائه شده شرکت ها" />
                        </titles>
                    </dxchartsui:WebChartControl>
                    <asp:SqlDataSource ID="source2" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        count(prId) as counts, (select top 1 prInformation.infTitle from prInformation where prInformation.infId= prPeymankar) as Peymankar
FROM            tbProjects
where prAct=1
group by prPeymankar"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </div>
</div>
    <div>
</div>

<div align="center">
    <div align="center">
        <table align="center" cellpadding="3" cellspacing="9">
            <tr>
                <td>
                    <dxchartsui:WebChartControl ID="WebChartControl3" runat="server" CrosshairEnabled="True" DataSourceID="source3" Height="300px" PaletteName="Red Orange" RightToLeft="True" Width="450px">
                        <diagramserializable>
                            <cc1:XYDiagram>
                                <axisx visibleinpanesserializable="-1">
                                </axisx>
                                <axisy visibleinpanesserializable="-1">
                                </axisy>
                            </cc1:XYDiagram>
                        </diagramserializable>
                        <seriesserializable>
                            <cc1:Series ArgumentDataMember="olaviat" LabelsVisibility="True" Name="Series 1" ShowInLegend="False" ValueDataMembersSerializable="counts">
                                <viewserializable>
                                    <cc1:SideBySideBarSeriesView ColorEach="True">
                                    </cc1:SideBySideBarSeriesView>
                                </viewserializable>
                            </cc1:Series>
                        </seriesserializable>
                    </dxchartsui:WebChartControl>
                    <asp:SqlDataSource ID="source3" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        count(prId) as counts, (select top 1 prInformation.infTitle from prInformation where prInformation.infId= prOlaviat) as olaviat
FROM            tbProjects
where prAct=1
group by prOlaviat"></asp:SqlDataSource>
                </td>
                <td>
                    <dxchartsui:WebChartControl ID="WebChartControl4" runat="server" CrosshairEnabled="True" DataSourceID="source4" Height="300px" PaletteName="Slipstream" RightToLeft="True" Width="450px">
                        <diagramserializable>
                            <cc1:XYDiagram>
                                <axisx visibleinpanesserializable="-1">
                                </axisx>
                                <axisy visibleinpanesserializable="-1">
                                </axisy>
                            </cc1:XYDiagram>
                        </diagramserializable>
                        <seriesserializable>
                            <cc1:Series ArgumentDataMember="sanad" LabelsVisibility="True" Name="Series 1" ShowInLegend="False" ValueDataMembersSerializable="counts">
                                <viewserializable>
                                    <cc1:SideBySideBarSeriesView ColorEach="True">
                                    </cc1:SideBySideBarSeriesView>
                                </viewserializable>
                            </cc1:Series>
                        </seriesserializable>
                        <seriestemplate argumentdatamember="sanad" valuedatamembersserializable="counts">
                        </seriestemplate>
                        <titles>
                            <cc1:ChartTitle Font="Tahoma, 12px" Text="نمودار آماری تعداد پروژه ها بر اساس نوع سند" />
                        </titles>
                    </dxchartsui:WebChartControl>
                    <asp:SqlDataSource ID="source4" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        count(prId) as counts, (select top 1 prInformation.infTitle from prInformation where prInformation.infId= prSanadType) as sanad
FROM            tbProjects
where prAct=1
group by prSanadType"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </div>
</div>
<div>
</div>
</asp:Content>
