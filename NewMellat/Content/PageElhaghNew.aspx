<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PageElhaghNew.aspx.cs" Inherits="NewMellat.Content.PageElhaghNew" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="LavaControl" Namespace="LavaControl" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="height: 295px; padding-top: 9px;" class="box box-danger" dir="ltr">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table cellpadding="0" cellspacing="0" align="right" width="100%">
                    <tr>
                        <td width="36%" style="height: 35px; text-align: right; color: #993300;">
                            <asp:Label ID="lbGharardad" runat="server"></asp:Label>
                        </td>
                        <td width="14%">
                            <asp:Label ID="Label4" runat="server" Text=":شماره قرارداد"></asp:Label>
                        </td>
                        <td width="36%" align="right">
                            <dx:ASPxComboBox ID="drpProjects" runat="server" AnimationType="Fade" AutoPostBack="True" DataSourceID="sourceProjects0" Font-Names="vazir" Font-Size="13px" RightToLeft="True" TextField="prTitle" Theme="SoftOrange" ValueField="ghCode" Width="95%" OnSelectedIndexChanged="drpProjects_SelectedIndexChanged">
                                <Border BorderColor="#F8DF8E" />
                            </dx:ASPxComboBox>
                            <asp:SqlDataSource ID="sourceProjects0" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT tbGharardad.ghId, tbGharardad.ghAct, tbGharardad.ghProject, tbGharardad.ghBody, tbGharardad.ghCode +' '+ cast(tbProjects.prTitle As nvarchar) prTitle, tbProjects.prVahed, tbProjects.prId, tbGharardad.ghCode FROM tbGharardad INNER JOIN tbProjects ON tbGharardad.ghProject = tbProjects.prId WHERE (tbGharardad.ghAct = 1) and (tbGharardad.IsElhaghie =0 OR tbGharardad.IsElhaghie is null) and tbGharardad.ghCode is not null  and ((prVahed IN (SELECT prProject  FROM tbAdminProjects WHERE (prType = 3)  AND (prCode = @prCode)  )) 
		OR(TechnicalSuvisor IN (SELECT prProject  FROM tbAdminProjects  WHERE (prType = 3) AND (prCode = @prCode) ))) 
AND (prPeymankar IN (SELECT prProject FROM tbAdminProjects AS tbAdminProjects_1 WHERE (prType = 1)  AND (prCode = @prCode) )) ">  <SelectParameters>
                <asp:Parameter Name="prCode" />
            </SelectParameters></asp:SqlDataSource>
                        </td>
                        <td align="left" width="14%">
                            <asp:Label ID="Label3" runat="server" Text=":نام پروژه"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 35px; text-align: right; color: #993300;">
                            <asp:Label ID="lbTolidEnd" runat="server"></asp:Label>
                        </td>
                        <td class="RightColumn">
                            <asp:Label ID="Label6" runat="server" Text=":پایان قرارداد تولید"></asp:Label>
                        </td>
                        <td class="LeftColumn" style="height: 35px; text-align: right; color: #993300;">
                            <asp:Label ID="lbTolidStart" runat="server"></asp:Label>
                        </td>
                        <td align="left" class="RightColumn">
                            <asp:Label ID="Label5" runat="server" Text=":شروع قرارداد تولید"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 35px; text-align: right; color: #993300;">
                            <asp:Label ID="lbPricePosh" runat="server"></asp:Label>
                        </td>
                        <td class="RightColumn">
                            <asp:Label ID="Label38" runat="server" Text=":مبلغ پشتیبانی"></asp:Label>
                        </td>
                        <td class="LeftColumn" style="height: 35px; text-align: right; color: #993300;">
                            <asp:Label ID="lbPriceTolid" runat="server"></asp:Label>
                        </td>
                        <td align="left" class="RightColumn">
                            <asp:Label ID="Label25" runat="server" Text=":مبلغ تولید"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="LeftColumn" style="height: 35px; text-align: right; color: #993300;">
                            <asp:Label ID="lbPoshEnd" runat="server"></asp:Label>
                        </td>
                        <td class="RightColumn">
                            <asp:Label ID="Label7" runat="server" Text=":پایان قرارداد پشتیبانی"></asp:Label>
                        </td>
                        <td class="LeftColumn" style="height: 35px; text-align: right; color: #993300;">
                            <asp:Label ID="lbPoshStart" runat="server"></asp:Label>
                        </td>
                        <td align="left" class="RightColumn">
                            <asp:Label ID="Label8" runat="server" Text=":شروع قرارداد پشتیبانی"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="LeftColumn" style="height: 35px; text-align: right; color: #993300;">
                            <asp:Label ID="lbCompany" runat="server"></asp:Label>
                        </td>
                        <td class="RightColumn">
                            <asp:Label ID="Label10" runat="server" Text=":شرکت پیمانکار"></asp:Label>
                        </td>
                        <td class="LeftColumn" style="height: 35px; text-align: right; color: #993300;">
                            <asp:Label ID="lbNazer" runat="server"></asp:Label>
                        </td>
                        <td align="left" class="RightColumn">
                            <asp:Label ID="Label9" runat="server" Text=":ناظر قرارداد"></asp:Label>
                        </td>
                     

                    </tr>
                    <tr>
                        <td class="LeftColumn">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtShenase" Display="None" ErrorMessage="شناسه نامه الزامی است" ValidationGroup="g1"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtShenase" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                        </td>
                        <td class="RightColumn">
                            <asp:Label ID="Label39" runat="server" Text=":شناسه نامه"></asp:Label>
                        </td>
                        <td align="right">
                            <dx:ASPxComboBox ID="drpElhaghie" runat="server" AnimationType="Fade" AutoPostBack="True" Font-Names="vazir" Font-Size="13px" OnSelectedIndexChanged="drpProjects_SelectedIndexChanged" RightToLeft="True" SelectedIndex="0" TextField="prTitle" Theme="SoftOrange" ValueField="ghCode" Width="95%">
                                <Items>
                                    <dx:ListEditItem Selected="True" Text="دارد" Value="0" />
                                    <dx:ListEditItem Text="ندارد" Value="1" />
                                </Items>
                                <Border BorderColor="#F8DF8E" />
                            </dx:ASPxComboBox>
                        </td>
                        <td align="left" class="RightColumn">
                            <asp:Label ID="Label11" runat="server" Text=":الحاقیه"></asp:Label>
                        </td>
                     

                    </tr>
                    <tr>
                        <td class="LeftColumn">
                            <cc1:PersianCalendar ID="PersianCalendar1" runat="server" Width="88%"></cc1:PersianCalendar>
                        </td>
                        <td class="RightColumn">
                            <asp:Label ID="Label41" runat="server" Text=":تاریخ"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                        </td>
                        <td align="left" class="RightColumn">
                            <asp:Label ID="Label40" runat="server" Text=":شماره نامه"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                      <td colspan="3" align="right">
                    <asp:TextBox ID="ASPxMemo1" runat="server" CssClass="form-control" Width="98%"></asp:TextBox>
                </td>
            <td class="RightColumn">
                <asp:Label ID="Label1" runat="server" Text=":توضیحات"></asp:Label>
            </td>
                       
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>




    <div>
        <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" Width="100%" Font-Names="vazir" Font-Size="12px" HeaderText="درخواست الحاقیه" Theme="SoftOrange">
            <HeaderStyle HorizontalAlign="Right" />
            <PanelCollection>
                <dx:PanelContent runat="server">
                    <div align="center" style="padding: 8px">
                        <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" AnimationType="Fade" EnableTheming="True" Font-Names="vazir" Font-Size="14px" NullText="نوع درخواست الحاقیه" Theme="SoftOrange" Width="50%" AutoPostBack="True" OnSelectedIndexChanged="ASPxComboBox1_SelectedIndexChanged" RightToLeft="True">


                            <Items>
                                <dx:ListEditItem Text="افزایش مبلغ" Value="1" />
                                <dx:ListEditItem Text="افزایش مبلغ / زمان" Value="2" />
                                <dx:ListEditItem Text="افزایش زمان" Value="3" />
                                <dx:ListEditItem Text="تنفس پروژه" Value="4" />
                                <dx:ListEditItem Text="حذف المان" Value="5" />
                                <dx:ListEditItem Text="تغییر تاریخ قرارداد " Value="6" />
                                <dx:ListEditItem Text="تمدیدیه / تنفس" Value="7" />
                                <dx:ListEditItem Text="کاهش مبلغ / افزایش مبلغ" Value="8" />
                                <dx:ListEditItem Text="کاهش مبلغ / زمان" Value="9" />
                            </Items>
                            <Border BorderColor="#F8DF8E" />
                        </dx:ASPxComboBox>
                    </div>
                    <div align="right">

                        <div id="dv1" runat="server" style="height: 80px; padding-top: 9px;" class="box box-danger" dir="ltr">
                            <table align="right" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td align="right" width="36%">
                                        <asp:TextBox ID="txtBody1" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                                    </td>
                                    <td width="14%">
                                        <asp:Label ID="Label12" runat="server" Text=":شرح خدمات اضافه"></asp:Label>
                                    </td>
                                    <td align="right" width="36%">
                                        <asp:TextBox ID="txtPrice1" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                                    </td>
                                    <td width="14%">
                                        <asp:Label ID="Label29" runat="server" Text=":مبلغ تولید"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">&nbsp;</td>
                                    <td class="RightColumn">&nbsp;</td>
                                    <td align="right" style="padding-top: 4px">
                                        <asp:TextBox ID="txtPrice12" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                                    </td>
                                    <td class="RightColumn">
                                        <asp:Label ID="Label30" runat="server" Text=":مبلغ پشتیبانی"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="dv2" runat="server" style="height: 160px" dir="ltr" class="box box-danger">
                            <table align="right" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                   
                                    <td align="right" width="36%">
                                        <asp:TextBox ID="txtPrice2" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                                    </td>
                                    <td width="14%">
                                        <asp:Label ID="Label24" runat="server" Text=":مبلغ تولید"></asp:Label>
                                    </td>
                                    <td width="36%" align="right">
                                        <cc1:PersianCalendar ID="pc2" runat="server" Width="87%"></cc1:PersianCalendar>
                                        <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" />
                                    </td>
                                    <td class="RightColumn" width="14%">
                                        <asp:Label ID="Label15" runat="server" Text=":از تاریخ"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                  
                                    <td align="right" style="padding-top: 4px">
                                        <asp:TextBox ID="txtBody2" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                                    </td>
                                    <td class="RightColumn">
                                        <asp:Label ID="Label14" runat="server" Text=":شرح"></asp:Label>
                                    </td>
                                    <td align="right">
                                        <cc1:PersianCalendar ID="pc22" runat="server" Skin="win2k_cold_1" Width="87%"></cc1:PersianCalendar>
                                        <asp:CheckBox ID="CheckBox2" runat="server" Checked="True" />
                                    </td>
                                    <td class="RightColumn">
                                        <asp:Label ID="Label27" runat="server" Text=":تا تاریخ"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                  
                                    <td align="right" style="padding-top: 4px">
                                        <asp:TextBox ID="txtPrice22" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                                    </td>
                                    <td class="RightColumn">
                                        <asp:Label ID="Label28" runat="server" Text=":مبلغ پشتیبانی"></asp:Label>
                                    </td>
                                    <td align="right">
                                        <cc1:PersianCalendar ID="pc222" runat="server" Skin="win2k_cold_1" Width="87%"></cc1:PersianCalendar>
                                        <asp:CheckBox ID="CheckBox3" runat="server" Checked="True" />
                                    </td>
                                    <td class="RightColumn">
                                        <asp:Label ID="Label35" runat="server" Text=":از تاریخ"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                  
                                    <td align="right" style="padding-top: 4px">
                                        <asp:TextBox ID="txtBody22" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                                    </td>
                                    <td class="RightColumn">
                                        <asp:Label ID="Label37" runat="server" Text=":شرح"></asp:Label>
                                    </td>
                                    <td align="right">
                                        <cc1:PersianCalendar ID="pc2222" runat="server" Skin="win2k_cold_1" Width="87%"></cc1:PersianCalendar>
                                        <asp:CheckBox ID="CheckBox4" runat="server" Checked="True" />
                                    </td>
                                    <td class="RightColumn">
                                        <asp:Label ID="Label36" runat="server" Text=":تا تاریخ"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="dv3" runat="server" style="height: 77px; padding-top: 9px;" class="box box-danger">
                            <table align="right" cellpadding="0" cellspacing="0" dir="ltr" width="100%">
                                <tr>
                                    <td align="right" width="36%">
                                        <asp:TextBox ID="txtBody33" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                                    </td>
                                    <td width="14%">
                                        <asp:Label ID="Label16" runat="server" Text=":دلایل"></asp:Label>
                                    </td>
                                    <td width="36%">
                                        <cc1:PersianCalendar ID="pc3" runat="server" Width="87%"></cc1:PersianCalendar>
                                        <asp:CheckBox ID="CheckBox5" runat="server" Checked="True" />
                                    </td>
                                    <td width="14%">
                                        <asp:Label ID="Label17" runat="server" Text=":از تاریخ"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">&nbsp;</td>
                                    <td class="RightColumn">&nbsp;</td>
                                    <td class="LeftColumn">
                                        <cc1:PersianCalendar ID="pc33" runat="server" Skin="win2k_cold_1" Width="87%"></cc1:PersianCalendar>
                                        <asp:CheckBox ID="CheckBox6" runat="server" Checked="True" />
                                    </td>
                                    <td class="RightColumn">
                                        <asp:Label ID="Label33" runat="server" Text=":تا تاریخ"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="dv4" runat="server" style="height: 78px; padding-top: 9px;" class="box box-danger">
                            <table align="right" cellpadding="0" cellspacing="0" dir="ltr" width="100%">
                                <tr>
                                    <td align="right" width="36%">
                                        <asp:TextBox ID="txtBody4" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                                    </td>
                                    <td width="14%">
                                        <asp:Label ID="Label18" runat="server" Text=":دلایل"></asp:Label>
                                    </td>
                                    <td class="LeftColumn" width="36%">
                                        <cc1:PersianCalendar ID="pc4" runat="server" Width="87%"></cc1:PersianCalendar>
                                        <asp:CheckBox ID="CheckBox7" runat="server" Checked="True" />
                                    </td>
                                    <td width="14%">
                                        <asp:Label ID="Label19" runat="server" Text=":از تاریخ"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">&nbsp;</td>
                                    <td class="RightColumn">&nbsp;</td>
                                    <td class="LeftColumn">
                                        <cc1:PersianCalendar ID="pc44" runat="server" Skin="win2k_cold_1" Width="87%"></cc1:PersianCalendar>
                                        <asp:CheckBox ID="CheckBox8" runat="server" Checked="True" />
                                    </td>
                                    <td class="RightColumn">
                                        <asp:Label ID="Label34" runat="server" Text=":تا تاریخ"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="dv5" runat="server" style="height: 80px; padding-top: 9px;" class="box box-danger">
                            <table align="right" cellpadding="0" cellspacing="0" dir="ltr" width="100%">
                                <tr>
                                    <td align="right" width="36%">
                                        <asp:TextBox ID="txtBody51" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                                    </td>
                                    <td width="14%">
                                        <asp:Label ID="Label20" runat="server" Text=":دلایل"></asp:Label>
                                    </td>
                                    <td align="right" width="36%">
                                        <asp:TextBox ID="txtPrice51" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                                    </td>
                                    <td width="14%">
                                        <asp:Label ID="Label31" runat="server" Text=":مبلغ تولید"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">&nbsp;</td>
                                    <td class="RightColumn">&nbsp;</td>
                                    <td align="right" style="padding-top: 4px">
                                        <asp:TextBox ID="txtPrice521" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                                    </td>
                                    <td class="RightColumn">
                                        <asp:Label ID="Label32" runat="server" Text=":مبلغ پشتیبانی"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="dv6" runat="server" style="height: 40px; padding-top: 9px;" class="box box-danger">
                            <table align="right" cellpadding="0" cellspacing="0" dir="ltr" width="100%">
                                <tr>
                                    <td width="36%">
                                        <cc1:PersianCalendar ID="pc66" runat="server" Width="87%"></cc1:PersianCalendar>
                                    </td>
                                    <td width="14%">
                                        <asp:Label ID="Label21" runat="server" Text=":تا تاریخ"></asp:Label>
                                    </td>
                                    <td width="36%">
                                        <cc1:PersianCalendar ID="pc6" runat="server" Width="87%"></cc1:PersianCalendar>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label23" runat="server" Text=":از تاریخ"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div align="center" style="padding: 9px" class="box box-success">
                        <dx:ASPxButton ID="ASPxButton1" runat="server" Font-Names="vazir" Text="ثبت اطلاعات" Theme="SoftOrange" Width="130px" OnClick="ASPxButton1_Click">
                        </dx:ASPxButton>

                        <asp:SqlDataSource ID="sourceTarh" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="INSERT INTO tbTarhPishnehadi(thProject, thYear, thHajmTolid, thHajmPosh, thPriceTolid, thPricePosh, thModatTolid, thModatPosh, thAct, thMekanizmPosh, thMekanizmtolid, thBody, thIsElhaghie, thIsCancle,ElhaghieId) VALUES (@thProject, @thYear, @thHajmTolid, @thHajmPosh, @thPriceTolid, @thPricePosh, @thModatTolid, @thModatPosh, 1, @thMekanizmPosh, @thMekanizmtolid, @thBody, 1, 0,@ElhaghieId) SELECT @thId = SCOPE_IDENTITY()" SelectCommand=" 
select *,
(select top 1 tbProjectPaper.paNumber from tbProjectPaper where paProject=thId and paType=73 and paAct=1) as paNumber,
( select top 1 tbProjectPaper.paDate from tbProjectPaper where paProject=thId and paType=73 and paAct=1) as paDate,
(select top 1 tbProjectPaper.paShenase from tbProjectPaper where paProject=thId and paType=73 and paAct=1) as paShenase
,
(select top 1 tbProjects.prVahed from tbProjects where thProject=prId) as vahed,
(select top 1 tbProjects.prPeymankar from tbProjects where thProject=prId) as company

 from tbTarhPishnehadi where thAct=1">
                            <InsertParameters>
                                <asp:Parameter Name="thProject" />
                                <asp:Parameter Name="thYear" />
                                <asp:Parameter Name="thHajmTolid" />
                                <asp:Parameter Name="thHajmPosh" />
                                <asp:Parameter Name="thPriceTolid" />
                                <asp:Parameter Name="thPricePosh" />
                                <asp:Parameter Name="thModatTolid" />
                                <asp:Parameter Name="thModatPosh" />
                                <asp:Parameter Name="thMekanizmPosh" />
                                <asp:Parameter Name="thMekanizmtolid" />
                                <asp:Parameter Name="thBody" />
                                <asp:Parameter Name="ElhaghieId" />
                                <asp:Parameter Name="thId" Direction="Output" Type="Int32" />
                            </InsertParameters>
                        </asp:SqlDataSource>

                        <asp:SqlDataSource ID="sourceElhaghie" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="INSERT INTO tbElhaghie(elProject, elGharardad, elBody, elDate1, elDate2, elPrice, elType, elPrice2, elBody2, elDate3, elDate4) VALUES (@elProject, @elGharardad, @elBody, @elDate1, @elDate2, @elPrice, @elType, @elPrice2, @elBody2, @elDate3, @elDate4) SELECT @elId =  SCOPE_IDENTITY()" SelectCommand="SELECT tbElhaghie.* FROM tbElhaghie">
                            <InsertParameters>
                                <asp:Parameter Name="elProject" />
                                <asp:ControlParameter ControlID="drpProjects" Name="elGharardad" PropertyName="Value" />
                                <asp:Parameter Name="elBody" />
                                <asp:Parameter Name="elDate1" />
                                <asp:Parameter Name="elDate2" />
                                <asp:Parameter Name="elPrice" />
                                <asp:Parameter Name="elType" />
                                <asp:Parameter Name="elPrice2" />
                                <asp:Parameter Name="elBody2" />
                                <asp:Parameter Name="elDate3" />
                                <asp:Parameter Name="elDate4" />
                                <asp:Parameter Name="elId" Direction="Output" DbType="Int32" Size="4" />
                               
                            </InsertParameters>
                        </asp:SqlDataSource>

                    </div>
                    <div style="padding: 9px" align="center">


                        <dx:ASPxButton ID="ASPxButton2" runat="server" Font-Names="vazir" OnClick="ASPxButton2_Click" Text="ثبت الحاقیه جدید" Theme="Youthful" Visible="False">
                        </dx:ASPxButton>


                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>

    </div>

    <div>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" Font-Names="B Yekan" KeyFieldName="elId" OnCommandButtonInitialize="ASPxGridView1_CommandButtonInitialize" RightToLeft="True" Theme="SoftOrange" Width="100%" OnRowDeleted="ASPxGridView1_RowDeleted" OnRowDeleting="ASPxGridView1_RowDeleting">
            <SettingsBehavior ConfirmDelete="True" />
            <SettingsCommandButton>
                <UpdateButton ButtonType="Image" RenderMode="Image">
                    <Image IconID="save_save_16x16">
                    </Image>
                </UpdateButton>
                <CancelButton ButtonType="Image" RenderMode="Image">
                    <Image IconID="actions_cancel_16x16office2013">
                    </Image>
                </CancelButton>
                <EditButton ButtonType="Image" RenderMode="Image">
                    <Image IconID="tasks_edittask_16x16">
                    </Image>
                </EditButton>
                <DeleteButton ButtonType="Image" RenderMode="Image">
                    <Image IconID="actions_close_16x16devav">
                    </Image>
                </DeleteButton>
            </SettingsCommandButton>
            <SettingsSearchPanel Visible="True" />
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn Caption="قرارداد" FieldName="elGharardad" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="توضیحات" FieldName="elBody" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="قیمت تولید" FieldName="elPrice" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="نوع" FieldName="elType" VisibleIndex="9">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="توضیحات 2" FieldName="elBody2" VisibleIndex="11">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="عنوان پروژه" FieldName="prTitle" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="تاریخ 1" FieldName="Date1" VisibleIndex="14">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="تاریخ 2" FieldName="Date2" VisibleIndex="15">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="تاریخ 3" FieldName="Date3" VisibleIndex="16">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="تاریخ 4" FieldName="Date4" VisibleIndex="17">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="قیمت پشتیبانی" FieldName="elPrice2" VisibleIndex="8">
                </dx:GridViewDataTextColumn>
                  <dx:GridViewDataTextColumn Caption="شناسه نامه" FieldName="paShenase" VisibleIndex="18">
                </dx:GridViewDataTextColumn>
                  <dx:GridViewDataTextColumn Caption="شماره نامه" FieldName="paNumber" VisibleIndex="28">
                </dx:GridViewDataTextColumn>
                  <dx:GridViewDataTextColumn Caption="تاریخ نامه" FieldName="paDate" VisibleIndex="38">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" FileName="الحاقیه ها" GridViewID="ASPxGridView1" Landscape="True" PaperKind="A4">
        </dx:ASPxGridViewExporter>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString1 %>" DeleteCommand="delete from tbElhaghie where elId=@elId" SelectCommand="SELECT  tbProjectPaper.paShenase,tbProjectPaper.paNumber, DimDate_10.PersianStr As paDate,  tbElhaghie.elId, tbElhaghie.elProject, tbElhaghie.elGharardad, tbElhaghie.elBody, tbElhaghie.elDate1, tbElhaghie.elDate2, tbElhaghie.elPrice, tbElhaghie.elType, tbElhaghie.elPrice2, tbElhaghie.elBody2, tbElhaghie.elDate3, 
                        tbElhaghie.elDate4, tbProjects.prTitle, DimDate.PersianStr AS Date1, DimDate_1.PersianStr AS Date2, DimDate_2.PersianStr AS Date3, DimDate_3.PersianStr AS Date4
FROM tbElhaghie INNER JOIN tbProjects ON  tbTarhPishnehadi.ElhaghieId=tbElhaghie.elId --tbElhaghie.elProject = tbProjects.prId 
				LEFT OUTER  JOIN tbTarhPishnehadi on tbTarhPishnehadi.thProject=tbProjects.prId
				LEFT OUTER  JOIN  DimDate AS DimDate_1 ON tbElhaghie.elDate2 = DimDate_1.GregorianDate LEFT OUTER  JOIN
                         DimDate AS DimDate_2 ON tbElhaghie.elDate3 = DimDate_2.GregorianDate LEFT OUTER  JOIN
                         DimDate AS DimDate_3 ON tbElhaghie.elDate4 = DimDate_3.GregorianDate LEFT OUTER JOIN
                         DimDate ON tbElhaghie.elDate1 = DimDate.GregorianDate
						 left join (select * from tbProjectPaper where paType=74)as tbProjectPaper on tbProjectPaper.paProject=tbTarhPishnehadi.thId
 LEFT OUTER  JOIN  DimDate AS DimDate_10 ON tbProjectPaper.paDate = DimDate_10.GregorianDate
  where ((prVahed IN (SELECT prProject  FROM tbAdminProjects WHERE (prType = 3)  AND (prCode = @prCode)  )) 
		OR(TechnicalSuvisor IN (SELECT prProject  FROM tbAdminProjects  WHERE (prType = 3) AND (prCode = @prCode) ))) 
AND (prPeymankar IN (SELECT prProject FROM tbAdminProjects AS tbAdminProjects_1 WHERE (prType = 1)  AND (prCode = @prCode) )) 
" UpdateCommand=" UPDATE       tbElhaghie
SET                elGharardad = @elGharardad, elBody = @elBody, elPrice2 = @elPrice2, elBody2 = @elBody2
WHERE        (elId = @elId)">
            <DeleteParameters>
                <asp:Parameter Name="elId" />
            </DeleteParameters>
            <SelectParameters>
                <asp:Parameter Name="prCode" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="elGharardad" />
                <asp:Parameter Name="elBody" />
                <asp:Parameter Name="elPrice2" />
                <asp:Parameter Name="elBody2" />
                <asp:Parameter Name="elId" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sourcePaper" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="spInsertPaper" InsertCommandType="StoredProcedure" SelectCommand="SELECT TOP (1) infId FROM prInformation">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtShenase" Name="paShenase" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtNumber" Name="paNumber" PropertyName="Text" Type="String" />
                <asp:Parameter DbType="Date" DefaultValue="" Name="paDate" />
                <asp:Parameter DefaultValue="" Name="paProject" DbType="Int32" />
                <asp:Parameter Name="paType" Type="Int32" DefaultValue="74" />
                <asp:ControlParameter ControlID="ASPxMemo1" DefaultValue="" Name="paBody" PropertyName="Text" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </div>
    <div align="center" style="padding: 7px">

        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Content/images/icons/Excel-icon.png" OnClick="ImageButton1_Click" />

    </div>

</asp:Content>
