<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageFinalDashboard.aspx.cs" Inherits="NewMellat.Content.PageFinalDashboard" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges" tagprefix="dx" %>


<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Linear" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Circular" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.State" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Digital" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript">
      function printform() {
          document.getElementById("pri").style.visibility = "hidden";
          print();
      }
    </script>


    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div align="right" style="background-position: center; background-image: url('/Content/images/header_bg.jpg'); background-repeat: repeat; height: 102px;">
                <table cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td align="left" valign="top" width="35%">
                            &nbsp;</td>
                        <td align="center" valign="top" width="30%">

         

            <asp:Image ID="Image1" runat="server" ImageUrl="~/Content/images/logo-area-bg.jpg" />

                        </td>
                        <td align="right" valign="top" width="35%">
                            &nbsp;</td>
                    </tr>
                </table>
            </div>


        </div>
         <div style="padding-bottom: 7px">
             <dx:ASPxRoundPanel ID="ASPxRoundPanel5" runat="server"    ShowCollapseButton="true" Theme="SoftOrange" Width="100%" Font-Names="B Yekan" Font-Size="14px" HeaderText="سال 1397" HorizontalAlign="Center">
            <HeaderStyle ForeColor="#993300" HorizontalAlign="Center" />
            <PanelCollection>
<dx:PanelContent runat="server">
    <div align="center">
        <table align="center" border="1" cellpadding="0" cellspacing="0" style="border: .1px dotted #CCCCCC; font-family: 'b yekan'; font-size: 12px; color: #333333;">
            <tr>
                <td align="center" style="background-color: #D9F5FF">
                    <asp:Label ID="Label1" runat="server" Text="زمستان"></asp:Label>
                </td>
                <td align="center" style="background-color: #FFFFB0">
                    <asp:Label ID="Label2" runat="server" Text="پاییز"></asp:Label>
                </td>
                <td align="center" style="background-color: #FFDFDF">
                    <asp:Label ID="Label3" runat="server" Text="تابستان"></asp:Label>
                </td>
                <td align="center" style="background-color: #E6FFF2">
                    <asp:Label ID="Label4" runat="server" Text="بهار"></asp:Label>
                </td>
                <td align="center" width="150">
                    <asp:Label ID="Label5" runat="server" Text="دوره فصلی"></asp:Label>
                </td>
            </tr>
            <tr>
                <td width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label6" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label7" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label8" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label9" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label10" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label11" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label12" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label13" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label14" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label15" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label16" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label17" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label18" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label19" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label20" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label21" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" width="150">
                    <asp:Label ID="Label22" runat="server" Text="گروهها"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1g97" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1f97" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1e97" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1d97" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1c97" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1b97" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1a97" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1997" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1897" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1797" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1697" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1597" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1497" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="2500" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="2500">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1397" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="1500" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="1500">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1297" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="4000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="4000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1197" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="3000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="3000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" height="45" width="150">
                    <asp:Label ID="Label23" runat="server" Text="ظرفیت واقعی"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r29g97" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r29f97" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r29e97" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r29d97" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r29c97" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r29b97" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r29a97" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r2997" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r2897" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r2797" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r2697" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r2597" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r2497" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r2397" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r2297" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r2197" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" height="45" width="150">
                    <asp:Label ID="Label24" runat="server" Text="ظرفیت  پروژه ها"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3g97" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3f97" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3e97" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3d97" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3c97" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3b97" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3a97" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3997" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3897" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3797" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3697" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3597" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3497" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3397" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3297" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3197" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" height="45" width="150">
                    <asp:Label ID="Label25" runat="server" Text="ظرفیت آزاد"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server"    ShowCollapseButton="true" Theme="SoftOrange" Width="100%" Font-Names="B Yekan" Font-Size="14px" HeaderText="سال 1396" HorizontalAlign="Center">
            <HeaderStyle ForeColor="#993300" HorizontalAlign="Center" />
            <PanelCollection>
<dx:PanelContent runat="server">
    <div align="center">
        <table align="center" border="1" cellpadding="0" cellspacing="0" style="border: .1px dotted #CCCCCC; font-family: 'b yekan'; font-size: 12px; color: #333333;">
            <tr>
                <td align="center" style="background-color: #D9F5FF">
                    <asp:Label ID="Label26" runat="server" Text="زمستان"></asp:Label>
                </td>
                <td align="center" style="background-color: #FFFFB0">
                    <asp:Label ID="Label27" runat="server" Text="پاییز"></asp:Label>
                </td>
                <td align="center" style="background-color: #FFDFDF">
                    <asp:Label ID="Label28" runat="server" Text="تابستان"></asp:Label>
                </td>
                <td align="center" style="background-color: #E6FFF2">
                    <asp:Label ID="Label29" runat="server" Text="بهار"></asp:Label>
                </td>
                <td align="center" width="150">
                    <asp:Label ID="Label30" runat="server" Text="دوره فصلی"></asp:Label>
                </td>
            </tr>
            <tr>
                <td width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label31" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label32" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label33" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label34" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label35" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label36" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label37" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label38" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label39" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label40" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label41" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label42" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label43" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label44" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label45" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label46" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" width="150">
                    <asp:Label ID="Label47" runat="server" Text="گروهها"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1g" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1f" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1e" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1d" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1c" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1b" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r1a" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r19" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r18" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r17" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r16" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r15" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r14" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="2500" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="2500">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r13" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="1500" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="1500">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r12" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="4000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="4000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r11" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="3000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="3000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" height="45" width="150">
                    <asp:Label ID="Label48" runat="server" Text="ظرفیت واقعی"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r29g" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r29f" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r29e" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r29d" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r29c" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r29b" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r29a" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r29" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r28" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r27" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r26" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r25" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r24" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r23" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r22" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r21" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" height="45" width="150">
                    <asp:Label ID="Label49" runat="server" Text="ظرفیت  پروژه ها"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3g" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3f" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3e" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3d" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3c" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3b" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r3a" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r39" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r38" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r37" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r36" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r35" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r34" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r33" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r32" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r31" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" height="45" width="150">
                    <asp:Label ID="Label50" runat="server" Text="ظرفیت آزاد"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel></div>

                <div style="padding-bottom: 7px">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server"   ShowCollapseButton="true" Theme="SoftOrange" Width="100%" Font-Names="B Yekan" Font-Size="14px" HeaderText="سال 1395" HorizontalAlign="Center">
            <HeaderStyle ForeColor="#993300" HorizontalAlign="Center" />
            <PanelCollection>
<dx:PanelContent runat="server">
    <div align="center">
        <table align="center" border="1" cellpadding="0" cellspacing="0" style="border: .1px dotted #CCCCCC; font-family: 'b yekan'; font-size: 12px; color: #333333;">
            <tr>
                <td align="center" style="background-color: #D9F5FF">
                    <asp:Label ID="Label51" runat="server" Text="زمستان"></asp:Label>
                </td>
                <td align="center" style="background-color: #FFFFB0">
                    <asp:Label ID="Label52" runat="server" Text="پاییز"></asp:Label>
                </td>
                <td align="center" style="background-color: #FFDFDF">
                    <asp:Label ID="Label53" runat="server" Text="تابستان"></asp:Label>
                </td>
                <td align="center" style="background-color: #E6FFF2">
                    <asp:Label ID="Label54" runat="server" Text="بهار"></asp:Label>
                </td>
                <td align="center" width="150">
                    <asp:Label ID="Label55" runat="server" Text="دوره فصلی"></asp:Label>
                </td>
            </tr>
            <tr>
                <td width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label56" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label57" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label58" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label59" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label60" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label61" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label62" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label63" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label64" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label65" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label66" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label67" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label68" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label69" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label70" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label71" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" width="150">
                    <asp:Label ID="Label72" runat="server" Text="گروهها"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r4g" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r4f" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r4e" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r4d" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r4c" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r4b" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r4a" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r49" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r48" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r47" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r46" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r45" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r44" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r43" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r42" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r41" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" height="45" width="150">
                    <asp:Label ID="Label73" runat="server" Text="ظرفیت واقعی"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r5g" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r5f" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r5e" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r5d" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r5c" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r5b" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r5a" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r59" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r58" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r57" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r56" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r55" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r54" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r53" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r52" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r51" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" height="45" width="150">
                    <asp:Label ID="Label74" runat="server" Text="ظرفیت  پروژه ها"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r6g" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r6f" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r6e" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r6d" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r6c" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r6b" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r6a" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r69" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r68" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r67" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r66" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r65" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r64" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r63" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r62" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r61" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" height="45" width="150">
                    <asp:Label ID="Label75" runat="server" Text="ظرفیت آزاد"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel></div>


               <div style="padding-bottom: 7px">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server"    ShowCollapseButton="true" Theme="SoftOrange" Width="100%" Font-Names="B Yekan" Font-Size="14px" HeaderText="سال 1394" HorizontalAlign="Center">
            <HeaderStyle ForeColor="#993300" HorizontalAlign="Center" />
            <PanelCollection>
<dx:PanelContent runat="server">
    <div align="center">
        <table align="center" border="1" cellpadding="0" cellspacing="0" style="border: .1px dotted #CCCCCC; font-family: 'b yekan'; font-size: 12px; color: #333333;">
            <tr>
                <td align="center" style="background-color: #D9F5FF">
                    <asp:Label ID="Label76" runat="server" Text="زمستان"></asp:Label>
                </td>
                <td align="center" style="background-color: #FFFFB0">
                    <asp:Label ID="Label77" runat="server" Text="پاییز"></asp:Label>
                </td>
                <td align="center" style="background-color: #FFDFDF">
                    <asp:Label ID="Label78" runat="server" Text="تابستان"></asp:Label>
                </td>
                <td align="center" style="background-color: #E6FFF2">
                    <asp:Label ID="Label79" runat="server" Text="بهار"></asp:Label>
                </td>
                <td align="center" width="150">
                    <asp:Label ID="Label80" runat="server" Text="دوره فصلی"></asp:Label>
                </td>
            </tr>
            <tr>
                <td width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label81" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label82" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label83" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label84" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label85" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label86" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label87" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label88" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label89" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label90" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label91" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label92" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label93" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label94" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label95" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label96" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" width="150">
                    <asp:Label ID="Label97" runat="server" Text="گروهها"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r7g" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r7f" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r7e" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r7d" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r7c" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r7b" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r7a" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r79" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r78" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r77" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r76" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r75" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r74" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r73" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r72" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r71" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" height="45" width="150">
                    <asp:Label ID="Label98" runat="server" Text="ظرفیت واقعی"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r8g" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r8f" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r8e" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r8d" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r8c" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r8b" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r8a" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r89" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r88" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r87" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r86" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r85" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r84" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r83" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r82" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r81" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" height="45" width="150">
                    <asp:Label ID="Label99" runat="server" Text="ظرفیت  پروژه ها"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r9g" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r9f" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r9e" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r9d" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r9c" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r9b" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r9a" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r99" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r98" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r97" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r96" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r95" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r94" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r93" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r92" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r91" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" height="45" width="150">
                    <asp:Label ID="Label100" runat="server" Text="ظرفیت آزاد"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel></div>


             <div style="padding-bottom: 7px">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel4" runat="server"    ShowCollapseButton="true" Theme="SoftOrange" Width="100%" Font-Names="B Yekan" Font-Size="14px" HeaderText="سال 1393" HorizontalAlign="Center">
            <HeaderStyle ForeColor="#993300" HorizontalAlign="Center" />
            <PanelCollection>
<dx:PanelContent runat="server">
    <div align="center">
        <table align="center" border="1" cellpadding="0" cellspacing="0" style="border: .1px dotted #CCCCCC; font-family: 'b yekan'; font-size: 12px; color: #333333;">
            <tr>
                <td align="center" style="background-color: #D9F5FF">
                    <asp:Label ID="Label101" runat="server" Text="زمستان"></asp:Label>
                </td>
                <td align="center" style="background-color: #FFFFB0">
                    <asp:Label ID="Label102" runat="server" Text="پاییز"></asp:Label>
                </td>
                <td align="center" style="background-color: #FFDFDF">
                    <asp:Label ID="Label103" runat="server" Text="تابستان"></asp:Label>
                </td>
                <td align="center" style="background-color: #E6FFF2">
                    <asp:Label ID="Label104" runat="server" Text="بهار"></asp:Label>
                </td>
                <td align="center" width="150">
                    <asp:Label ID="Label105" runat="server" Text="دوره فصلی"></asp:Label>
                </td>
            </tr>
            <tr>
                <td width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label106" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label107" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label108" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label109" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label110" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label111" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label112" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label113" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label114" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label115" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label116" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label117" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label118" runat="server" Text="سپرده ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label119" runat="server" Text="سپرده ریالی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label120" runat="server" Text="تسهیلات ارزی"></asp:Label>
                            </td>
                            <td align="center" style="font-family: 'b yekan'; font-size: 11px" width="100">
                                <asp:Label ID="Label121" runat="server" Text="تسهیلات ریالی"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" width="150">
                    <asp:Label ID="Label122" runat="server" Text="گروهها"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r10g" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r10f" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r10e" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r10d" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r10c" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r10b" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r10a" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r109" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r108" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r107" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r106" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r105" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r104" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r103" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r102" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r101" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E4E7&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#555B67&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge11" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style26" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" height="45" width="150">
                    <asp:Label ID="Label123" runat="server" Text="ظرفیت واقعی"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r11g" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r11f" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r11e" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r11d" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r11c" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r11b" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r11a" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r119" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r118" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r117" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r116" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r115" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" width="400">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r114" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r113" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r112" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r111" runat="server" BackColor="White" Height="30px" LayoutInterval="2" Value="00,000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#E3E5EA&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#59616F&quot;/&gt;" Bounds="2, 2, 76, 26" DigitCount="5" Name="digitalGauge4" Padding="26, 20, 26, 20" Text="00,000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="265.8125, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style18" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="2" Bottom="2" Left="2" Right="2" Top="2" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" height="45" width="150">
                    <asp:Label ID="Label124" runat="server" Text="ظرفیت  پروژه ها"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r12g" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r12f" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r12e" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r12d" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r12c" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r12b" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r12a" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r129" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r128" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r127" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r126" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r125" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r124" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r123" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r122" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                            <td align="center">
                                <dx:ASPxGaugeControl ID="r121" runat="server" BackColor="White" Height="30px" LayoutInterval="6" Value="00.000" Width="80px">
                                    <Gauges>
                                        <dx:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#0FFF5000&quot;/&gt;" AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#FF5000&quot;/&gt;" Bounds="1, 1, 78, 28" DigitCount="6" Name="digitalGauge8" Padding="26, 20, 26, 20" Text="00.000">
                                            <backgroundlayers>
                                                <dx:DigitalBackgroundLayerComponent AcceptOrder="-1000" BottomRight="313.775, 99.9625" Name="digitalBackgroundLayerComponent1" ShapeType="Style3" TopLeft="26, 0" ZOrder="1000" />
                                            </backgroundlayers>
                                        </dx:DigitalGauge>
                                    </Gauges>
                                    <LayoutPadding All="1" Bottom="1" Left="1" Right="1" Top="1" />
                                </dx:ASPxGaugeControl>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" height="45" width="150">
                    <asp:Label ID="Label125" runat="server" Text="ظرفیت آزاد"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel></div>

        <div align="center" style="padding: 5px">

            <img alt="چاپ"  onclick="printform()" src="images/icons/printer-blue-icon.png" id="pri" name="pri" /></div>

    </form>
</body>
</html>
