<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DashboardNew.aspx.cs" Inherits="NewMellat.Content.DashboardNew" %>

<%@ Register assembly="DevExpress.XtraCharts.v16.2.Web, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dxchartsui" %>
<%@ Register assembly="DevExpress.XtraCharts.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="cc1" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Linear" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Circular" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.State" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Digital" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="box box-danger" style="padding-top: 17px; padding-right: 5px; padding-left: 5px;">
            <div class="row">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT * FROM [prInformation]"></asp:SqlDataSource>
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-aqua">
                        <div class="inner">
                            <h3>

                                <asp:Label ID="lb1" runat="server" Text=""></asp:Label>


                            </h3>

                            <p>کل درخواست ها</p>
                        </div>
                        <div class="icon">
                            <i class="fa fa-shopping-cart"></i>
                        </div>
                        <a href="PageProjectList.aspx" class="small-box-footer">اطلاعات بیشتر <i class="fa fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-green">
                        <div class="inner">
                            <h3>

                                <asp:Label ID="lb2" runat="server" Text=""></asp:Label>
                            </h3>

                            <p>مصوبات خبرگان</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="pageMosavabat.aspx" class="small-box-footer">اطلاعات بیشتر <i class="fa fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-yellow">
                        <div class="inner">
                            <h3>

                                <asp:Label ID="lb3" runat="server" Text=""></asp:Label>
                            </h3>

                            <p>کاربران</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person-add"></i>
                        </div>
                         <a href="#" class="small-box-footer">اطلاعات بیشتر <i class="fa fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h3>
                                <asp:Label ID="lb4" runat="server" Text=""></asp:Label>

                            </h3>

                            <p>کل صورتحساب ها</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-pie-graph"></i>
                        </div>
                        <a href="#" class="small-box-footer">اطلاعات بیشتر <i class="fa fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>
                <!-- ./col -->
            </div>



        </div>


        <div>
            <table align="right" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td>
                        <div class="box box-success">
                            <div class="box-header with-border">
                                <h3 class="box-title">جدید ترین درخواست ها</h3>

                                <div class="box-tools pull-right">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                        <i class="fa fa-minus"></i>
                                    </button>

                                </div>
                            </div>
                            <div class="box-body no-padding">
                                <div >
                                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sourceInfo" RightToLeft="True" Width="100%" Font-Names="vazir" Theme="Office2010Silver">
                                        <SettingsBehavior EnableRowHotTrack="True" />
                                        <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                                        <Columns>
                                            <dx:GridViewDataTextColumn Caption="شماره شناسایی پروژه" FieldName="prFinalCode" VisibleIndex="0" Visible="False">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="عنوان پروژه" FieldName="prTitle" VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="نوع پروژه" FieldName="prProjectType" VisibleIndex="2">
                                                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="پیمانکار" FieldName="prPeymankar" VisibleIndex="3">
                                                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="واحد متولی" FieldName="prVahed" VisibleIndex="4">
                                                <PropertiesComboBox DataSourceID="SqlDataSource1" TextField="infTitle" ValueField="infId">
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                        </Columns>
                                        <Styles>
                                            <Header Font-Bold="True" HorizontalAlign="Center">
                                            </Header>
                                            <Row HorizontalAlign="Center">
                                            </Row>
                                            <Cell HorizontalAlign="Center">
                                            </Cell>
                                        </Styles>
                                        <Border BorderStyle="None" />
                                    </dx:ASPxGridView>
                                    <asp:SqlDataSource ID="sourceInfo" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT TOP (5) prFinalCode, prTitle, prProjectType, prPeymankar, prVahed FROM tbProjects WHERE (prAct = 1) ORDER BY prId DESC"></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>


                    </td>

                </tr>
            </table>
        </div>

        
        <div>
            <table cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td   width="50%">  <div class="box box-warning">
                            <div class="box-header with-border">
                                <h3 class="box-title"> تعداد پروژه ها بر اساس نوع سند</h3>

                                <div class="box-tools pull-right">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                        <i class="fa fa-minus"></i>
                                    </button>

                                </div>
                            </div>
                            <div class="box-body no-padding">
                                <div  style="height: 210px" align="center">

                                    <dxchartsui:WebChartControl ID="WebChartControl4" runat="server" CrosshairEnabled="True" DataSourceID="source4" Height="200px" PaletteName="Slipstream" RightToLeft="True" Width="450px">
                                        <borderoptions visibility="False" />
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
                    </dxchartsui:WebChartControl>
                    <asp:SqlDataSource ID="source4" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT        count(prId) as counts, (select top 1 prInformation.infTitle from prInformation where prInformation.infId= prSanadType) as sanad
FROM            tbProjects
where prAct=1
group by prSanadType"></asp:SqlDataSource>

                                </div>
                            </div>
                        </div>
</td>
                    <td  style="padding-right: 10px" width="50%">  <div class="box box-warning">
                            <div class="box-header with-border">
                                <h3 class="box-title">تعداد پروژه ها بر اساس اولویت</h3>

                                <div class="box-tools pull-right">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                        <i class="fa fa-minus"></i>
                                    </button>

                                </div>
                            </div>
                            <div class="box-body no-padding">
                                <div  style="height: 210px" align="center">
                                    <dxchartsui:WebChartControl ID="WebChartControl3" runat="server" CrosshairEnabled="True" DataSourceID="source3" Height="200px" PaletteName="Red Orange" RightToLeft="True" Width="450px">
                                        <borderoptions visibility="False" />
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

                                </div>
                            </div>
                        </div>
</td>
                   
                </tr>
            </table>
        </div>













    </div>
</asp:Content>
