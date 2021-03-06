<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportDiagram.aspx.cs" Inherits="NewMellat.Content.ReportDiagram" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>



<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Linear" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Circular" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.State" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Digital" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('images/Diagram2.png'); background-repeat: no-repeat; width: 2688px; height: 730px">
    
        <div align="center">
            <table align="left" cellpadding="0" cellspacing="0">
                <tr>
                    <td style="padding-top: 180px;" valign="middle" width="1000">
                        <div align="center">
                            <table align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td style="padding-right: 340px; padding-top: 20px;">
                                        <div align="center">
                                            <table align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td height="50">
                                                        <asp:HyperLink ID="HyperLink1" runat="server" Height="45px" ImageUrl="~/Content/images/bt.gif" Width="75px" NavigateUrl="~/Content/ReportKhobreganPending.aspx" Target="_blank" ToolTip="گزارش لیست انتظار خبرگان"></asp:HyperLink>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <dx:ASPxGaugeControl ID="g1" runat="server" BackColor="White" Height="30px" Value="00,000" Width="75px">
                                                            <Gauges>
                                                                <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:WhiteSmoke&quot;/&gt;" Bounds="0, 0, 75, 30" DigitCount="5" Name="Gauge0" Padding="20, 20, 20, 20" Text="00,000">
                                                                    <backgroundlayers>
                                                                        <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="259.8125, 99.9625" Name="digitalBackgroundLayerComponent7" ShapeType="Style7" TopLeft="20, 0" ZOrder="1000" />
                                                                    </backgroundlayers>
                                                                </dx:DigitalGauge>
                                                            </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                                                        </dx:ASPxGaugeControl>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td height="730" valign="top" width="550">
                        <div>
                            <div align="center">
                                <table align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td style="padding-top: 70px; padding-left: 375px;">
                                            <div align="center">
                                                <table align="center" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td height="50">
                                                            <asp:HyperLink ID="HyperLink2" runat="server" Height="45px" ImageUrl="~/Content/images/bt.gif" Width="75px" NavigateUrl="~/Content/ReportTadarokatPending.aspx" Target="_blank" ToolTip="گزارش منتظر تدارکات - آنالیز قیمت"></asp:HyperLink>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <dx:ASPxGaugeControl ID="g5" runat="server" BackColor="White" Height="30px" Value="00,000" Width="75px">
                                                                <Gauges>
                                                                    <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:WhiteSmoke&quot;/&gt;" Bounds="0, 0, 75, 30" DigitCount="5" Name="Gauge0" Padding="20, 20, 20, 20" Text="00,000">
                                                                        <backgroundlayers>
                                                                            <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="259.8125, 99.9625" Name="digitalBackgroundLayerComponent7" ShapeType="Style7" TopLeft="20, 0" ZOrder="1000" />
                                                                        </backgroundlayers>
                                                                    </dx:DigitalGauge>
                                                                </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                                                            </dx:ASPxGaugeControl>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div>
                            <div align="center">
                                <table align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td style="padding-right: 260px; padding-top: 70px;">
                                            <div align="center">
                                                <table align="center" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td height="35">
                                                            <asp:HyperLink ID="HyperLink3" runat="server" Height="38px" ImageUrl="~/Content/images/bt.gif" Width="75px" NavigateUrl="~/Content/ReportEstelamPending.aspx" Target="_blank" ToolTip="گزارش منتظر پاسخ استعلام"></asp:HyperLink>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <dx:ASPxGaugeControl ID="g2" runat="server" BackColor="White" Height="30px" Value="00,000" Width="75px">
                                                                <Gauges>
                                                                    <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:WhiteSmoke&quot;/&gt;" Bounds="0, 0, 75, 30" DigitCount="5" Name="Gauge0" Padding="20, 20, 20, 20" Text="00,000">
                                                                        <backgroundlayers>
                                                                            <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="259.8125, 99.9625" Name="digitalBackgroundLayerComponent7" ShapeType="Style7" TopLeft="20, 0" ZOrder="1000" />
                                                                        </backgroundlayers>
                                                                    </dx:DigitalGauge>
                                                                </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                                                            </dx:ASPxGaugeControl>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div>
                            <div align="center">
                                <table align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td style="padding-right: 110px; padding-top: 305px;">
                                            <div align="center">
                                                <table align="center" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td height="50">
                                                            <asp:HyperLink ID="HyperLink4" runat="server" Height="45px" ImageUrl="~/Content/images/bt.gif" Width="75px" NavigateUrl="~/Content/ReportErsalBeSherkat.aspx" Target="_blank" ToolTip="گزارش منتظر پاسخ شرکت"></asp:HyperLink>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <dx:ASPxGaugeControl ID="g4" runat="server" BackColor="White" Height="30px" Value="00,000" Width="75px">
                                                                <Gauges>
                                                                    <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:WhiteSmoke&quot;/&gt;" Bounds="0, 0, 75, 30" DigitCount="5" Name="Gauge0" Padding="20, 20, 20, 20" Text="00,000">
                                                                        <backgroundlayers>
                                                                            <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="259.8125, 99.9625" Name="digitalBackgroundLayerComponent7" ShapeType="Style7" TopLeft="20, 0" ZOrder="1000" />
                                                                        </backgroundlayers>
                                                                    </dx:DigitalGauge>
                                                                </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                                                            </dx:ASPxGaugeControl>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </td>
                    <td valign="top" width="750">
                        <div>
                            <div align="center">
                                <table align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td style="padding-top: 80px; padding-right: 18px;">
                                            <div align="center">
                                                <table align="center" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td height="50">
                                                            <asp:HyperLink ID="HyperLink5" runat="server" Height="45px" ImageUrl="~/Content/images/bt.gif" Width="75px" NavigateUrl="~/Content/ReportGharardadPishnevis.aspx" Target="_blank" ToolTip="گزارش منتظر دریافت پیش نویس قرارداد"></asp:HyperLink>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <dx:ASPxGaugeControl ID="g6" runat="server" BackColor="White" Height="30px" Value="00,000" Width="75px">
                                                                <Gauges>
                                                                    <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:WhiteSmoke&quot;/&gt;" Bounds="0, 0, 75, 30" DigitCount="5" Name="Gauge0" Padding="20, 20, 20, 20" Text="00,000">
                                                                        <backgroundlayers>
                                                                            <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="259.8125, 99.9625" Name="digitalBackgroundLayerComponent7" ShapeType="Style7" TopLeft="20, 0" ZOrder="1000" />
                                                                        </backgroundlayers>
                                                                    </dx:DigitalGauge>
                                                                </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                                                            </dx:ASPxGaugeControl>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div>
                            <div align="center">
                                <table align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td style="padding-top: 45px; padding-left: 458px;">
                                            <div align="center">
                                                <table align="center" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td height="50">
                                                            <asp:HyperLink ID="HyperLink6" runat="server" Height="45px" ImageUrl="~/Content/images/bt.gif" Width="75px" NavigateUrl="~/Content/ReportGharardadEstelamAnswerPending.aspx" Target="_blank" ToolTip="گزارش منتظر استعلام پاسخ پیش نویس قرارداد"></asp:HyperLink>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <dx:ASPxGaugeControl ID="g9" runat="server" BackColor="White" Height="30px" Value="00,000" Width="75px">
                                                                <Gauges>
                                                                    <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:WhiteSmoke&quot;/&gt;" Bounds="0, 0, 75, 30" DigitCount="5" Name="Gauge0" Padding="20, 20, 20, 20" Text="00,000">
                                                                        <backgroundlayers>
                                                                            <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="259.8125, 99.9625" Name="digitalBackgroundLayerComponent7" ShapeType="Style7" TopLeft="20, 0" ZOrder="1000" />
                                                                        </backgroundlayers>
                                                                    </dx:DigitalGauge>
                                                                </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                                                            </dx:ASPxGaugeControl>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div>
                            <div align="center">
                                <table align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td style="padding-top: 115px; padding-left: 192px;">
                                            <div align="center">
                                                <table align="center" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td height="50">
                                                            <asp:HyperLink ID="HyperLink7" runat="server" Height="45px" ImageUrl="~/Content/images/bt.gif" Width="75px" NavigateUrl="~/Content/ReportGharardadEstelamPending.aspx" Target="_blank" ToolTip="گزارش منتظر استعلام پیش نویس قرارداد"></asp:HyperLink>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <dx:ASPxGaugeControl ID="g7" runat="server" BackColor="White" Height="30px" Value="00,000" Width="75px">
                                                                <Gauges>
                                                                    <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:WhiteSmoke&quot;/&gt;" Bounds="0, 0, 75, 30" DigitCount="5" Name="Gauge0" Padding="20, 20, 20, 20" Text="00,000">
                                                                        <backgroundlayers>
                                                                            <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="259.8125, 99.9625" Name="digitalBackgroundLayerComponent7" ShapeType="Style7" TopLeft="20, 0" ZOrder="1000" />
                                                                        </backgroundlayers>
                                                                    </dx:DigitalGauge>
                                                                </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                                                            </dx:ASPxGaugeControl>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </td>
                    <td valign="top" width="350">
                        <div></div>
                        <div> <div align="center">
                                <table align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td style="padding-top: 74px; padding-left: 215px;">
                                            <div align="center">
                                                <table align="center" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td height="50">
                                                            <asp:HyperLink ID="HyperLink8" runat="server" Height="45px" ImageUrl="~/Content/images/bt.gif" Width="75px" NavigateUrl="~/Content/ReportGharardadEblaghPening.aspx" Target="_blank" ToolTip="گزارش منتظر ابلاغ قرارداد"></asp:HyperLink>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <dx:ASPxGaugeControl ID="g10" runat="server" BackColor="White" Height="30px" Value="00,000" Width="75px">
                                                                <Gauges>
                                                                    <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:WhiteSmoke&quot;/&gt;" Bounds="0, 0, 75, 30" DigitCount="5" Name="Gauge0" Padding="20, 20, 20, 20" Text="00,000">
                                                                        <backgroundlayers>
                                                                            <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="259.8125, 99.9625" Name="digitalBackgroundLayerComponent7" ShapeType="Style7" TopLeft="20, 0" ZOrder="1000" />
                                                                        </backgroundlayers>
                                                                    </dx:DigitalGauge>
                                                                </Gauges>
<LayoutPadding All="0" Left="0" Top="0" Right="0" Bottom="0"></LayoutPadding>
                                                            </dx:ASPxGaugeControl>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div></div>
                        <div> <div align="center">
                                <table align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td style="padding-top: 220px; padding-left: 215px;">
                                            <div align="center">
                                                <table align="center" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td height="50">
                                                            <asp:HyperLink ID="HyperLink9" runat="server" Height="45px" ImageUrl="~/Content/images/bt.gif" Width="75px" NavigateUrl="~/Content/ReportGharardad.aspx" Target="_blank" ToolTip="گزارش قراردادها به تفکیک سال"></asp:HyperLink>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <dx:ASPxGaugeControl ID="g8" runat="server" BackColor="White" Height="30px" Value="00.000" Width="75px" LayoutInterval="6">
                                                                <Gauges>
                                                                    <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0D8097&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#02F0F7&quot;/&gt;" Bounds="6, 6, 63, 20" DigitCount="5" Name="digitalGauge3" Padding="26, 20, 26, 20" Text="00.000">
                                                                        <backgroundlayers>
                                                                            <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style17" TopLeft="26, 0" ZOrder="1000" />
                                                                        </backgroundlayers>
                                                                    </dx:DigitalGauge>
                                                                </Gauges>
<LayoutPadding All="6" Left="6" Top="6" Right="6" Bottom="6"></LayoutPadding>
                                                            </dx:ASPxGaugeControl>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div></div>
                           
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
        <div>    
        <div style="padding: 9px">
        </div>
</div>
            <div></div>
            <div></div>
        <div></div>
        <div></div>

        
        
        

    </form>
</body>
</html>
