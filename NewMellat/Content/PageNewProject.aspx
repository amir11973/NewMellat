<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PageNewProject.aspx.cs" Inherits="NewMellat.Content.PageNewProject" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="LavaControl" Namespace="LavaControl" TagPrefix="cc1" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<stlye>
    .hidden
    {display:none
    }
</stlye>

    <script type="text/javascript" src="/scripts/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="/scripts/knockout-3.4.0.js"></script>
    <script type="text/javascript">
        function loadRestRequest(url, callback) {
            var async = true;
            var res = null;
            if (callback == null) {
                async = false;
                callback = function (data) {
                    res = data.value;
                }
            }
            $.ajax({
                url: url,
                type: "GET",
                async: async,
                crossDomain: true,
                headers: {
                    "accept": "application/json",

                },

                success: callback,
                error: function (error) {
                    alert(JSON.stringify(error));
                }
            });
            return res;
        }
        $(document).ready(function () {

        });
        var model
        function loadData() {
            var title = $('input[name$="TextBoxTitle"]').val();
            var hadaf = $('input[name$="TextBoxHadaf"]').val();
            if (title.length < 3 && hadaf.length < 3) {
                if (model != null) {
                    model.items().splice(0, model.items().length);
                }
                $('#acceptButton').hide();
                return;
            }
            //debugger;
            var filter = "";
            if (title.length >= 3) {
                var ts = title.split(' ');
                filter = encodeURI("substringof('" + ts.join("',Title) and substringof('") + "',Title)");

            }
            if (hadaf.length >= 3) {
                var hs = hadaf.split(' ');
                if (filter.length > 0)
                    filter += " and "
                filter += encodeURI("substringof('" + hs.join("',Hadaf) and substringof('") + "',Hadaf)");

            }
            loadRestRequest("http://172.22.65.16:4581/odata/ViewGharardad?$top=50&$filter=" + filter, function (data) {
                //debugger;
                if (model == null) {
                    model = new ViewModel(data.value);
                    ko.applyBindings(model);
                    $('#acceptButton').show();
                } else {
                    model.items().splice(0, model.items().length);
                    $.each(data.value, function (index, item) {
                        model.items.push(item);
                    });
                }
            });
        }

    </script>
    <script type="text/javascript">


        function loadChk() {
            var projectType = drpProjectType.GetValue();
            var vahed = drpVahed.GetValue();

            if (projectType == "87") {
                if (vahed == "10") {
                    document.getElementById("dv6").style.display = "none";
                    document.getElementById("dv7").style.display = "block";
                }
                else if (vahed == "14") {
                    document.getElementById("dv6").style.display = "block";
                    document.getElementById("dv7").style.display = "none";
                }
                else {
                    document.getElementById("dv6").style.display = "block";
                    document.getElementById("dv7").style.display = "block";
                }


                document.getElementById("chk1").nextSibling.innerHTML = 'تاییدیه سند مورد نظر از اداره کل برنامه ریزی و نظارت اعتباری دریافت شده است';
                document.getElementById("chk2").nextSibling.innerHTML = 'تاییدیه سند مورد نظر از اداره سازمان و بهبود روش ها دریافت شده است';

            }
            else if (projectType == "88") {
                if (vahed == "27") {
                    document.getElementById("dv6").style.display = "none";
                    document.getElementById("dv7").style.display = "block";
                }
                else if (vahed == "14") {
                    document.getElementById("dv6").style.display = "block";
                    document.getElementById("dv7").style.display = "none";
                }
                else {
                    document.getElementById("dv6").style.display = "block";
                    document.getElementById("dv7").style.display = "block";
                }


                document.getElementById("chk1").nextSibling.innerHTML = 'تاییدیه سند مورد نظر از اداره سازمان و بهبود روش ها دریافت شده است';
                document.getElementById("chk2").nextSibling.innerHTML = 'تاییدیه سند مورد نظر از اداره کل بانکداری شخصی دریافت شده است';

            }

            else if (projectType == "204") {
                if (vahed == "27") {
                    document.getElementById("dv6").style.display = "none";
                    document.getElementById("dv7").style.display = "block";
                }
                else if (vahed == "14") {
                    document.getElementById("dv6").style.display = "block";
                    document.getElementById("dv7").style.display = "none";
                }
                else {
                    document.getElementById("dv6").style.display = "block";
                    document.getElementById("dv7").style.display = "block";
                }

                document.getElementById("chk1").nextSibling.innerHTML = 'تاییدیه سند مورد نظر از اداره سازمان و بهبود روش ها دریافت شده است';
                document.getElementById("chk2").nextSibling.innerHTML = 'تاییدیه سند مورد نظر از اداره کل بانکداری شخصی دریافت شده است';

            }

            else if (projectType == "290") {
                if (vahed == "199") {
                    document.getElementById("dv6").style.display = "none";
                    document.getElementById("dv7").style.display = "block";
                    document.getElementById("dv8").style.display = "block";
                }
                else if (vahed == "11") {
                    document.getElementById("dv6").style.display = "block";
                    document.getElementById("dv7").style.display = "none";
                    document.getElementById("dv8").style.display = "block";

                }
                else if (vahed == "10") {
                    document.getElementById("dv6").style.display = "block";
                    document.getElementById("dv7").style.display = "block";
                    document.getElementById("dv8").style.display = "none";

                }
                else {
                    document.getElementById("dv6").style.display = "block";
                    document.getElementById("dv7").style.display = "block";
                    document.getElementById("dv8").style.display = "block";
                }

                document.getElementById("chk1").nextSibling.innerHTML = 'تاییدیه سند مورد نظر از اداره کل امور شعب ارزی دریافت شده است';
                document.getElementById("chk2").nextSibling.innerHTML = 'تاییدیه سند مورد نظر از اداره کل بین الملل دریافت شده است';
                document.getElementById("chk3").nextSibling.innerHTML = 'تاییدیه سند مورد نظر از اداره برنامه ریزی و نظارت دریافت شده است';
            }

            else if (projectType == "291") {
                if (vahed == "199") {
                    document.getElementById("dv6").style.display = "none";
                    document.getElementById("dv7").style.display = "block";
                }
                else if (vahed == "11") {
                    document.getElementById("dv6").style.display = "block";
                    document.getElementById("dv7").style.display = "none";
                }
                else {
                    document.getElementById("dv6").style.display = "block";
                    document.getElementById("dv7").style.display = "block";
                }

                document.getElementById("chk1").nextSibling.innerHTML = 'تاییدیه سند مورد نظر از اداره کل امور ارزی شعب دریافت شده است';
                document.getElementById("chk2").nextSibling.innerHTML = 'تاییدیه سند مورد نظر از اداره کل بین الملل دریافت شده است';

            }


            else {
                document.getElementById("dv6").style.display = "none";
                document.getElementById("dv7").style.display = "none";
                document.getElementById("dv8").style.display = "none";

            }
        }


        function loadDv() {

            var combo = drpRequestType.GetValue();
            if (combo == "179") {
                document.getElementById("dvt1").style.display = "block";
                document.getElementById("dvt2").style.display = "none";
                document.getElementById("dvt3").style.display = "none";
                document.getElementById("dv0").style.display = "none";
            }
            else if (combo == "178") {
                document.getElementById("dvt1").style.display = "none";
                document.getElementById("dvt2").style.display = "block";
                document.getElementById("dvt3").style.display = "none";
                document.getElementById("dv0").style.display = "block";
            }
            else if (combo == "3") {
                document.getElementById("dvt1").style.display = "none";
                document.getElementById("dvt2").style.display = "none";
                document.getElementById("dvt3").style.display = "block";
                document.getElementById("dv0").style.display = "none";

            }
            else {
                document.getElementById("dvt1").style.display = "none";
                document.getElementById("dvt2").style.display = "none";
                document.getElementById("dvt3").style.display = "none";
                document.getElementById("dv0").style.display = "none";

            }
        }



    </script>

    <script type="text/javascript">
        function ComboBoxChanged(s) {
            if (s.GetValue() == 0) {
                $("#<%= riskTitle.ClientID %>").addClass('hidden');
                $("#<%= Label59.ClientID %>").addClass('hidden');
                
            }
            else {
                $("#<%= riskTitle.ClientID %>").removeClass('hidden');
                $("#<%= Label59.ClientID %>").removeClass('hidden');
            }
        }


        function validate(s, args) {
            if (riskAgeinst.GetValue()==1) {
                args.IsValid = args.Value != '';

            }
            else {
                args.IsValid = true;
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div dir="ltr" style="padding-top: 10px; padding-bottom: 3px" >

    <div class="box box-danger" style="height: 122px; padding-top: 9px;" align="right">
        <table cellpadding="0" cellspacing="0" width="100%" align="right">
            <tr>
                <td align="right">
                    <asp:TextBox ID="txtTitle1" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                </td>
                <td width="12%">
                    <asp:Label ID="Label1" runat="server" Text=":نام پروژه"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtMainBody1" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" Text=":خلاصه درخواست"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" style="padding-top: 4px">
                    <dx:ASPxComboBox ID="drpRequestType" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="45%" RightToLeft="True" TextField="infTitle" ValueField="infId" Font-Names="B Yekan" Font-Size="14px" TabIndex="2" ClientIDMode="Static" DropDownStyle="DropDown">


                        <ClientSideEvents SelectedIndexChanged="function(s, e) {
	loadDv();
}" />


                        <Items>
                            <dx:ListEditItem Text="تولید محصول جدید" Value="179" />
                            <dx:ListEditItem Text="تغییر / بهبود (توسعه نرم افزار )" Value="178" />
                            <dx:ListEditItem Text="مشاوره و آموزش" Value="2" />
                            <dx:ListEditItem Text="پشتیبانی" Value="3" />
                            <dx:ListEditItem Text="خرید" Value="5" />
                            <dx:ListEditItem Text="موارد دیگر" Value="4" />
                        </Items>
                        <ListBoxStyle>
                            <Border BorderColor="#F1DF9E" />
                        </ListBoxStyle>
                        <Border BorderColor="#F1DF9E" />
                    </dx:ASPxComboBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label13" runat="server" Text=":نوع درخواست"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <div align="right"  class="box box-warning" style=" height: 200px; display: none; padding-top: 7px;" id="dvt1">
            <div align="center">

                <table align="right" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td align="right" width="36%">
                    <asp:TextBox ID="txtdv1Tell" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                        </td>
                        <td class="RightColumn">
                            <asp:Label ID="Label27" runat="server" Text=":شماره تماس"></asp:Label>
                        </td>
                        <td align="right" width="36%">
                    <asp:TextBox ID="txtdv1Name" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                        </td>
                        <td width="14%">
                            <asp:Label ID="Label28" runat="server" Text=":نام و نام خانوادگی  مسئول"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="LeftColumn" align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtdv1Mahdodeh" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                        </td>
                        <td class="RightColumn">
                            <asp:Label ID="Label30" runat="server" Text=":محدوده پروژه"></asp:Label>
                        </td>
                        <td align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtdv1Baze" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                        </td>
                        <td class="RightColumn" width="14%">
                            <asp:Label ID="Label35" runat="server" Text=":بازه زمانی مورد انتظار"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="LeftColumn" align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtdv1Team" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                        </td>
                        <td class="RightColumn">
                            <asp:Label ID="Label32" runat="server" Text=":تیم پیشنهادی پروژه"></asp:Label>
                        </td>
                        <td align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtdv1Hadaf" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                        </td>
                        <td class="RightColumn" width="14%">
                            <asp:Label ID="Label31" runat="server" Text=":هدف پروژه"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="LeftColumn" align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtdv1Zinaf" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                        </td>
                        <td class="RightColumn">
                            <asp:Label ID="Label34" runat="server" Text=":ذینفعان طرح"></asp:Label>
                        </td>
                        <td align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtdv1Vaheds" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                        </td>
                        <td class="RightColumn" width="14%">
                            <asp:Label ID="Label33" runat="server" Text=":واحدهای فعال پروژه"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:FileUpload ID="FileUpload5" runat="server" Width="95%" />
                        </td>
                        <td class="RightColumn">
                            <asp:Label ID="Label38" runat="server" Text=":پیوست اسناد تکمیلی"></asp:Label>
                        </td>
                        <td align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtdv1Tahlil" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                        </td>
                        <td class="RightColumn" width="14%">
                            <asp:Label ID="Label37" runat="server" Text=":تحلیل هزینه فایده"></asp:Label>
                        </td>
                    </tr>
                </table>

            </div>
        </div>
        <div  class="box box-warning" style=" height: 230px; display: none; padding-top: 7px;" id="dvt2" align="right">


            <table align="right" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td align="right" width="36%">
                    <asp:TextBox ID="txtdv2Tell" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn" width="14%">
                        <asp:Label ID="Label39" runat="server" Text=":شماره تماس"></asp:Label>
                    </td>
                    <td align="right" width="36%">
                    <asp:TextBox ID="txtdv2NAme" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td width="14%">
                        <asp:Label ID="Label23" runat="server" Text=":نام و نام خانوادگی مسئول"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" width="200">
                        <asp:SqlDataSource ID="source2" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="INSERT INTO tbIndex2(inProject, inVahedName, inName, inTell, inProjectName, inOlaviat, inRequestType, inRequestBody, inAvardProject, inBody, inRahkar, inTakhmin, inHazineh, inAct, inRegisterDate) VALUES (@inProject, @inVahedName, @inName, @inTell, @inProjectName, @inOlaviat, @inRequestType, @inRequestBody, @inAvardProject, @inBody, @inRahkar, @inTakhmin, @inHazineh, 1, GETDATE())" SelectCommand="SELECT TOP (1) inId FROM tbIndex2">
                            <InsertParameters>
                                <asp:Parameter Name="inProject" />
                                <asp:ControlParameter ControlID="drpVahed" Name="inVahedName" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtdv2NAme" Name="inName" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtdv2Tell" Name="inTell" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtTitle1" Name="inProjectName" PropertyName="Text" />
                                <asp:Parameter Name="inOlaviat" />
                                <asp:ControlParameter ControlID="ASPxRadioButtonList1" Name="inRequestType" PropertyName="Value" />
                                <asp:ControlParameter ControlID="txtdv2BodyDarkhast" Name="inRequestBody" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtdv2Avard" Name="inAvardProject" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtMainBody1" Name="inBody" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtdv2Rahkar" Name="inRahkar" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtdv2Takhmin" Name="inTakhmin" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtdv2Hazine" Name="inHazineh" PropertyName="Text" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="RightColumn">&nbsp;</td>
                    <td align="right">
                        <dx:ASPxRadioButtonList ID="ASPxRadioButtonList1" runat="server" EnableTheming="True" RepeatDirection="Horizontal" RightToLeft="True" Theme="SoftOrange" Font-Names="B Yekan" Font-Size="12px">
                            <Items>
                                <dx:ListEditItem Text="بهبود" Value="بهبود" />
                                <dx:ListEditItem Text="رفع نقص" Value="رفع نقص" />
                            </Items>
                            <Border BorderStyle="None" />
                        </dx:ASPxRadioButtonList>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label42" runat="server" Text=":نوع درخواست"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                    <asp:TextBox ID="txtdv2Hazine" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label48" runat="server" Text=":برآورد هزینه"></asp:Label>
                    </td>
                    <td align="right">
                    <asp:TextBox ID="txtdv2Takhmin" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label47" runat="server" Text=":تخمین نفر - ساعت"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="3" style="padding-top: 4px">
                    <asp:TextBox ID="txtdv2BodyDarkhast" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label43" runat="server" Text=":شرح درخواست"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="3" style="padding-top: 4px">
                    <asp:TextBox ID="txtdv2Rahkar" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label46" runat="server" Text=":راهکار پیشنهادی"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="3" style="padding-top: 4px">
                    <asp:TextBox ID="txtdv2Avard" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label44" runat="server" Text=":آورد پروژه"></asp:Label>
                    </td>
                </tr>
            </table>


        </div>
        <div class="box box-warning" style="height: 270px; display: none; padding-top: 7px;" id="dvt3" align="right">


            <table align="right" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td class="LeftColumn" align="right" width="36%">
                    <asp:TextBox ID="txtdv3hazineh" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td width="14%">
                        <asp:Label ID="Label50" runat="server" Text=":برآورد هزینه"></asp:Label>
                    </td>
                    <td align="right" width="36%">
                    <asp:TextBox ID="txtdv3Name" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td width="14%">
                        <asp:Label ID="Label51" runat="server" Text=":نام و نام خانوادگی مسئول"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="3">
                        <dx:ASPxRadioButtonList ID="ASPxRadioButtonList2" runat="server" EnableTheming="True" RepeatDirection="Horizontal" RightToLeft="True" Theme="SoftOrange" Font-Names="B Yekan" Font-Size="12px">
                            <Items>
                                <dx:ListEditItem Text="نرم افزار" Value="نرم افزار" />
                                <dx:ListEditItem Text="سخت افزار" Value="سخت افزار" />
                                <dx:ListEditItem Text="شبکه و امنیت" Value="شبکه و امنیت" />
                            </Items>
                            <Border BorderStyle="None" />
                        </dx:ASPxRadioButtonList>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label52" runat="server" Text=":نوع درخواست"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtdv3Body" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label53" runat="server" Text=":شرح"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="LeftColumn" align="right">
                        <cc1:PersianCalendar ID="PersianCalendar6" runat="server" TabIndex="9" Width="80%" BorderColor="#F8DF8E"></cc1:PersianCalendar>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label55" runat="server" Text=":تاریخ راه اندازی"></asp:Label>
                    </td>
                    <td class="LeftColumn" align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtdv3Company" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label54" runat="server" Text=":نام شرکت ارایه کننده"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="LeftColumn">
                        <asp:SqlDataSource ID="source3" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="INSERT INTO tbIndex3(inProject, inVahedName, inName, inHazineh, inRequestType, inBody, inCompany, inDateStart, inTakmili, inNaizmandi, inNatayeh, inAct, inRegisterDate) VALUES (@inProject, @inVahedName, @inName, @inHazineh, @inRequestType, @inBody, @inCompany, @inDateStart, @inTakmili, @inNaizmandi, @inNatayeh, 1, GETDATE())" SelectCommand="SELECT TOP (1) inId FROM tbIndex3">
                            <InsertParameters>
                                <asp:Parameter Name="inProject" />
                                <asp:ControlParameter ControlID="drpVahed" Name="inVahedName" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtdv3Name" Name="inName" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtdv3hazineh" Name="inHazineh" PropertyName="Text" />
                                <asp:ControlParameter ControlID="ASPxRadioButtonList2" Name="inRequestType" PropertyName="Value" />
                                <asp:ControlParameter ControlID="txtdv3Body" Name="inBody" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtdv3Company" Name="inCompany" PropertyName="Text" />
                                <asp:Parameter Name="inDateStart" />
                                <asp:ControlParameter ControlID="txtdv3Takmili" Name="inTakmili" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtdv3Niazmandi" Name="inNaizmandi" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtdv3Natayej" Name="inNatayeh" PropertyName="Text" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="RightColumn">
                        &nbsp;</td>
                    <td class="LeftColumn" align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtdv3Takmili" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label56" runat="server" Text=":اطلاعات تکمیلی"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtdv3Natayej" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label58" runat="server" Text=":نتایج موفق حاصل از این درخواست"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtdv3Niazmandi" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                    </td>
                    <td class="RightColumn">
                        <asp:Label ID="Label57" runat="server" Text=":نیازمندی ها"></asp:Label>
                    </td>
                </tr>
            </table>


        </div>
    </div>

         <div style="height: 130px; padding-top: 7px;" class="box box-danger">
           <table align="right" cellpadding="0" cellspacing="0"  width="100%">
            <tr>
                <td align="right" width="36%">
                  

                    <dx:ASPxComboBox ID="drpRiskType" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" RightToLeft="True" TextField="infTitle" ValueField="infId" Font-Names="b yekan" Font-Size="14px" TabIndex="2" ClientIDMode="Static" ForeColor="#333333">
                       
                        <Items>
                            <dx:ListEditItem Text="مدیریتی / پروژه ای" Value="مدیریتی / پروژه ای" />
                            <dx:ListEditItem Text="فنی" Value="فنی" />
                        </Items>
                        <Border BorderColor="#F8DF8E" />
                    </dx:ASPxComboBox>
                  

                </td>
                <td width="14%">
                    <asp:Label ID="Label22" runat="server" Text="نوع ریسک"></asp:Label>
                </td>
                <td class="36%" align="right">
                  

                    <asp:TextBox ID="txtRiskTitle" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                  

                </td>
                <td align="left" width="14%">
                    <asp:Label ID="Label262" runat="server" Text=":عنوان ریسک"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" height="40">
                  

                    <dx:ASPxComboBox ID="drpRiskDegree" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" RightToLeft="True" TextField="infTitle" ValueField="infId" Font-Names="b yekan" Font-Size="14px" TabIndex="2" ClientIDMode="Static" ForeColor="#333333">
                        
                        <Items>
                            <dx:ListEditItem Text="کم" Value="کم" />
                            <dx:ListEditItem Text="زیاد" Value="زیاد" />
                            <dx:ListEditItem Text="متوسط" Value="متوسط" />
                        </Items>
                        <Border BorderColor="#F8DF8E" />
                    </dx:ASPxComboBox>
                  

                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label29" runat="server" Text=":درجه تاثیر"></asp:Label>
                </td>
                <td align="right">
                  

                    <dx:ASPxComboBox ID="drpRiskEhtemal" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" RightToLeft="True" TextField="infTitle" ValueField="infId" Font-Names="b yekan" Font-Size="14px" TabIndex="2" ClientIDMode="Static" ForeColor="#333333">
                        
                        <Items>
                            <dx:ListEditItem Text="کم" Value="کم" />
                            <dx:ListEditItem Text="زیاد" Value="زیاد" />
                            <dx:ListEditItem Text="متوسط" Value="متوسط" />
                        </Items>
                        <Border BorderColor="#F8DF8E" />
                    </dx:ASPxComboBox>
                  

                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label36" runat="server" Text=":احتمال وقوع"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right">
                  

                    <asp:TextBox ID="txtRiskAnswer" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                  

                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label40" runat="server" Text=":پاسخ به ریسک"></asp:Label>
                </td>
                <td align="right">
                  

                    <asp:TextBox ID="txtRiskPayamad" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                  

                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label41" runat="server" Text=":پیامد رخداد ریسک"></asp:Label>
                </td>
            </tr>
        </table>

             </div>

         <div style="height: 130px; padding-top: 7px;" class="box box-danger">
           <table align="right" cellpadding="0" cellspacing="0"  width="100%">
            <tr>
                <td class="36%" align="right">
                <asp:TextBox ID="riskTitle" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                 <asp:CustomValidator ID="cv1" runat="server"
                    ErrorMessage="عنوان الزامی ست"
                    Text="*"
                    ControlToValidate="riskTitle"
                    ValidateEmptyText="True" 
                    ClientValidationFunction="validate" />
                </td>
                <td align="left" width="14%">
                    <asp:Label ID="Label59" runat="server" Text=":عنوان سناریو ریسک"></asp:Label>                    
                </td>
                <td align="right" width="36%">
                 <dx:ASPxComboBox ID="riskAgeinst" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" RightToLeft="True" Font-Names="b yekan" Font-Size="14px" TabIndex="2" ClientIDMode="Static" ForeColor="#333333">
                       <Items>
                            <dx:ListEditItem Text="دارد" Value="1" />
                            <dx:ListEditItem Text="ندارد" Value="0" />
                        </Items>
                      <ClientSideEvents SelectedIndexChanged="function(s, e) {ComboBoxChanged(s); }" />
                        <Border BorderColor="#F8DF8E" />
                    </dx:ASPxComboBox>
                </td>
                <td width="14%">
                    <asp:Label ID="Label49" runat="server" Text="طرح مقابله با ریسک"></asp:Label>
                </td>
             
            </tr>
            <tr>
                              <td align="right">
              <cc1:PersianCalendar ID="riskEnd" runat="server" TabIndex="9" Width="88%" BorderColor="#F8DF8E"></cc1:PersianCalendar>
              </td>
              <td class="RightColumn">
                    <asp:Label ID="Label62" runat="server" Text=":تا"></asp:Label>
                </td>
              <td align="right">
                    <cc1:PersianCalendar ID="riskStart" runat="server" TabIndex="9" Width="88%" BorderColor="#F8DF8E"></cc1:PersianCalendar>
                </td>
              <td class="RightColumn">
                    <asp:Label ID="Label61" runat="server" Text=":بازه اجرای ریسک از"></asp:Label>
                </td>                            
            </tr>
                 <tr>
                              <td align="right" colspan="3">
              <asp:TextBox ID="riskDesc" runat="server" CssClass="form-control" Width="98%"></asp:TextBox>
              </td>
              <td class="RightColumn">
                    <asp:Label ID="Label60" runat="server" Text="شرح طرح مقابله با ریسک"></asp:Label>
                </td>
    </tr>
        </table>

             </div>

    <div style="height: 270px; padding-top: 7px;" class="box box-danger">
        <table align="right" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td align="right" width="36%">
                    <dx:ASPxComboBox ID="drpSanadType" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" DataSourceID="sourceSanad" RightToLeft="True" TextField="infTitle" ValueField="infId" Font-Names="B Yekan" Font-Size="14px" OnDataBound="drpSanadType_DataBound" TabIndex="4" ForeColor="#333333">
                        <Border BorderColor="#F8DF8E" />
                    </dx:ASPxComboBox>
                </td>
                <td width="14%">
                    <asp:Label ID="Label4" runat="server" Text=":نوع سند"></asp:Label>
                </td>
                <td align="right" style="padding-top: 4px" width="36%">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="drpVahed" Display="None" ErrorMessage="انتخاب واحد الزامی است" InitialValue="-1" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    <dx:ASPxComboBox ID="drpVahed" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" DataSourceID="sourceVahed" RightToLeft="True" TextField="infTitle" ValueField="infId" Font-Names="b yekan" Font-Size="14px" OnDataBound="drpVahed_DataBound" TabIndex="2" OnSelectedIndexChanged="drpVahed_SelectedIndexChanged" ClientIDMode="Static" ForeColor="#333333">
                        <ClientSideEvents SelectedIndexChanged="function(s, e) {
	loadChk();
}" />
                        <Border BorderColor="#F8DF8E" />
                    </dx:ASPxComboBox>
                </td>
                <td width="14%">
                    <asp:Label ID="Label2" runat="server" Text=":واحد درخواست کننده"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" width="36%">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="drpProjectType" Display="None" ErrorMessage="انتخاب پروژه الزامی است" InitialValue="-1" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="drpSanadType" Display="None" ErrorMessage="انتخاب سند الزامی است" InitialValue="-1" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="drpOlaviat" Display="None" ErrorMessage="انتخاب اولویت الزامی است" InitialValue="-1" ValidationGroup="g1"></asp:RequiredFieldValidator>
                            <asp:SqlDataSource ID="source1" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="INSERT INTO tbIndex1(inVahedName, inName, inTell, inTitle, inMahdodeh, inHadaf, inTeam, inVaheds, inZinaf, inBAzeh, inFeatures, inTahlil, inFile, inAct, inRegisterDate, inProject, inFileName) VALUES (@inVahedName, @inName, @inTell, @inTitle, @inMahdodeh, @inHadaf, @inTeam, @inVaheds, @inZinaf, @inBAzeh, @inFeatures, @inTahlil, @inFile, 1, GETDATE(), @inProject, @inFileName)" SelectCommand="SELECT TOP (1) inVahedName FROM tbIndex1">
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="drpVahed" Name="inVahedName" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="txtdv1Name" Name="inName" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="txtdv1Tell" Name="inTell" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="txtTitle1" Name="inTitle" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="txtdv1Mahdodeh" Name="inMahdodeh" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="txtdv1Hadaf" Name="inHadaf" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="txtdv1Team" Name="inTeam" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="txtdv1Vaheds" Name="inVaheds" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="txtdv1Zinaf" Name="inZinaf" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="txtdv1Baze" Name="inBAzeh" PropertyName="Text" />
                                    <asp:Parameter Name="inFeatures" />
                                    <asp:ControlParameter ControlID="txtdv1Tahlil" Name="inTahlil" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="FileUpload5" Name="inFile" PropertyName="FileBytes" />
                                    <asp:Parameter Name="inProject" />
                                    <asp:ControlParameter ControlID="FileUpload5" Name="inFileName" PropertyName="FileName" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtShenase1" Display="None" ErrorMessage="شناسه نامه الزامی است" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="drpPeymankar" Display="None" ErrorMessage="انتخاب پیمانکار الزامی است" InitialValue="-1" ValidationGroup="g1"></asp:RequiredFieldValidator>

<dx:ASPxComboBox ID="ASPxComboBoxService" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" DataSourceID="SqlDataSourceServiceCatalog" RightToLeft="True" TextField="Description" ValueField="ServiceId" Font-Names="b yekan" Font-Size="14px" OnDataBound="drpVahed_DataBound" TabIndex="2" OnSelectedIndexChanged="drpVahed_SelectedIndexChanged" ClientIDMode="Static" ForeColor="#333333">
                        
                        <Border BorderColor="#F8DF8E" />
                    </dx:ASPxComboBox>
                    <asp:SqlDataSource ID="SqlDataSourceServiceCatalog" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT ServiceId, Description FROM ServiceCatalog">
            
        </asp:SqlDataSource>
                </td>
                <td width="14%">
                     <asp:Label ID="Label26" runat="server" Text=":سرویس مرتبط"></asp:Label></td>
                <td align="right" style="padding-top: 4px" width="36%">
                    <dx:ASPxComboBox ID="ASPxComboBoxNazerFani" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" DataSourceID="sourceVahed2" RightToLeft="True" TextField="infTitle" ValueField="infId" Font-Names="b yekan" Font-Size="14px" OnDataBound="drpVahed2_DataBound" TabIndex="2" OnSelectedIndexChanged="drpVahed_SelectedIndexChanged" ClientIDMode="Static" ForeColor="#333333">
                        
                        <Border BorderColor="#F8DF8E" />
                    </dx:ASPxComboBox>
                </td>
                <td width="14%">
                    <asp:Label ID="Label45" runat="server" Text=":ناظر فنی"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn">
                    <dx:ASPxComboBox ID="drpOlaviat" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" DataSourceID="sourceOlaviat" RightToLeft="True" TextField="infTitle" ValueField="infId" Font-Names="B Yekan" Font-Size="14px" OnDataBound="drpOlaviat_DataBound" TabIndex="5" ForeColor="#333333">
                        <Border BorderColor="#F8DF8E" />
                    </dx:ASPxComboBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label5" runat="server" Text=":اولویت"></asp:Label>
                </td>
                <td class="LeftColumn" align="right" style="padding-top: 4px">
                    <dx:ASPxComboBox ID="drpProjectType" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" DataSourceID="sourceProjectType" RightToLeft="True" TextField="infTitle" ValueField="infId" Font-Names="B Yekan" Font-Size="14px" OnDataBound="drpProjectType_DataBound" TabIndex="3" OnSelectedIndexChanged="drpProjectType_SelectedIndexChanged" ClientIDMode="Static" ForeColor="#333333">
                        <ClientSideEvents SelectedIndexChanged="function(s, e) {
	loadChk();
}" />
                        <Border BorderColor="#F8DF8E" />
                    </dx:ASPxComboBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label3" runat="server" Text=":نوع پروژه"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn" align="right">
                    </td>
                <td class="RightColumn">
                    </asp:Label>
                    </td>
                <td class="LeftColumn" align="right" style="padding-top: 4px">
                    <dx:ASPxComboBox ID="drpPeymankar" runat="server" AnimationType="Fade" Theme="SoftOrange" Width="95%" DataSourceID="sourcePeymankar" RightToLeft="True" TextField="infTitle" ValueField="infId" Font-Names="B Yekan" Font-Size="14px" OnDataBound="drpPeymankar_DataBound" TabIndex="6" ForeColor="#333333">
                        <Border BorderColor="#F8DF8E" />
                    </dx:ASPxComboBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label6" runat="server" Text=":شرکت پیمانکار"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn"></td>
                <td class="RightColumn"></td>
                <td class="LeftColumn">
                    &nbsp;</td>
                <td class="RightColumn">

                    
                    
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="LeftColumn" align="right">
                    <asp:TextBox ID="txtNumber1" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label8" runat="server" Text=":شماره نامه"></asp:Label>
                </td>
                <td class="LeftColumn" align="right">
                    <asp:TextBox ID="txtShenase1" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label7" runat="server" Text=":شناسه نامه"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" style="padding-top: 4px">
                    <asp:TextBox ID="txtBody1" runat="server" CssClass="form-control" Width="95%"></asp:TextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label11" runat="server" Text=":توضیحات"></asp:Label>
                </td>
                <td align="right">
                    <cc1:PersianCalendar ID="PersianCalendar1" runat="server" TabIndex="9" Width="88%" BorderColor="#F8DF8E"></cc1:PersianCalendar>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label9" runat="server" Text=":تاریخ نامه"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn">

                    
                    
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle1" Display="None" ErrorMessage="نام پروژه الزامی است" ValidationGroup="g1"></asp:RequiredFieldValidator>

                    
                    
                    
                    <asp:SqlDataSource ID="sourceVahed" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT prInformation.infId, prInformation.infTitle, tbAdminProjects.prProject, tbAdminProjects.prCode, tbAdminProjects.prType, tbAdminProjects.prId, prInformation.infType FROM prInformation INNER JOIN tbAdminProjects ON prInformation.infId = tbAdminProjects.prProject WHERE (prInformation.infAct = 1) AND (tbAdminProjects.prCode = @prCode) AND (prInformation.infType = 1) And (prType =2)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="" Name="prCode" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="sourceVahed2" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT prInformation.infId, prInformation.infTitle, tbAdminProjects.prProject, tbAdminProjects.prCode, tbAdminProjects.prType, tbAdminProjects.prId, prInformation.infType FROM prInformation INNER JOIN tbAdminProjects ON prInformation.infId = tbAdminProjects.prProject WHERE (prInformation.infAct = 1) AND (tbAdminProjects.prCode = @prCode) AND (prInformation.infType = 1) And (prType =2)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="" Name="prCode" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </td>
                <td class="RightColumn">&nbsp;</td>
                <td align="right">
                    <telerik:RadUpload ID="RadUpload1" runat="server" ControlObjectsVisibility="RemoveButtons, AddButton" MaxFileInputsCount="10" Width="95%">
                        <Localization Add="جدید" Clear="پاک کردن" Delete="حذف" Remove="حذف" Select="انتخاب فایل" />
                    </telerik:RadUpload>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label10" runat="server" Text=":ضمایم"></asp:Label>
                </td>
            </tr>
        </table>
    </div>


    <div style="height: 40px;display:none" id="dv0">
        
        <table align="right" cellpadding="0" cellspacing="0">
        <thead>

        </thead>
            <tbody>

                
                    <tr>
                
                <td class="LeftColumn2">
                    <dx:ASPxTextBox ID="txtShenase4" runat="server" Theme="SoftOrange" Width="140px" TabIndex="7" Height="25px"></dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label20" runat="server" Text=":نام سامانه سابق"></asp:Label>
                </td>
                <td class="LeftColumn2">
                    <dx:ASPxTextBox ID="txtShenase3" runat="server" Theme="SoftOrange" Width="140px" TabIndex="7" Height="25px"> </dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label19" runat="server" Text=":کد پروژه سابق"></asp:Label>
                </td>
                <td class="LeftColumn2">
                    <dx:ASPxTextBox ID="txtShenase2" runat="server" Theme="SoftOrange" Width="140px" TabIndex="7" Height="25px"></dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label18" runat="server" Text=":نام پروژه سابق"></asp:Label>
                </td>
                <td class="LeftColumn2">
                    <dx:ASPxTextBox ID="txtShenase5" runat="server" Theme="SoftOrange" Width="140px" TabIndex="7" Height="25px"></dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label21" runat="server" Text=":شماره قرارداد"></asp:Label>
                </td>
            </tr>
            </tbody>
            
        </table>
    </div>

    <div style="height: 25px; display: none;" align="right" id="dv6">

        <table align="right" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="120px" />
                </td>
                <td class="LeftColumn2">
                    <cc1:PersianCalendar ID="pcChk1" runat="server" TabIndex="9" Width="75px"></cc1:PersianCalendar>
                </td>
                <td class="RightColumn3">
                    <asp:Label ID="Label15" runat="server" Text=":تاریخ نامه" CssClass="FontStyle2"></asp:Label>
                </td>
                <td class="LeftColumn2">
                    <dx:ASPxTextBox ID="txtShenaseChk1" runat="server" Theme="SoftOrange" Width="140px" TabIndex="7" Height="25px">
                    </dx:ASPxTextBox>
                </td>
                <td class="RightColumn3">
                    <asp:Label ID="Label14" runat="server" Text=":شناسه نامه" CssClass="FontStyle2"></asp:Label>
                </td>
                <td align="right" width="400">



                <div dir="rtl">   <asp:CheckBox ID="chk1" runat="server"  ClientIDMode="Static" Text="--"/></div> 

                </td>
            </tr>


        </table>

    </div>

    <div style="height: 25px; display: none;" align="right" id="dv7">

        <table align="right" cellpadding="0" cellspacing="0">

            <tr>
                <td>
                    <asp:FileUpload ID="FileUpload4" runat="server" Width="120px" />
                </td>
                <td class="LeftColumn2">
                    <cc1:PersianCalendar ID="pcChk2" runat="server" TabIndex="9" Width="75px"></cc1:PersianCalendar>
                </td>
                <td class="RightColumn3">
                    <asp:Label ID="Label24" runat="server" Text=":تاریخ نامه" CssClass="FontStyle2"></asp:Label>
                </td>
                <td class="LeftColumn2">
                    <dx:ASPxTextBox ID="txtShenaseChk2" runat="server" Theme="SoftOrange" Width="140px" TabIndex="7" Height="25px">
                    </dx:ASPxTextBox>
                </td>
                <td class="RightColumn3">
                    <asp:Label ID="Label25" runat="server" Text=":شناسه نامه" CssClass="FontStyle2"></asp:Label>
                </td>
                <td align="right" width="400">

               

                   <div dir="rtl">       <asp:CheckBox ID="chk2" runat="server" Text="--"  ClientIDMode="Static" /> </div>
                </td>
            </tr>
        </table>

    </div>


    <div style="height: 25px; display: none;" align="right" id="dv8">

        <table align="right" cellpadding="0" cellspacing="0">

            <tr>
                <td>
                    <asp:FileUpload ID="FileUpload2" runat="server" Width="120px" />
                </td>
                <td class="LeftColumn2">
                    <cc1:PersianCalendar ID="pcChk3" runat="server" TabIndex="9" Width="75px"></cc1:PersianCalendar>
                </td>
                <td class="RightColumn3">
                    <asp:Label ID="Label16" runat="server" Text=":تاریخ نامه" CssClass="FontStyle2"></asp:Label>
                </td>
                <td class="LeftColumn2">
                    <dx:ASPxTextBox ID="txtShenaseChk3" runat="server" Theme="SoftOrange" Width="140px" TabIndex="7" Height="25px">
                    </dx:ASPxTextBox>
                </td>
                <td class="RightColumn3">
                    <asp:Label ID="Label17" runat="server" Text=":شناسه نامه" CssClass="FontStyle2"></asp:Label>
                </td>
                <td align="right" width="400">




                <div dir="rtl">          <asp:CheckBox ID="chk3" runat="server" Text="--" ClientIDMode="Static" />  </div>
                </td>
            </tr>
        </table>

    </div>


    <div align="center">
        
        <dx:ASPxCheckBox ID="ASPxCheckBox3" runat="server" CheckState="Checked" Font-Names="B Yekan" RightToLeft="True" Text="اسناد پروژه های مشابه بررسی و هیچ موارد تکراری وجود ندارد"></dx:ASPxCheckBox>
         </div>

    <div align="center" class="box box-success" style="padding-top: 12px; padding-bottom: 12px">
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-block btn-danger" Text="ثبت اطلاعات" OnClick="ASPxButton1_Click" Width="150px" ValidationGroup="g1" />
   </div>

    <div align="center" style="padding: 8px" dir="rtl">
        <asp:SqlDataSource ID="sourceFile" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="INSERT INTO tbFiles(fiAct, fiData, fiDate, fiParent, fiType, fiTitle, fiExt) VALUES (1, @fiData, GetDate(), @fiParent, 1, @fiTitle, @fiExt)" SelectCommand="SELECT TOP (1) fiId, fiAct, fiData, fiDate, fiParent, fiType FROM tbFiles">
            <InsertParameters>
                <asp:Parameter Name="fiData" />
                <asp:Parameter DefaultValue="" Name="fiParent" />
                <asp:ControlParameter ControlID="txtTitle" Name="fiTitle" PropertyName="Text" />
                <asp:Parameter Name="fiExt"></asp:Parameter>
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Names="B Yekan" Font-Size="15px" ForeColor="Red" ValidationGroup="g1" />
        <telerik:RadNotification ID="RadNotification1" runat="server" Animation="Fade" Font-Names="B Yekan" Font-Size="15px" Skin="Sunset" Width="300px">
        </telerik:RadNotification>
        <telerik:RadWindowManager ID="RadWindowManager1" runat="server" Animation="Fade" Behaviors="Close" Skin="Sunset">
            <Windows>
                <telerik:RadWindow runat="server" NavigateUrl="RadWindow1" Animation="Fade" Behavior="Close" Behaviors="Close">
                </telerik:RadWindow>
                <telerik:RadWindow runat="server" NavigateUrl="RadWindow2" Animation="Fade" Behavior="Close" Behaviors="Close">
                </telerik:RadWindow>
            </Windows>
        </telerik:RadWindowManager>
    </div>
    <div align="center" style="padding: 7px">
        <asp:Label ID="lbResult" runat="server"></asp:Label>
        <asp:SqlDataSource ID="sourceProject" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="INSERT INTO tbProjects
                         (prTitle, prAct, prRegDate, prRegUser, prVahed, prProjectType, prSanadType, prOlaviat, prPeymankar, prStatus, prMainBody, prRiskType, prRiskTitle, prRiskDegree, prRiskEhtemal, prRiskPayamad, 
                         prRiskAnswer,TechnicalSuvisor,ServiceId,
                         riskAgainst,riskTitle,riskStart,riskEnd,riskDesc)
VALUES        (@prTitle, 
                         1,@prRegDate,@prRegUser,@prVahed,@prProjectType,@prSanadType,@prOlaviat,@prPeymankar,@prStatus,@prMainBody,@prRiskType,@prRiskTitle,@prRiskDegree,@prRiskEhtemal,@prRiskPayamad,@prRiskAnswer,@TechnicalSuvisor,@ServiceId,@riskAgeinst,@riskTitle,@riskStart,@riskEnd,@riskDesc)
SELECT @prId = SCOPE_IDENTITY()"
            OnInserted="sourceProject_Inserted" SelectCommand="SELECT TOP (1) prId, prTitle, prAct, prRegDate, prRegUser, prVahed, prProjectType, prSanadType, prOlaviat, prPeymankar FROM tbProjects">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtTitle1" Name="prTitle" PropertyName="Text" Type="String" />
                <asp:Parameter DbType="Date" Name="prRegDate" />
                <asp:Parameter Name="prRegUser" Type="String" />
                <asp:ControlParameter ControlID="drpVahed" Name="prVahed" PropertyName="Value" Type="Int32" />
                <asp:ControlParameter ControlID="drpProjectType" Name="prProjectType" PropertyName="Value" Type="Int32" />
                <asp:ControlParameter ControlID="drpRequestType" Name="prSanadType" PropertyName="Value" Type="Int32" />
                <asp:ControlParameter ControlID="drpOlaviat" Name="prOlaviat" PropertyName="Value" Type="Int32" />
                <asp:ControlParameter ControlID="drpPeymankar" Name="prPeymankar" PropertyName="Value" Type="Int32" />
                <asp:Parameter Direction="Output" Name="prId" Type="Int32" DefaultValue="" />
                <asp:Parameter DefaultValue="0" Name="prStatus" />
                <asp:ControlParameter ControlID="txtMainBody1" Name="prMainBody" PropertyName="Text" />
                <asp:ControlParameter ControlID="drpRiskType" Name="prRiskType" PropertyName="Value" />
                <asp:ControlParameter ControlID="txtRiskTitle" Name="prRiskTitle" PropertyName="Text" />
                <asp:ControlParameter ControlID="drpRiskDegree" Name="prRiskDegree" PropertyName="Value" />
                <asp:ControlParameter ControlID="drpRiskEhtemal" Name="prRiskEhtemal" PropertyName="Value" />
                <asp:ControlParameter ControlID="txtRiskPayamad" Name="prRiskPayamad" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtRiskAnswer" Name="prRiskAnswer" PropertyName="Text" />
                <asp:ControlParameter ControlID="ASPxComboBoxNazerFani" Name="TechnicalSuvisor" PropertyName="Value" Type="Int32" />
                <asp:ControlParameter ControlID="ASPxComboBoxService" Name="ServiceId" PropertyName="Value" Type="String" />
                
                <asp:ControlParameter ControlID="riskAgeinst" Name="riskAgeinst" PropertyName="Value" Type="String" />
                 <asp:ControlParameter ControlID="riskTitle" Name="riskTitle" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="riskStart" Name="riskStart" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="riskEnd" Name="riskEnd" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="riskDesc" Name="riskDesc" PropertyName="Text" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:SqlDataSource ID="sourceProjectType" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="spSelectInfo" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="infType" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sourcePa" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="INSERT INTO tbPaperProjects(paProject, paAct, paFile, paDate, paNumber, paType, paFilename) VALUES (@paProject, 1, @paFile, @paDate, @paNumber, @paType, @paFilename)" SelectCommand="SELECT TOP (1) paId FROM tbPaperProjects">
            <InsertParameters>
                <asp:Parameter Name="paProject" />
                <asp:ControlParameter ControlID="FileUpload1" Name="paFile" PropertyName="FileBytes" />
                <asp:Parameter Name="paDate" />
                <asp:ControlParameter ControlID="txtShenaseChk1" DefaultValue="" Name="paNumber" PropertyName="Text" />
                <asp:Parameter DefaultValue="1" Name="paType" />
                <asp:ControlParameter ControlID="FileUpload1" Name="paFilename" PropertyName="FileName" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sourceSanad" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="spSelectInfo" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="3" Name="infType" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sourceOlaviat" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="spSelectInfo" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="4" Name="infType" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sourcePeymankar" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="SELECT prInformation.infId, prInformation.infTitle, tbAdminProjects.prProject, tbAdminProjects.prCode, tbAdminProjects.prType, tbAdminProjects.prId, prInformation.infType FROM prInformation INNER JOIN tbAdminProjects ON prInformation.infId = tbAdminProjects.prProject WHERE (prInformation.infAct = 1) AND (tbAdminProjects.prCode = @prCode) AND (prInformation.infType = 5)">
            <SelectParameters>
                <asp:Parameter DefaultValue="" Name="prCode" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sourcePa3" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="INSERT INTO tbPaperProjects(paProject, paAct, paFile, paDate, paNumber, paType, paFilename) VALUES (@paProject, 1, @paFile, @paDate, @paNumber, @paType, @paFilename)" SelectCommand="SELECT TOP (1) paId FROM tbPaperProjects">
            <InsertParameters>
                <asp:Parameter Name="paProject" DefaultValue="" />
                <asp:ControlParameter ControlID="FileUpload2" Name="paFile" PropertyName="FileBytes" />
                <asp:Parameter Name="paDate" />
                <asp:ControlParameter ControlID="txtShenaseChk3" DefaultValue="" Name="paNumber" PropertyName="Text" />
                <asp:Parameter DefaultValue="3" Name="paType" />
                <asp:ControlParameter ControlID="FileUpload2" Name="paFilename" PropertyName="FileName" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sourcePa2" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="INSERT INTO tbPaperProjects(paProject, paAct, paFile, paDate, paNumber, paType, paFilename) VALUES (@paProject, 1, @paFile, @paDate, @paNumber, @paType, @paFilename)" SelectCommand="SELECT TOP (1) paId FROM tbPaperProjects">
            <InsertParameters>
                <asp:Parameter Name="paProject" DefaultValue="" />
                <asp:ControlParameter ControlID="FileUpload4" Name="paFile" PropertyName="FileBytes" />
                <asp:Parameter Name="paDate" />
                <asp:ControlParameter ControlID="txtShenaseChk2" DefaultValue="" Name="paNumber" PropertyName="Text" />
                <asp:Parameter DefaultValue="2" Name="paType" />
                <asp:ControlParameter ControlID="FileUpload4" Name="paFilename" PropertyName="FileName" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sourcePaper" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="spInsertPaper" InsertCommandType="StoredProcedure" SelectCommand="SELECT TOP (1) infId FROM prInformation">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtShenase1" Name="paShenase" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtNumber1" Name="paNumber" PropertyName="Text" Type="String" />
                <asp:Parameter DbType="Date" DefaultValue="" Name="paDate" />
                <asp:Parameter Name="paProject" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="paType" Type="Int32" />
                <asp:ControlParameter ControlID="txtBody1" Name="paBody" PropertyName="Text" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </div>

        </div>

</asp:Content>
